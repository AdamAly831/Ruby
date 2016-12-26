class AppleTree
  attr_accessor :height, :age, :apples

  def initialize
    @apples = []
    @height = 0
    @age = 0
  end

  def count_apples
    @apples.count
  end

  def year_gone_by
    @age += 1
  end

  def grow_apples #grow no apples before 3 and after 10 
    if(@age.between?(4,11)) 
      @apples.push("Green Apple")
    end
  end

  def pick_apples
    @apples.clear
  end
  
end