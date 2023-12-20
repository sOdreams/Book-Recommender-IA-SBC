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

(defclass DistopiaT
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


(definstances epocas
    ([epoca-renacimiento] of Renacimiento
         (autores_de_epoca  [autor-drama-1] )
         (libros_de_epoca  [libro-drama-1] [libro-drama-3])
         (ano_final_epoca  1600)
         (ano_inicio_epoca  1300)
         (descripcion_epoca  "Período cultural y artístico que siguió a la Edad Media.")
         (nombre  "Renacimiento")
    )

    ([epoca-barroco] of Barroco
      (autores_de_epoca [autor-drama-3])
      (libros_de_epoca [libro-drama-5] [libro-drama-6])
      (ano_final_epoca 1700)
      (ano_inicio_epoca 1600)
      (descripcion_epoca "Período artístico caracterizado por la extravagancia y la ornamentación.")
      (nombre "Barroco")
   )

   ([epoca-clasica] of Clasica
      (autores_de_epoca [autor-drama-romantic-4] [autor-oeste-1])
      (libros_de_epoca [libro-drama-7] [libro-drama-8] [libro-oeste-1] [libro-oeste-2])
      (ano_final_epoca 1800)
      (ano_inicio_epoca 1730)
      (descripcion_epoca "Período marcado por la razón, la armonía y la proporción en las artes.")
      (nombre "Clásica")
   )

   ([epoca-ilustracion] of Ilustracion
      (autores_de_epoca [autores-ilustracion])
      (libros_de_epoca [libros-ilustracion])
      (ano_final_epoca 1800)
      (ano_inicio_epoca 1730)
      (descripcion_epoca "Época de la Ilustración, caracterizada por el pensamiento racional y científico.")
      (nombre "Ilustración")
   )

   ([epoca-medieval] of Medieval
      (autores_de_epoca [autores-medieval])
      (libros_de_epoca [libros-ciencia-8])
      (ano_final_epoca 1400)
      (ano_inicio_epoca 500)
      (descripcion_epoca "Período de la Edad Media, marcado por la influencia de la iglesia y la feudalización.")
      (nombre "Medieval")
   )

   ([epoca-modernismo] of Modernismo
      (autores_de_epoca [autor-ciencia-1] [autor-ciencia-4] [autor-distopia-1] [autor-oeste-4] [autor-ficcion-2] [autor-ficcion-3] [autor-ficcion-4] [autor-policiaca-1] [autor-policiaca-2] [autor-policiaca-3])  
      (libros_de_epoca [libro-ciencia-1] [libro-distopia-1] [libro-distopia-2] [libro-drama-4] [libro-oeste-7] [libro-oeste-8] [libro-ficcion-3] [libro-ficcion-4] [libro-ficcion-5] [libro-ficcion-6] [libro-ficcion-7] [libro-ficcion-8]
      [libro-policiaca-1] [libro-policiaca-2] [libro-policiaca-3] [libro-policiaca-4] [libro-policiaca-5] [libro-policiaca-6]
      )
      (ano_final_epoca 1940)
      (ano_inicio_epoca 1890)
      (descripcion_epoca "Movimiento cultural que rompe con las convenciones del siglo XIX.")
      (nombre "Modernismo")
   )

   ([epoca-posmodernismo] of Posmodernismo
      (autores_de_epoca [autor-ciencia-4] [autor-ciencia-distopia-ficcion-3] [autor-distopia-4] [autor-historia-3]) 
      (libros_de_epoca [libros-ciencia-7] [libro-distopia-3] [libro-distopia-4] [libro-distopia-7] [libro-distopia-8]
         [libro-historia-5] [libro-historia-6]
      )
      (ano_final_epoca 2000)
      (ano_inicio_epoca 1950)
      (descripcion_epoca "Reacción contra las ideas y formas establecidas en la modernidad.")
      (nombre "Posmodernismo")
   )

   ([epoca-realismo] of Realismo
      (autores_de_epoca [autor-ciencia3] [autor-ficcion-distopia-1] [autor-drama-historia-2] [autor-oeste-3] [autor-historia-4] [autor-policiaca-4] [autor-drama-romantic-4] [autor-romantico-2] [autor-romantico-4] [autor-terror-1])
      (libros_de_epoca [libro-ciencia-4]  [libro-ciencia-5] [libro-distopia-5] [libro-distopia-6] [libro-drama-2] [libro-oeste-6] [libro-oeste-5]
         [libro-historia-7] [libro-historia-8] [libro-policiaca-7] [libro-policiaca-8] [libro-romantico-1] [libro-romantico-2] [libro-romantico-3] [libro-romantico-4] [libro-romantico-7] [libro-romantico-8] [libro-terror-1] [libro-terror-2]
      )
      (ano_final_epoca 1900)
      (ano_inicio_epoca 1800)
      (descripcion_epoca "Representación fiel y objetiva de la realidad en las artes.")
      (nombre "Realismo")
   )
   ([epoca-romanticismo] of Romanticismo
      (autores_de_epoca [autor-ciencia-2] [autor-oeste-2] [autor-historia-2] [autor-terror-3] [autor-ciencia-distopia-ficcion-3])
      (libros_de_epoca [libro-ciencia-2] [libro-ciencia-3] [libro-ciencia-6] [libro-oeste-3] [libro-oeste-4] [libro-historia-3] [libro-historia-4] [libro-historia-5] [libro-terror-6]
      )
      (ano_final_epoca 1850)
      (ano_inicio_epoca 1780)
      (descripcion_epoca "Época de expresión emocional y rebelión contra las normas establecidas.")
      (nombre "Romanticismo")
   )

   ([epoca-simbolismo] of Simbolismo
      (autores_de_epoca )
      (libros_de_epoca [libros-simbolismo])
      (ano_final_epoca 1910)
      (ano_inicio_epoca 1880)
      (descripcion_epoca "Movimiento artístico que busca representar significados más allá de lo literal.")
      (nombre "Simbolismo")
   )

   ([epoca-vanguardismo] of Vanguardismo
      (autores_de_epoca [autores-vanguardismo])
      (libros_de_epoca [libros-vanguardismo])
      (ano_final_epoca 1945)
      (ano_inicio_epoca 1910)
      (descripcion_epoca "Movimiento artístico y literario que busca innovación y ruptura con las tradiciones.")
      (nombre "Vanguardismo")
   )

      ([epoca-contemporaneo] of Contemporanea
      (autores_de_epoca [autor-fantasia-1] [autor-fantasia-2] [autor-fantasia-3] [autor-fantasia-4] [autor-drama-historia-2] [autor-ficcion-distopia-1] [autor-romantico-3] [autor-terror-2] [autor-terror-4])
      (libros_de_epoca [libro-fantasia-1] [libro-fantasia-2] [libro-fantasia-3] [libro-fantasia-4] [libro-fantasia-5] [libro-fantasia-6] [libro-fantasia-7] [libro-fantasia-8]
         [libro-historia-1] [libro-historia-2] [libro-ficcion-1] [libro-ficcion-2] [libro-romantico-5] [libro-romantico-6] [libro-terror-3] [libro-terror-4] [libro-terror-7] [libro-terror-8]
      )
      (ano_final_epoca 1945)
      (ano_inicio_epoca 1910)
      (descripcion_epoca "Movimiento artístico y literario que busca innovación y ruptura con las tradiciones.")
      (nombre "Contemporanea")
   )
)

(definstances Temas
   ([tema-aventura] of Aventura
      (nombre "Aventura")
      (descripcion_tema "Conceptos aventureros")
      (libros_de_tema [libro-drama-3] [libro-fantasia-1] [libro-fantasia-2] [libro-fantasia-3] [libro-fantasia-4] [libro-fantasia-7]
         [libro-oeste-1] [libro-oeste-4] [libro-oeste-6] [libro-historia-4] [libro-historia-7] [libro-ficcion-4] [libro-ficcion-6]
         [libro-policiaca-6] [libro-terror-1] [libro-terror-2] [libro-terror-6] [libro-terror-5] [libro-terror-7] [libro-terror-8]
      )
   )
   
   ([tema-distopia] of DistopiaT
      (nombre "Distopia")
      (descripcion_tema "Consideración del tiempo como concepto y su influencia en la narrativa.")
      (libros_de_tema [libro-distopia-1] [libro-distopia-2] [libro-distopia-3] [libro-distopia-4] [libro-distopia-5] [libro-distopia-6] [libro-distopia-7] [libro-distopia-8] [libro-drama-6] [libro-ficcion-3])
   )

   ([tema-amor] of Amor
      (nombre "Amor")
      (descripcion_tema "Explora diferentes aspectos del amor.")
      (libros_de_tema [libro-drama-1] [libro-drama-7] [libro-oeste-3] [libro-oeste7]
         [libro-historia-3] [libro-romantico-1] [libro-romantico-2] [libro-romantico-3] [libro-romantico-4] [libro-romantico-5] [libro-romantico-6] [libro-romantico-7] [libro-romantico-8]
      )
   )

   ([tema-etica] of Etica
      (nombre "Etica")
      (descripcion_tema "Exploración de cuestiones éticas y morales.")
      (libros_de_tema [libro-drama-5] [libro-historia-5] [libro-policiaca-3] [libro-policiaca-7])
   )

   ([tema-identidad] of Identidad
      (nombre "Identidad")
      (descripcion_tema "Exploración de la identidad personal y cultural.")
      (libros_de_tema [libro-drama-2] [libro-fantasia-8] [libro-historia-8] [libro-ficcion-1] [libro-ficcion-5]
      [libro-policiaca-2] [libro-policiaca-5] [libro-policiaca-8] [libro-terror-4]) 
   )

   ([tema-poder] of Poder
      (nombre "Poder")
      (descripcion_tema "Examinando el concepto y la dinámica del poder.")
      (libros_de_tema [libro-drama-8] [libro-fantasia-5] [libro-fantasia-6] [libro-oeste-2] [libro-oeste-5] [libro-oeste-8]
         [libro-historia-2] [libro-historia-6] [libro-ficcion-2] [libro-ficcion-7] [libro-ficcion-8]
         [libro-policiaca-1] [libro-policiaca-4] [libro-terror-3]
      )
   )

   ([tema-tecnologia] of Tecnologia
      (nombre "Tecnología")
      (descripcion_tema "Exploración de avances tecnológicos y su impacto en la sociedad.")
      (libros_de_tema [libro-ciencia-1] [libro-ciencia-2] [libro-ciencia-3] [libro-ciencia-4] [libro-ciencia-5] [libro-ciencia-6] [libro-ciencia-7] [libro-ciencia-8] [libro-ciencia-9] [libro-drama-4])
   )

   ([tema-tiempo] of Tiempo
      (nombre "Tiempo")
      (descripcion_tema "Consideración del tiempo como concepto y su influencia en la narrativa.")
      (libros_de_tema [libro-distopia-1] [libro-distopia-2] [libro-distopia-3] [libro-distopia-4] [libro-distopia-5] [libro-distopia-6] [libro-distopia-7] [libro-distopia-8] [libro-drama-6] [libro-ficcion-3])
   )
)

(definstances generos
   ([genero-ciencia] of Ciencia
      (autores_de_genero [autor-ciencia-1] [autor-ciencia-2] [autor-ciencia-distopia-ficcion-3] [autor-ciencia-4])
      (libros_de_genero [libro-ciencia-1] [libro-ciencia-2] [libro-ciencia-3] [libro-ciencia-4] [libro-ciencia-5] [libro-ciencia-6] [libro-ciencia-7] [libro-ciencia-8])
      (caracteristicas_genero "Género que explora conceptos cientificos y tecnológicos.")
      (nombre "Ciencia")
   )

   ([genero-distopia] of Distopia
      (autores_de_genero [autores-distopia-1] [autor-ciencia-distopia-ficcion-3] [autor-ficcion-distopia-1] [autores-distopia-4])
      (libros_de_genero [libros-distopia-1] [libros-distopia-2] [libros-distopia-3] [libros-distopia-4] [libros-distopia-5] [libros-distopia-6] [libros-distopia-7] [libros-distopia-8])
      (caracteristicas_genero "Explora sociedades distópicas y futuros apocalípticos.")
      (nombre "Distopía")
   )


    ([genero-drama] of Drama
      (autores_de_genero [autor-drama-1] [autor-drama-historia-2] [autor-drama-3] [autor-drama-romantic-4])
      (libros_de_genero [libro-drama-1] [libro-drama-2] [libro-drama-3] [libro-drama-4] [libro-drama-5] [libro-drama-6] [libro-drama-7] [libro-drama-8])
      (caracteristicas_genero "Centrado en conflictos emocionales y relaciones humanas.")
      (nombre "Drama")
   )

   ([genero-fantasia] of Fantasia
      (autores_de_genero [autor-fantasia-1] [autor-fantasia-2] [autor-fantasia-3] [autor-fantasia-4])
      (libros_de_genero [libro-fantasia-1] [libro-fantasia-2] [libro-fantasia-3] [libro-fantasia-4] [libro-fantasia-5] [libro-fantasia-6] [libro-fantasia-7] [libro-fantasia-8])
      (caracteristicas_genero "Género que incluye elementos mágicos y mundos imaginarios.")
      (nombre "Fantasía")
   )

   ([genero-oeste] of Oeste
      (autores_de_genero [autore-oeste-1] [autore-oeste-2] [autore-oeste-3] [autore-oeste-4])
      (libros_de_genero  [libro-oeste-1] [libro-oeste-2] [libro-oeste-3] [libro-oeste-4] [libro-oeste-5] [libro-oeste-6] [libro-oeste-7] [libro-oeste-8])
      (caracteristicas_genero "Ambientado en el Viejo Oeste americano.")
      (nombre "Oeste")
   )


;-------------------------------------------------------------------------


   ([genero-historia] of Historia
      (autores_de_genero [autor-drama-historia-2] [autor-historia-2] [autor-historia-3] [autor-historia-4])
      (libros_de_genero [libro-historia-1] [libro-historia-2] [libro-historia-3] [libro-historia-4] [libro-historia-5] [libro-historia-6] [libro-historia-7] [libro-historia-8])
      (caracteristicas_genero "Basado en eventos y hechos históricos.")
      (nombre "Historia")
   )

   ([genero-ficcion] of Ficcion
      (autores_de_genero [autor-ficcion-distopia-1] [autor-ficcion-2] [autor-ficcion-3] [autor-ciencia-distopia-ficcion-3])
      (libros_de_genero [libro-ficcion-1] [libro-ficcion-2] [libro-ficcion-3] [libro-ficcion-4] [libro-ficcion-5] [libro-ficcion-6] [libro-ficcion-7] [libro-ficcion-8])
      (caracteristicas_genero "Explora conceptos especulativos y no basados en la realidad.")
      (nombre "Ficción")
   )

   ([genero-policiaca] of Policiaca
      (autores_de_genero [autor-policiaca-1] [autor-policiaca-2] [autor-policiaca-3] [autor-policiaca-4])
      (libros_de_genero [libro-policiaca-1] [libro-policiaca-2] [libro-policiaca-3] [libro-policiaca-4] [libro-policiaca-5] [libro-policiaca-6] [libro-policiaca-7] [libro-policiaca-8])
      (caracteristicas_genero "Centrado en crímenes, detectives y resolución de misterios.")
      (nombre "Policiaca")
   )

   ([genero-romantico] of Romantico
      (autores_de_genero [autor-drama-romantic-4] [autor-romantico-2] [autor-romantico-3] [autor-romantico-4])
      (libros_de_genero [libro-romantico-1] [libro-romantico-2] [libro-romantico-3] [libro-romantico-4] [libro-romantico-5] [libro-romantico-6] [libro-romantico-7] [libro-romantico-8])
      (caracteristicas_genero "Centrado en relaciones románticas y emociones.")
      (nombre "Romántico")
   )

   ([genero-terror] of Terror
      (autores_de_genero [autor-terror-1] [autor-terror-2] [autor-terror-3] [autor-terror-4])
      (libros_de_genero [libro-terror-1] [libro-terror-2] [libro-terror-3] [libro-terror-4] [libro-terror-5] [libro-terror-6] [libro-terror-7] [libro-terror-8])
      (caracteristicas_genero "Busca generar miedo y suspense en el lector.")
      (nombre "Terror")
   )
   
)

(definstances idiomas
   ([idioma-ingles] of Idioma
      (hablantes 380000000)
      (nombre "Inglés")
   )

   ([idioma-espanol] of Idioma
      (hablantes 460000000)
      (nombre "Español")
   )

   ([idioma-portugues] of Idioma
      (hablantes 221000000)
      (nombre "Portugués")
   )

   ([idioma-frances] of Idioma
      (hablantes 77000000)
      (nombre "Francés")
   )

   ([idioma-italiano] of Idioma
      (hablantes 69000000)
      (nombre "Italiano")
   )

   ([idioma-aleman] of Idioma
      (hablantes 76000000)
      (nombre "Alemán")
   )

   ([idioma-chino] of Idioma
      (hablantes 1200000000)
      (nombre "Chino")
   )

   ([idioma-arabe] of Idioma
      (hablantes 310000000)
      (nombre "Árabe")
   )

      ([idioma-ruso] of Idioma
      (hablantes 310000000)
      (nombre "Ruso")
   )
)

(definstances autores-libros-genero-ciencia
   ([autor-ciencia-1] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ciencia])
      (libros_escritos [libro-ciencia-1] [libro-ciencia-2])
      (edad 47)
      (nombre "Haruki Murakami")
   )

   ([libro-ciencia-1] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ciencia-1])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 2015)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "1Q84")
      (valoracion_media 4.7)
      (ventas 220000)
      (NivelLector Intermedio)
      (numero_paginas 600)
   )

   ([libro-ciencia-2] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-ciencia-1])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 2018)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Kafka en la orilla")
      (valoracion_media 4.9)
      (ventas 250000)
      (NivelLector Avanzado)
      (numero_paginas 550)
   )

   ([autor-ciencia-2] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-ciencia])
      (libros_escritos [libro-ciencia-3] [libro-ciencia-4])
      (edad 42)
      (nombre "Isaac Asimov")
   )

   ([libro-ciencia-3] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-ciencia-2])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1950)
      (complejidad "Alta")
      (de_moda FALSE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Fundación")
      (valoracion_media 4.8)
      (ventas 200000)
      (NivelLector Avanzado)
      (numero_paginas 500)
   )

   ([libro-ciencia-3] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-ciencia-2])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1968)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "¿Sueñan los androides con ovejas eléctricas?")
      (valoracion_media 4.5)
      (ventas 150000)
      (NivelLector Intermedio)
      (numero_paginas 400)
   )

   ([autor-ciencia-distopia-ficcion-3] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-ciencia] [genero-distopia] [distopia-ficcion])
      (libros_escritos [libro-ciencia-5] [libro-ciencia-6] [libro-ficcion-7] [libro-ficcion-8] [libro-distopia-3] [libro-distopia-4])
      (edad 55)
      (nombre "Philip K. Dick")
   )

   ([libro-ciencia-5] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1968)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "¿Sueñan los androides con ovejas eléctricas?")
      (valoracion_media 4.4)
      (ventas 120000)
      (NivelLector Intermedio)
      (numero_paginas 420)
   )

   ([libro-ciencia-6] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1974)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Ubik (versión italiana)")
      (valoracion_media 4.2)
      (ventas 130000)
      (NivelLector Intermedio)
      (numero_paginas 450)
   )

   ([autor-ciencia-4] of Autor
      (epoca_de_autor [epoca-posmodernismo])
      (escribe_en_idiomas [idioma-aleman])
      (escribe_generos [genero-ciencia])
      (libros_escritos [libro-ciencia-7] [libro-ciencia-8])
      (edad 60)
      (nombre "Stanisław Lem")
   )

   ([libro-ciencia-7] of Libro
      (epoca_de_libro [epoca-posmodernismo])
      (escrito_por [autor-ciencia-4])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-aleman])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1961)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Digital)
      (popularidad TRUE)
      (titulo "Solaris")
      (valoracion_media 4.2)
      (ventas 180000)
      (NivelLector Avanzado)
      (numero_paginas 600)
   )

   ([libro-ciencia-8] of Libro
      (epoca_de_libro [epoca-medieval])
      (escrito_por [autor-ciencia-4])
      (genero_de_libro [genero-ciencia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 2010)
      (complejidad "Media")
      (de_moda FALSE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Fiasco")
      (valoracion_media 4.6)
      (ventas 180000)
      (NivelLector Avanzado)
      (numero_paginas 700)
   )
)


(definstances autores-libros-genero-distopia

   ([autor-distopia-1] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-distopia])
      (libros_escritos [libro-distopia-1] [libro-distopia-2])
      (edad 47)
      (nombre "Margaret Atwood")
   )

   ([libro-distopia-1] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-distopia-1])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1985)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "El cuento de la criada")
      (valoracion_media 4.8)
      (ventas 300000)
      (NivelLector Avanzado)
      (numero_paginas 450)
   )

   ([libro-distopia-2] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-distopia-1])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 2003)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Oryx y Crake")
      (valoracion_media 4.7)
      (ventas 280000)
      (NivelLector Intermedio)
      (numero_paginas 500)
   )

   ([libro-distopia-3] of Libro
      (epoca_de_libro [epoca-posmodernismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-aleman])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1968)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "¿Sueñan los androides con ovejas eléctricas?")
      (valoracion_media 4.5)
      (ventas 150000)
      (NivelLector Intermedio)
      (numero_paginas 400)
   )

   ([libro-distopia-4] of Libro
      (epoca_de_libro [epoca-posmodernismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1974)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Ubik (versión francesa)")
      (valoracion_media 4.2)
      (ventas 130000)
      (NivelLector Avanzado)
      (numero_paginas 450)
   )

   ([libro-distopia-5] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-ficcion-distopia-1])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1949)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "1984")
      (valoracion_media 4.9)
      (ventas 320000)
      (NivelLector Avanzado)
      (numero_paginas 400)
   )

   ([libro-distopia-6] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-ficcion-distopia-1])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1945)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Rebelión en la granja")
      (valoracion_media 4.7)
      (ventas 280000)
      (NivelLector Intermedio)
      (numero_paginas 350)
   )

   ([autor-distopia-4] of Autor
      (epoca_de_autor [epoca-post-postmodernismo])
      (escribe_en_idiomas [idioma-italiano])
      (escribe_generos [genero-distopia])
      (libros_escritos [libro-distopia-7] [libro-distopia-8])
      (edad 48)
      (nombre "Aldous Huxley")
   )

   ([libro-distopia-7] of Libro
      (epoca_de_libro [epoca-post-postmodernismo])
      (escrito_por [autor-distopia-4])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1932)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Un mundo feliz")
      (valoracion_media 4.6)
      (ventas 300000)
      (NivelLector Avanzado)
      (numero_paginas 350)
   )

   ([libro-distopia-8] of Libro
      (epoca_de_libro [epoca-post-postmodernismo])
      (escrito_por [autor-distopia-4])
      (genero_de_libro [genero-distopia])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-distopia])
      (ano_publicacion 1931)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Contrapunto")
      (valoracion_media 4.4)
      (ventas 270000)
      (NivelLector Intermedio)
      (numero_paginas 400)
   )
)

(definstances autores-libros-genero-drama-2
   ([autor-drama-1] of Autor
      (epoca_de_autor [epoca-renacimiento])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-drama])
      (libros_escritos [libro-drama-1] [libro-drama-2])
      (edad 38)
      (nombre "Gabriel García Márquez")
   )

   ([libro-drama-1] of Libro
      (epoca_de_libro [epoca-renacimiento])
      (escrito_por [autor-drama-1])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1967)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Cien años de soledad")
      (valoracion_media 4.8)
      (ventas 3000000)
      (NivelLector Intermedio)
      (numero_paginas 450)
   )

   ([libro-drama-2] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-drama-1])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1985)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El amor en los tiempos del cólera")
      (valoracion_media 4.7)
      (ventas 2500000)
      (NivelLector Intermedio)
      (numero_paginas 400)
   )

   ([autor-drama-historia-2] of Autor
      (epoca_de_autor [epoca-renacimiento])
      (escribe_en_idiomas [idioma-italiano])
      (escribe_generos [genero-drama])
      (libros_escritos [libro-drama-3] [libro-drama-4] [libro-historia-1] [libro-historia-2])
      (edad 44)
      (nombre "Umberto Eco")
   )

   ([libro-drama-3] of Libro
      (epoca_de_libro [epoca-renacimiento])
      (escrito_por [autor-drama-historia-2] )
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1980)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El nombre de la rosa")
      (valoracion_media 4.9)
      (ventas 1500000)
      (NivelLector Avanzado)
      (numero_paginas 550)
   )

   ([libro-drama-4] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-drama-historia-2])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-tecnologia])
      (ano_publicacion 1988)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Foucault's Pendulum")
      (valoracion_media 4.7)
      (ventas 1200000)
      (NivelLector Intermedio)
      (numero_paginas 500)
   )

   ([autor-drama-3] of Autor
      (epoca_de_autor [epoca-barroco])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-drama])
      (libros_escritos [libro-drama-5] [libro-drama-6])
      (edad 50)
      (nombre "Molière")
   )

   ([libro-drama-5] of Libro
      (epoca_de_libro [epoca-barroco])
      (escrito_por [autor-drama-3])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-etica])
      (ano_publicacion 1669)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Tartuffe")
      (valoracion_media 4.8)
      (ventas 500000)
      (NivelLector Avanzado)
      (numero_paginas 400)
   )

   ([libro-drama-6] of Libro
      (epoca_de_libro [epoca-barroco])
      (escrito_por [autor-drama-3])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-tiempo])
      (ano_publicacion 1664)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El misántropo")
      (valoracion_media 4.7)
      (ventas 450000)
      (NivelLector Intermedio)
      (numero_paginas 350)
   )

   ([autor-drama-romantic-4] of Autor
      (epoca_de_autor [epoca-clasica])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-drama])
      (libros_escritos [libro-drama-7] [libro-drama-8] [libro-romantico-1] [libro-romantico-2])
      (edad 38)
      (nombre "Jane Austen")
   )

   ([libro-drama-7] of Libro
      (epoca_de_libro [epoca-clasica])
      (escrito_por [autor-drama-romantic-4])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1813)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Orgullo y prejuicio")
      (valoracion_media 4.9)
      (ventas 2000000)
      (NivelLector Avanzado)
      (numero_paginas 350)
   )

   ([libro-drama-8] of Libro
      (epoca_de_libro [epoca-clasica])
      (escrito_por [autor-drama-romantic-4])
      (genero_de_libro [genero-drama])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1811)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Sentido y sensibilidad")
      (valoracion_media 4.8)
      (ventas 1800000)
      (NivelLector Avanzado)
      (numero_paginas 400)
   )
)



(definstances genero-fantasia
   ([autor-fantasia-1] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-fantasia])
      (libros_escritos [libro-fantasia-1] [libro-fantasia-2])
      (edad 42)
      (nombre "J.K. Rowling")
   )

   ([libro-fantasia-1] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-1])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1997)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Harry Potter y la piedra filosofal")
      (valoracion_media 4.7)
      (ventas 50000000)
      (NivelLector Intermedio)
      (numero_paginas 320)
   )

   ([libro-fantasia-2] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-1])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1998)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Harry Potter y la cámara secreta")
      (valoracion_media 4.8)
      (ventas 450000000)
      (NivelLector Avanzado)
      (numero_paginas 352)
   )

   ([autor-fantasia-2] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-fantasia])
      (libros_escritos [libro-fantasia-3] [libro-fantasia-4])
      (edad 68)
      (nombre "J.R.R. Tolkien")
   )

   ([libro-fantasia-3] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-2])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1954)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El Señor de los Anillos: La Comunidad del Anillo")
      (valoracion_media 4.5)
      (ventas 150000000)
      (NivelLector Avanzado)
      (numero_paginas 480)
   )

   ([libro-fantasia-4] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-2])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1937)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El Hobbit")
      (valoracion_media 4.6)
      (ventas 150000000)
      (NivelLector Avanzado)
      (numero_paginas 310)
   )

   ([autor-fantasia-3] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-fantasia])
      (libros_escritos [libro-fantasia-5] [libro-fantasia-6])
      (edad 45)
      (nombre "George R.R. Martin")
   )

   ([libro-fantasia-5] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-3])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1996)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Juego de Tronos")
      (valoracion_media 4.4)
      (ventas 9000000)
      (NivelLector Avanzado)
      (numero_paginas 694)
   )

   ([libro-fantasia-6] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-3])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1999)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Choque de Reyes")
      (valoracion_media 4.4)
      (ventas 88000000)
      (NivelLector Intermedio)
      (numero_paginas 768)
   )

   ([autor-fantasia-4] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-fantasia])
      (libros_escritos [libro-fantasia-7] [libro-fantasia-8])
      (edad 61)
      (nombre "Neil Gaiman")
   )

   ([libro-fantasia-7] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-4])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 2001)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "American Gods")
      (valoracion_media 4.1)
      (ventas 3000000)
      (NivelLector Intermedio)
      (numero_paginas 635)
   )

   ([libro-fantasia-8] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-fantasia-4])
      (genero_de_libro [genero-fantasia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 2001)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Digital)
      (popularidad TRUE)
      (titulo "El chico del cementerio")
      (valoracion_media 4.2)
      (ventas 1500000)
      (NivelLector Intermedio)
      (numero_paginas 370)
   )

)

(definstances genero-oeste

   ([autor-oeste-1] of Autor
      (epoca_de_autor [epoca-clasica])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-oeste])
      (libros_escritos [libro-oeste-1] [libro-oeste-2])
      (edad 70)
      (nombre "Louis L'Amour")
   )

   ([libro-oeste-1] of Libro
      (epoca_de_libro [epoca-clasica])
      (escrito_por [autor-oeste-1])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1953)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Hondo")
      (valoracion_media 4.5)
      (ventas 300000)
      (NivelLector Intermedio)
      (numero_paginas 320)
   )

   ([libro-oeste-2] of Libro
      (epoca_de_libro [epoca-clasica])
      (escrito_por [autor-oeste-1])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1961)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "The Daybreakers")
      (valoracion_media 4.3)
      (ventas 250000)
      (NivelLector Avanzado)
      (numero_paginas 400)
   )

   ([autor-oeste-2] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-oeste])
      (libros_escritos [libro-oeste-3] [libro-oeste-4])
      (edad 65)
      (nombre "Zane Grey")
   )

   ([libro-oeste-3] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-oeste-2])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1912)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Riders of the Purple Sage")
      (valoracion_media 4.6)
      (ventas 400000)
      (NivelLector Intermedio)
      (numero_paginas 350)
   )

   ([libro-oeste-4] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-oeste-2])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1917)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Call of the Canyon")
      (valoracion_media 4.4)
      (ventas 350000)
      (NivelLector Avanzado)
      (numero_paginas 380)
   )

   ([autor-oeste-3] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-oeste])
      (libros_escritos [libro-oeste-5] [libro-oeste-6])
      (edad 58)
      (nombre "Larry McMurtry")
   )

   ([libro-oeste-5] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-oeste-3])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1985)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Lonesome Dove")
      (valoracion_media 4.7)
      (ventas 450000)
      (NivelLector Intermedio)
      (numero_paginas 720)
   )

   ([libro-oeste-6] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-oeste-3])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1966)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Last Picture Show")
      (valoracion_media 4.5)
      (ventas 400000)
      (NivelLector Avanzado)
      (numero_paginas 320)
   )

   ([autor-oeste-4] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-oeste])
      (libros_escritos [libro-oeste-7] [libro-oeste-8])
      (edad 52)
      (nombre "Cormac McCarthy")
   )

   ([libro-oeste-7] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-oeste-4])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1985)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Blood Meridian")
      (valoracion_media 4.6)
      (ventas 500000)
      (NivelLector Intermedio)
      (numero_paginas 350)
   )

   ([libro-oeste-8] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-oeste-4])
      (genero_de_libro [genero-oeste])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1992)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "All the Pretty Horses")
      (valoracion_media 4.7)
      (ventas 550000)
      (NivelLector Intermedio)
      (numero_paginas 320)
   )

)

(definstances autores-libros-genero-historia
   ([libro-historia-1] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-drama-historia-2] )
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-tiempo])
      (ano_publicacion 2004)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "La historia de la belleza")
      (valoracion_media 4.5)
      (ventas 350000)
      (NivelLector Intermedio)
      (numero_paginas 480)
   )

   ([libro-historia-2] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-drama-historia-2] )
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-italiano])
      (tema_de_libro [tema-poder])
      (ano_publicacion 2010)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El cementerio de Praga")
      (valoracion_media 4.2)
      (ventas 280000)
      (NivelLector Intermedio)
      (numero_paginas 560)
   )

   ([autor-historia-2] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-historia] [genero-romantico])
      (libros_escritos [libro-historia-3] [libro-historia-4])
      (edad 68)
      (nombre "Alexandre Dumas Davy")
   )

   ([libro-historia-3] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-historia-2])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1844)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Los tres mosqueteros")
      (valoracion_media 4.7)
      (ventas 420000)
      (NivelLector Avanzado)
      (numero_paginas 600)
   )

   ([libro-historia-4] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-historia-2])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1846)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El conde de Montecristo")
      (valoracion_media 4.9)
      (ventas 480000)
      (NivelLector Intermedio)
      (numero_paginas 900)
   )

   ([autor-historia-3] of Autor
      (epoca_de_autor [epoca-posmodernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-historia])
      (libros_escritos [libro-historia-5] [libro-historia-6])
      (edad 90)
      (nombre "Robert Graves")
   )

   ([libro-historia-5] of Libro
      (epoca_de_libro [epoca-posmodernismo])
      (escrito_por [autor-historia-3])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-etica])
      (ano_publicacion 1934)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Yo, Claudio")
      (valoracion_media 4.6)
      (ventas 320000)
      (NivelLector Avanzado)
      (numero_paginas 468)
   )

   ([libro-historia-6] of Libro
      (epoca_de_libro [epoca-posmodernismo])
      (escrito_por [autor-historia-3])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1938)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Í, Claudio")
      (valoracion_media 4.7)
      (ventas 380000)
      (NivelLector Intermedio)
      (numero_paginas 512)
   )

   ([autor-historia-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-historia])
      (libros_escritos [libro-historia-7] [libro-historia-8])
      (edad 76)
      (nombre "Benito Pérez Galdós")
   )

   ([libro-historia-7] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-historia-4])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1887)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Doña Perfecta")
      (valoracion_media 4.3)
      (ventas 300000)
      (NivelLector Intermedio)
      (numero_paginas 320)
   )

   ([libro-historia-8] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-historia-4])
      (genero_de_libro [genero-historia])
      (idioma_de_libro [idioma-espanol])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1881)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "La de Bringas")
      (valoracion_media 4.4)
      (ventas 340000)
      (NivelLector Avanzado)
      (numero_paginas 400)
   )
)


(definstances autores-libros-genero-ficcion

   ([autor-ficcion-distopia-1] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion])
      (libros_escritos [libro-ficcion-1] [libro-ficcion-2] [libro-distopia-5] [libro-distopia-6])
      (edad 46)
      (nombre "George Orwell")
   )

   ([libro-ficcion-1] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-ficcion-distopia-1])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1949)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "1984")
      (valoracion_media 4.6)
      (ventas 3000000)
      (NivelLector Avanzado)
      (numero_paginas 328)
   )

   ([libro-ficcion-2] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-ficcion-distopia-1])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1945)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Rebelión en la granja")
      (valoracion_media 4.4)
      (ventas 2000000)
      (NivelLector Intermedio)
      (numero_paginas 128)
   )

   ([autor-ficcion-2] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion])
      (libros_escritos [libro-ficcion-3] [libro-ficcion-4])
      (edad 80)
      (nombre "Herbert George Wells")
   )

   ([libro-ficcion-3] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ficcion-2])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-tiempo])
      (ano_publicacion 1898)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "La guerra de los mundos")
      (valoracion_media 4.7)
      (ventas 1500000)
      (NivelLector Avanzado)
      (numero_paginas 192)
   )

   ([libro-ficcion-4] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ficcion-2])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1895)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "La máquina del tiempo")
      (valoracion_media 4.5)
      (ventas 1200000)
      (NivelLector Intermedio)
      (numero_paginas 234)
   )

   ([autor-ficcion-3] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion] [genero-fantasia])
      (libros_escritos [libro-ficcion-5] [libro-ficcion-6])
      (edad 98)
      (nombre "Jack Williamson")
   )

   ([libro-ficcion-5] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ficcion-3])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1947)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "With Folded Hands")
      (valoracion_media 4.2)
      (ventas 800000)
      (NivelLector Avanzado)
      (numero_paginas 256)
   )

   ([libro-ficcion-6] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ficcion-3])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1951)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Darker Than You Think")
      (valoracion_media 4.1)
      (ventas 700000)
      (NivelLector Intermedio)
      (numero_paginas 320)
   )

   ([libro-ficcion-7] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1968)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Digital)
      (popularidad TRUE)
      (titulo "¿Sueñan los androides con ovejas eléctricas?")
      (valoracion_media 4.5)
      (ventas 500000)
      (NivelLector Intermedio)
      (numero_paginas 244)
   )

   ([libro-ficcion-8] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-ciencia-distopia-ficcion-3])
      (genero_de_libro [genero-ficcion])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1956)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Minority Report")
      (valoracion_media 4.3)
      (ventas 600000)
      (NivelLector Avanzado)
      (numero_paginas 312)
   )

)

(definstances autores-libros-genero-policiaca
   ([autor-policiaca-1] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-1] [libro-policiaca-2])
      (edad 74)
      (nombre "Patricia Highsmith")
   )

   ([libro-policiaca-1] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-1])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1950)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "El talento de Mr. Ripley")
      (valoracion_media 4.5)
      (ventas 800000)
      (NivelLector Avanzado)
      (numero_paginas 320)
   )

   ([libro-policiaca-2] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-1])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1957)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Extraños en un tren")
      (valoracion_media 4.3)
      (ventas 700000)
      (NivelLector Intermedio)
      (numero_paginas 256)
   )

   ([autor-policiaca-2] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-3] [libro-policiaca-4])
      (edad 66)
      (nombre "Dashiell Hammett")
   )

   ([libro-policiaca-3] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-2])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-etica])
      (ano_publicacion 1929)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El halcón maltés")
      (valoracion_media 4.4)
      (ventas 900000)
      (NivelLector Avanzado)
      (numero_paginas 224)
   )

   ([libro-policiaca-4] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-2])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1930)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Cosecha roja")
      (valoracion_media 4.2)
      (ventas 600000)
      (NivelLector Intermedio)
      (numero_paginas 280)
   )

   ([autor-policiaca-3] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-5] [libro-policiaca-6])
      (edad 70)
      (nombre "Raymond Chandler")
   )

   ([libro-policiaca-5] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-3])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-etica])
      (ano_publicacion 1939)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Adiós, muñeca")
      (valoracion_media 4.3)
      (ventas 750000)
      (NivelLector Avanzado)
      (numero_paginas 272)
   )

   ([libro-policiaca-6] of Libro
      (epoca_de_libro [epoca-modernismo])
      (escrito_por [autor-policiaca-3])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1940)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El sueño eterno")
      (valoracion_media 4.4)
      (ventas 850000)
      (NivelLector Intermedio)
      (numero_paginas 308)
   )

   ([autor-policiaca-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-7] [libro-policiaca-8])
      (edad 65)
      (nombre "William Wilkie Collins")
   )

   ([libro-policiaca-7] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-policiaca-4])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-etica])
      (ano_publicacion 1860)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "La dama de blanco")
      (valoracion_media 4.1)
      (ventas 700000)
      (NivelLector Intermedio)
      (numero_paginas 432)
   )

   ([libro-policiaca-8] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-policiaca-4])
      (genero_de_libro [genero-policiaca])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1868)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Armadale")
      (valoracion_media 4.2)
      (ventas 750000)
      (NivelLector Avanzado)
      (numero_paginas 496)
   )

)

(definstances autores-libros-genero-romantico

   ([libro-romantico-1] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-drama-romantic-4])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1813)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Orgullo y prejuicio")
      (valoracion_media 4.7)
      (ventas 1000000)
      (NivelLector Intermedio)
      (numero_paginas 432)
   )

   ([libro-romantico-2] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-drama-romantic-4])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1811)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Sentido y sensibilidad")
      (valoracion_media 4.6)
      (ventas 950000)
      (NivelLector Intermedio)
      (numero_paginas 368)
   )

   ([autor-romantico-2] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ruso])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-3] [libro-romantico-4])
      (edad 58)
      (nombre "Leo Tolstoy")
   )

   ([libro-romantico-3] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-romantico-2])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ruso])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1877)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Anna Karenina")
      (valoracion_media 4.5)
      (ventas 900000)
      (NivelLector Avanzado)
      (numero_paginas 864)
   )

   ([libro-romantico-4] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-romantico-2])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ruso])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1869)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Guerra y paz")
      (valoracion_media 4.6)
      (ventas 950000)
      (NivelLector Avanzado)
      (numero_paginas 1225)
   )

   ([autor-romantico-3] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-5] [libro-romantico-6])
      (edad 73)
      (nombre "Laura Kinsale")
   )

   ([libro-romantico-5] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-romantico-3])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1991)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "El príncipe de los sueños")
      (valoracion_media 4.2)
      (ventas 800000)
      (NivelLector Intermedio)
      (numero_paginas 464)
   )

   ([libro-romantico-6] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-romantico-3])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1986)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Las sombras del sol")
      (valoracion_media 4.4)
      (ventas 850000)
      (NivelLector Intermedio)
      (numero_paginas 352)
   )

   ([autor-romantico-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-7] [libro-romantico-8])
      (edad 58)
      (nombre "Gustave Flaubert")
   )

   ([libro-romantico-7] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-romantico-4])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1857)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Madame Bovary")
      (valoracion_media 4.6)
      (ventas 920000)
      (NivelLector Avanzado)
      (numero_paginas 528)
   )

   ([libro-romantico-8] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-romantico-4])
      (genero_de_libro [genero-romantico])
      (idioma_de_libro [idioma-frances])
      (tema_de_libro [tema-amor])
      (ano_publicacion 1869)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Salambó")
      (valoracion_media 4.5)
      (ventas 890000)
      (NivelLector Avanzado)
      (numero_paginas 416)
   )

)

(definstances autores-libros-genero-terror
   ([autor-terror-1] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-1] [libro-terror-2])
      (edad 76)
      (nombre "Stephen King")
   )

   ([libro-terror-1] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-terror-1])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1986)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "It")
      (valoracion_media 4.2)
      (ventas 1200000)
      (NivelLector Avanzado)
      (numero_paginas 1138)
   )

   ([libro-terror-2] of Libro
      (epoca_de_libro [epoca-realismo])
      (escrito_por [autor-terror-1])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1974)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Carrie")
      (valoracion_media 4.1)
      (ventas 1000000)
      (NivelLector Intermedio)
      (numero_paginas 199)
   )

   ([autor-terror-2] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-3] [libro-terror-4])
      (edad 46)
      (nombre "H.P. Lovecraft")
   )

   ([libro-terror-3] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-terror-2])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-poder])
      (ano_publicacion 1920)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Call of Cthulhu")
      (valoracion_media 4.5)
      (ventas 800000)
      (NivelLector Avanzado)
      (numero_paginas 60)
   )

   ([libro-terror-4] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-terror-2])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-identidad])
      (ano_publicacion 1928)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Dunwich Horror")
      (valoracion_media 4.3)
      (ventas 700000)
      (NivelLector Intermedio)
      (numero_paginas 36)
   )

   ([autor-terror-3] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-5] [libro-terror-6])
      (edad 64)
      (nombre "Bram Stoker")
   )

   ([libro-terror-5] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-terror-3])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1897)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Papel)
      (popularidad TRUE)
      (titulo "Drácula")
      (valoracion_media 4.4)
      (ventas 900000)
      (NivelLector Avanzado)
      (numero_paginas 418)
   )

   ([libro-terror-6] of Libro
      (epoca_de_libro [epoca-romanticismo])
      (escrito_por [autor-terror-3])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1901)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Digital)
      (popularidad TRUE)
      (titulo "The Jewel of Seven Stars")
      (valoracion_media 4.0)
      (ventas 600000)
      (NivelLector Intermedio)
      (numero_paginas 301)
   )

   ([autor-terror-4] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-7] [libro-terror-8])
      (edad 80)
      (nombre "Anne Rice")
   )

   ([libro-terror-7] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-terror-4])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1976)
      (complejidad "Alta")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "Entrevista con el vampiro")
      (valoracion_media 4.1)
      (ventas 850000)
      (NivelLector Avanzado)
      (numero_paginas 372)
   )

   ([libro-terror-8] of Libro
      (epoca_de_libro [epoca-contemporaneo])
      (escrito_por [autor-terror-4])
      (genero_de_libro [genero-terror])
      (idioma_de_libro [idioma-ingles])
      (tema_de_libro [tema-aventura])
      (ano_publicacion 1985)
      (complejidad "Media")
      (de_moda TRUE)
      (disponibilidad Ambos)
      (popularidad TRUE)
      (titulo "The Vampire Lestat")
      (valoracion_media 4.0)
      (ventas 700000)
      (NivelLector Intermedio)
      (numero_paginas 532)
   )

)

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
    (bind ?epoca (send ?libro get-epoca_de_libro))
    (printout t "Época: " (send ?epoca get-nombre) crlf)
    (bind ?tema (send ?libro get-tema_de_libro))
    (printout t "Tema(s): " (send ?tema get-nombre) crlf)
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

(deffunction cumple-con-solucion (?libro ?generos ?temas ?autores ?nivel2 ?estatus2 ?idiomas ?generosSimilares ?temasSimilares ?autoresSimilares ?idiomasSimilares ?epocasSimilares ?epoca)
  (bind ?cumple FALSE)
  (bind ?genero (send ?libro get-genero_de_libro))
  (bind ?tema (send ?libro get-tema_de_libro))
  (bind ?autor (send ?libro get-escrito_por))
  (bind ?nivel (send ?libro get-NivelLector))
  (bind ?epocas (send ?libro get-epoca_de_libro))
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
          (cumple-restricion-instancias ?epocas ?epocasSimilares)
          (cumple-restricion-instancias ?epocas ?epoca)
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
               (lee_en_idiomas $?idiomas)
               (epocas_preferidos $?epoca))

  (test (> (length$ ?libros) 0))
  =>
  (printout t "Refinando solución..." crlf)
  (bind ?numLibrosRecomendados 0)

  (bind ?generosSimilares (create$))
  (bind ?autoresSimilares (create$))
  (bind ?temasSimilares (create$))
  (bind ?idiomasSimilares (create$))
  (bind ?epocasSimilares (create$))

  (bind ?librosSimilares (send ?lector get-libros_preferidos))
  (bind ?papel (send ?lector get-preferencia_papel))
  
  (loop-for-count (?i (length$ ?librosSimilares))
    (bind ?libroActual (nth$ ?i ?librosSimilares))
    (bind ?generosLibroActual (send ?libroActual get-genero_de_libro))
    (bind ?autoresLibroActual (send ?libroActual get-escrito_por))
    (bind ?temasLibroActual (send ?libroActual get-tema_de_libro))
    (bind ?idiomasLibroActual (send ?libroActual get-idioma_de_libro))
    (bind ?epocaLibroActual (send ?libroActual get-epoca_de_libro))
    (bind ?generosSimilares (insert$ ?generosSimilares 1 ?generosLibroActual))
    (bind ?autoresSimilares (insert$ ?autoresSimilares 1 ?autoresLibroActual))
    (bind ?temasSimilares (insert$ ?temasSimilares 1 ?temasLibroActual))
    (bind ?idiomasSimilares (insert$ ?idiomasSimilares 1 ?idiomasLibroActual))
    (bind ?epocasSimilares (insert$ ?epocasSimilares 1 ?epocaLibroActual))
  )
  (foreach ?libro ?libros
    (if (cumple-con-solucion ?libro ?generos ?temas ?autores ?nivel ?estatus2 ?idiomas ?generosSimilares ?temasSimilares ?autoresSimilares ?idiomasSimilares ?epocasSimilares ?epoca)
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

      (if (cumple-restricion-instancias (send ?libro get-epoca_de_libro) ?epoca)
        then
        (bind ?puntuacion (+ ?puntuacion 10))
        (bind ?razon  "Cumple con alguno de las épocas de interés del lector.")
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
      (if (cumple-restricion-instancias (send ?libro get-epoca_de_libro) ?epocasSimilares)
        then
        (bind ?puntuacion (+ ?puntuacion 7))
        (bind ?razon  "Cumple con época similar a uno de los libros leídos.")
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
