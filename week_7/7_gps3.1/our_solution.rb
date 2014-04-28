# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Butler Bushyhead
# 2. Carl Krause
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to create a new grocery list.
# As a user, I want to be able to add items to my grocery list.
# As a user, I want to be able to define quantity.
# As a user, I want to be able to check off items on my list.
 
# Pseudocode

# DEFINE a class called GroceryList
#   CREATE a method Initialize
#       Items equivalent to empty hash
#       Create a title of the list that's an instance variable
#   END
#   CREATE method add_item(item, quantity) # takes two arguments
#       Push to the hash
#   END
#   CREATE method remove_item(item)
#       Remove key-value pair at item name
#   END
#   CREATE method change_quantity(item, quantity)
#       Raise error if item doesn't exist
#       Change quantity based on new quantity
#   END
#   CREATE method view_list
#       Return instance variable that holds hash
#   END
# END
 
 
# Your fabulous code goes here....
class GroceryList
    
    def initialize(name)
        @name = name
        @list = {}
        @checked_items = []
    end

    def add_item(item, quantity)
      @list[item] = quantity
    end    

    def check_item(item)
        @checked_items << item
        @list.delete(item)
    end
    
    #def view_checked_items
     #   @checked_items.each {|item| puts "You already got #{item}"}
    #end
    
    def view_list
        puts "Here is #{@name}"
        @list.each { |name, quantity| puts "You need #{quantity} #{name}(s)."}
        @checked_items.each {|item| puts "You already got #{item}"}
    end

    def remove_item(item)
      raise ArgumentError.new ("That Item does not exist") if @list.include?(item) == false
      @list.delete(item)
    end
    
    def change_quantity(item, quantity)
      raise ArgumentError.new ("That Item does not exist") if @list.include?(item) == false
      @list[item] = quantity
    end
end


# DRIVER CODE GOES HERE. 
 carl = GroceryList.new("Carl's List")
 p carl.instance_of?(GroceryList)
 p carl.class == GroceryList
 carl.add_item("steak", 2)
 carl.add_item('apple', 4)
# p carl[0] == "steak"
carl.view_list
carl.remove_item('apple')
carl.view_list
carl.add_item('bananas', 6)
carl.view_list
carl.change_quantity('bananas', 4)
carl.view_list
#carl.change_quantity('oranges', 3)
#carl.remove_item("cheese")
#carl.check_item("bananas")
#carl.view_checked_items
carl.check_item("steak")
carl.view_list

# REFLECTION

# => It was great working with Butler. We dove right in and finished our pseudocode and
# => user stories quickly. I suggested writing driver code next, which I think saved us a lot
# => of time when we started writing the code. We learned about how to add key pairs to a hash,
# => which was very helpful in solving the problem. We were also able to come up with a solution for
# => checking items off our list (deleting them and then creating a new "checked items" array).
# => We both agreed that it wasn't the best solution, but considering the time constraints we came
# => up with something workeable. Overall, a very productive, enjoyable session.