$s = 0 #score
$t = 0 #tours
$times = [] #liste des scores

def welcome
	puts "Bienvenue dans ce jeu bla bla bla "
	jeu
end

def lancedé
	resultat = (rand 6 ) + 1
	puts  "votre lancer de dé :" +  "#{resultat}"
	if resultat.to_i < 2 
	$s -= 1
	puts " *MOTUS_black_ball.mp3 * Vous reculez d'une case " + "votre score est de #{$s}." + " Vous etes au tour #{$t}"  
	puts half_pyramid

elsif resultat.to_i > 4 
	$s += 1
	puts "Félicitations ! Vous avancez d'une case , votre score est de #{$s}. "  + " Vous etes au tour #{$t} "
	puts half_pyramid
else 
	puts  "Vous n'avancez pas ce tout ci, votre score est de #{$s}. " + " Vous etes au tour #{$t}. "
	puts half_pyramid

end
end 

def gg
	puts "BRAVO TU AS GAGNE TES TROP FORT !!! " 
		$times << $t-1
		puts "tes scores : #{$times}"
		$s = 0 #reset des variables
        $t = 0 #reset des variables
end

def half_pyramid
nombre = $s #progression du joueur
i = nombre.to_i - 1
j = 1
n = 1
while n <= $s
puts [" "].cycle(i).to_a.join('') + ["#"].cycle(j).to_a.join('') 
i -= 1
n += 1
j += 1
end
end

def jeu
	while 	$s < 10 
 	lancedé
 	$t += 1
end
gg
end

def average_finish_time
	100.times do jeu 
end
	puts "Ton score moyen est de #{$times.sum / $times.size.to_f } tours... Tu n'es pas très fort !" 
end

average_finish_time