
def median(foo)
     midnum=foo.length/2+1
     if foo.length.even?
	output = sort(foo,midnum)+sort(foo,midnum+1)
	if output.even?
		puts output/2
                
	else
		puts output/2.to_f
	
	end
	
     else 
	puts  sort(foo,midnum)
     end 

end 
def compute_median(instruction,n,array)
   if instruction == "a"
	array << n
        median(array)
   elsif instruction == "r"
	if array.delete_at(array.index(n)||array.length) == nil || array.empty?
           puts "Wrong!"
	else 
	 median(array)
	end 
 end  
end 

def sort(array,midnum)
    #return array if array.empty?
    pivot=array.sample
    less,more=array.partition{|ele| ele < pivot}
    if midnum <= less.length
	return  sort(less,midnum)
    elsif midnum > array.length - more.length
	return  sort(more,midnum-(array.length-more.length))
    else 
      return pivot
    end 
end 
limit=gets
limit=limit.to_i
a=[]
until limit == 0
 buffer=gets
 instruct_a=buffer.split " "
 compute_median(instruct_a[0],instruct_a[1].to_i,a)
 limit = limit-1
end 




