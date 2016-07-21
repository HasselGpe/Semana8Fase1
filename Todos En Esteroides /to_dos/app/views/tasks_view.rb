class TasksView
  # Recuerda que la única responsabilidad de la vista es desplegar data al usuario

  def index(tareas)
    tareas.each_with_index do |t, i|
      puts "No.#{i + 1} Tarea:#{t.tarea} Estatus:#{t.status}" 
    end
  end

  def create
    puts "Agrega una tarea:"
    STDIN.gets.chomp
    # p tarea
  end

  def task_create(task)
    print "Agregando"
    sleep 0.5
    print "."
    sleep 0.5
    print "."
    sleep 0.5
    print "."
    sleep 0.5
    puts
    puts "La Tarea: #{task}, fue agregada exitosamente"
  end

  def delete(tareas)
    puts "Selecciona el numero de tarea que quieres eliminar"
    puts
    index(tareas)
    puts
    STDIN.gets.chomp
  end

  def delete_complete(task)
    puts "La Tarea: #{task.tarea} fue eliminada exitosamente"
  end

  def update(tareas)
    puts "Selecciona el numero de tarea completada"
    puts
    index(tareas)
    puts
    STDIN.gets.chomp
  end

  def update_complete(task)
    puts "La Tarea: #{task.tarea} fue completada"
  end

  def error
    puts "La opcion ingresada es invalida"
    puts "Vuelve a intentarlo"
  end
end








