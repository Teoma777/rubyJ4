	
def ask_nombre
	
puts "Choissisez un nombre entre 1 & 25 "
print "> "
nombre = gets.chomp
end 

def half_pyramid
nombre = ask_nombre	
i = nombre.to_i - 1
j = 1
n = 1
while n <= nombre.to_i
puts [" "].cycle(i).to_a.join('') + ["#"].cycle(j).to_a.join('') 
 [" "].cycle(i).to_a.join('') 
i -= 1
n += 1
j += 1
end
end

def full_pyramid
nombre = ask_nombre	
i = nombre.to_i - 1
j = 1
k = 0
n = 1
while n <= nombre.to_i
puts [" "].cycle(i).to_a.join('') + ["#"].cycle(j).to_a.join('') +  ["#"].cycle(k).to_a.join('')  

 [" "].cycle(i).to_a.join('') 
i -= 1
n += 1
j += 1
k += 1
end
end

def wtf_pyramid

nombre = ask_nombre	
i = nombre.to_i - 1
j = 1
k = 0
n = 1
while n <= nombre.to_i/2
puts [" "].cycle(i).to_a.join('') + ["#"].cycle(j).to_a.join('') +  ["#"].cycle(k).to_a.join('')  

n += 1 # maximum d'étages

i -= 1 # espaces au début
j += 1 # blocs
k += 1 # blocs de fin
end
while n != nombre.to_i + 1
	

puts [" "].cycle(i).to_a.join('') + ["#"].cycle(j).to_a.join('') +  ["#"].cycle(k).to_a.join('')

i += 1
n += 1
j -= 1
k -= 1
end
end
wtf_pyramid