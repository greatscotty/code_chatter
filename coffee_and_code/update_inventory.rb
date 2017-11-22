# ==============================================================================
# Instructions
# ==============================================================================
=begin
You will be given a nested array that lists the current inventory of stock in 
your store, and a nested array with the new inventory that is arriving at your store.

Make a method that when called, returns an updated list of your current inventory. The 
output list should be sorted alphabetically, the input may not be  
=end 

# ==============================================================================
# Your Pseudocode
# ==============================================================================
# Do your work here
# input: array 
# output: sorted alphabetically 

# ==============================================================================
# Your Method
# ==============================================================================
# Do your work here

require 'pry'

def update_inventory (current_inventory, new_inventory) 

    inventory = Hash.new(0)

    current_inventory.each do |element_1, element_2|
        inventory[element_2] = element_1 
    end 

    new_inventory.each do |element_1, element_2|
        inventory[element_2] += element_1
    end 


    inventory.to_a.sort!.each{|item| item.rotate!}
    
end 

# ==============================================================================
# Examples / Test cases
# ==============================================================================

currentInventory = [ [25, 'Muffins'], [1000, 'Tarts'], [50, 'Donuts'], [33, 'Cookies'], [10, 'Cupcakes'] ]
newInventory = [ [5, 'Scones'], [10, 'Cookies'], [4, 'Donuts'], [5, 'Cupcakes'] ]

currentFruits = [[12, 'Apples'], [5, 'Pears'], [6, 'Peaches']]
newFruits = [[5, 'Pears'], [3, 'Kiwis'], [8, 'Apples'], [2, 'Bananas']]


p update_inventory(currentInventory, newInventory) == [[43, "Cookies"], [15, "Cupcakes"], [54, "Donuts"], [25, "Muffins"], [5, "Scones"], [1000, "Tarts"]]

p update_inventory(currentFruits, newFruits) == [[20, 'Apples'], [2, 'Bananas'], [3, 'Kiwis'], [6, 'Peaches'], [10, 'Pears']]