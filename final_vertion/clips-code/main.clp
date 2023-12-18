(defmodule MAIN (export ?ALL))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; FUNCIONES PREGUNTAS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
;; ¿Cuáles son tus autores preferidos? (Separados por comas): Autor1, Autor2, Autor3 !!!
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
        ; (printout t ?opciones crlf)
        ; (printout t ?res crlf)

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
        ; (printout t ?opciones crlf)
        ; (printout t ?res crlf)
        (loop-for-count (?index (length$ ?res)) do
            (bind ?element (nth$ ?index ?res))
            (if (integerp ?element)
                then
                    (if (<= 1 ?element (length$ ?opciones))
                        then
                        ;(printout t "Elemento válido: " ?element crlf)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Funcion para ordenar ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
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
  ; (printout t  ?libros)
  ?libros
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;FUNCIONES IMPRRESION ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deffunction imprimir-recomendaciones ()
  (printout t "Lista de recomendaciones:" crlf)

  (bind ?recomendaciones (find-all-instances ((?recomendacion RecomendacionDetalle)) TRUE)) 
  (bind ?recomendaciones (bubble-sort ?recomendaciones FALSE))
  (loop-for-count (?i (min 3 (length$ ?recomendaciones)))
    (printout t crlf)
    (printout t "----------------------------------------------------" crlf)
    (bind ?currentRecomendacion (nth$ ?i ?recomendaciones))
    (bind ?libro (send ?currentRecomendacion get-libro))
    (printout t "Titulo: " (send ?libro get-titulo) crlf)
    (printout t "Puntuacion: " (send ?currentRecomendacion get-puntaje) crlf)
    (bind $?razones (send ?currentRecomendacion get-razon))
    (printout t "Razon: " crlf)
    (loop-for-count (?j (length$ ?razones))
      (bind ?razon (nth$ ?j ?razones))
      (printout t ?j "."?razon crlf)
    )
    (printout t "----------------------------------------------------" crlf)
  )
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;funciones para booleanas ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;,

(deffunction calcular-estatus (?libro)
  (bind ?valoracion (send ?libro get-valoracion_media))
  (bind ?popularidad (send ?libro get-popularidad))
  (bind ?moda (send ?libro get-de_moda))

  ; Lógica para calcular el estatus en función de valoración, popularidad y moda
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
  ; (printout t "Estatus:"?estatus)
  ; (printout t "Estatus2:"?estatus2)
  ;;quiero que retorne FALSE SI NO CUMPLE CON NADA!!
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; deftemplates para problema abstracto y solcuion abstracto ;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(deftemplate MAIN::ProblemaAbstracto
  (slot NivelPersonal
    (type SYMBOL)
    ; (allowed-symbols Bajo Medio Alto)
    (default NULL)
  )
  (slot NivelLiterario
    (type SYMBOL)
    (default NULL)
  )
  (slot EstatusLibro
    (type SYMBOL)
    ; (allowed-symbols Bueno Malo Normal)
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

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULOS ;:::::::::
(deftemplate MAIN::datos-libros
   (multislot lista-libros)
)

;;; Modulo de recopilacion de los datos del grupo + preferencias
(defmodule entrada_de_informacion_lector
	(import MAIN ?ALL)
	(export ?ALL)
)

;;; Modulo de proceso de datos, una vez que tengamos todos los datos del lector solo tenemos que procsarolo
(defmodule procesado-datos
	(import MAIN ?ALL)
  (import entrada_de_informacion_lector ?ALL)
	(export ?ALL)
)

;;; Modulo de solucion, una vez que tengamos el problema abstracto definido
(defmodule generar-solucion
	(import MAIN ?ALL)
	(import entrada_de_informacion_lector  ?ALL)
	(import procesado-datos  ?ALL)
	(export ?ALL)
)

(defmodule procesar-libros
  (import MAIN ?ALL)
  (import entrada_de_informacion_lector  ?ALL)
  (import procesado-datos  ?ALL)
  (import generar-solucion  ?ALL)
  (export ?ALL)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;REGLAS;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defrule MAIN::iniPrograma "Regla PARA INICIAR EL PROGRAMA"
	(declare (salience 10))
	=>
	(printout t"----------------------------------------------------------" crlf)
    (printout t"**********************************************************" crlf)
	(printout t"  /////////////// RECOMENDADOR DE LIBROS \\\\\\\\\\\\\\\\\ " crlf)
    (printout t"**********************************************************" crlf)
	(printout t"----------------------------------------------------------" crlf)
	(printout t crlf)
	(printout t"¡Bienvenido! vamos a proceder a preguntarle ciertos aspectos para poder recomendarle libros que usted busca" crlf)
	(printout t crlf)
	(make-instance lector of Lector)
    (focus entrada_de_informacion_lector)
)

(defrule entrada_de_informacion_lector::establecer-nombre "Establece el nombre del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?nombre (pregunta-general "¿Cóme te llamas?"))
    (send ?lector put-nombre ?nombre)
)

(defrule entrada_de_informacion_lector::establecer_de_libros_leidos "Establece numero de libros leidos"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?num_libros (pregunta-numerica "¿Cuántos libros has leido?" 0 15000))
    (send ?lector put-numero_de_libros_leidos ?num_libros)
)

(defrule entrada_de_informacion_lector::establecer-libros-preferidos "Establece libros preferidos del que se acuerda el lector"
    ?lector <- (object (is-a Lector) (numero_de_libros_leidos ?numLibrosLeidos&:(> ?numLibrosLeidos 0)))
    =>
    (bind ?numlibros_preferidos (pregunta-numerica "Indica el numero de libros preferidos del que te acuerdes el título." 0 (send ?lector get-numero_de_libros_leidos)))
    (bind ?libros (create$))
    (if (> ?numlibros_preferidos 0)
        then
        (loop-for-count (?i 1 ?numlibros_preferidos) do
            (printout t "Indica el titulo del libro número: " ?i " de tu lista de libros preferidos:" crlf)
            (bind ?titulo (readline))
            (bind ?libros_pref (find-all-instances ((?libro Libro)) (eq ?libro:titulo ?titulo)))
            (bind ?libros (insert$ ?libros 1 ?libros_pref))
        )
    (send ?lector put-libros_preferidos ?libros)
    )
    ;(printout t (send ?lector get-libros_preferidos)crlf)
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
    (bind $?temas_preferidos (pregunta_opciones_multi_respuesta "Selecciona los indices de los temas que deseas que haya en un libro." ?tema-names))
    ;(printout t "Estos son los temas que devuelve la pregunta:"?temas_preferidos crlf) 
    (bind ?temas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?temas_preferidos)) do
        (bind ?nombre (nth$ ?i ?temas_preferidos))
        (bind ?temas-con-nombre (find-all-instances ((?tema Tema)) (eq ?tema:nombre ?nombre)))
        (bind ?temas-matching-preferidos (insert$ ?temas-matching-preferidos 1 ?temas-con-nombre))
    )
    (send ?lector put-temas_preferidos ?temas-matching-preferidos)
    ;(printout t (send ?lector get-temas_preferidos)crlf)
)

(defrule entrada_de_informacion_lector::establecer-autores-preferidos "Establece autores preferidos del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?entradaNoValida "NO")
    (while (eq ?entradaNoValida "NO")
      (bind ?numAutoresPreferidos (pregunta_respuesta_numerica "Indica el numero de autores preferidos del que te acuerdas el nombre."))
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
    ; (printout t (send ?lector get-autores_preferidos)crlf)
)


(defrule entrada_de_informacion_lector::establecer-generos-literarios-preferidos "Establece los generos literarios preferidos del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?generos (find-all-instances ((?generos Genero)) TRUE)) 
    (bind $?generos-names (create$))
    (loop-for-count (?i 1 (length$ ?generos)) do
        (bind ?nombre (send (nth$ ?i ?generos) get-nombre))
        (bind ?generos-names (insert$ ?generos-names 1 ?nombre))
    )
    (bind $?generos_preferidos (pregunta_opciones_multi_respuesta "Selecciona los índices de los generos a los que desearías que pertenecieran los libros." ?generos-names))
    ;(printout t "Estos son los temas que devuelve la pregunta:"?temas_preferidos crlf) 
    (bind ?generos-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?generos_preferidos)) do
        (bind ?nombre (nth$ ?i ?generos_preferidos))
        (bind ?generos_a (find-all-instances ((?genero Genero)) (eq ?genero:nombre ?nombre)))
        (bind ?generos-matching-preferidos (insert$ ?generos-matching-preferidos 1 ?generos_a))
    )
    (send ?lector put-generos_preferidos ?generos-matching-preferidos)
    ; (printout t (send ?lector get-generos_preferidos)crlf)
)

(defrule entrada_de_informacion_lector::establecer-epocas-preferidos "Establece temas preferidos que el lector quiere que tengan los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?epocas (find-all-instances ((?epoca Epoca)) TRUE)) 
    (bind $?epocas-names (create$))
    (loop-for-count (?i 1 (length$ ?epocas)) do
        (bind ?nombre (send (nth$ ?i ?epocas) get-nombre))
        (bind ?epocas-names (insert$ ?epocas-names 1 ?nombre))
    )
    (bind $?epocas_preferidos (pregunta_opciones_multi_respuesta "Selecciona los índices de las épocas a las que desearías que pertenecieran los libros." ?epocas-names))
    ;(printout t "Estos son los temas que devuelve la pregunta:"?epocas_preferidos crlf) 
    (bind ?epocas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?epocas_preferidos)) do
        (bind ?nombre (nth$ ?i ?epocas_preferidos))
        (bind ?epocas (find-all-instances ((?epoca Epoca)) (eq ?epoca:nombre ?nombre)))
        (bind ?epocas-matching-preferidos (insert$ ?epocas-matching-preferidos 1 ?epocas))
    )
    (send ?lector put-epocas_preferidos ?epocas-matching-preferidos)
    ; (printout t (send ?lector get-epocas_preferidos)crlf)
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
    ; (printout t (send ?lector get-interes_complejo) crlf)
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
    
    ; (printout t (send ?lector get-preferencia_papel) crlf)
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
    (bind $?idiomas_selec (pregunta_opciones_multi_respuesta "Selecciona los idiomas en los que te gustaria que el libro este escrito." ?idiomas-names))
    ;(printout t "Estos son los temas que devuelve la pregunta:"?temas_preferidos crlf) 
    (bind ?idiomas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?idiomas_selec)) do
        (bind ?nombre (nth$ ?i ?idiomas_selec))
        (bind ?idioma (find-all-instances ((?idioma Idioma)) (eq ?idioma:nombre ?nombre)))
        (bind ?idiomas-matching-preferidos (insert$ ?idiomas-matching-preferidos 1 ?idioma))
    )
    (send ?lector put-lee_en_idiomas ?idiomas-matching-preferidos)
    ; (printout t (send ?lector get-lee_en_idiomas)crlf)
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
    ; (printout t (send ?lector get-interes_moda) crlf)
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
    ; (printout t (send ?lector get-interes_popularidad) crlf)
)

(defrule entrada_de_informacion_lector::establecer-preferencia-valoracion "Establece si el lector prefiere libros con buena valoracion"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Prefieres libros que tienen buena valoración?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_valoracion TRUE)
        else 
        (send ?lector put-interes_valoracion FALSE)
    )
    ; (printout t (send ?lector get-interes_valoracion) crlf)
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
    ; (printout t (send ?lector get-tiempo_semanal_lectura)crlf)
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
    ; (printout t (send ?lector get-actividad_de_lectura_social) crlf)
)


(defrule entrada_de_informacion_lector::establecer-lugar-lectura "Establece el lugar donde el lector suele realizar la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_opciones_una_respuesta "Escoge en algunas de las siguientes opciones, el lugar donde sueles realizar la lectura. Se espera que escribas el nombre completo del lugar." Casa Cafetería BIblioteca Natura Metro Bus Avión Calle Parque))
    (send ?lector put-lugar_de_lectura ?respuesta)
    ; (printout t (send ?lector get-lugar_de_lectura)crlf)
)

(defrule entrada_de_informacion_lector::cambiar_a_procesado_datos "Regla para cambiar a procesado de datos"
    =>
    (focus procesado-datos)
    (printout t "Cambiando a procesado de datos..." crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULO ASIGNACION PROBLEMA ABSTRACTO ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
  ;(printout t ?numIdiomas)
  (bind ?nivel Bajo)
  
  ; Combinaciones para "Alto" Nivel
  (if (and (> ?numIdiomas 3) (or (> ?tiempo 15) (>= ?edad 30)))
    then
    (bind ?nivel Alto)
  else
    ; Combinaciones para "Medio" Nivel
    (if (and (= ?numIdiomas 2) (or (> ?tiempo 7) (>= ?edad 25)))
      then
      (bind ?nivel Medio)
    )
  )
  ; (printout t "El nivel Personal es:"?nivel crlf)

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

  ; Combinaciones para "Alto" Nivel
  (if (and (>= ?numLibrosLeidos 20) (eq ?complejidad TRUE) (or (eq ?extension TRUE) (eq ?actividadSocial TRUE)))
    then
    (bind ?nivel Alto)
  else
    ; Combinaciones para "Medio" Nivel
    (if (and (>= ?numLibrosLeidos 10) (or (eq ?extension TRUE) (eq ?actividadSocial TRUE)))
      then
      (bind ?nivel Medio)
    else
      ; Nivel "Bajo" por defecto
      (bind ?nivel Bajo)
    )
  )
  ; (printout t "El nivel Literario es:"?nivel crlf)
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
  ;retorna un subconjcto de 3 o menos instancias de la lista de los generos autores y temas del lector concreto
  (printout t "Procesando datos (autores,generos,temas)..."crlf)
  ; Copiar AutoresPreferidos, GenerosPreferidos y TemasPreferidos del Lector a ProblemaAbstracto
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
  ; (printout t "Los libros tienen la siguiente caracteristcas: " ?estatus crlf)

)

(defrule procesado-datos::Cambiar_a_generar_solucion "Regla para cambiar a generar solucion"
    ?lector <- (object (is-a Lector))
    ?problema <- (ProblemaAbstracto)
    =>
    (focus generar-solucion)
  (printout t "Cambiando a generar solución abstracta..."crlf)

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

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
  ; Determinar Dificultad en función de Nivel Personal y Nivel Literario
  (printout t "Calculando la dificultad de análisis y compresión del lector hacía un libro..."crlf)
  (bind ?NivelLector Intermedio) ; Valor por defecto
  (if (or (eq ?nivelPersonal Bajo) (eq ?nivelLiterario Bajo) (eq ?contexto RUIDOSO))
    then
    (bind ?NivelLector Principiante)
    else
    (if (or (eq ?nivelPersonal Alto) (eq ?nivelLiterario Alto))
      then
      (bind ?NivelLector Avanzado)
  ))

  ; Crear instancia de SolucionAbstracta con la NivelLector derivada
  (assert
    (SolucionAbstracta
      (NivelLector Intermedio)
    )
  )
  ; (printout t "El lector necesita libros con la siguiente dificultad: " ?NivelLector crlf) 
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
    ; Copiar GenerosInteres y TemasInteres del ProblemaAbstracto a la SolucionAbstracta
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

  ; Copiar el valor de EstatusLibro del ProblemaAbstracto a la SolucionAbstracta
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
    (focus procesar-libros)
  (printout t "Cambiando al proceso del refinamiento de la solución..."crlf)

)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULO PROCESAR LIBROS ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule procesar-libros::crear-lista-de-libros
  (not (lista-de-libros $?))
  =>
  (bind ?libros (find-all-instances ((?libro Libro)) TRUE))
  (assert (lista-de-libros ?libros))
  (printout t "Gestionando Instancias de libros..."crlf)
  ; (printout t ?libros crlf)
)

(defrule procesar-libros::crear-puntuacion-recomendaciones
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
  ; (printout t "distopia y ciencia tiene que imprimir, y imprime:" ?generosSimilares crlf)
  (foreach ?libro ?libros
    (if (cumple-con-solucion ?libro ?generos ?temas ?autores ?nivel ?estatus2 ?idiomas ?generosSimilares ?temasSimilares ?autoresSimilares ?idiomasSimilares)
      then
      (bind ?puntuacion 0)
      (bind ?razones (create$))  
      (if (cumple-restricion-instancias (send ?libro get-genero_de_libro) ?generos)
        then
        (bind ?puntuacion (+ ?puntuacion 15))
        (bind ?razon  "Cumple género.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-idioma_de_libro) ?idiomas)
        then
        (bind ?puntuacion (+ ?puntuacion 15))
        (bind ?razon  "Cumple con idioma.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-escrito_por) ?autores)
        then
        (bind ?puntuacion (+ ?puntuacion 10))
        (bind ?razon  "Cumple autor.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-tema_de_libro) ?temas)
        then
        (bind ?puntuacion (+ ?puntuacion 10))
        (bind ?razon  "Cumple tema.")
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
        (bind ?razon  "Cumple autor similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )

      (if (cumple-restricion-instancias (send ?libro get-tema_de_libro) ?temasSimilares)
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple tema similar a uno de los libros leídos.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      ) 

      ; (printout t "Debug: nivel lector = " ?nivel crlf)
      ; (printout t "Debug: nivel lector libro = " (send ?libro get-NivelLector) crlf)
      (if (eq (send ?libro get-NivelLector) ?nivel)
        then
        (bind ?puntuacion (+ ?puntuacion 5))
        (bind ?razon  "Cumple nivel lector.")
        (bind ?razones (insert$ ?razones 1 ?razon))
      )
      ;;hay que calcular el estatus del libro! se calcula asi
      (bind ?estatus (calcular-estatus ?libro))
      ; (printout t "Debug: estatus = " ?estatus " estatus2 = " ?estatus2 crlf)
      (if (eq ?estatus ?estatus2)
        then
        ; (printout "Estoy Aqui")
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
    (bind ?razon (insert$ ?razones 1 "Mejor Venta."))
    (send ?recomendacion put-razon ?razon)
  )
  (imprimir-recomendaciones)
)


;;ESTADO ACTUAL (BEST CASE SUPONEMOS QUE FUNCIONA TODO)
;; TENEMOS 3 MODULOS
;; 1 --> ENTRADA DATOS LECTOR (PREGUNTAS) PROBLEMA CONCRETO
;; 2 --> RECOGER DATOS Y PASARLOS A PROBLEMA ABSTRACTO
;; 3 --> A PARTIR DE PROBLEMA ABSTRACTO GENERAR SOLUCION ABSTRACTA

;; AHORA HAY QUE HACER QUE EL SISTEMA RECOMIENDE LOS LIBROS QUE CUMPLAN CON LA SOLUCION ABSTRACTA

;;LO HAREMOS EN DOS PASOS 
;; 1 . DESCARTE DE LIBROS QUE NO CUMPLAN NADA
;; 2 . ORDENAR LOS LIBROS QUE CUMPLAN POR PUNTUACION Y CADA VEZ QUE AUMENTEMOS DE PUNTOS 
    ;; CADA VEZ QUE AUMENTEMOS DE PUNTOS A UN LIBRO X --> hay que guardar en algun lado que hemos aumentado de puntos a ese libro por y razon
    ;; pueden haber muchas razones por la cual hemos uamentado los puntos
    ;; al final printeamos los 3 con mas puntos y sus respectivos razones
    ;; en defecto, si no hay 3 se completa con libros con mayores ventas
    
;; recomendacion (LIBROS + PUNTUAJE+MOTIVO)  1 --> *  recomendacion_detallada (libro + razones) l