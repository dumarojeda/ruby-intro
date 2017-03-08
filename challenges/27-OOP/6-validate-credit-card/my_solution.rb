
# Pseudocode



# 1. Solucion Inicial
class CreditCard
  attr_accessor :number

  def initialize(number)
    if number.to_s.length == 16
      @number = number
    else
      raise ArgumentError.new("Tarjeta invalida")
    end
  end

  # Create Array with original argument
  def step_zero
    number_array = @number.to_s.chars.map(&:to_i)    
  end

  # Multiply even items in new array
  def step_one
    number_array = step_zero
    new_array = number_array.map.with_index do |e, i|
      if i.even?
        e * 2
      else
        e
      end
    end 
  end

  # Addition all array elements in a new variable
  def step_two
    new_array = step_one
    new_array = new_array.join.to_s.chars.map(&:to_i) 
    all_add = new_array.reduce(0, :+)
  end

  # Verify if all_add is multiply of 10
  def check_card
    all_add = step_two
    if all_add % 10 == 0
      true
    else
      false
    end

  end

end

# class CreditCard

#  def initialize(num)
#    @num = num.to_s.split("").map{|x| x.to_i}
#    if @num.length != 16
#      raise ArgumentError.new ("The card Number most 16 digits long")
#    end
#  end

#  def double
#    @num_double = @num.each_with_index.map do |value, index|
#      if (index+1).odd?
#        value*2
#      else
#        value
#      end
#    end
#  end

#  def break
#    self.double
#    @num_double.map! {|x| x.to_s}
#    @num_double.map! {|num| num.length >1? num.split("") : num}
#    @num_double
#  end

#   def sum
#     self.double
#     self.break
#     @num_sum = @num_double.flatten.reduce(:+)
#   end

#   def valid
#     if @num_sum % 10 == 0
#       true
#     else
#       false
#     end
#   end

#   def check_card
#     self.double
#     self.sum
#       sel.valid
#   end
# end


newcard = CreditCard.new(4563960122001999)
p newcard.check_card


# 2. Solucion con Refactor





###### DRIVER CODE #########
