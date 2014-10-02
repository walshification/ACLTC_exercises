class List

  def initialize(name)
    @tasks = []
    @name = name
  end

  def add_task(task)
    @tasks << task
  end

  def delete_task(task)

  end

  def display_tasks
    puts "The #{@name} list:"
    @tasks.each do |task|
      puts "* #{task.name}, due in #{task.deadline} days"
    end
  end

  def prioritize
    #for each task in @tasks, if the task has a lower priority, put it at the back.
  end

end

class Task

  def initialize(name, deadline)
    @name = name
    @deadline = deadline
  end

  def name
    @name
  end

  def deadline
    @deadline
  end

  def new_deadline(days)
    @deadline = days
    "The #{@name} task is due in #{@deadline} days."
  end

end

list = List.new("Things to do today")

sleep = Task.new("Go for a sleep study", 14)
fight = Task.new("Fight bears", 3)
fire = Task.new("Put out house fire", 1)

list.add_task(sleep)
list.add_task(fight)
list.add_task(fire)

list.display_tasks



delete a task
edit a task
mark a task completed
tell which tasks are completed
add additional information to a task
list incomplete tasks
list overdue tasks
