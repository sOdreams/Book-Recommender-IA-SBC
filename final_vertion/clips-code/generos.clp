(definstances generos
   ([genero-ciencia] of Ciencia
      (autores_de_genero [autor-ciencia-1] [autor-ciencia-2] [autor-ciencia-3] [autor-ciencia-4])
      (libros_de_genero [libro-ciencia-1] [libro-ciencia-2] [libro-ciencia-3] [libro-ciencia-4] [libro-ciencia-5] [libro-ciencia-6] [libro-ciencia-7] [libro-ciencia-8])
      (caracteristicas_genero "Género que explora conceptos futuristas y tecnológicos.")
      (nombre "Ciencia")
   )

   ([genero-distopia] of Distopia
      (autores_de_genero [autores-distopia-1] [autores-distopia-2] [autores-distopia-3] [autores-distopia-4])
      (libros_de_genero [libros-distopia-1] [libros-distopia-2] [libros-distopia-3] [libros-distopia-4] [libros-distopia-5] [libros-distopia-6] [libros-distopia-7] [libros-distopia-8])
      (caracteristicas_genero "Explora sociedades distópicas y futuros apocalípticos.")
      (nombre "Distopía")
   )


    ([genero-drama] of Drama
      (autores_de_genero [autor-drama-1] [autor-drama-2] [autor-drama-3] [autor-drama-4])
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
      (autores_de_genero [autores-historia])
      (libros_de_genero [libros-historia])
      (caracteristicas_genero "Basado en eventos y hechos históricos.")
      (nombre "Historia")
   )

   ([genero-ficcion] of Ficcion
      (autores_de_genero [autores-ficcion])
      (libros_de_genero [libros-ficcion])
      (caracteristicas_genero "Explora conceptos especulativos y no basados en la realidad.")
      (nombre "Ficción")
   )

   ([genero-policiaca] of Policiaca
      (autores_de_genero [autores-policiaca])
      (libros_de_genero [libros-policiaca])
      (caracteristicas_genero "Centrado en crímenes, detectives y resolución de misterios.")
      (nombre "Policiaca")
   )

   ([genero-romantico] of Romantico
      (autores_de_genero [autores-romantico])
      (libros_de_genero [libros-romantico])
      (caracteristicas_genero "Centrado en relaciones románticas y emociones.")
      (nombre "Romántico")
   )

   ([genero-terror] of Terror
      (autores_de_genero [autores-terror])
      (libros_de_genero [libros-terror])
      (caracteristicas_genero "Busca generar miedo y suspense en el lector.")
      (nombre "Terror")
   )
   
)