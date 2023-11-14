### PseudoCodigo

main loop DB = 
    show "Por favor, ingresa la descripción de la tarea y presiona Enter:"
    get line -> task description 
    save in db (task description + "\n")
    show "\nLista de tareas:"
    show (read db) of the list with numbers
    repeat main loop

show FileContent of the list with numbers = 
    list-enum <- file-content to list _ enum
    for each <index, element> of list-enum : 
        show element

main = 
    show "Bienvenido a tu lista de tareas." 
    main loop "db.txt"




