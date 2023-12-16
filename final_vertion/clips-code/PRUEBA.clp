(defclass Epoca
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot autores_de_epoca
        (type INSTANCE)
        (create-accessor read-write))
    (multislot libros_de_epoca
        (type INSTANCE)
        (create-accessor read-write))
    (slot año_final_epoca
        (type INTEGER)
        (create-accessor read-write))
    (slot año_inicio_epoca
        (type INTEGER)
        (create-accessor read-write))
    (multislot descripcion_epoca
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Barroco
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Clasica
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ilustracion
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Medieval
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Modernismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Posmodernismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Realismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Renacimiento
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Romanticismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Simbolismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Vanguardismo
    (is-a Epoca)
    (role concrete)
    (pattern-match reactive)
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot edad
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (slot epoca_de_autor
        (type INSTANCE)
        (create-accessor read-write))
    (multislot escribe_en_idiomas
        (type INSTANCE)
        (create-accessor read-write))
    (multislot escribe_generos
        (type INSTANCE)
        (create-accessor read-write))
    (multislot libros_escritos
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Lector
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot autores_preferidos
        (type INSTANCE)
        (create-accessor read-write))
    (multislot epocas_preferidos
        (type INSTANCE)
        (create-accessor read-write))
    (multislot generos_preferidos
        (type INSTANCE)
        (create-accessor read-write))
    (multislot lee_en_idiomas
        (type INSTANCE)
        (create-accessor read-write))
    (multislot libros_preferidos
        (type INSTANCE)
        (create-accessor read-write))
    (multislot temas_preferidos
        (type INSTANCE)
        (create-accessor read-write))
    (slot actividad_de_lectura_social
        (type SYMBOL)
        (create-accessor read-write))
    (multislot expectativas
        (type STRING)
        (create-accessor read-write))
    (slot interes_complejo
        (type SYMBOL)
        (create-accessor read-write))
    (slot interes_extenso
        (type SYMBOL)
        (create-accessor read-write))
    (slot interes_moda
        (type SYMBOL)
        (create-accessor read-write))
    (slot interes_popularidad
        (type SYMBOL)
        (create-accessor read-write))
    (slot interes_valoracion
        (type SYMBOL)
        (create-accessor read-write))       
    (multislot lugar_de_lectura
        (type STRING)
        (create-accessor read-write))
    (slot numero_de_libros_leidos
        (type INTEGER)
        (create-accessor read-write))
    (slot preferencia_papel
        (type SYMBOL)
        (create-accessor read-write))
    (slot tiempo_semanal_lectura
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Tema
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot libros_de_tema
        (type INSTANCE)
        (create-accessor read-write))
    (slot descripcion_tema
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Amor
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Aventura
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Etica
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Identidad
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Poder
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tecnologia
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Tiempo
    (is-a Tema)
    (role concrete)
    (pattern-match reactive)
)

(defclass Genero
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot autores_de_genero
        (type INSTANCE)
        (create-accessor read-write))
    (multislot libros_de_genero
        (type INSTANCE)
        (create-accessor read-write))
    (multislot caracteristicas_genero
        (type STRING)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)


(defclass Ciencia
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Distopia
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Drama
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Fantasia
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ficcion
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Historia
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Oeste
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Policiaca
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Romantico
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Terror
    (is-a Genero)
    (role concrete)
    (pattern-match reactive)
)

(defclass Idioma
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot hablantes
        (type INTEGER)
        (create-accessor read-write))
    (slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot epoca_de_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot escrito_por
        (type INSTANCE)
        (create-accessor read-write))
    (slot genero_de_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot idioma_de_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot tema_de_libro
        (type INSTANCE)
        (create-accessor read-write))
    (slot año_publicacion
        (type INTEGER)
        (create-accessor read-write))
    (slot complejidad
        (type STRING)
        (create-accessor read-write))
    (multislot de_moda
        (type SYMBOL)
        (create-accessor read-write))
    (slot disponibilidad
        (type STRING)
        (create-accessor read-write))
    (slot numero_paginas
        (type INTEGER)
        (create-accessor read-write))
    (slot popularidad
        (type SYMBOL)
        (create-accessor read-write))
    (slot titulo
        (type STRING)
        (create-accessor read-write))
    (slot valoracion_media
        (type INTEGER)
        (create-accessor read-write))
    (slot ventas
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Recomendacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot recomienda
        (type INSTANCE)
        (create-accessor read-write))
)

(definstances instances
    ([Jonh_Doe] of Autor
         (epoca_de_autor  [epoca1])
         (escribe_en_idiomas  [idioma1])
         (escribe_generos  [genero1])
         (libros_escritos  [libro1])
         (edad  45)
         (nombre  "Jonh Doe")
    )

    ([epoca1] of Renacimiento
         (autores_de_epoca  [Jonh_Doe])
         (libros_de_epoca  [libro1])
         (año_final_epoca  1600)
         (año_inicio_epoca  1300)
         (descripcion_epoca  "Período cultural y artístico que siguió a la Edad Media.")
         (nombre  "Renacimiento")
    )

    ([genero1] of Ciencia
         (autores_de_genero  [Jonh_Doe])
         (libros_de_genero  [libro1])
         (caracteristicas_genero  "Género que explora conceptos futuristas y tecnológicos.")
         (nombre  "Ciencia")
    )

    ([idioma1] of Idioma
         (hablantes  380000000)
         (nombre  "Ingles")
    )

    ([libro1] of Libro
         (epoca_de_libro  [epoca1])
         (escrito_por  [Jonh_Doe])
         (genero_de_libro  [genero1])
         (idioma_de_libro  [idioma1])
         (tema_de_libro  [tema1])
         (año_publicacion  2005)
         (complejidad  "Media")
         (de_moda  TRUE)
         (disponibilidad  "ambos")
            (popularidad  TRUE)
         (titulo  "Viaje a las Estrellas")
         (valoracion_media  4.0)
         (ventas  100000)
    )

    ([tema1] of Aventura
         (nombre "Aventura")
    )
    
    ([tema2] of Etica
        (nombre "Etica")
    )

)

(defmodule MAIN (export ?ALL))

(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (printout t crlf) ; Salto de línea adicional
    (bind ?respuesta (read))
    (while (not (and (>= ?respuesta ?rangini) (<= ?respuesta ?rangfi))) do
    (printout t crlf) ; Salto de línea adicional
        (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
        (printout t crlf)
        (bind ?respuesta (read))
    )
    ?respuesta
)
;; ¿Cuáles son tus autores preferidos? (Separados por comas): Autor1, Autor2, Autor3 !!!
(deffunction pregunta-cadena (?pregunta)
   (format t "%s " ?pregunta)
   (printout t crlf) ; Salto de línea adicional
   (bind ?respuesta (readline))
   (bind ?respuestas (explode$ ?respuesta))
   ?respuestas
)

(deffunction pregunta-general (?pregunta)
    (format t "%s" ?pregunta)
    (printout t crlf) ; Salto de línea adicional
    (bind ?respuesta (read))
    ?respuesta
)

(deffunction pregunta_opciones_una_respuesta (?pregunta $?opciones)
    (progn$ (?var ?opciones) (lowcase ?var))
    (printout t ?pregunta crlf)
    (loop-for-count (?i (length$ ?opciones)) do
        (printout t ?i "."  (nth$ ?i ?opciones)  crlf)
    )
    (bind ?respuesta (read))
    (while (not (member$ (lowcase ?respuesta) ?opciones)) do
        (printout t ?pregunta crlf)
        (loop-for-count (?i (length$ ?opciones)) do
            (printout t ?i "." (nth$ ?i ?opciones)  crlf)
        )
        (bind ?respuesta (read))
    )
    ?respuesta
)


(deffunction pregunta_opciones_multi_respuesta (?pregunta $?opciones)
    (bind ?entradaNoValida "NO")
    (bind ?respuestas (create$))
    ; (printout t $?opciones  crlf)
    ; (progn$ (?var ?opciones) (lowcase ?var))
    (while (not (eq ?entradaNoValida "SI")) do
        (printout t ?pregunta crlf)
        (loop-for-count (?i (length$ ?opciones)) do
            (printout t ?i "." (nth$ ?i ?opciones)  crlf)
        )
        ; (bind ?respuesta (lowcase (readline)))
        (bind ?respuesta (readline))
        (bind ?palabras (explode$ ?respuesta))
        (bind ?entradaNoValida "SI")
        (loop-for-count (?i (length$ ?palabras)) do
            ;(printout t ?i "." (nth$ ?i ?palabras)  crlf)
            (bind ?palabra_actual (nth$ ?i ?palabras))
            (if (not (member$ ?palabra_actual ?opciones))
                then
                (printout t "La palabra '" ?palabra_actual "' no está en la lista de temas. Por favor, inténtelo de nuevo." crlf)
                (bind ?entradaNoValida "NO") 
            )
        )
    )
    (if (eq ?entradaNoValida "SI")
        then
        (bind ?palabras (explode$ ?respuesta))
        (bind ?respuestas (create$ ?respuestas ?palabras))
    )
    ; (printout t ?respuestas)
    ; (printout t ?respuesta)
    ?respuestas
)

(deffunction pregunta_personaliza (?pregunta)
    (printout t "Hola estoy aqui" crlf) 
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


(deftemplate MAIN::datos-libros
   (multislot lista-libros)
)
;;; Modulo de recopilacion de los datos del grupo + preferencias
(defmodule entrada_de_informacion_lector
	(import MAIN ?ALL)
	(export ?ALL)
)


(defrule MAIN::INICIODELPROGRAMA "Regla PARA INICIAR EL PROGRAMA"
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

; (defrule entrada_de_informacion_lector::pregunta-nombre
;    ?lector <- (object (is-a Lector))
;    =>
;    (send ?lector put-edad )
;    (printout t "Hola te amo" crlf)
; )


; (defrule entrada_de_informacion_lector::pregunta-edad
;    ?lector <- (object (is-a Lector))
;    =>
;     (send ?lector get-edad)
;     (printout t "Hola no te amo" (send ?lector get-edad) crlf)
; )

; (defrule imprimir-nombre
; ?est<-(object (is-a Lector) (edad 12))
;  =>
;  (printout t (instance-name ?est) crlf)
;  )
 

(defrule entrada_de_informacion_lector::establecer-nombre "Establece el nombre del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?nombre (pregunta-general "¿Cóme te llamas?"))
    (send ?lector put-nombre ?nombre)
)

(defrule entrada_de_informacion_lector::establecer-edad "Establece la edad del lector"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?asigna-edad (pregunta-numerica "¿Qué edad tienes?" 6 120))
    (send ?lector put-edad ?asigna-edad)
)

(defrule entrada_de_informacion_lector::establecer-finalidad-lectura "Establece finalidad de la lectura"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?finalidad (pregunta_opciones_una_respuesta "¿Cuál es la finalidad de realizar una lectura?" aprendizaje entretenimiento reflexión cualquiera))
    (send ?lector put-expectativas ?finalidad)
    (printout t ?finalidad)
)


; (defclass Lector
;     (is-a Persona)
;     (role concrete)
;     (pattern-match reactive)
;     (multislot autores_preferidos
;         (type INSTANCE)
;         (create-accessor read-write))
;     (multislot epocas_preferidos
;         (type INSTANCE)
;         (create-accessor read-write))
;     (multislot generos_preferidos
;         (type INSTANCE)
;         (create-accessor read-write))
;     (multislot lee_en_idiomas
;         (type INSTANCE)
;         (create-accessor read-write))
;     (multislot libros_preferidos
;         (type INSTANCE)
;         (create-accessor read-write))
;     (multislot temas_preferidos
;         (type INSTANCE)
;         (create-accessor read-write))
;     (slot actividad_de_lectura_social
;         (type SYMBOL)
;         (create-accessor read-write))
;     (multislot expectativas
;         (type STRING)
;         (create-accessor read-write))
;     (slot interes_complejo
;         (type SYMBOL)
;         (create-accessor read-write))
;     (slot interes_extenso
;         (type SYMBOL)
;         (create-accessor read-write))
;     (slot interes_moda
;         (type SYMBOL)
;         (create-accessor read-write))
;     (multislot lugar_de_lectura
;         (type STRING)
;         (create-accessor read-write))
;     (slot numero_de_libros_preferidos
;         (type INTEGER)
;         (create-accessor read-write))
;     (slot preferencia_papel
;         (type SYMBOL)
;         (create-accessor read-write))
;     (slot tiempo_semanal_lectura
;         (type INTEGER)
;         (create-accessor read-write))
; )

; (defrule imprimir-nombre
; 2 ?est<-(object (is-a Estudiante) (edad 25))
; 3 =>
; 4 (printout t (instance-name ?est) crlf)
; 5 ) --> retorna el nombre de la instancia [] de estudadiente de edad 24

(defrule entrada_de_informacion_lector::establecer_de_libros_leidos "Establece numero de libros leidos"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?num_libros (pregunta-numerica "¿Cuántos libros has leido?" 0 15000))
    (send ?lector put-numero_de_libros_leidos ?num_libros)
)

; (defclass Libro
;     (is-a USER)
;     (slot titulo (type SYMBOL))
;     ; Add other slots as needed
; )
; (assert (Libro (titulo "Title1")))

; (bind ?libros_pref (find-all-instances ((?libro Libro)) (eq ?libro:titulo ?titulo)))

(defrule entrada_de_informacion_lector::establecer-libros-preferidos "Establece libros preferidos del que se acuerda el lector"
    ?lector <- (object (is-a Lector) (numero_de_libros_leidos ?numLibrosLeidos&:(> ?numLibrosLeidos 0)))
    =>
    (bind ?numlibros_preferidos (pregunta-numerica "Indica el numero de libros preferidos del que te acuerdes el título." 0 (send ?lector get-numero_de_libros_leidos)))
    (bind ?libros (create$))
    
    (if (> ?numlibros_preferidos 0)
        then
        (loop-for-count (?i 1 ?numlibros_preferidos) do
            (bind ?titulo (readline))
                (bind ?libros_pref (find-all-instances ((?libro Libro)) (eq ?libro:titulo ?titulo)))
                (bind ?libros (insert$ ?libros 1 ?libros_pref))
        )
    (send ?lector put-libros_preferidos ?libros)
    )
    (printout t (send ?lector get-libros_preferidos))
)

(defrule entrada_de_informacion_lector::establecer-temas-preferidos "Establece temas preferidos que el lector quiere que tengan los libros"
    ?lector <- (object (is-a Lector))
    =>
    (bind ?temas (find-all-instances ((?tema Tema)) TRUE)) ; pone todos los temas
    
    (bind $?tema-names (create$))
    
    (loop-for-count (?i 1 (length$ ?temas)) do
        (bind ?nombre (send (nth$ ?i ?temas) get-nombre))
        (bind ?tema-names (insert$ ?tema-names 1 (sym-cat ?nombre)))
    )

    ;(printout t ?tema-names)
        (bind $?temas_preferidos (pregunta_opciones_multi_respuesta "Escoge los temas que deseas que haya en un libro." ?tema-names))
        ;(printout t ?temas_preferidos crlf) 
        (bind ?temas-matching-preferidos (create$))
        (loop-for-count (?i 1 (length$ ?temas_preferidos)) do
            (bind ?nombre (nth$ ?i ?temas_preferidos))
            (bind ?saludo_con_comillas (format nil "\"%s\"" ?nombre))
            ;(bind ?nombre-con-comillas (format t "\"%s\"" ?nombre))
            (printout t "hola que hace" ?saludo_con_comillas "hi:" "Etica"crlf)

            (if (eq ?saludo_con_comillas "Etica")
                then (printout t "hola tengo sueño")
            )
        
        (bind ?temas-con-nombre (find-all-instances ((?tema Tema)) (eq ?tema:nombre "Etica")))
        (printout t "holaestoyaqui1"?temas-con-nombre crlf)
        (bind ?temas-matching-preferidos (insert$ ?temas-matching-preferidos 1 ?temas-con-nombre))
    )
    ; ;(printout t ?temas-matching-preferidos)
    ; (bind ?saludo hola)

    ; (bind ?saludo_con_comillas (format nil "\"%s\"" ?saludo))

    ; ; Print the values
    ; (printout t "saludo: " ?saludo_con_comillas crlf)
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






; (defrule entrada_de_informacion_lector::establecer-temas-de-interes "Establece los temas que el lector le interesa que tenga un libro"
;     ?no_asignado <- (datos_lector (temas-de-interes "N/A"))
;     =>
;     (bind ?temas (pregunta_opciones_multi_respuesta "Elige algunas de las opciones sobre temas que te interese que tenga el libro" Etica Identidad Poder Amor Aventura Tiempo Tecnología cualquiera))
;     (modify ?no_asignado (temas-de-interes $?temas))
; )

; (defrule entrada_de_informacion_lector::establecer-dispositivos "Establece los dispositivos para leer del lector"
;     ?no_asignado <- (datos_lector (autores-de-interes "N/A"))
;     =>
;     (bind ?autores (pregunta-general "Indica algunos de los autores del que te interese leer las obras."))
;     (modify ?no_asignado (autores-de-interes ?autores))
; )

; (defrule entrada_de_informacion_lector::establecer-generos-literario "Establece los generos literario que el lector prefiere"
;     ?no_asignado <- (datos_lector (generos-literarios "N/A"))
;     =>
;     (bind ?generos (pregunta_opciones_multi_respuesta "Escoge los géneros literarios de tu interés." Aventura Ciencia Clasica contemporanea distopía Drama Fantasía Ficcion Historia Oeste Policiaca Realismo Romatica Terror))
;     (modify ?no_asignado (generos-literarios $?generos))
; )