def signup #demandant à l'utilisateur de définir un mot de passe
	puts "Veuillez choisir un mot de passe :"
	print "> "
	password = gets.chomp 
end

def login #demandant à l'utilisateur de rentrer son mot de passe jusqu'à ce qu'il corresponde à celui défini précédemment
	password = signup
	puts "Veuillez entrer votre mot de passe :"
	print "> "
	login = gets.chomp
until login === password
	puts "Veuillez entrer votre mot de passe :"
	print "> "
	login = gets.chomp
end

if login === password
 welcome_screen
 
end
end

def welcome_screen #affichant un écran de bienvenue avec des informations top secrètes de la NSA
	puts "WELCOME STRANGER, le secret c'est que Macron c'est OSS117 "
end

login
