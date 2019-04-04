$i = 0 #score
$t = 0 #tours

def welcome
	puts "Bienvenue dans ce jeu bla bla bla "

end





def lancedé
	resultat = (rand 6 ) + 1
	puts  "votre lancer de dé :" +  "#{resultat}"
	if resultat.to_i < 2 

	$i -= 1

	puts " *MOTUS_black_ball.mp3 * Vous reculez d'une case " + "votre score est de #{$i}." + " Vous etes au tour #{$t}"  
	



elsif resultat.to_i > 4 
 
	$i += 1

	puts "Félicitations ! Vous avancez d'une case , votre score est de #{$i}. "  + " Vous etes au tour #{$t} "


else 
	puts  "Vous n'avancez pas ce tout ci, votre score est de #{$i}. " + " Vous etes au tour #{$t}. "


end
end 



def jeu



while $i < 10 do
 lancedé
 $t += 1

end
end

jeu 
