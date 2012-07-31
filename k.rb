a=[]
b=[]
count,m=0
limit=gets
difference=gets
limit,difference=limit.to_i,difference.to_i
until limit == 0
	buffer=gets
	a << buffer.to_i
	limit=limit-1
end 

b=a.map{|ele| ele+difference}
new_array=a & b
print new_array.count 

 

