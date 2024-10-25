class View
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1} [#{task.done? ? 'X' : ' '}] - #{task.name}"
    end
  end

  def ask_user_for_name
    puts "Qual o nome da tarefa?"

    gets.chomp
  end

  def ask_user_for_number
    puts "Qual o numero da tarefa?"

    gets.chomp.to_i - 1
  end
end
