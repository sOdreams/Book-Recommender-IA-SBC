(definstances autores-libros-genero-historia

   ([autor-historia-1] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-italiano])
      (escribe_generos [genero-historia])
      (libros_escritos [libro-historia-1] [libro-historia-2])
      (edad 84)
      (nombre "Umberto Eco")
   )

   ([autor-historia-2] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-historia] [genero-romantico])
      (libros_escritos [libro-historia-3] libro-historia-4])
      (edad 68)
      (nombre "Alexandre Dumas Davy")
   )
   
   ([autor-historia-3] of Autor
      (epoca_de_autor [epoca-Posmodernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-historia])
      (libros_escritos [libro-historia-5] [libro-historia-6])
      (edad 90)
      (nombre "Robert Graves")
   )
   
   ([autor-historia-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-espanol])
      (escribe_generos [genero-historia])
      (libros_escritos [libro-historia-7] [libro-historia-8])
      (edad 76)
      (nombre "Benito Pérez Galdó")
   )
)

(definstances autores-libros-genero-ficcion

   ([autor-ficcion-1] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion])
      (libros_escritos [libro-ficcion-1] [libro-ficcion-2])
      (edad 46)
      (nombre "George Orwell")
   )

   ([autor-ficcion-2] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion])
      (libros_escritos [libro-ficcion-3] [libro-ficcion-4])
      (edad 80)
      (nombre "Herbert George Wells")
   )
   
   ([autor-ficcion-3] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion] [genero-fantasi])
      (libros_escritos [libro-ficcion-5]  [libro-ficcion-6])
      (edad 98)
      (nombre "Jack Williamson")
   )
   
   ([autor-ficcion-4] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-ficcion])
      (libros_escritos [libro-ficcion-7] [libro-ficcion-8])
      (edad 53)
      (nombre "Philip K. Dick")
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

   ([autor-policiaca-2] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-3 ] [libro-policiaca-4])
      (edad 66)
      (nombre "Dashiell Hammett")
   )
   
   ([autor-policiaca-3] of Autor
      (epoca_de_autor [epoca-modernismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-5] [libro-policiaca-6])
      (edad 70)
      (nombre "Raymond Chandler")
   )
   
   ([autor-policiaca-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-policiaca])
      (libros_escritos [libro-policiaca-7] [libro-policiaca-8])
      (edad 65)
      (nombre "William Wilkie Collins")
   )
)

(definstances autores-libros-genero-romantico

   ([autor-romantico-1] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-1] [libro-romantico-2])
      (edad 41)
      (nombre "Jane Austen")
   )

   ([autor-romantico-2] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-ruso])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-3 ] [libro-romantico-4])
      (edad 58)
      (nombre "Leo Tolstoy")
   )
   
   ([autor-romantico-3] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-5] [libro-romantico-6])
      (edad 73)
      (nombre "Laura Kinsale")
   )
   
   ([autor-romantico-4] of Autor
      (epoca_de_autor [epoca-realismo])
      (escribe_en_idiomas [idioma-frances])
      (escribe_generos [genero-romantico])
      (libros_escritos [libro-romantico-7] [libro-romantico-8])
      (edad 58)
      (nombre "Gustave Flaubert")
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

   ([autor-terror-2] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-3 ] [libro-terror-4])
      (edad 46)
      (nombre "H.P. Lovecraft: ")
   )
   
   ([autor-terror-3] of Autor
      (epoca_de_autor [epoca-romanticismo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-5] [libro-terror-6])
      (edad 64)
      (nombre "Bram Stoker")
   )
   
   ([autor-terror-4] of Autor
      (epoca_de_autor [epoca-contemporaneo])
      (escribe_en_idiomas [idioma-ingles])
      (escribe_generos [genero-terror])
      (libros_escritos [libro-terror-7] [libro-terror-8])
      (edad 80)
      (nombre "Anne Rice")
   )
)