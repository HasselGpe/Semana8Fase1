class TasksController
  def initialize(args)
    @view = TasksView.new
    opcion_usuario(args)
  end

  def opcion_usuario(args)
    if args[0] == "index"
      index
    elsif args[0] == "add"
      add
    elsif args[0] == "delete"
      delete
    elsif args[0] == "complete"
      complete
    else
      @view.error
    end
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    @view.index(Task.all)
  end

  def add
    task = @view.create
    # puts "*" * 50
    Task.create(tarea: task)
    @view.task_create(task)
  end

  def delete
    num = @view.delete(Task.all).to_i - 1
    id = find_id(num)
    eliminada = Task.find_by(id: id)
    Task.delete(id)
    @view.delete_complete(eliminada)
  end

  def complete
    num = @view.update(Task.all).to_i - 1
    id = find_id(num)
    Task.update(id, status: 'completada')
    @view.update_complete(Task.find_by(id: id))
  end

  def find_id(num)
    task = ""

    Task.all.each_with_index do |t, i|
      if tarea == i
        task = t
      end
    end

    task.id
  end

end