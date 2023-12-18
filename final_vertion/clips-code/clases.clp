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
    (slot ano_final_epoca
        (type INTEGER)
        (create-accessor read-write))
    (slot ano_inicio_epoca
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

(defclass Contemporanea
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
    (slot ano_publicacion
        (type INTEGER)
        (create-accessor read-write))
    (slot complejidad
        (type STRING)
        (create-accessor read-write))
    (slot de_moda
        (type SYMBOL)
        (create-accessor read-write))
    (slot disponibilidad
        (type SYMBOL)
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
    (slot NivelLector
        (type SYMBOL)
        (allowed-symbols Principiante Intermedio Avanzado)
    )
    (slot objetivo
        (type STRING)
        (create-accessor read-write)
    )
)

(defclass RecomendacionDetalle
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot libro
        (type INSTANCE)
        (create-accessor read-write))
    (multislot razon
        (type STRING)
        (create-accessor read-write))
    (slot puntaje
        (type INTEGER)
        (create-accessor read-write))
)

