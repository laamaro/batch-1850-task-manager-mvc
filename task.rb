class Task
  attr_accessor :name

  def initialize(name)
    @name = name
    @done = false
  end

  def done?
    @done
  end

  def done!
    @done = true
  end
end
