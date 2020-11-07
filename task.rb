require 'date'

class Task < Post
  def initialize
    super

    @due_data = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?:"
    @text = STDIN.gets.chomp

    puts "К какому числу нужно это сделать? (В формате ДД.ММ.ГГГГ {23.08.2004}"
    input = STDIN.gets.chomp

    @due_data = Date.parse(input)
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%Y.%m.%d, %H%:M:%S")} \n\r \n\r"

    deadline = "Крайний срок: #{@due_data}"

    return [time_string, @text, deadline]

  end
end