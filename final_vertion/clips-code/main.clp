
(defmodule MAIN (export ?ALL))

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

        (if (and (integerp ?resposta) (> ?resposta 0) (< ?resposta (length$ ?opciones)))
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

        (if (not (integerp ?respuesta))
            then
            (printout t "El valor introducido: " ?respuesta " no es correcto. Ingresa de nuevo" crlf)
            (bind ?noValid "NO")
            else
            (bind ?noValid "SI")
        )
    )

    ?respuesta
)

(deftemplate MAIN::ProblemaAbstracto
  (slot NivelPersonal
    (type SYMBOL)
    (allowed-symbols Bajo Medio Alto)
  )
  (slot NivelLiterario
    (type SYMBOL)
    (allowed-symbols Bajo Medio Alto)
  )
  (slot EstatusLibro
    (type SYMBOL)
    (allowed-symbols Bueno Malo Normal))
  (multislot GenerosInteres
    (type INSTANCE)
  )
  (multislot AutoresInteres
    (type INSTANCE)
  )
  (multislot TemasInteres
    (type INSTANCE)
  )  
)

(deftemplate MAIN::SolucionAbstracta
  (slot Dificultad
    (type SYMBOL)
    (allowed-symbols Facil Moderado Dificil)
  )
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
  ; Puedes agregar más atributos según sea necesario
)



(deftemplate MAIN::datos-libros
   (multislot lista-libros)
)
;;; Modulo de recopilacion de los datos del grupo + preferencias
(defmodule entrada_de_informacion_lector
	(import MAIN ?ALL)
	(export ?ALL)
)

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
        (if (integerp ?numAutoresPreferidos)
            then
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
            )
            else 
                (printout t "La entrada: "?numAutoresPreferidos " no es un entero." crlf)
        )
    )
    (printout t (send ?lector get-autores_preferidos)crlf)
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
    (printout t (send ?lector get-generos_preferidos)crlf)
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

    ;(printout t "Estos son los temas que devuelve la pregunta:"?temas_preferidos crlf) 
    (bind ?epocas-matching-preferidos (create$))
    (loop-for-count (?i 1 (length$ ?epocas_preferidos)) do
        (bind ?nombre (nth$ ?i ?epocas_preferidos))
        (bind ?epocas (find-all-instances ((?tema Tema)) (eq ?tema:nombre ?nombre)))
        (bind ?epocas-matching-preferidos (insert$ ?epocas-matching-preferidos 1 ?epocas))
    )
    (send ?lector put-epocas_preferidos ?epocas-matching-preferidos)
    (printout t (send ?lector get-temas_preferidos)crlf)
)

(defrule entrada_de_informacion_lector::establecer-interes-libros-complejos "Establece si el lector le interesa libros con cierta complejidad."
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "Te interesa leer libros con cierta complejidad"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_complejo TRUE)
        else 
        (send ?lector put-interes_complejo FALSE)
    )
    (printout t (send ?lector get-interes_complejo) crlf)
)

(defrule entrada_de_informacion_lector::establecer-interes-libros-extensos "Establece si el lector le interesa libros extensos."
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "Te interesa los libros extensos"))
    
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
    (bind ?respuesta (pregunta_si_o_no "Prefieres libros en papel?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-preferencia_papel TRUE)
        else 
        (send ?lector put-preferencia_papel FALSE)
    )
    (printout t (send ?lector get-preferencia_papel) crlf)
)


(defrule entrada_de_informacion_lector::establecer-idiomas-lector "Establece idiomas en los que el lector lee los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?entradaNoValida "NO")
    (while (eq ?entradaNoValida "NO")
        (bind ?numIdiomasPreferidos (pregunta_respuesta_numerica "¿En cuántos idiomas puedes leer libros?"))
        (bind ?idiomas_autor (create$))
        (if (and (> ?numIdiomasPreferidos 0) (integerp ?numIdiomasPreferidos))
            then
            (bind ?entradaNoValida "SI")
            (loop-for-count (?i 1 ?numIdiomasPreferidos) do
                (printout t "Indica el nombre del idioma número: " ?i " de tu lista de idiomas:" crlf)
                (bind ?nombre (readline))
                    (bind ?idioma (find-all-instances ((?idioma Idioma)) (eq ?idioma:nombre ?nombre)))
                    (bind ?idiomas_autor (insert$ ?idiomas_autor 1 ?idioma))
            )
            (send ?lector put-lee_en_idiomas ?idiomas_autor)
            else 
                (printout t "El número no es un entero." crlf)
        )
    )
    (printout t (send ?lector get-lee_en_idiomas)crlf)
)

(defrule entrada_de_informacion_lector::establecer-preferencia-moda "Establece si el lector prefiere libros de moda"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_si_o_no "¿Prefieres libros qu estan de moda?"))
    
    (if (eq ?respuesta TRUE)
        then 
        (send ?lector put-interes_moda TRUE)
        else 
        (send ?lector put-interes_moda FALSE)
    )
    (printout t (send ?lector get-interes_moda) crlf)
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
    (printout t (send ?lector get-interes_popularidad) crlf)
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
    (printout t (send ?lector get-interes_valoracion) crlf)
)

(defrule entrada_de_informacion_lector::establecer-tiempo-lector "Establece tiempo que el lector tiene planeado dedicar a la semana a la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?entradaNoValida1 "NO")
    (while (eq ?entradaNoValida1 "NO")
        (bind ?numLibros (pregunta_respuesta_numerica "¿Cuántos horas tienes pensado dedicar a la semana para leer libros?"))
    (if (and (> ?numLibros 0) (integerp ?numLibros))
        then
            (bind ?entradaNoValida1 "SI")
            (send ?lector put-tiempo_semanal_lectura ?numLibros)
        else 
        (printout t "El número no es un entero o es menor o igual a 0." crlf)
    )
    )
    (printout t (send ?lector get-tiempo_semanal_lectura)crlf)
)

(defrule entrada_de_informacion_lector::establecer-lugar-lectura "Establece el lugar donde el lector suele realizar la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?respuesta (pregunta_opciones_una_respuesta "Escoge en algunas de las siguientes opciones, el lugar donde sueles realizar la lectura. Se espera que escribas el nombre completo del lugar." Casa Cafetería BIblioteca Natura Metro Bus Avión Calle Parque))
    (send ?lector put-lugar_de_lectura ?respuesta)
    (printout t (send ?lector get-lugar_de_lectura)crlf)
)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULO ASIGNACION PROBLEMA ABSTRACTO

(defrule CalcularNivelPersonal
  ?lector <- (object (is-a Lector))
               (idiomas_habla $?idiomas)
               (tiempo_semanal_lectura ?tiempo)
               (edad ?edad)
  =>
  (bind ?numIdiomas (length$ ?idiomas))
  (bind ?nivel Bajo)
  
  ; Combinaciones para "Alto" Nivel
  (if (>= ?numIdiomas 3)
    then
    (bind ?nivel Alto)
  else
    ; Combinaciones para "Medio" Nivel
    (if (and (<= ?tiempo 15) (= ?numIdiomas 1) (>= ?edad 60))
      then
      (bind ?nivel Medio)
      else (if (and (<= ?tiempo 10) (>= ?numIdiomas 2) (> ?edad 40))
             then
             (bind ?nivel Medio)
      )
    )
  )
  
  (assert
    (ProblemaAbstracto
      (NivelPersonal ?nivel)
    )
  )
)


(defrule CalcularNivelLiterario
   ?lector <- (object (is-a Lector))
               (numero_de_libros_leidos ?numLibrosLeidos)
               (complejidad ?complejidad)
               (extension ?extension)
               (actividad_de_lectura_social ?actividadSocial&:(or (eq ?actividadSocial true) (eq ?actividadSocial false)))
  =>
  (bind ?nivel Bajo)
  
  ; Combinaciones para "Alto" Nivel
  (if (and (>= ?numLibrosLeidos 20) (eq ?complejidad TRUE) (eq ?extension true))
    then
    (bind ?nivel Alto)
  else
    ; Combinaciones para "Medio" Nivel
    (if (and (>= ?numLibrosLeidos 10) (eq ?actividadSocial true))
      then
      (bind ?nivel Medio)
    else
      ; Nivel "Bajo" por defecto
      (bind ?nivel Bajo)
    )
  )
  
  (assert
    (ProblemaAbstracto
      (NivelLiterario ?nivel)
    )
  )
)


(defrule CopiarDatosALProblemaAbstracto
  ?lector <- (object (is-a Lector))
               (autores_preferidos $?autores)
               (generos_preferidos $?generos)
               (temas_preferidos $?temas)
  =>
  ;retorna un subconjcto de 3 o menos instancias de la lista de los generos autores y temas del lector concreto
  (bind ?autoresSeleccionados (subseq$ ?autores 0 3))
  (bind ?generosSeleccionados (subseq$ ?generos 0 3))
  (bind ?temasSeleccionados (subseq$ ?temas 0 3))

  (assert
    (ProblemaAbstracto
      (AutoresInteres $?autoresSeleccionados)
      (GenerosInteres $?generosSeleccionados)
      (TemasInteres $?temasSeleccionados)
    )
  )
)


(defrule EstablecerEstatusLibro
  ?lector <- (object (is-a Lector))
               (interes_valoracion ?valoracion)
               (interes_popularidad ?popularidad)
               (interes_moda ?moda)
  =>
  (bind ?estatus Normal) 

  (if (and (eq ?valoracion true) (eq ?popularidad true) (eq ?moda true))
    then
    (bind ?estatus Bueno)
  else
    (if (or (eq ?valoracion false) (eq ?popularidad false) (eq ?moda false))
      then
      (bind ?estatus Malo)
  ))

    (assert
    (ProblemaAbstracto
      (EstatusLibro ?estatus)
    )
  )
)


(defrule DerivarDificultad
  ?problema <- (ProblemaAbstracto
                 (NivelPersonal ?nivelPersonal)
                 (NivelLiterario ?nivelLiterario))
  =>
  ; Determinar Dificultad en función de Nivel Personal y Nivel Literario
  (bind ?dificultad Moderado) ; Valor por defecto
  (if (or (eq ?nivelPersonal Bajo) (eq ?nivelLiterario Bajo))
    then
    (bind ?dificultad Facil)
    else
    (if (or (eq ?nivelPersonal Alto) (eq ?nivelLiterario Alto))
      then
      (bind ?dificultad Dificil)
  ))

  ; Crear instancia de SolucionAbstracta con la Dificultad derivada
  (assert
    (SolucionAbstracta
      (Dificultad ?dificultad)
    )
  )
)

(defrule CopiarGenerosYTemas
  ?problema <- (ProblemaAbstracto
                 (GenerosInteres $?generosInteres)
                 (TemasInteres $?temasInteres)
                 (AutoresInteres $?autoresInteres))
  ?solucion <- (SolucionAbstracta)
  =>
  ; Copiar GenerosInteres y TemasInteres del ProblemaAbstracto a la SolucionAbstracta
  (modify ?solucion
    (Genero $?generosInteres)
    (Temas $?temasInteres)
    (Autores $?autoresInteres)
  )
)

(defrule CopiarEstatusLibro
  ?problema <- (ProblemaAbstracto
                 (EstatusLibro ?estatusLibro))
  ?solucion <- (SolucionAbstracta)
  =>
  ; Copiar el valor de EstatusLibro del ProblemaAbstracto a la SolucionAbstracta
  (modify ?solucion
    (EstatusLibro ?estatusLibro)
  )
)

(defrule DerivarNivelLector
  ?problema <- (ProblemaAbstracto
                 (NivelPersonal ?nivelPersonal))
  ?solucion <- (SolucionAbstracta)
  =>
  (if (eq ?nivelPersonal Bajo)
    then
    (modify ?solucion (NivelLector Principiante))
  else
    (if (eq ?nivelPersonal Medio)
      then
      (modify ?solucion (NivelLector Intermedio))
    else
      (if (eq ?nivelPersonal Alto)
        then
        (modify ?solucion (NivelLector Avanzado))
      )
    )
  )

)