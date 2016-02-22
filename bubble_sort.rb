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


def bubble_sort_by(strings=[])
	length=strings.length
	stop=length-2
	length.times do
		for i in 0..stop do
			if yield(strings[i],strings[i+1])>0
			 	temp=strings[i]
			 	strings[i]=strings[i+1]
			 	strings[i+1]=temp
			end 
		end	
	end
	return strings
end

bubble_sort_by(["hello","he"]) {|left,right|left.length-right.length}
#works