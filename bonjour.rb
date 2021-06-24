#!/usr/share/rvm/rubies/ruby-2.6.5/bin/ruby

# nom = "hassy"
# puts "salut " + nom + " ca va?"
x = 2 + 4 + 6 + 8
x/=5
y = 2 * 3 * 4
y -= x
nom= "hassy"
age = 24
puts "la reponse est " + y.to_s + " et l'autre: " + x.to_s
puts nom + " a " + age.to_s
#boucles
4.times do 
    puts "ok "
end
total = somme = 0
12.times do 
    total += 2
    somme += total
    puts "somme pour " + total.to_s + "=" + somme.to_s
end
compte = 10
10.times do
    compte -= 1
    puts compte
end
puts "decollage"
#methode get
puts "votre nom"
name = gets 
puts "salut " + name
# conditions if
puts "votre ville"
ville = gets
if ville =="tana"
    age_legale = 18
    
else 
    age_legale = 21
end
puts "l'age pour boire de l'alcool est a " + age_legale.to_s + " ans" 
puts "entrer votre prix"
prix = gets
if prix >= 60.to_s
    puts "Prix senior"

elsif prix >= 14.to_s
    puts "Prix adulte"

elsif prix >= 2.to_s
    puts "Prix enfant"

else
    puts "Gratuit!"
end

compteur =0

while compteur < 10
    puts "compteur = " + compteur.to_s
    compteur +=1
end
#puissance de 2

n= 1
while n < 10000
    n*= 2
end
n /= 2
puts n.to_s + "est la plus grande " \
  + "puissance de 2 inferieur a 10000"
  #iteratuer 
  amis = [ "Benjamin", "David", "Stéfanie", "Laura" ]
amis.sort.reverse.each do |ami|
     puts "J'ai un ami qui s'appelle " + ami.upcase 
end 
#autre iterateur 
4.times do |nombre|
    puts nombre
end
# Hachages
ami = {
    "prenom" => "jean",
    "nom"    => "Goret",
    "adress" => "rue de l'eglise, 26",
    "ville"  => "tana",
}
puts ami 
#hackage et iterateur
ami.each do |clef, valeur|
    puts clef + " => " + valeur
end 
#hash#each_key
ami.each_key do |clef |
    puts clef 
end 
def fonction_carnet
    #carnet d'adresse des 4 personnes
    private
            adress_de_hassy = {
                "rue"         => "andraisoro",
                "code postal" => "101",
                "ville"       => "tana",
                "pays"        => "madagascar",
                "email"       => "hassy@gmail.com"
            }
            #Adresse de Nicolas
    public
            adresse_de_nicolas = {
                "rue"         => "Rue du port, 32",
                "code postal" => "56000",
                "ville"       => "Vannes",
                "pays"        => "France"
            }

            # Adresse de François
            adresse_de_francois = {
                "rue"         => "Avenue de la tranchée, 14",
                "code postal" => "1000",
                "ville"       => "Bruxelles",
                "pays"        => "Belgique"
            }

            # Adresse de Marina
            adresse_de_marina = {
                "rue"         => "Strada di l'amore, 61",
                "code postal" => "50100",
                "ville"       => "Firenze",
                "pays"        => "italie"
            }
            'Hello! Programmer. How\'''s it going?'
        # carnet des 4 personnes
        hassy = {
            "prenom"         => "hassy",
            "nom de famille" => "tsihoarana",
            "telephone"      => "032 92 541 51",
            "adresse"        => adress_de_hassy
        }
        # Nicolas
        nicolas = {
            "prénom"         => "Nicolas",
            "nom de famille" => "Rocher",
            "téléphone"      => "(+33) 02 93 45 49 19",
            "adresse"        => adresse_de_nicolas
        }

        # François
        francois = {
            "prénom"         => "François",
            "nom de famille" => "Willemart",
            "téléphone"      => "(+32) 02 679 24 81",
            "adresse"        => adresse_de_francois
        }

        # Marina
        marina = {
            "prénom"         => "Marina",
            "nom de famille" => "Nantini",
            "téléphone"      => "(+39) 055 681 32 11",
            "adresse"        => adresse_de_marina
        }
    # le carnet fini
    carnet = [ nicolas, francois, marina, hassy]
    puts carnet
end
puts "toute les personne dans le carnet d'adresse: "
fonction_carnet
 # fonction
def salut(nom)
    puts "Bonjour " + nom + ", comment vas-tu"
end

salut("Laurent")
salut "Stéfanie"   

class Adresse
    attr_reader :valeur
    def initialize(rue)
        
        @rue = rue
    end
end
obj = Adresse.new("Rue de la Renaissance, 49").valeur
puts "#{obj}"
class Personne
    attr_accessor :name 
    def initialize
        @personne = Adresse.new
        personne.name = "denis"
        personne.name
    end
end 
# implementation d carnet d'adresse
                class Carnet 
                    def initialize
                        @personnes = []
                    end
                    def ajoute(personne)
                        @personnes.push(personne)
                    end
                    def retire(personne)
                        @personnes.delete(personne)
                    end
                end
# test yield avec 2 fonction                
    def test 
        yield
        yield
    end
    def vie
        test { puts "vive"}
    end
    vie 
    #juste copie
        def noms
            yield("Nicolas")
            yield("François")
            yield("Marina")
        end
        
        noms do |nom|
            puts "Salut " + nom + ", comment vas-tu?"
        end
    #fin
#fin
#test map methode et collect 
    #>> [1, 2, 3].map { | x | 2 * x }
    #=> [2, 4, 6]
    #>> {:a => 1, :b =>2,:c =>3}.collect {|key, value| 2* value} 
    #=> [2, 4, 6]
#fin