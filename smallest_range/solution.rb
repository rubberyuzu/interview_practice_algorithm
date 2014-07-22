def find_nearest(val, arr)
	difs = []
	arr.each_with_index do |el, i|
		dif = el - val
		if difs.empty?
			difs << dif
		elsif difs.last * dif >= 0
			return {i-1 => difs.last, i => dif }
		else
			difs << dif
		end
	end	
end

def find_smallest_range(lists)
	lists
end