# TASK1
def hello_to_vava()
	puts "Hello Vava"
end

def hello_to_jimmy()
	#write your stuff!~
	puts "Hello Jimmy"
end

def bye_to_both()
	#print out
	#Bye Vava
	#Bye Jimmy
	puts "Bye Vava"
	puts "Bye Jimmy"
end
# TASK1

# TASK2
def hello_vava_5times()
	# puts "Hello Vava" .... ?
	#.... are you sure you want to copy and paste 10times?and 500 times next?
	# IT's ABOUT TIME TO ASK YOUR LECTURER
	5.times{
		puts "Hello Vava"
	}
end

def hello_vava_20times()
	# How about 20?
	20.times{
		puts "Hello Vava"
	}
end

def hello_mix_10times()
	# write the case for printing 200times 
	#Hello Vava
	#Hello Jimmy	
	10.times{
		puts "Hello Vava"
		puts "Hello Jimmy"
	}
end

def hello_jimmy_n_times(x)
	# Think about what is (x) for suddenly, x looks like an apple for me.
	# Think about hello_jimmy_x_times(5) is equalivaent to x=5,hello_jimmy_x_times(x).
	x.times{
		puts "Hello Jimmy"
	}
end

def hello_jimmy_order()
	5.times do |i|
		puts (i+1).to_s + '.Hello Jimmy'
	end
end

def hello_vava_even_order()
	# now I want 
	# 2.Hello Vava
	# 4.Hello Vava
	# 6.Hello Vava	
    5.times do |i|
      puts ((i+1)*2).to_s + ".Hello vava"
    end
end
# TASK2

# TASK3
def hello_condition(condition)
	# depends on the condition 1.'jimmy' 2.'vava' 3.'both',do different things
	# Example for hello_condition('jimmy')
	puts "Hello Jimmy" if condition=="jimmy"	
	puts "Hello Vava" if condition=="vava"
	if condition=="both"
		puts "Hello Vava"
		puts "Hello Jimmy"
	end
	# write your tries here
end
# TASK3

# BONUS
def she_is_beatiful(name)
	puts "#{name} is Beautiful"
end

def x_to_y(x,y)
	puts "#{x} to #{y}"
end
# BONUS