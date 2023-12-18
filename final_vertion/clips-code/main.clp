(defmodule MAIN (export ?ALL))
;;;;;;;;;;;;;;;;;;;Funciones para preguntas ;;;;;;;;;;;;;;;;;;;
(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (printout t crlf) 
    (bind ?respuesta (read))
    (while (not (and (integerp ?respuesta) (>= ?respuesta ?rangini) (<= ?respuesta ?rangfi))) do
        (printout t "El valor introducido: " ?respuesta " no es un entero. Ingresa de nuevo.")
        (printout t  crlf)

        (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
        (printout t crlf)
        (bind ?respuesta (read))
    )
    ?respuesta
)

(deffunction pregunta-cadena (?pregunta)
   (format t "%s " ?pregunta)
   (printout t crlf) 
   (bind ?respuesta (readline))
   (bind ?respuestas (explode$ ?respuesta))
   ?respuestas
)

(deffunction pregunta-general (?pregunta)
    (format t "%s" ?pregunta)
    (printout t crlf) 
    (bind ?respuesta (read))
    ?respuesta
)

(deffunction pregunta_opciones_una_respuesta (?pregunta $?opciones)
    (bind ?entradaNoValida "NO")
    (bind ?opcion "")
   
    (while (not (eq ?entradaNoValida "SI")) do
        (printout t ?pregunta crlf)
        (loop-for-count (?i (length$ ?opciones)) do
            (printout t ?i "." (nth$ ?i ?opciones)  crlf)
        )
        (bind ?resposta (read))
        (bind ?entradaNoValida "SI")
        (if (and (integerp ?resposta) (> ?resposta 0) (<= ?resposta (length$ ?opciones)))
            then
                (bind ?opcion_valida TRUE)
                (bind ?opcion (nth$ ?resposta ?opciones))
            else
            (printout t "Por favor, ingresa un número entero válido. Rango es de 1 a " (length$ ?opciones) crlf)
            (bind ?entradaNoValida "NO")
        )
    )
    ?opcion
)

(deffunction pregunta_opciones_multi_respuesta (?pregunta ?opciones)
    (bind ?entradaNoValida "NO")
    (bind ?respuestas (create$))
   
    (while (not (eq ?entradaNoValida "SI")) do
        (printout t ?pregunta crlf)
        (loop-for-count (?i (length$ ?opciones)) do
            (printout t ?i "." (nth$ ?i ?opciones)  crlf)
        )
        (bind ?respuestas (create$))
        (bind ?resposta (readline))
        (bind ?res (explode$ ?resposta))
        (bind ?entradaNoValida "SI")
        (loop-for-count (?index (length$ ?res)) do
            (bind ?element (nth$ ?index ?res))
            (if (integerp ?element)
                then
                    (if (<= 1 ?element (length$ ?opciones))
                        then
                        (bind ?entradaNoValida "SI")
                        (bind ?respuesta_actual (nth$ ?element ?opciones))
                        (bind ?respuestas (insert$ ?respuestas 1 ?respuesta_actual))
                        else
                        (printout t "Elemento no válido (rango del valor debe ser entre 1-"(length$ ?opciones)"): valor introducido" ?element crlf)
                        (bind ?entradaNoValida "NO")
                    )
                else
                    (printout t "Elemento no válido (no es un entero): " ?element crlf)
                    (bind ?entradaNoValida "NO")
            )
        )
    )
    ?respuestas
)

(deffunction pregunta_si_o_no (?pregunta)
   (bind ?respuesta "")
   (while (not (or (eq ?respuesta "s") (eq ?respuesta "n")))
    (printout t ?pregunta " (s/n) " crlf)
    (bind ?respuesta (lowcase (readline)))
    (if (not (or (eq ?respuesta "s") (eq ?respuesta "n")))
        then (printout t "El formato de entrada no es correcto, utiliza s para indicar si y n para indicar no." crlf)
    )
   )
   (if (eq ?respuesta "s") 
    then TRUE 
    else FALSE
    )
)

(deffunction pregunta_respuesta_numerica (?pregunta)
    (bind ?noValid "NO")

    (while (not (eq ?noValid "SI"))
        (printout t ?pregunta crlf)
        (bind ?respuesta (read))

        (if (integerp ?respuesta)
            then
            (if(< ?respuesta 0)
            then 
            (printout t "El valor introducido: " ?respuesta " no es correcto. Ingresa de nuevo" crlf)
            else (bind ?noValid "SI")
            )
            else  
            (printout t "El valor introducido: " ?respuesta " no es un entero. Ingresa de nuevo" crlf)
        )
    )

    ?respuesta
)

;;;;;;;;;;;;;;;;;;;Funcion para ordenar instancias;;;;;;;;;;;;;;;;;;;
;Si ordenar-libros es TRUE, ordena por ventas los libros que recibe por parámetro
;Si ordenar-libros es FALSE, ordena por puntaje los libros que recibe por parámetro, en este caso se tratan libros de la clase RecomendacionDetalle
(deffunction bubble-sort (?libros ?ordenar-libros)
  (bind ?n (length$ ?libros))
  (loop-for-count (?i (- ?n 1))
    (loop-for-count (?j (- ?n ?i 1))
      (bind ?libroA (nth$ ?j ?libros))
      (bind ?libroB (nth$ (+ ?j 1) ?libros))
      (if (eq ?ordenar-libros TRUE) 
      then 
      (if (< (send ?libroA get-ventas) (send ?libroB get-ventas))
        then
        (bind ?temp ?libroA)
        (bind ?libros (replace$ ?libros ?j ?j ?libroB))
        (bind ?libros (replace$ ?libros (+ ?j 1) (+ ?j 1) ?temp))
      )
      else
        (if (< (send ?libroA get-puntaje) (send ?libroB get-puntaje))
          then
          (bind ?temp ?libroA)
          (bind ?libros (replace$ ?libros ?j ?j ?libroB))
          (bind ?libros (replace$ ?libros (+ ?j 1) (+ ?j 1) ?temp))
        )
      )
    )
  )
  ?libros
)

;;;;;;;;;;;;;;;;;;;Funciones para imprimir instancias;;;;;;;;;;;;;;;;;;;

(deffunction imprimir-recomendaciones ()
   (printout t crlf)
   (printout t crlf)
  (printout t "Lista de recomendaciones:" crlf)
  (printout t "------------------ ----------------------------------" crlf)
  (bind ?recomendaciones (find-all-instances ((?recomendacion RecomendacionDetalle)) TRUE)) 
  (bind ?recomendaciones (bubble-sort ?recomendaciones FALSE))
  (loop-for-count (?i (min 3 (length$ ?recomendaciones)))
    (printout t "----------------------------------------------------" crlf)
    (bind ?currentRecomendacion (nth$ ?i ?recomendaciones))
    (bind ?libro (send ?currentRecomendacion get-libro))
    (printout t "Título: " (send ?libro get-titulo) crlf)
    (bind ?autor (send ?libro get-escrito_por))
    (printout t "Autor: " (send ?autor get-nombre) crlf)
    (bind ?idioma (send ?libro get-idioma_de_libro))
    (printout t "Idioma: " (send ?idioma get-nombre) crlf)
    (bind ?genero (send ?libro get-genero_de_libro))
    (printout t "Género: " (send ?genero get-nombre) crlf)
    (bind ?porcentaje  (* (/ (send ?currentRecomendacion get-puntaje) 92) 100))
    (bind ?porcentaje (str-cat (format nil "%.2f" ?porcentaje) "%"))

    (printout t "Porcentaje de probabilidad de acertar: " ?porcentaje crlf)
    (bind $?razones (send ?currentRecomendacion get-razon))
    (printout t "Razones: " crlf)
    (loop-for-count (?j (length$ ?razones))
      (bind ?razon (nth$ ?j ?razones))
      (printout t ?j "."?razon crlf)
    )
    (printout t "----------------------------------------------------" crlf)
  )
  (printout t crlf)
  (printout t "Fin de la lista de recomendaciones." crlf)
)

(deffunction imprimir-lector ()
  (printout t "Datos del lector:" crlf)
  (do-for-all-instances ((?lector Lector))
    (printout t "Nombre: " (send ?lector get-nombre) crlf)
    (printout t "Numero de libros leidos: " (send ?lector get-numero_de_libros_leidos) crlf)
    (printout t "Libros preferidos: " (send ?lector get-libros_preferidos) crlf)
    (printout t "Temas preferidos: " (send ?lector get-temas_preferidos) crlf)
    (printout t "Autores preferidos: " (send ?lector get-autores_preferidos) crlf)
    (printout t "Generos preferidos: " (send ?lector get-generos_preferidos) crlf)
    (printout t "Epocas preferidas: " (send ?lector get-epocas_preferidas) crlf)
    (printout t "Interes complejo: " (send ?lector get-interes_complejo) crlf)
    (printout t "Interes extenso: " (send ?lector get-interes_extenso) crlf)
    (printout t "Preferencia papel: " (send ?lector get-preferencia_papel) crlf)
    (printout t "Lee en idiomas: " (send ?lector get-lee_en_idiomas) crlf)
    (printout t "Interes moda: " (send ?lector get-interes_moda) crlf)
    (printout t "Interes popularidad: " (send ?lector get-interes_popularidad) crlf)
    (printout t "Interes valoracion: " (send ?lector get-interes_valoracion) crlf)
    (printout t "Tiempo semanal lectura: " (send ?lector get-tiempo_semanal_lectura) crlf)
    (printout t "Lugar de lectura: " (send ?lector get-lugar_de_lectura) crlf)
    (printout t crlf)
  )
)

(deffunction imprimir-autores ()
  (printout t "Lista de autores:" crlf)
  (do-for-all-instances ((?autor Autor))
    (printout t "ID: " (instance-name ?autor) crlf)
    (printout t "Nombre: " (send ?autor get-nombre) crlf)
    (printout t "Nacionalidad: " (send ?autor get-nacionalidad) crlf)
    (printout t "Fecha de nacimiento: " (send ?autor get-fecha_nacimiento) crlf)
    (printout t "Fecha de muerte: " (send ?autor get-fecha_muerte) crlf)
    (printout t "Generos: " (send ?autor get-generos) crlf)
    (printout t "Temas: " (send ?autor get-temas) crlf)
    (printout t "Epocas: " (send ?autor get-epocas) crlf)
    (printout t "Libros: " (send ?autor get-libros) crlf)
  )
)

(deffunction imprimir-generos ()
  (printout t "Lista de generos:" crlf)
  (do-for-all-instances ((?genero Genero))
    (printout t "ID: " (instance-name ?genero) crlf)
    (printout t "Nombre: " (send ?genero get-nombre) crlf)
    (printout t "Autores: " (send ?genero get-autores) crlf)
    (printout t "Temas: " (send ?genero get-temas) crlf)
    (printout t "Epocas: " (send ?genero get-epocas) crlf)
    (printout t "Libros: " (send ?genero get-libros) crlf)
  )
)

(deffunction imprimir-temas ()
  (printout t "Lista de temas:" crlf)
  (do-for-all-instances ((?tema Tema))
    (printout t "ID: " (instance-name ?tema) crlf)
    (printout t "Nombre: " (send ?tema get-nombre) crlf)
    (printout t "Autores: " (send ?tema get-autores) crlf)
    (printout t "Generos: " (send ?tema get-generos) crlf)
    (printout t "Epocas: " (send ?tema get-epocas) crlf)
    (printout t "Libros: " (send ?tema get-libros) crlf)
  )
)

(deffunction imprimir-epocas ()
  (printout t "Lista de epocas:" crlf)
  (do-for-all-instances ((?epoca Epoca))
    (printout t "ID: " (instance-name ?epoca) crlf)
    (printout t "Nombre: " (send ?epoca get-nombre) crlf)
    (printout t "Autores: " (send ?epoca get-autores) crlf)
    (printout t "Generos: " (send ?epoca get-generos) crlf)
    (printout t "Temas: " (send ?epoca get-temas) crlf)
    (printout t "Libros: " (send ?epoca get-libros) crlf)
  )
)

(deffunction imprimir-libros ()
  (printout t "Lista de libros:" crlf)
  (do-for-all-instances ((?libro Libro))
    (printout t "ID: " (instance-name ?libro) crlf)
    (printout t "Titulo: " (send ?libro get-titulo) crlf)
    (printout t "Autores: " (send ?libro get-autores) crlf)
    (printout t "Generos: " (send ?libro get-generos) crlf)
    (printout t "Temas: " (send ?libro get-temas) crlf)
    (printout t "Epocas: " (send ?libro get-epocas) crlf)
    (printout t "Idiomas: " (send ?libro get-idiomas) crlf)
    (printout t "Valoracion: " (send ?libro get-valoracion) crlf)
    (printout t "Popularidad: " (send ?libro get-popularidad) crlf)
    (printout t "Moda: " (send ?libro get-moda) crlf)
    (printout t "Complejidad: " (send ?libro get-complejidad) crlf)
    (printout t "Extension: " (send ?libro get-extension) crlf)
    (printout t "Formato: " (send ?libro get-formato) crlf)
    (printout t "Estatus: " (send ?libro get-estatus) crlf)
    (printout t "Nivel lector: " (send ?libro get-nivel_lector) crlf)
    (printout t "Razon: " (send ?libro get-razon) crlf)
    (printout t "Puntaje: " (send ?libro get-puntaje) crlf)
  )
)

(deffunction imprimir-idiomas ()
  (printout t "Lista de idiomas:" crlf)
  (do-for-all-instances ((?idioma Idioma))
    (printout t "ID: " (instance-name ?idioma) crlf)
    (printout t "Nombre: " (send ?idioma get-nombre) crlf)
    (printout t "Libros: " (send ?idioma get-libros) crlf)
  )

)

;;;;;;;;;;;;;;;;;;;Funciones de utilidad;;;;;;;;;;;;;;;;;;;
(deffunction calcular-estatus (?libro)
  (bind ?valoracion (send ?libro get-valoracion_media))
  (bind ?popularidad (send ?libro get-popularidad))
  (bind ?moda (send ?libro get-de_moda))
  
  (if (and ?popularidad ?moda)
    then
    (if (>= ?valoracion 4)
      then
      (return Bueno)
      else
      (if (>= ?valoracion 2)
        then
        (return Normal)
        else
        (return Malo)
      )
    )
  else
    (return Malo)
  )
)


(deffunction cumple-restricion-instancias (?instancia ?lista-instancias)
  (member$ ?instancia ?lista-instancias)
)

(deffunction cumple-con-solucion (?libro ?generos ?temas ?autores ?nivel2 ?estatus2 ?idiomas ?generosSimilares ?temasSimilares ?autoresSimilares ?idiomasSimilares)
  (bind ?cumple FALSE)
  (bind ?genero (send ?libro get-genero_de_libro))
  (bind ?tema (send ?libro get-tema_de_libro))
  (bind ?autor (send ?libro get-escrito_por))
  (bind ?nivel (send ?libro get-NivelLector))
  (bind ?idiomaLibro (send ?libro get-idioma_de_libro))
  (bind ?estatus (calcular-estatus ?libro))
  (if (or (cumple-restricion-instancias ?genero ?generos)
          (cumple-restricion-instancias ?tema ?temas)
          (cumple-restricion-instancias ?autor ?autores)
          (cumple-restricion-instancias ?idiomaLibro ?idiomas)
          (cumple-restricion-instancias ?idiomaLibro ?idiomasSimilares)
          (cumple-restricion-instancias ?genero ?generosSimilares)
          (cumple-restricion-instancias ?autor ?autoresSimilares)
          (cumple-restricion-instancias ?tema ?temasSimilares)
          (eq ?nivel ?nivel2)
          (eq ?estatus ?estatus2)
          )
    then
    (bind ?cumple TRUE)
  )
  ?cumple
)

;;;;;;;;;;;;;;;;;;;Deftemplates para Problema Abstracto y Solcuion Abstracta;;;;;;;;;;;;;;;;;;;

(deftemplate MAIN::ProblemaAbstracto
  (slot NivelPersonal
    (type SYMBOL)
    (default NULL)
  )
  (slot NivelLiterario
    (type SYMBOL)
    (default NULL)
  )
  (slot EstatusLibro
    (type SYMBOL)
    (default NULL))
  (multislot GenerosInteres
    (type INSTANCE)
  )
  (multislot AutoresInteres
    (type INSTANCE)
  )
  (multislot TemasInteres
    (type INSTANCE)
  )  
  (slot TratadoCopiaDatos
    (type SYMBOL)
    (default FALSE)
  )
  (slot TratadoEstatus
    (type SYMBOL)
    (default FALSE)
  )  
)

(deftemplate MAIN::SolucionAbstracta
  (multislot Genero
    (type INSTANCE)
  )
  (multislot Temas
    (type INSTANCE)
  )
  (multislot Autores
    (type INSTANCE)
  )
  (slot EstatusLibro
    (type SYMBOL)
    (allowed-symbols Bueno Malo Normal)
  )
  (slot NivelLector
    (type SYMBOL)
    (allowed-symbols Principiante Intermedio Avanzado)
  )
  (slot TratadoCopiaDatos
    (type SYMBOL)
    (default FALSE)
  )  
  (slot TratadoEstatus
    (type SYMBOL)
    (default FALSE)
  )
  (slot TratadoNivelLector
    (type SYMBOL)
    (default FALSE)
  )    
)

;;;;;;;;;;;;;;;;;;; Modulos ;;;;;;;;;;;;;;;;;;;
(deftemplate MAIN::datos-libros
   (multislot lista-libros)
)

;;;;;;;;;;;;;;;;;;;Modulo de lectura de entrada de informacion del lector;;;;;;;;;;;;;;;;;;;
(defmodule entrada_de_informacion_lector
	(import MAIN ?ALL)
	(export ?ALL)
)

;;;;;;;;;;;;;;;;;;; Modulo de proceso de datos, una vez que tengamos todos los datos del lector solo tenemos que procesarlos ;;;;;;;;;;;;;;;;;;
(defmodule procesado-datos
	(import MAIN ?ALL)
  (import entrada_de_informacion_lector ?ALL)
	(export ?ALL)
)

;;;;;;;;;;;;;;;;;;; Modulo de solucion, una vez que tengamos el problema abstracto definido;;;;;;;;;;;;;;;;;;;
(defmodule generar-solucion
	(import MAIN ?ALL)
	(import entrada_de_informacion_lector  ?ALL)
	(import procesado-datos  ?ALL)
	(export ?ALL)
)
;;;;;;;;;;;;;;;;;;;Modulo de refinamiento de solucion, una vez que tengamos la solucion abstracta definida;;;;;;;;;;;;;;;;;;;
(defmodule refinar-solucion
  (import MAIN ?ALL)
  (import entrada_de_informacion_lector  ?ALL)
  (import procesado-datos  ?ALL)
  (import generar-solucion  ?ALL)
  (export ?ALL)
)

;;;;;;;;;;;;;;;;;;;Reglas;;;;;;;;;;;;;;;;;;;
(defrule MAIN::iniPrograma "Regla inicial del programa"
	(declare (salience 10))
	=>
  (printout t"----------------------------------------------------------" crlf)
  (printout t"**********************************************************" crlf)
  (printout t"  /////////////// Recomendador de Libros \\\\\\\\\\\\\\\\\ " crlf)
  (printout t"**********************************************************" crlf)
  (printout t"----------------------------------------------------------" crlf)
	(printout t"¡Bienvenido! Vamos a proceder a preguntarle ciertos aspectos para poder recomendarle libros." crlf)
	(printout t crlf)
	(make-instance lector of Lector)
  (focus entrada_de_informacion_lector)
)

(defrule entrada_de_informacion_lector::establecer-nombre "Establece el nombre del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?nombre (pregunta-general "¿Cómo te llamas?"))
    (send ?lector put-nombre ?nombre)
)

(defrule entrada_de_informacion_lector::establecer-edad "Establece edad"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?edad (pregunta-numerica "¿Cuántos años tienes" 6 150))
    (send ?lector put-edad ?edad)
)

(defrule entrada_de_informacion_lector::establecer-de-libros-leidos "Establece numero de libros leidos"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?num_libros (pregunta-numerica "¿Cuántos libros has leído hasta ahora?" 0 15000))
    (send ?lector put-numero_de_libros_leidos ?num_libros)
)

(defrule entrada_de_informacion_lector::establecer-libros-preferidos "Establece libros preferidos del que se acuerda el lector"
    ?lector <- (object (is-a Lector) (numero_de_libros_leidos ?numLibrosLeidos&:(> ?numLibrosLeidos 0)))
    =>
    (bind ?numlibros_preferidos (pregunta-numerica "Indica el número de libros preferidos del que te acuerdes el título." 0 (send ?lector get-numero_de_libros_leidos)))
    (bind ?libros (create$))
    (if (> ?numlibros_preferidos 0)
        then
        (loop-for-count (?i 1 ?numlibros_preferidos) do
            (printout t "Indica el título del libro número: " ?i " de tu lista de libros preferidos:" crlf)
            (bind ?titulo (readline))
            (bind ?libros_pref (find-all-instances ((?libro Libro)) (eq ?libro:titulo ?titulo)))
            (bind ?libros (insert$ ?libros 1 ?libros_pref))
        )
    (send ?lector put-libros_preferidos ?libros)
    )
)

(defrule entrada_de_informacion_lector::establecer-temas-preferidos "Establece temas preferidos que el lector quiere que tengan los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?temas (find-all-instances ((?tema Tema)) TRUE)) 
    
    (bind $?tema-names (create$))
    
    (loop-for-count (?i 1 (length$ ?temas)) do
        (bind ?nombre (send (nth$ ?i ?temas) get-nombre))
        (bind ?tema-names (insert$ ?tema-names 1 ?nombre))
    )
    (bind $?temas_preferidos (pregunta_opciones_multi_respuesta "Selecciona los índices (en una fila con espacios entre ellos) de los temas que deseas que haya en un libro:" ?tema-names))
    (bind ?temas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?temas_preferidos)) do
        (bind ?nombre (nth$ ?i ?temas_preferidos))
        (bind ?temas-con-nombre (find-all-instances ((?tema Tema)) (eq ?tema:nombre ?nombre)))
        (bind ?temas-matching-preferidos (insert$ ?temas-matching-preferidos 1 ?temas-con-nombre))
    )
    (send ?lector put-temas_preferidos ?temas-matching-preferidos)
)

(defrule entrada_de_informacion_lector::establecer-autores-preferidos "Establece autores preferidos del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?entradaNoValida "NO")
    (while (eq ?entradaNoValida "NO")
      (bind ?numAutoresPreferidos (pregunta_respuesta_numerica "Indica el número de autores preferidos del que te acuerdas el nombre:"))
      (bind ?autores_pref (create$))
        (if (> ?numAutoresPreferidos 0)
        then 
        (bind ?entradaNoValida "SI")
        (loop-for-count (?i 1 ?numAutoresPreferidos) do
            (printout t "Indica el autor número: " ?i " de tu lista de autores preferidos:" crlf)
            (bind ?nombre (readline))
                (bind ?autor (find-all-instances ((?autor Autor)) (eq ?autor:nombre ?nombre)))
                (bind ?autores_pref (insert$ ?autores_pref 1 ?autor))
        )
        (send ?lector put-autores_preferidos ?autores_pref)
        else 
          (if (= ?numAutoresPreferidos 0) 
            then  (bind ?entradaNoValida "SI")
          )
        )
    )
)


(defrule entrada_de_informacion_lector::establecer-generos-literarios-preferidos "Establece los géneros literarios preferidos del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?generos (find-all-instances ((?generos Genero)) TRUE)) 
    (bind $?generos-names (create$))
    (loop-for-count (?i 1 (length$ ?generos)) do
        (bind ?nombre (send (nth$ ?i ?generos) get-nombre))
        (bind ?generos-names (insert$ ?generos-names 1 ?nombre))
    )
    (bind $?generos_preferidos (pregunta_opciones_multi_respuesta "Selecciona índices (en una fila con espacios entre ellos) de los géneros a los que desearías que pertenecieran los libros:" ?generos-names))
    (bind ?generos-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?generos_preferidos)) do
        (bind ?nombre (nth$ ?i ?generos_preferidos))
        (bind ?generos_a (find-all-instances ((?genero Genero)) (eq ?genero:nombre ?nombre)))
        (bind ?generos-matching-preferidos (insert$ ?generos-matching-preferidos 1 ?generos_a))
    )
    (send ?lector put-generos_preferidos ?generos-matching-preferidos)
)

(defrule entrada_de_informacion_lector::establecer-epocas-preferidos "Establece épocas preferidos que el lector quiere que tengan los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?epocas (find-all-instances ((?epoca Epoca)) TRUE)) 
    (bind $?epocas-names (create$))
    (loop-for-count (?i 1 (length$ ?epocas)) do
        (bind ?nombre (send (nth$ ?i ?epocas) get-nombre))
        (bind ?epocas-names (insert$ ?epocas-names 1 ?nombre))
    )
    (bind $?epocas_preferidos (pregunta_opciones_multi_respuesta "Selecciona los índices de las épocas a las que desearías que pertenecieran los libros." ?epocas-names))
    (bind ?epocas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?epocas_preferidos)) do
        (bind ?nombre (nth$ ?i ?epocas_preferidos))
        (bind ?epocas (find-all-instances ((?epoca Epoca)) (eq ?epoca:nombre ?nombre)))
        (bind ?epocas-matching-preferidos (insert$ ?epocas-matching-preferidos 1 ?epocas))
    )
    (send ?lector put-epocas_preferidos ?epocas-matching-preferidos)
)

(defrule entrada_de_informacion_lector::establecer-interes-libros-complejos "Establece si el lector le interesa libros con cierta complejidad."
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Te interesa leer libros con cierta complejidad?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_complejo TRUE)
        else 
        (send ?lector put-interes_complejo FALSE)
    )
)

(defrule entrada_de_informacion_lector::establecer-interes-libros-extensos "Establece si el lector le interesa libros extensos."
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Te interesa los libros extensos?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_extenso TRUE)
        else 
        (send ?lector put-interes_extenso FALSE)
    )
    (printout t (send ?lector get-interes_extenso) crlf)
)


(defrule entrada_de_informacion_lector::establecer-formato-libros "Establece el formato que un lector prefiere"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_opciones_una_respuesta "¿En qué formatos prefieres los libros?" Papel Digital Ambos))

    (send ?lector put-preferencia_papel ?respuesta)
)


(defrule entrada_de_informacion_lector::establecer-idiomas-lector "Establece idiomas en los que el lector lee los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?idiomas (find-all-instances ((?idioma Idioma)) TRUE)) 
    (bind $?idiomas-names (create$))
    (loop-for-count (?i 1 (length$ ?idiomas)) do
        (bind ?nombre (send (nth$ ?i ?idiomas) get-nombre))
        (bind ?idiomas-names (insert$ ?idiomas-names 1 ?nombre))
    )
    (bind $?idiomas_selec (pregunta_opciones_multi_respuesta "Escribe los índices (en una fila con espacios entre ellos) de los idiomas en los que te gustaría que el libro este escrito: " ?idiomas-names))
    (bind ?idiomas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?idiomas_selec)) do
        (bind ?nombre (nth$ ?i ?idiomas_selec))
        (bind ?idioma (find-all-instances ((?idioma Idioma)) (eq ?idioma:nombre ?nombre)))
        (bind ?idiomas-matching-preferidos (insert$ ?idiomas-matching-preferidos 1 ?idioma))
    )
    (send ?lector put-lee_en_idiomas ?idiomas-matching-preferidos)
)

(defrule entrada_de_informacion_lector::establecer-preferencia-moda "Establece si el lector prefiere libros de moda"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Prefieres libros que estan de moda?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_moda TRUE)
        else 
        (send ?lector put-interes_moda FALSE)
    )
)

(defrule entrada_de_informacion_lector::establecer-preferencia-popularidad "Establece si el lector prefiere libros popuolares"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Prefieres libros que son populares?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_popularidad TRUE)
        else 
        (send ?lector put-interes_popularidad FALSE)
    )
)

(defrule entrada_de_informacion_lector::establecer-preferencia-valoracion "Establece si el lector prefiere libros con buena valoracion"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Prefieres libros que tienen buena valoración media?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_valoracion TRUE)
        else 
        (send ?lector put-interes_valoracion FALSE)
    )
)

(defrule entrada_de_informacion_lector::establecer-tiempo-lector "Establece tiempo que el lector tiene planeado dedicar a la semana a la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?entradaNoValida1 "NO")
    (while (eq ?entradaNoValida1 "NO")
      (bind ?numLibros (pregunta_respuesta_numerica "¿Cuántos horas tienes pensado dedicar a la semana para leer libros?"))
      (if (and (>= ?numLibros 0) (integerp ?numLibros))
          then
              (bind ?entradaNoValida1 "SI")
              (send ?lector put-tiempo_semanal_lectura ?numLibros)
          else 
          (printout t "El número no es un entero o es menor a 0." crlf)
      )
    )
)

(defrule entrada_de_informacion_lector::establecer-actividad-social "Establece si el lector participa en actividades que tengan relacion con lectura de libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Participas en clubes de lectura o actividades que tengan relación con libros?"))
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-actividad_de_lectura_social TRUE)
        else 
        (send ?lector put-actividad_de_lectura_social FALSE)
    )
)


(defrule entrada_de_informacion_lector::establecer-lugar-lectura "Establece el lugar donde el lector suele realizar la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_opciones_una_respuesta "Escoge, en algunas de las siguientes opciones, el lugar donde sueles realizar la lectura. Se espera que escribas el nombre completo del lugar:" Casa Cafetería Biblioteca Natura Metro Bus Avión Calle Parque))
    (send ?lector put-lugar_de_lectura ?respuesta)
)

(defrule entrada_de_informacion_lector::cambiar_a_procesado_datos "Regla para cambiar a procesado de datos"
    =>
    (focus procesado-datos)
    (printout t "Cambiando a procesado de datos..." crlf)
)


;;;;;;;;;;;;;;;;;;;Modulo Problema Abstracto;;;;;;;;;;;;;;;;;;;

(defrule procesado-datos::CalcularNivelPersonal
  ?lector <- (object (is-a Lector)
                      (tiempo_semanal_lectura ?tiempo)
                      (lee_en_idiomas $?idiomas)
                      (edad ?edad)
                      (nombre ?nombre))
  (not (ProblemaAbstracto))
  =>
  (printout t "Calculando Nivel Personal..."crlf)

  (bind ?numIdiomas (length$ ?idiomas))
  (bind ?nivel Bajo)
  (if (and (> ?numIdiomas 3) (or (> ?tiempo 15) (>= ?edad 30)))
    then
    (bind ?nivel Alto)
  else
    (if (and (= ?numIdiomas 2) (or (> ?tiempo 7) (>= ?edad 25)))
      then
      (bind ?nivel Medio)
    )
  )
  (assert (ProblemaAbstracto (NivelPersonal ?nivel)))
)


(defrule procesado-datos::CalcularNivelLiterario
  ?lector <- (object (is-a Lector) 
              (numero_de_libros_leidos ?numLibrosLeidos)
              (interes_complejo ?complejidad)
              (interes_extenso ?extension)
              (actividad_de_lectura_social ?actividadSocial))

  ?problema <- (ProblemaAbstracto (NivelLiterario ?nivelLiterario))
  (test (eq ?nivelLiterario NULL))
  =>
  (bind ?nivel Bajo)
  (printout t "Calculando Nivel Literario..."crlf)

  (if (and (>= ?numLibrosLeidos 20) (eq ?complejidad TRUE) (or (eq ?extension TRUE) (eq ?actividadSocial TRUE)))
    then
    (bind ?nivel Alto)
  else
    (if (and (>= ?numLibrosLeidos 10) (or (eq ?extension TRUE) (eq ?actividadSocial TRUE)))
      then
      (bind ?nivel Medio)
    else
      (bind ?nivel Bajo)
    )
  )
  (modify ?problema
    (NivelLiterario ?nivel)
  )
)

(defrule procesado-datos::CopiarDatosALProblemaAbstracto
  ?lector <- (object (is-a Lector)
               (autores_preferidos $?autores)
               (generos_preferidos $?generos)
               (temas_preferidos $?temas))
 ?problema <- (ProblemaAbstracto (TratadoCopiaDatos ?tratado))
  (test (eq ?tratado FALSE))
  =>
  (printout t "Procesando datos (autores,generos,temas)..."crlf)
  (modify ?problema
    (AutoresInteres $?autores)
    (GenerosInteres $?generos)
    (TemasInteres $?temas)
    (TratadoCopiaDatos TRUE)
  )
)

(defrule procesado-datos::EstablecerEstatusLibro
  ?lector <- (object (is-a Lector)
               (interes_valoracion ?valoracion)
               (interes_popularidad ?popularidad)
               (interes_moda ?moda))
  ?problema <- (ProblemaAbstracto (TratadoEstatus ?tratado))
  (test (eq ?tratado FALSE))
  =>
  (bind ?estatus Normal) 
  (printout t "Calculando caracteristicas de libros..."crlf)

  (if (and (eq ?valoracion TRUE) (or (eq ?popularidad TRUE) (eq ?moda TRUE)))
    then
    (bind ?estatus Bueno)
  else
    (if (and (eq ?valoracion FALSE) (eq ?popularidad FALSE) (eq ?moda FALSE))
      then
      (bind ?estatus Malo)
  ))
  (modify ?problema
    (EstatusLibro ?estatus)
    (TratadoEstatus TRUE)
  )
)

(defrule procesado-datos::Cambiar_a_generar_solucion "Regla para cambiar a generar solucion"
    ?lector <- (object (is-a Lector))
    ?problema <- (ProblemaAbstracto)
    =>
    (focus generar-solucion)
  (printout t "Cambiando a generar solución abstracta..."crlf)

)

;;;;;;;;;;;;;;;;;;;Modulo Solucion Abstracta;;;;;;;;;;;;;;;;;;;

(defrule generar-solucion::DerivarDificultad
  ?problema <- (ProblemaAbstracto
                 (NivelPersonal ?nivelPersonal)
                 (NivelLiterario ?nivelLiterario))
  ?lector <- (object (is-a Lector)(lugar_de_lectura ?lugar))
  =>
  (bind ?contexto SILENCIOSO)
  (if (eq lugar_de_lectura Metro Bus Avión Calle Parque)
    then (bind ?contexto RUIDOSO)
  )
  (printout t "Calculando la dificultad de análisis y compresión del lector hacía un libro..."crlf)
  (bind ?NivelLector Intermedio)
  (if (or (eq ?nivelPersonal Bajo) (eq ?nivelLiterario Bajo) (eq ?contexto RUIDOSO))
    then
    (bind ?NivelLector Principiante)
    else
    (if (or (eq ?nivelPersonal Alto) (eq ?nivelLiterario Alto))
      then
      (bind ?NivelLector Avanzado)
  ))

  (assert
    (SolucionAbstracta
      (NivelLector ?NivelLector)
    )
  )
)

(defrule generar-solucion::CopiarGenerosYTemasYAutores
  ?problema <- (ProblemaAbstracto
                  (GenerosInteres $?generosInteres)
                  (TemasInteres $?temasInteres)
                  (AutoresInteres $?autoresInteres))
  ?solucion <- (SolucionAbstracta (TratadoCopiaDatos ?tratado))
  (test (eq ?tratado FALSE))
  =>
  (printout t "Procesando datos (autores,generos,temas) del Problema Abstracto..."crlf)
    (modify ?solucion
    (Genero $?generosInteres)
    (Temas $?temasInteres)
    (Autores $?autoresInteres)
    (TratadoCopiaDatos TRUE)
  )
)

(defrule generar-solucion::CopiarEstatusLibro
  ?problema <- (ProblemaAbstracto
                 (EstatusLibro ?estatusLibro))
  ?solucion <- (SolucionAbstracta (TratadoEstatus ?tratado))
  (test (eq ?tratado FALSE))
  =>
  (printout t "Procesando caracteristicas de libros de Problemas Abstracto..."crlf)

  (modify ?solucion
    (EstatusLibro ?estatusLibro)
    (TratadoEstatus TRUE)
  )
)

(defrule generar-solucion::Cambiar_a_procesar_libros "Regla para cambiar a procesar libros"
    ?lector <- (object (is-a Lector))
    ?problema <- (ProblemaAbstracto)
    ?solucion <- (SolucionAbstracta)
    =>
    (focus refinar-solucion)
  (printout t "Cambiando al proceso del refinamiento de la solución..."crlf)

)

;;;;;;;;;;;;;;;;;;;Modulo Refinar Solucion;;;;;;;;;;;;;;;;;;;

(defrule refinar-solucion::crear-lista-de-libros
  (not (lista-de-libros $?))
  =>
  (bind ?libros (find-all-instances ((?libro Libro)) TRUE))
  (assert (lista-de-libros ?libros))
  (printout t "Gestionando Instancias de libros..."crlf)
)

(defrule refinar-solucion::crear-puntuacion-recomendaciones
  ?lista-de-libros <- (lista-de-libros $?libros)
  ?solucion <- (SolucionAbstracta (Genero $?generos) (Temas $?temas) (Autores $?autores) (NivelLector ?nivel) (EstatusLibro ?estatus2))
  
  ?lector <- (object (is-a Lector)
               (lee_en_idiomas $?idiomas))

  (test (> (length$ ?libros) 0))
  =>
  (printout t "Refinando solución..." crlf)
  (bind ?numLibrosRecomendados 0)

  (bind ?generosSimilares (create$))
  (bind ?autoresSimilares (create$))
  (bind ?temasSimilares (create$))
  (bind ?idiomasSimilares (create$))
  (bind ?librosSimilares (send ?lector get-libros_preferidos))
  (bind ?papel (send ?lector get-preferencia_papel))
  
  (loop-for-count (?i (length$ ?librosSimilares))
    (bind ?libroActual (nth$ ?i ?librosSimilares))
    (bind ?generosLibroActual (send ?libroActual get-genero_de_libro))
    (bind ?autoresLibroActual (send ?libroActual get-escrito_por))
    (bind ?temasLibroActual (send ?libroActual get-tema_de_libro))
    (bind ?idiomasLibroActual (send ?libroActual get-idioma_de_libro))

    (bind ?generosSimilares (insert$ ?generosSimilares 1 ?generosLibroActual))
    (bind ?autoresSimilares (insert$ ?autoresSimilares 1 ?autoresLibroActual))
    (bind ?temasSimilares (insert$ ?temasSimilares 1 ?temasLibroActual))
    (bind ?idiomasSimilares (insert$ ?idiomasSimilares 1 ?idiomasLibroActual))
  )
  (foreach ?libro ?libros
    (if (cumple-con-solucion ?libro ?generos ?temas ?autores ?nivel ?estatus2 ?idiomas ?generosSimilares ?temasSimilares ?autoresSimilares ?idiomasSimilares)
      then
      (bind ?puntuacion 0)
      (bind ?razones (create$))  
      (if (cumple-restricion-instancias (send ?libro get-genero_de_libro) ?generos)
        then
        (bind ?puntuacion (+ ?puntuacion 15))
        (bind ?razon  "Cumple con alguno de los géneros de interés del lector.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-idioma_de_libro) ?idiomas)
        then
        (bind ?puntuacion (+ ?puntuacion 15))
        (bind ?razon  "Cumple con alguno de los idiomas en los que el lector lee.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-escrito_por) ?autores)
        then
        (bind ?puntuacion (+ ?puntuacion 10))
        (bind ?razon  "Cumple con alguno de los autores preferidos del lector.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-tema_de_libro) ?temas)
        then
        (bind ?puntuacion (+ ?puntuacion 10))
        (bind ?razon  "Cumple con alguno de los temas de interés del lector.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      ) 

      (if (cumple-restricion-instancias (send ?libro get-genero_de_libro) ?generosSimilares)
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple con un género similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-idioma_de_libro) ?idiomasSimilares)
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple con idioma similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-escrito_por) ?autoresSimilares)
        then
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple con autor similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-tema_de_libro) ?temasSimilares)
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple con temas similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      ) 

      (if (eq (send ?libro get-NivelLector) ?nivel)
        then
        (bind ?puntuacion (+ ?puntuacion 5))
        (bind ?razon  "Cumple con el nivel de lector, determinado por el sistema.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )
      (bind ?estatus (calcular-estatus ?libro))
      (if (eq ?estatus ?estatus2)
        then
        (bind ?puntuacion (+ ?puntuacion 5))
        (bind ?razon  "Cumple con filtros de Moda, Valoracion, Popularidad.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (eq (send ?libro get-disponibilidad) ?papel)
        then
        (bind ?puntuacion (+ ?puntuacion 4))
        (bind ?razon "Cumple el formato del libro.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

        (bind ?recomendacion (make-instance of RecomendacionDetalle))
        (send ?recomendacion put-libro ?libro)
        (send ?recomendacion put-puntaje ?puntuacion)
        (send ?recomendacion put-razon ?razones)
        (bind ?numLibrosRecomendados (+ ?numLibrosRecomendados 1))
    )
  )

  (bind ?librosOrdenados (bubble-sort ?libros TRUE))
  (loop-for-count (?i (- 3 ?numLibrosRecomendados))
    (bind ?libro (nth$ ?i ?librosOrdenados))

    (bind ?recomendacion (make-instance of RecomendacionDetalle))
    (send ?recomendacion put-libro ?libro)
    (send ?recomendacion put-puntaje 0)
    (bind ?razones (send ?recomendacion get-razon))
    (bind ?razon (insert$ ?razones 1 "El libro es uno de los más vendidos."))
    (send ?recomendacion put-razon ?razon)
  )
  (imprimir-recomendaciones)
)
