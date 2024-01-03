### PseudoCodigo

main = 
    show "Bienvenido a tu lista de tareas." 
    main loop "db.txt"

main loop DB:String = 
    show "Por favor, ingresa la descripción de la tarea y presiona Enter:"
    add to file db ( add new line (get info))
    show "\nLista de tareas:"
    show list with numbers <read db>
    repeat main loop

TaskList = <String> List
show list with numbers <TaskList> = 
>   1. tomar el siguiente elemento del tasklist (for each)
>   2. a ese elemento pongale al principio;
>        2.1 un numero (iniciando en 1 segun su orden)
>        2.2 un punto y un espacio
>   3. muestre el elemento \n
    for each <index, element> in (enumerate tasklist) : 
        text = (index + 1) ++ ". " ++ element
        show text