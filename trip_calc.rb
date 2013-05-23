def time_calc(distance, speed) 
	return (distance/speed)
end

def cost_calc (distance, cpg, mpg)
	return ((cpg*distance)/mpg)
end 

def driver_inputs   
print 'How much distance will you cover? '
dist = gets.chomp.to_f
print 'How many miles/gallon can your car travel? '
mpg = gets.chomp.to_f
print 'What does it cost per gallon of fuel? '
cpg = gets.chomp.to_f
print 'What is your average speed? '
spd = gets.chomp.to_f

return dist, mpg, cpg, spd
end 

def menu 
distance, mpg, cpg, speed = driver_inputs
if speed>60
	mpg = mpg - 2*(speed-60)
end

time = time_calc(distance, speed)
cost = cost_calc(distance, mpg, cpg)

puts  "Your trip will take #{time.round(2)} hrs and cost you $#{cost.round(2)}" 

end

menu 





