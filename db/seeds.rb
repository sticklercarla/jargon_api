# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Examples:

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "Carla", password: "123")
user2 = User.create(username: "Joe", password: "123")
user3 = User.create(username: "Lorena", password: "123")

game1 = Game.create(user_id: user1.id, score: 12, duration: 100, correct_word_count: 7)
game2 = Game.create(user_id: user1.id, score: 1, duration: 500, correct_word_count: 25)
game3 = Game.create(user_id: user2.id, score: 30, duration: 200, correct_word_count: 10)
game4 = Game.create(user_id: user3.id, score: 50, duration: 50, correct_word_count: 2)

animals = Category.create(title: "Animals")
household_items = Category.create(title: "Kitchen Items")
food = Category.create(title: "Food")
colors_shapes = Category.create(title: "Colors and Shapes")
relationships = Category.create(title: "Relationships")
activities = Category.create(title: "Activities")
directions = Category.create(title: "directions")

cat = Word.create(category_id: animals.id, english: "cat", spanish: "gata", french: "chatte" )
dog = Word.create(category_id: animals.id, english: "dog", spanish: "perra", french: "chienne" )
bird = Word.create(category_id: animals.id, english: "bird", spanish: "pájaro", french: "oiseau" )
horse = Word.create(category_id: animals.id, english: "horse", spanish: "caballo", french: "jument" )
fish = Word.create(category_id: animals.id, english: "fish", spanish: "pez", french: "poisson" )
lizard = Word.create(category_id: animals.id, english: "lizard", spanish: "lagartija", french: "lézard")
donkey = Word.create(category_id: animals.id, english: "donkey", spanish: "burra", french: "ânesse" )
lion = Word.create(category_id: animals.id, english: "lion", spanish: "león", french: "lionne" )
bear = Word.create(category_id: animals.id, english: "bear", spanish: "osa", french: "ourse" )
tiger = Word.create(category_id: animals.id, english: "tiger", spanish: "tigre", french: "tigresse" )
shark = Word.create(category_id: animals.id, english: "shark", spanish: "tiburón", french: "requin" )
dolphin = Word.create(category_id: animals.id, english: "dolphin", spanish: "delfín", french: "dauphine" )

directions_english = ["left","right","forward","back","reverse","up","down","east","west","north","south","compass","gps","navigator","landmark","mile","foot","feet","inches","kilometer","meter","boat","car","train","plane","taxi","bus","ferry","river","stream","ocean","lake","pond","beach","waterfront","mountain","hill","bridge","path","road","street","avenue","lane","house","hotel","bar","movie theater","theater","venue","club","show","concert","destination","airport","bus stop"]
directions_spanish = ["izquierda", "derecha", "adelante", "atrás", "atrás", "arriba", "abajo", "este", "oeste", "norte", "sur", "compás", "gps","navegador","señal","milla","pie","pies","pulgadas","kilómetro","metro","bote","automóvil","tren","avión","taxi","autobús","ferry","río","arroyo","océano","lago","estanque","playa","línea de costa","montaña","colina","puente","camino","camino","calle","avenida","carril","casa","hotel","bar","cine","teatro","lugar","club","programa de comedia","concierto","destino","aeropuerto","parada de autobús"]
directions_french = ["la gauche","droite","vers l'avant","retour","sens inverse","en haut","vers le bas","est","ouest","nord","sud","boussole","gps","navigatrice","repère","mile","pied","pieds","pouces","kilomètre","mètre","bateau","voiture","métro","avion","taxi","autobus","traversier","rivière","ruisseau","océan","lac","étang","plage","front de mer","montagne","colline","pont","chemin","route","rue","avenue","ruelle","maison","hôtel","bar","cinéma","théâtre","salle","club","spectacle","concert","destination","aéroport","arrêt de bus"]
directions_length = directions_english.length
for i in 0..directions_length
  Word.create(category_id: directions.id, english: directions_english[i], spanish: directions_spanish[i], french: directions_french[i])
end
