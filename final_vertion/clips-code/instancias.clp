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