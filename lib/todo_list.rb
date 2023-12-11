class TodoList
  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task)
    @tasks.delete(task)
  end

  def complete_task(task)
    task.complete!
  end

  def show_tasks
    @tasks.map(&:to_s)
  end
end

class Task
  attr_reader :description, :completed

  def initialize(description)
    @description = description
    @completed = false
  end

  def complete!
    @completed = true
  end

  def to_s
    "[#{completed ? 'X' : ' '}] #{description}"
  end
end