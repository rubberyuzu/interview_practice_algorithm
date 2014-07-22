def max_sum(pots, from=0, to=pots.length-1)
	return 0 if from > to
	last = pots[to]
	first = pots[from]
	choice_a = last + [max_sum(pots, from+1, to-1),max_sum(pots, from, to-2)].min
	choice_b = first + [max_sum(pots, from+2, to),max_sum(pots, from+1, to-1)].min
	[choice_a, choice_b].max
end



p max_sum([1,2,3,4,5,6,7,8,9])