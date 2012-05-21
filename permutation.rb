number_limit=gets
limit=number_limit.to_i
numbers=[]
min=[]
def compute_k(foo)
      count=0
      until foo ==1
       if foo.even?
        foo=foo/2
        count=count+1
       else 
         count=0
      end
      end 
    return count 
end 
        
unless limit > 100        
until limit==0
 numbers.push(gets)
 limit=limit-1
end 
end 
permutations=numbers.permutation.to_a
 permutations.each do |sub_array|
   temp=sub_array[0]
   for index in 0..sub_array.length-1
       sub_array[index]=sub_array[index].to_i^sub_array[index+1].to_i
   end 
   sub_array[-1]=sub_array[-1].to_i^temp.to_i
   sorted=sub_array.sort.uniq
   min.push(sorted[0])
end 
  value=min.sort[0]
  temp=value%2
  unless temp == 0
    value+=temp
  else
     value+=1
  end
k=compute_k(value)-1
if k >= 0
 if k == 0
   puts k+1
 else 
   puts k
 end 
else
  puts -1
end
 














