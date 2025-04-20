📚 Book Recommender – AI Project with CLIPS & Ontologies

This project is part of a university practical assignment for Artificial Intelligence – Symbolic-Based Computing (SBC).
It implements a book recommendation system using the CLIPS expert system shell and an ontology-based knowledge base.
🧠 Project Overview

The goal of this system is to recommend books based on different user preferences, using rules, facts, and ontological reasoning.
It leverages:

    Expert system logic written in CLIPS

    An ontology defined in Turtle (.ttl) format

    A structured set of book attributes and instances (genre, language, era, theme, etc.)

📂 File Structure
🔧 Core Logic

    main.clp: Entry point and main control logic

    recomendador.clp: Rule base for the recommender

    programa.clp: Auxiliary logic and helpers

    clases.clp: Class definitions (e.g., Libro, Usuario)

    ontologia.clp: Ontological structure loaded into CLIPS

📄 Instances

    instancias.clp: Book instances

    epocas.clp, generos.clp, idiomas.clp, temas.clp: Structured instances for each category

🧠 Ontology

    ontologia.ttl: Ontology in RDF/Turtle format to model semantic relationships

⚙️ How It Works

    The system loads classes, rules, and ontology.

    User preferences (genre, language, theme, etc.) are provided.

    Rules are fired to infer suitable recommendations.

    The system outputs a personalized list of suggested books.

📌 Example Use Case

A user is interested in historical fiction, written in Spanish, from the 19th century, and available now.
The system analyzes available instances and uses logical inference to suggest matching books.
🚀 Technologies

    CLIPS (Rule-based programming language for expert systems)

    RDF/Turtle Ontology (.ttl)

    Logical inference & symbolic AI

🛠️ To-Do / Future Improvements

    Add natural language interface

    Integrate with external book databases (e.g., Open Library)

    Expand ontology with author information, popularity metrics, etc.
