class Router
  def initialize(controller)
    @controller = controller
  end

  def run
    puts "Bem-vindo ao gerenciador de tarefas!!"

    loop do
      puts 'O que você quer fazer?'
      puts '1. Listar tarefas'
      puts '2. Adicionar tarefas'
      puts '3. Marcar tarefa como feita'
      puts '4. Deletar tarefa'
      puts '5. Sair do programa'

      answer = gets.chomp.to_i

      case answer
      when 1
        @controller.list
      when 2
        @controller.add
      when 3
        @controller.mark_as_done
      when 4
        @controller.delete_task
      when 5
        puts "Tchauu :("
        break
      else
        puts 'Ação inválida! Tente novamente...'
      end
    end
  end
end
