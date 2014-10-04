class List

  def initialize(name)
    @tasks = []
    @name = name
  end

  def add_task(task)
    @tasks << task
  end

  def delete_task(task)
    @tasks.delete(task)
  end

  def display_tasks
    puts "The #{@name} list:"
    @tasks.each do |task|
      if task.status
        puts "* #{task.name}"
      else
        puts "* #{task.name}, due in #{task.deadline} days"
      end
    end
    puts
  end

  def prioritize
    @tasks.sort_by! do |task|
      task.deadline
    end
  end

  def completed_tasks
    @tasks_completed = []
    @tasks.each do |task|
      if task.status
        @tasks_completed << task
      end
    end

    if @tasks_completed.length == @tasks.length
      puts "All tasks are completed.\n\n"
    elsif @tasks_completed.length - @tasks.length == 1
      puts "1 task is incomplete.\n\n"
    elsif @tasks.length - @tasks_completed.length == 1
      puts "1 task is completed.\n\n"
    else
      puts "#{@tasks.length} tasks are incomplete.\n\n"
    end
  end

  def incomplete_tasks
    @tasks_incomplete = []
    @tasks.each do |task|
      if !task.status
        @tasks_incomplete << task
      end
    end
    puts "The incomplete tasks are:"
    @tasks_incomplete.each do |task|
      puts "* #{task.name}, due in #{task.deadline} days"
    end
    puts
  end

  def overdue_tasks
    @tasks_overdue = []
    @tasks.each do |task|
      if task.deadline < 0
        @tasks_overdue << task
      end
    end
    if @tasks_overdue.length == 0
      puts "No overdue tasks."
    else
      puts "The overdue tasks are:"
      @tasks_overdue.each do |task|
        puts "#{task.name}, #{task.deadline.abs} days overdue"
      end
      puts
    end
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

  def edit_name(name)
    @name = name
  end

  def status
    @completed
  end

  def completed
    @name = "#{@name} (completed)"
    @completed = true
    @deadline = 1000000000000
  end

  def deadline
    @deadline
  end

  def edit_deadline(days)
    @deadline = days
    "The #{@name} task is due in #{@deadline} days.\n\n"
  end

end

list = List.new("Things to do today")

sleep = Task.new("Go for a sleep study", 14)
fight = Task.new("Fight bears", 3)
fire = Task.new("Put out house fire", 1)
make = Task.new("Make some coffee", -1)
drive = Task.new("Drive car back home", 7)

list.add_task(sleep)
list.add_task(fight)
list.add_task(fire)
list.add_task(make)
list.add_task(drive)

list.display_tasks
fire.status
list.prioritize
fire.completed
list.prioritize
list.completed_tasks
list.incomplete_tasks
list.delete_task(sleep)
fire.status
list.prioritize
list.overdue_tasks
list.display_tasks
