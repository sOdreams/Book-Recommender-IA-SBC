(definstances generos
   ([genero-ciencia] of Ciencia
      (autores_de_genero [autor-ciencia-1] [autor-ciencia-2] [autor-ciencia-distopia-ficcion-3] [autor-ciencia-4])
      (libros_de_genero [libro-ciencia-1] [libro-ciencia-2] [libro-ciencia-3] [libro-ciencia-4] [libro-ciencia-5] [libro-ciencia-6] [libro-ciencia-7] [libro-ciencia-8])
      (caracteristicas_genero "Género que explora conceptos futuristas y tecnológicos.")
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