def is_prime?(num)
	return false if num <= 1
	(2..num-1).each do |x|
	  if num % x == 0
	  	return false
	  	break
	  end
	end
	return true
end

def largest_prime(num)
	return false if num <= 1
	p_factors = []
	(2..num-1).each do |x|
		if num % x == 0
			if is_prime?(x)
				p x
				p_factors << x
			end
		end
	end
	if p_factors.empty?
		return num
	else
		return p_factors.last
	end
end

p largest_prime(600851475143)