### PseudoCodigo

main = 
    show "Bienvenido a tu lista de tareas." 
    main loop "db.txt"

main loop DB:String = 
    show "Por favor, ingresa la descripción de la tarea y presiona Enter:"
    get info ->
    add new line ->
    add to file db
    show "\nLista de tareas:"
    show list with numbers <read db>
    repeat main loop

show list with numbers <FileContent> = 
    list-enum <- file-content to list _ enum
    for each <index, element> of list-enum : 
        show element