@fibonacci = Hash.new

def build_fibonacci(i)
	if i == 0
		@fibonacci[i] = 1
	elsif i == 1
		@fibonacci[i] = 2
	else
		@fibonacci[i] = @fibonacci[i-1] + @fibonacci[i-2]
	end	
end

def even_sum(i)
	sum = 0
	for index in 0..i
		if index%3 == 1
			sum += @fibonacci[index]
		end
	end
	p sum
end

def calc_index(num)
	i = 0
	while i==0 || @fibonacci[i-1] < num
		build_fibonacci(i)
		i += 1
	end
	return i-2
end


even_sum(calc_index(4000000))