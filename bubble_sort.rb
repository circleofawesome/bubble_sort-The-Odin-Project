def bubble_sort(numbers=[])
length=numbers.length
stop=length-2
	length.times do
		for i in 0..stop do
			if numbers[i]>=numbers[i+1]
				temp=numbers[i]
				numbers[i]=numbers[i+1]
				numbers[i+1]=temp
			end
		end
	end
	return numbers
end

bubble_sort([10,2,9,3,66,45,20,1])
#everything works;completed