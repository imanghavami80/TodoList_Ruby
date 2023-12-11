require './lib/todo_list'

RSpec.describe TodoList do
  describe '#add_task' do
    it 'adds a task to the todo list' do
      todo_list = TodoList.new
      task = Task.new('Buy groceries')
      todo_list.add_task(task)
      expect(todo_list.show_tasks).to include('[ ] Buy groceries')
    end
  end

  describe '#remove_task' do
    it 'removes a task from the todo list' do
      todo_list = TodoList.new
      task = Task.new('Read a book')
      todo_list.add_task(task)
      todo_list.remove_task(task)
      expect(todo_list.show_tasks).to be_empty
    end
  end

  describe '#complete_task' do
    it 'marks a task as completed' do
      todo_list = TodoList.new
      task = Task.new('Exercise')
      todo_list.add_task(task)
      todo_list.complete_task(task)
      expect(todo_list.show_tasks).to include('[X] Exercise')
    end
  end

  describe '#show_tasks' do
    it 'returns a list of tasks in the todo list' do
      todo_list = TodoList.new
      task1 = Task.new('Clean the house')
      task2 = Task.new('Write code')
      todo_list.add_task(task1)
      todo_list.add_task(task2)
      expect(todo_list.show_tasks).to eq(['[ ] Clean the house', '[ ] Write code'])
    end
  end
end
