
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