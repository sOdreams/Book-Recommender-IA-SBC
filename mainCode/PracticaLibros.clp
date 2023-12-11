
(defclass Generos
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot genero_de_epoca
        (type INSTANCE)
        (allowed-classes Epoca)
        (create-accessor read-write))
    (single-slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Aventuras
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ciencia
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Clasica
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Contemporanea
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Distopia
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Drama
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Fantasia
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Ficcion
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Historia
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Oeste
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Policiaca
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Realismo
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Romantica
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Terror
    (is-a Generos)
    (role concrete)
    (pattern-match reactive)
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot edad
        (type INTEGER)
        (create-accessor read-write))
    (multislot idiomas
        (type STRING)
        (create-accessor read-write))
    (single-slot nacionalidad
        (type STRING)
        (create-accessor read-write))
    (single-slot nombre
        (type STRING)
        (create-accessor read-write))
)

(defclass Autor
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot autor_de_epoca
        (type INSTANCE)
        (allowed-classes Epoca)
        (create-accessor read-write))
    (multislot autor_escribe_genero
        (type INSTANCE)
        (allowed-classes Generos)
        (create-accessor read-write))
    (multislot ha_escrito
        (type INSTANCE)
        (allowed-classes Libro)
        (create-accessor read-write))
    (multislot topObjectProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Lector
    (is-a Persona)
    (role concrete)
    (pattern-match reactive)
    (multislot autores_preferidos
        (type INSTANCE)
        (allowed-classes Autor)
        (create-accessor read-write))
    (multislot epoca_preferida
        (type INSTANCE)
        (allowed-classes Epoca)
        (create-accessor read-write))
    (multislot generos_preferidos
        (type INSTANCE)
        (allowed-classes Generos)
        (create-accessor read-write))
    (multislot libros_leidos
        (type INSTANCE)
        (allowed-classes Libro)
        (create-accessor read-write))
    (multislot libros_preferidos
        (type INSTANCE)
        (allowed-classes Libro)
        (create-accessor read-write))
    (multislot autores_fav
        (type STRING)
        (create-accessor read-write))
    (multislot dispositivos_para_leer
        (type STRING)
        (create-accessor read-write))
    (multislot epoca_lit_fav
        (type STRING)
        (create-accessor read-write))
    (multislot frecuencia_semanal_lectura
        (type INTEGER)
        (create-accessor read-write))
    (multislot generos_fav
        (type STRING)
        (create-accessor read-write))
    (multislot importancia_popularidad
        (type STRING)
        (create-accessor read-write))
    (multislot importancia_valoracion
        (type INTEGER)
        (create-accessor read-write))
    (multislot lugar_de_lectura
        (type STRING)
        (create-accessor read-write))
    ;;; Con que objetivo lee, para entretenerse, para aprender..?
    (single-slot objetivo_lectura
        (type STRING)
        (create-accessor read-write))
    (single-slot preferencia_libros_complejos
        (type INTEGER)
        (create-accessor read-write))
    (single-slot preferencia_nacional
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Epoca
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot epoca_tiene_autores
        (type INSTANCE)
        (allowed-classes Autor)
        (create-accessor read-write))
    (multislot epoca_tiene_generos
        (type INSTANCE)
        (allowed-classes Generos)
        (create-accessor read-write))
    (multislot epoca_tiene_libros
        (type INSTANCE)
        (allowed-classes Libro)
        (create-accessor read-write))
    (multislot autores_representativos
        (type STRING)
        (create-accessor read-write))
    (multislot libros_representativos
        (type STRING)
        (create-accessor read-write))
    (single-slot nombre
        (type STRING)
        (create-accessor read-write))
    (multislot periodo
        (type STRING)
        (create-accessor read-write))
    (multislot topDataProperty
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Libro
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (single-slot libro_de_epoca
        (type INSTANCE)
        (allowed-classes Epoca)
        (create-accessor read-write))
    (multislot libro_de_genero
        (type INSTANCE)
        (allowed-classes Generos)
        (create-accessor read-write))
    (single-slot autor
        (type STRING)
        (create-accessor read-write))
    (single-slot complejidad
        (type SYMBOL)
        (create-accessor read-write))
    ;;; qué se espera del libro, aprender? entretener?...
    (single-slot expectativas
        (type STRING)
        (create-accessor read-write))
    (single-slot fecha_publicacion
        (type STRING)
        (create-accessor read-write))
    (multislot formato
        (type STRING)
        (create-accessor read-write))
    (single-slot idioma
        (type STRING)
        (create-accessor read-write))
    (single-slot titulo
        (type STRING)
        (create-accessor read-write))
    (single-slot paginas
        (type INTEGER)
        (create-accessor read-write))
    (single-slot popularidad
        (type STRING)
        (create-accessor read-write))
    (single-slot valoracion
        (type INTEGER)
        (create-accessor read-write))
)

(defclass Recomendacion
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    ;;; esta será la clase que daremos de solucion, es decir los tres libros recomendados.
    (multislot recomienda
        (type INSTANCE)
        (allowed-classes Libro)
        (create-accessor read-write))
)

(definstances instances
    ; Épocas
    ([Renacimiento] of Epoca
        (nombre "Renacimiento")
        (periodo "1500 a 1800"))

    ([SigloDeOro] of Epoca
        (nombre "Siglo de Oro")
        (periodo "1492 a 1659"))

    ([Contemporanea] of Epoca
        (nombre "Contemporánea")
        (periodo "1900 - Actualidad"))

    ; Géneros
    ([Romantico] of Romantica
        (nombre "Romántico"))

    ([Drama] of Drama
        (nombre "Drama"))

    ([Distopia] of Distopia
        (nombre "Distopía"))

    ([Aventuras] of Aventuras
        (nombre "Aventuras"))

    ([Ciencia] of Ciencia
        (nombre "Ciencia"))

    ; Libros
    ([Romeo_y_Julieta] of Libro
        (autor "William")
        (complejidad "Media")
        (expectativas "Entretenimiento")
        (fecha_publicacion 1842)
        (formato 0)
        (libro_de_genero [Romantico])
        (idioma "Inglés")
        (paginas 248)
        (popularidad 10)
        (titulo "Romeo y Julieta")
        (valoracion 4.3)
        (libro_de_epoca [Renacimiento]))

        ; Libros adicionales
    ([Hamlet] of Libro
        (autor "William Shakespeare")
        (complejidad "Alta")
        (expectativas "Tragedia")
        (fecha_publicacion 1603)
        (formato 0)
        (libro_de_genero [Drama])
        (idioma "Inglés")
        (paginas 400)
        (popularidad 9)
        (titulo "Hamlet")
        (valoracion 4.8)
        (libro_de_epoca [Renacimiento]))

    ([Macbeth] of Libro
        (autor "William Shakespeare")
        (complejidad "Alta")
        (expectativas "Tragedia")
        (fecha_publicacion 1623)
        (formato 0)
        (libro_de_genero [Drama])
        (idioma "Inglés")
        (paginas 350)
        (popularidad 8)
        (titulo "Macbeth")
        (valoracion 4.9)
        (libro_de_epoca [Renacimiento]))

    ([Don_Quijote] of Libro
        (autor "Miguel de Cervantes")
        (complejidad "Media")
        (expectativas "Aventuras cómicas")
        (fecha_publicacion 1605)
        (formato 0)
        (libro_de_genero [Clasica])
        (idioma "Español")
        (paginas 863)
        (popularidad 10)
        (titulo "Don Quijote")
        (valoracion 5)
        (libro_de_epoca [SigloDeOro]))

    ([Crimen_y_castigo] of Libro
        (autor "Fyodor Dostoevsky")
        (complejidad "Alta")
        (expectativas "Novela psicológica")
        (fecha_publicacion 1866)
        (formato 0)
        (libro_de_genero [Clasica])
        (idioma "Ruso")
        (paginas 545)
        (popularidad 9)
        (titulo "Crimen y castigo")
        (valoracion 4.6)
        (libro_de_epoca [SigloXIX]))

    ([Orgullo_y_prejuicio] of Libro
        (autor "Jane Austen")
        (complejidad "Media")
        (expectativas "Novela romántica")
        (fecha_publicacion 1813)
        (formato 0)
        (libro_de_genero [Romantico])
        (idioma "Inglés")
        (paginas 279)
        (popularidad 9)
        (titulo "Orgullo y prejuicio")
        (valoracion 4.7)
        (libro_de_epoca [SigloXIX]))

    ([Crónica_de_una_muerte_anunciada] of Libro
        (autor "Gabriel García Márquez")
        (complejidad "Media")
        (expectativas "Realismo mágico")
        (fecha_publicacion 1981)
        (formato 0)
        (libro_de_genero [RealismoMagico])
        (idioma "Español")
        (paginas 120)
        (popularidad 8)
        (titulo "Crónica de una muerte anunciada")
        (valoracion 4.4)
        (libro_de_epoca [Contemporanea]))

    ([1984] of Libro
        (autor "George Orwell")
        (complejidad "Alta")
        (expectativas "Distopía")
        (fecha_publicacion 1949)
        (formato 0)
        (libro_de_genero [Distopia])
        (idioma "Inglés")
        (paginas 328)
        (popularidad 9)
        (titulo "1984")
        (valoracion 4.7)
        (libro_de_epoca [Contemporanea]))

    ([Rebelion_en_la_granja] of Libro
        (autor "George Orwell")
        (complejidad "Media")
        (expectativas "Alegoría política")
        (fecha_publicacion 1945)
        (formato 0)
        (libro_de_genero [Distopia])
        (idioma "Inglés")
        (paginas 200)
        (popularidad 8)
        (titulo "Rebelión en la granja")
        (valoracion 4.5)
        (libro_de_epoca [Contemporanea]))

    ([La_Odisea] of Libro
        (autor "Homero")
        (complejidad "Media")
        (expectativas "Épico")
        (fecha_publicacion -800)
        (formato 0)
        (libro_de_genero [Épico])
        (idioma "Griego antiguo")
        (paginas 384)
        (popularidad 9)
        (titulo "La Odisea")
        (valoracion 4.6)
        (libro_de_epoca [Antigua]))

    ([Crimen_y_Castigo] of Libro
        (autor "Fyodor Dostoevsky")
        (complejidad "Alta")
        (expectativas "Psicológico")
        (fecha_publicacion 1866)
        (formato 0)
        (libro_de_genero [Realismo] [Psicologico])
        (idioma "Ruso")
        (paginas 671)
        (popularidad 8)
        (titulo "Crimen y Castigo")
        (valoracion 4.9)
        (libro_de_epoca [SigloXIX]))

    ([Orgullo_y_Prejuicio] of Libro
        (autor "Jane Austen")
        (complejidad "Baja")
        (expectativas "Romántico")
        (fecha_publicacion 1813)
        (formato 0)
        (libro_de_genero [Romantico])
        (idioma "Inglés")
        (paginas 279)
        (popularidad 10)
        (titulo "Orgullo y Prejuicio")
        (valoracion 4.7)
        (libro_de_epoca [SigloXIX]))

    ([Cien_Años_de_Soledad] of Libro
        (autor "Gabriel García Márquez")
        (complejidad "Media")
        (expectativas "Realismo mágico")
        (fecha_publicacion 1967)
        (formato 0)
        (libro_de_genero [RealismoMagico])
        (idioma "Español")
        (paginas 417)
        (popularidad 10)
        (titulo "Cien Años de Soledad")
        (valoracion 4.8)
        (libro_de_epoca [Contemporanea]))

    ([El_Gran_Gatsby] of Libro
        (autor "F. Scott Fitzgerald")
        (complejidad "Media")
        (expectativas "Drama")
        (fecha_publicacion 1925)
        (formato 0)
        (libro_de_genero [Drama] [Romantico])
        (idioma "Inglés")
        (paginas 180)
        (popularidad 9)
        (titulo "El Gran Gatsby")
        (valoracion 4.5)
        (libro_de_epoca [SigloXX]))

    ([Los_Miserables] of Libro
        (autor "Victor Hugo")
        (complejidad "Alta")
        (expectativas "Drama")
        (fecha_publicacion 1862)
        (formato 0)
        (libro_de_genero [Drama] [Histórico])
        (idioma "Francés")
        (paginas 1463)
        (popularidad 10)
        (titulo "Los Miserables")
        (valoracion 4.9)
        (libro_de_epoca [SigloXIX]))

    ([El_Señor_de_los_Anillos] of Libro
        (autor "J.R.R. Tolkien")
        (complejidad "Alta")
        (expectativas "Fantasía épica")
        (fecha_publicacion 1954)
        (formato 0)
        (libro_de_genero [Fantasia])
        (idioma "Inglés")
        (paginas 1178)
        (popularidad 10)
        (titulo "El Señor de los Anillos")
        (valoracion 4.9)
        (libro_de_epoca [Contemporanea]))

    ([El_Código_Da_Vinci] of Libro
        (autor "Dan Brown")
        (complejidad "Media")
        (expectativas "Misterio")
        (fecha_publicacion 2003)
        (formato 0)
        (libro_de_genero [Misterio])
        (idioma "Inglés")
        (paginas 593)
        (popularidad 8)
        (titulo "El Código Da Vinci")
        (valoracion 4.6)
        (libro_de_epoca [Contemporanea]))

    ([La_Iliada] of Libro
        (autor "Homero")
        (complejidad "Alta")
        (expectativas "Épico")
        (fecha_publicacion -750)
        (formato 0)
        (libro_de_genero [Épico])
        (idioma "Griego antiguo")
        (paginas 520)
        (popularidad 9)
        (titulo "La Ilíada")
        (valoracion 4.7)
        (libro_de_epoca [Antigua]))

    ([Matar_a_un_Ruisenor] of Libro
        (autor "Harper Lee")
        (complejidad "Media")
        (expectativas "Drama")
        (fecha_publicacion 1960)
        (formato 0)
        (libro_de_genero [Drama])
        (idioma "Inglés")
        (paginas 281)
        (popularidad 8)
        (titulo "Matar a un Ruiseñor")
        (valoracion 4.8)
        (libro_de_epoca [Contemporanea]))

    ([El_Hobbit] of Libro
        (autor "J.R.R. Tolkien")
        (complejidad "Baja")
        (expectativas "Fantasía")
        (fecha_publicacion 1937)
        (formato 0)
        (libro_de_genero [Fantasia])
        (idioma "Inglés")
        (paginas 310)
        (popularidad 9)
        (titulo "El Hobbit")
        (valoracion 4.7)
        (libro_de_epoca [SigloXX]))

    ([Crónica_de_una_Muerte_Anunciada] of Libro
        (autor "Gabriel García Márquez")
        (complejidad "Media")
        (expectativas "Realismo mágico")
        (fecha_publicacion 1981)
        (formato 0)
        (libro_de_genero [RealismoMagico])
        (idioma "Español")
        (paginas 120)
        (popularidad 8)
        (titulo "Crónica de una Muerte Anunciada")
        (valoracion 4.5)
        (libro_de_epoca [Contemporanea]))

    ([Moby_Dick] of Libro
        (autor "Herman Melville")
        (complejidad "Alta")
        (expectativas "Aventura")
        (fecha_publicacion 1851)
        (formato 0)
        (libro_de_genero [Aventura])
        (idioma "Inglés")
        (paginas 675)
        (popularidad 7)
        (titulo "Moby Dick")
        (valoracion 4.4)
        (libro_de_epoca [SigloXIX]))

    ([La_Metamorfosis] of Libro
        (autor "Franz Kafka")
        (complejidad "Media")
        (expectativas "Absurdo")
        (fecha_publicacion 1915)
        (formato 0)
        (libro_de_genero [Absurdo])
        (idioma "Alemán")
        (paginas 64)
        (popularidad 7)
        (titulo "La Metamorfosis")
        (valoracion 4.3)
        (libro_de_epoca [SigloXX]))


    ([William_Shakespeare] of Autor
        (nombre "William Shakespeare")
        (autor_de_epoca [Renacimiento])
        (autor_escribe_genero [Romantico] [Drama])
        (ha_escrito "Romeo y Julieta" "Hamlet" "Macbeth"))

    ([Miguel_de_Cervantes] of Autor
        (nombre "Miguel de Cervantes")
        (autor_de_epoca [SigloDeOro])
        (autor_escribe_genero [Clasica] [Drama])
        (ha_escrito "Don Quijote" "Segunda parte de Don Quijote" "Novelas ejemplares"))

    ([George_Orwell] of Autor
        (nombre "George Orwell")
        (autor_de_epoca [Contemporanea])
        (autor_escribe_genero [Distopia] [Ciencia])
        (ha_escrito "1984" "Rebelión en la granja" "La carretera"))

    ([Fyodor_Dostoevsky] of Autor
        (nombre "Fyodor Dostoevsky")
        (autor_de_epoca [SigloXIX])
        (autor_escribe_genero [Clasica] [RealismoMagico])
        (ha_escrito "Crimen y castigo" "Los hermanos Karamazov" "El jugador"))

    ([Jane_Austen] of Autor
        (nombre "Jane Austen")
        (autor_de_epoca [SigloXIX])
        (autor_escribe_genero [Romantico])
        (ha_escrito "Orgullo y prejuicio" "Emma" "Sentido y sensibilidad"))

    ([Gabriel_Garcia_Marquez] of Autor
        (nombre "Gabriel García Márquez")
        (autor_de_epoca [Contemporanea])
        (autor_escribe_genero [RealismoMagico])
        (ha_escrito "Cien años de soledad" "El otoño del patriarca" "Crónica de una muerte anunciada"))

)

(defmodule MAIN (export ?ALL))

(deffunction pregunta-numerica (?pregunta ?rangini ?rangfi)
    (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
    (printout t crlf) ; Salto de línea adicional
    (bind ?respuesta (read))
    (while (not (and (> ?respuesta ?rangini) (< ?respuesta ?rangfi))) do
    (printout t crlf) ; Salto de línea adicional
        (format t "%s [%d, %d] " ?pregunta ?rangini ?rangfi)
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

;; Función para imprimir un Autor
(deffunction imprimir-autor (?autor)
  (format t "Nombre del Autor: %s %n" (send ?autor get-Nombre))
  (printout t "Autores de la época: " (implode$ (send ?autor get-autor_de_epoca)) crlf)
  (printout t "Autores que escribe en género: " (implode$ (send ?autor get-autor_escribe_genero)) crlf)
  (printout t "Libros escritos por el autor: " (implode$ (send ?autor get-ha_escrito)) crlf)
)

;; Función para imprimir un Lector
(deffunction imprimir-lector (?lector)
  (format t "Nombre del Lector: %s %n" (send ?lector get-Nombre))
  (printout t "Autores preferidos: " (implode$ (send ?lector get-autores_preferidos)) crlf)
  (printout t "Época preferida: " (implode$ (send ?lector get-epoca_preferida)) crlf)
  (printout t "Géneros preferidos: " (implode$ (send ?lector get-generos_preferidos)) crlf)
  (printout t "Libros leídos: " (implode$ (send ?lector get-libros_leidos)) crlf)
  (printout t "Libros preferidos: " (implode$ (send ?lector get-libros_preferidos)) crlf)
)

;; Función para imprimir una Epoca
(deffunction imprimir-epoca (?epoca)
  (format t "Nombre de la Época: %s %n" (send ?epoca get-nombre))
  (printout t "Autores representativos: " (implode$ (send ?epoca get-autores_representativos)) crlf)
  (printout t "Libros representativos: " (implode$ (send ?epoca get-libros_representativos)) crlf)
  (printout t "Período: " (implode$ (send ?epoca get-periodo)) crlf)
)

;; Función para imprimir un Libro
(deffunction imprimir-libro (?libro)
  (format t "Título del Libro: %s %n" (send ?libro get-titulo))
  (format t "Autor: %s %n" (send ?libro get-autor))
  (printout t "Géneros del libro: " (implode$ (send ?libro get-libro_de_genero)) crlf)
  (format t "Expectativas del libro: %s %n" (send ?libro get-expectativas))
)

;; Función para imprimir una Recomendacion
(deffunction imprimir-recomendacion (?recomendacion)
  (printout t "Libros recomendados: " (implode$ (send ?recomendacion get-recomienda)) crlf)
)

(deftemplate MAIN::datos_lector
   (slot nombre (type STRING) (default "N/A"))
   (slot edad (type INTEGER) (default -1))
   (multislot generos_preferidos (type STRING) (default "N/A"))
   (multislot autores_preferidos (type STRING) (default "N/A"))
   (multislot idiomas_de_lectura (type STRING) (default "N/A"))
   (slot dispositivos_para_leer (type STRING) (default "N/A"))
   (slot frecuencia_semanal_lectura (type INTEGER) (default -1))
   (slot preferencia_por_libros_de_moda (type STRING) (default "NO"))
   (multislot libros_leidos (type STRING) (default "N/A"))
   (multislot libros_preferidos (type STRING) (default "N/A"))
   (slot epoca_preferida (type STRING) (default "N/A"))
   (slot lugar_lectura (type STRING) (default "N/A"))
   (slot objetivo_lectura (type STRING) (default "N/A"))
   (slot preferencia_libros_complejos (type STRING) (default "NO"))
   (slot  importancia_popularidad (type STRING) (default "NO"))
   (slot  importancia_valoracion (type STRING) (default "NO"))
)

(deftemplate MAIN::abstracto_lector
   (multislot Preferencia-Genero (type STRING) (default "DESCONOCIDO")) 
   (multislot Preferencia-Autor (type STRING) (default "DESCONOCIDO")) 
   (slot Nivel-Complejidad (type STRING) (default "DESCONOCIDO"))
   (multislot contexto (type STRING) (default "DESCONOCIDO"))
   (slot Disponibilidad (type STRING) (default "DESCONOCIDO"))
   (slot Nivel-de-Experiencia (type STRING) (default "DESCONOCIDO"))
   (multislot Factores-de-Influencia (type STRING) (default "DESCONOCIDO"))
)

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
	(import entrada_de_informacion_lector deftemplate ?ALL)
	(export ?ALL)
)

;;; Modulo de solucion, una vez que tengamos el problema abstracto definido
(defmodule generar-solucion
	(import MAIN ?ALL)
	(import entrada_de_informacion_lector deftemplate ?ALL)
	(import procesado-datos deftemplate ?ALL)
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
	(focus entrada_de_informacion_lector)
)

(defrule entrada_de_informacion_lector::establecer-nombre "Establece el nombre del lector"
    (not (datos_lector (nombre ?nombre)))
    =>
    (bind ?nombre (pregunta-general "¿Cuál es tu nombre?"))
    (assert (datos_lector (nombre ?nombre)))
)

(defrule entrada_de_informacion_lector::establecer-edad "Establece la edad del lector"
    ?no_asignado <- (datos_lector (edad -1))
    =>
    (bind ?asigna-edad (pregunta-numerica "¿Cuál es tu edad?" 1 120))
    (modify ?no_asignado (edad ?asigna-edad))
)

(defrule entrada_de_informacion_lector::establecer-generos-preferidos "Establece los géneros preferidos del lector"
    ?no_asignado <- (datos_lector (generos_preferidos "N/A"))
    =>
    (bind ?generos (pregunta-cadena "¿Cuáles son tus géneros literarios preferidos?"))
    (modify ?no_asignado (generos_preferidos ?generos))
)

(defrule entrada_de_informacion_lector::establecer-autores-preferidos "Establece los autores preferidos del lector"
    ?no_asignado <- (datos_lector (autores_preferidos "N/A"))
    =>
    (bind ?autores (pregunta-cadena "¿Cuáles son tus autores preferidos?"))
    (modify ?no_asignado (autores_preferidos $?autores))
)

(defrule entrada_de_informacion_lector::establecer-idiomas-lectura "Establece los idiomas de lectura del lector"
    ?no_asignado <- (datos_lector (idiomas_de_lectura "N/A"))
    =>
    (bind ?idiomas (pregunta-cadena "¿Cuáles son los idiomas en los que prefieres leer? p.e Español Catalan Inglés .."))
    (modify ?no_asignado (idiomas_de_lectura $?idiomas))
)

(defrule entrada_de_informacion_lector::establecer-dispositivos "Establece los dispositivos para leer del lector"
    ?no_asignado <- (datos_lector (dispositivos_para_leer "N/A"))
    =>
    (bind ?dispositivos (pregunta-general "¿En qué dispositivos prefieres leer? p.e Papel eBook"))
    (modify ?no_asignado (dispositivos_para_leer ?dispositivos))
)

(defrule entrada_de_informacion_lector::establecer-frecuencia-lectura "Establece la frecuencia semanal de lectura del lector"
    ?no_asignado <- (datos_lector (frecuencia_semanal_lectura -1))
    =>
    (bind ?frecuencia (pregunta-numerica "¿Cuál es tu frecuencia semanal de lectura en horas?" 1 168))
    (modify ?no_asignado (frecuencia_semanal_lectura ?frecuencia))
)

(defrule entrada_de_informacion_lector::establecer-preferencia-libros-moda "Establece la preferencia por libros de moda del lector"
    ?no_asignado <- (datos_lector (preferencia_por_libros_de_moda "NO"))
    =>
    (bind ?preferencia (pregunta-general "¿Tienes preferencia por leer libros de moda? (SI/NO)"))
    (modify ?no_asignado (preferencia_por_libros_de_moda ?preferencia))
)

(defrule entrada_de_informacion_lector::establecer-libros-leidos "Establece los libros leídos por el lector"
    ?no_asignado <- (datos_lector (libros_leidos "N/A"))
    =>
    (bind ?libros (pregunta-cadena "¿Cuáles son los libros que has leído?"))
    (modify ?no_asignado (libros_leidos $?libros))
)

(defrule entrada_de_informacion_lector::establecer-libros-preferidos "Establece los libros preferidos por el lector"
    ?no_asignado <- (datos_lector (libros_preferidos "N/A"))
    (not (datos_lector (libros_leidos "N/A")))
    =>
    (bind ?librosP (pregunta-cadena "¿Cuáles son tus libros preferidos?"))
    (modify ?no_asignado (libros_preferidos $?librosP))
)

(defrule entrada_de_informacion_lector::establecer-epoca-preferida "Establece la época preferida del lector"
    ?no_asignado <- (datos_lector (epoca_preferida "N/A"))
    =>
    (bind ?epoca (pregunta-general "¿Cuál es tu época literaria preferida?"))
    (modify ?no_asignado (epoca_preferida ?epoca))
)

(defrule entrada_de_informacion_lector::establecer-lugar-lectura "Establece el lugar de lectura del lector"
    ?no_asignado <- (datos_lector (lugar_lectura "N/A"))
    =>
    (bind ?lugar (pregunta-general "¿Dónde prefieres leer tus libros? p.e Biblioteca Casa Cafeteria"))
    (modify ?no_asignado (lugar_lectura ?lugar))
)

(defrule entrada_de_informacion_lector::establecer-objetivo-lectura "Establece el objetivo de lectura del lector"
    ?no_asignado <- (datos_lector (objetivo_lectura "N/A"))
    =>
    (bind ?objetivo (pregunta-general "¿Cuál es tu objetivo/propósito al leer?"))
    (modify ?no_asignado (objetivo_lectura ?objetivo))
)

(defrule entrada_de_informacion_lector::establecer-preferencia-libros-complejos "Establece la preferencia por libros complejos del lector"
    ?no_asignado <- (datos_lector (preferencia_libros_complejos "NO"))
    =>
    (bind ?preferencia (pregunta-general "¿Prefieres libros complejos? (SI/NO)"))
    (modify ?no_asignado (preferencia_libros_complejos ?preferencia))
)

(defrule entrada_de_informacion_lector::establecer-importancia-popularidad "Establece la importancia de la popularidad para el lector"
    ?no_asignado <- (datos_lector (importancia_popularidad "NO"))
    =>
    (bind ?importancia (pregunta-general "¿Le das a la popularidad de un libro? (SI/NO)"))
    (modify ?no_asignado (importancia_popularidad ?importancia))
)

(defrule entrada_de_informacion_lector::pasar-a-procesar "Pasa al procesador de datos"
    ?lector <- (datos_lector (nombre ~"N/A"))
	=>
	(focus procesado-datos)
    (printout t "Procesando los datos obtenidos..." crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defrule procesado-datos::Definir-Contexto-Segun-Lugar
   ?lector <- (datos_lector (lugar_lectura ?lugar))
   (not (abstracto_lector))
   =>
   (bind ?listaRuidosos (create$ Cafeteria Parque))
   (bind ?listaNORuidosos (create$ Casa Biblioteca))

   (if (member$ ?lugar ?listaRuidosos)
       then
       (assert (abstracto_lector (contexto "Ruidoso")))
       else
        (assert (abstracto_lector (contexto "No Ruidoso")))
   )
)

(defrule procesado-datos::Determinar-Nivel-Complejidad
   ?lector <- (datos_lector (preferencia_libros_complejos ?preferencia) (libros_leidos $?libros))
   ?abstracto <- (abstracto_lector (Nivel-Complejidad ?nivel))
   (test (eq ?nivel "DESCONOCIDO"))
   =>
   (if (eq ?preferencia SI) then
      (if (>= (length ?libros) 3) then
         (modify ?abstracto (Nivel-Complejidad "Alta"))
      else
         (modify ?abstracto (Nivel-Complejidad "Media"))
      )
   else
      (modify ?abstracto (Nivel-Complejidad "Baja"))
   )
)

(defrule procesado-datos::Determinar-Nivel-Experiencia
   ?lector <- (datos_lector (libros_leidos $?libros) (idiomas_de_lectura $?idiomas) (autores_preferidos $?autores) (generos_preferidos $?generos))
   ?abstracto <- (abstracto_lector (Nivel-de-Experiencia ?nivel))
   (test (eq ?nivel DESCONOCIDO))
   =>
   (bind ?total-libros (length ?libros))
   (bind ?total-idiomas (length ?idiomas))
   (bind ?total-autores (length ?autores))
   (bind ?total-generos (length ?generos))

   (bind ?total-total (+ ?total-libros ?total-idiomas ?total-autores ?total-generos))

   (if (<= ?total-total 5) then
      (modify ?abstracto (Nivel-de-Experiencia "Muy-Bajo"))
   else
      (if (<= ?total-total 10) then
         (modify ?abstracto (Nivel-de-Experiencia "Bajo"))
      else
         (if (<= ?total-total 15) then
            (modify ?abstracto (Nivel-de-Experiencia "Medio"))
         else
            (if (<= ?total-total 20) then
               (modify ?abstracto (Nivel-de-Experiencia "Alto"))
            else
               (modify ?abstracto (Nivel-de-Experiencia "Muy-Alto"))
            )
         )
      )
   )
)

(defrule procesado-datos::Determinar-Preferencia-Generos
   ?lector <- (datos_lector (generos_preferidos $?generos&:(neq ?generos "N/A")))
   ?abstracto <- (abstracto_lector (Preferencia-Genero ?pref))
   (test (eq ?pref "DESCONOCIDO"))
   =>
   (modify ?abstracto (Preferencia-Genero $?generos))
)

(defrule procesado-datos::Determinar-Preferencia-Autor
   ?lector <- (datos_lector (autores_preferidos $?autor&:(neq ?autor "N/A")))
   ?abstracto <- (abstracto_lector (Preferencia-Autor ?pref))
   (test (eq ?pref "DESCONOCIDO"))
   =>
   (modify ?abstracto (Preferencia-Autor $?autor))
) 

(defrule procesado-datos::Determinar-Disponibilidad
   ?lector <- (datos_lector (frecuencia_semanal_lectura ?horas))
   ?abstracto <- (abstracto_lector (Disponibilidad ?nivel))
   (test (eq ?nivel DESCONOCIDO))
   =>
   (if (<= ?horas 2) then
      (modify ?abstracto (Disponibilidad "Muy-Bajo"))
   else
      (if (<= ?horas 5) then
         (modify ?abstracto (Disponibilidad "Bajo"))
      else
         (if (<= ?horas 10) then
            (modify ?abstracto (Disponibilidad "Medio"))
         else
            (if (<= ?horas 20) then
               (modify ?abstracto (Disponibilidad "Alto"))
            else
               (modify ?abstracto (Disponibilidad "Muy-Alto"))
            )
         )
      )
   )
)

(defrule procesado-datos::Determinar-Influencia
   ?lector <- (datos_lector (importancia_popularidad ?popularidad) (importancia_valoracion ?valoracion))
   ?abstracto <- (abstracto_lector (Factores-de-Influencia ?factores&:(eq ?factores "DESCONOCIDO")))
   =>
   (bind ?nivel (if (and (eq ?popularidad "SI") (eq ?valoracion "SI")) then "Alto"
                 else (if (and (eq ?popularidad "NO") (eq ?valoracion "NO")) then "Bajo"
                      else "Medio")))
   (modify ?abstracto (Factores-de-Influencia ?nivel))
)

(defrule procesado-datos::pasar-a-solucionar "Pasa al generador de soluciones"
   (declare (salience -100))
    ?lector <- (datos_lector (nombre ~"N/A"))
	=>
	(focus generar-solucion)
    (printout t "Generando soluciones..." crlf)
)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; MODULOS DE FILTRAJE PARA DAR UNA RECOMENDACION BUENA ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defrule generar-solucion::obtener-todos-los-libros
   (declare (salience -100))
   (not (datos-libros))
   =>
   (bind ?libros (find-all-instances ((?libro Libro)) TRUE))
   (assert (datos-libros (lista-libros $?libros)))
)

(deffunction autor-en-preferencia (?nombre-autor $?autores-preferidos)
   (neq (member$ ?nombre-autor ?autores-preferidos) nil)
)

(deffunction genero-en-preferencia (?nombre-genero $?generos-preferidos)
   (neq (member$ ?nombre-genero ?generos-preferidos) nil)
)

(defrule generar-solucion::filtrar-libros
   (declare (salience -95))
   ?lector <- (abstracto_lector
                (Nivel-Complejidad ?complejidad)
                (Preferencia-Autor $?autores-preferidos)
                (Preferencia-Genero $?generos-preferidos))
   ?datos-libros <- (datos-libros (lista-libros $?libros))
   (not (libros-filtrados $?))
   =>
   (bind ?libros-filtrados (create$))

   (loop-for-count (?i 1 (length$ ?libros)) do
      (bind ?libro (nth$ ?i ?libros))
      (if (or (eq ?complejidad (send ?libro get-complejidad))
              (member$ (send ?libro get-autor) ?autores-preferidos))
         then
         (bind ?libros-filtrados (create$ ?libros-filtrados ?libro))
      )
   )
   (assert (libros-filtrados $?libros-filtrados))
)

(defrule generar-solucion::imprimir-libros-filtrados
   (declare (salience -90))
   ?datos <- (libros-filtrados $?libros)
   =>
   (printout t "Libros Filtrados:" crlf)
   (loop-for-count (?i 1 (min 4 (length$ ?libros))) do ; Se limita a tres iteraciones
      (bind ?libro (nth$ ?i ?libros))
      (printout t "Título del Libro: " (send ?libro get-titulo) crlf)
      (printout t "Autor: " (send ?libro get-autor) crlf)
      (printout t "Géneros del libro: " (implode$ (send ?libro get-libro_de_genero)) crlf)
      (printout t "Expectativas del libro: " (send ?libro get-expectativas) crlf)
      (printout t "--------------------------" crlf)
   )
   (printout t "Fin de la lista de libros filtrados." crlf)
)