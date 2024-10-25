require_relative 'view'
require_relative 'task'

class Controller
  def initialize(repo)
    @view = View.new
    @repo = repo
  end

  def list
    # 1. Pedir pro repositório a array de tasks atualizada
    tasks = @repo.all

    # 2. Mandar a view fazer o display de tasks
    @view.display_tasks(tasks)
  end

  def add
    # 1. Perguntar pro usuário qual o nome da task (mandar a view)
    name = @view.ask_user_for_name
    # 2. Criar uma task com o nome
    task = Task.new(name)
    # 3. Guardar a task (mandar o repositorio guardar)
    @repo.add_task(task)
  end

  def mark_as_done
    # 1. listar todas as tarefas
    list

    # 2. perguntar pro user qual tarefa ele quer marcar (mandar a view)
    index = @view.ask_user_for_number

    # 3. pedir pro repositorio achar a tarefa
    task = @repo.find(index)

    # 4. marcar como feita
    task.done!

    # 5. listar
    list
  end

  def delete_task
    # 1. listar tarefas
    list
    # 2. perguntar pro user qual tarefa ele quer deletar (view)
    index = @view.ask_user_for_number
    # 3. deletar (mandar repositorio)
    @repo.delete(index)
    # 4. listar as tarefas
    list
  end
end
