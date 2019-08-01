# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(username: "Carla", password: "123")
user2 = User.create(username: "Joe", password: "123")
user3 = User.create(username: "Lorena", password: "123")

game1 = Game.create(user_id: user1.id, score: 12, duration: 100, correct_word_count: 7)
game2 = Game.create(user_id: user1.id, score: 1, duration: 500, correct_word_count: 25)
game3 = Game.create(user_id: user2.id, score: 30, duration: 200, correct_word_count: 10)
game4 = Game.create(user_id: user3.id, score: 50, duration: 50, correct_word_count: 2)

animals = Category.create(title: "animals")
household_items = Category.create(title: "household_items")
food = Category.create(title: "food")
colors_shapes = Category.create(title: "colors_shapes")
relationships = Category.create(title: "relationships")
activities = Category.create(title: "activities")
directions = Category.create(title: "directions")


directions_english = ["left","right","forward","back","reverse","up","down","east","west","north","south","compass","gps","navigator","landmark","mile","foot","feet","inches","kilometer","meter","boat","car","train","plane","taxi","bus","ferry","river","stream","ocean","lake","pond","beach","waterfront","mountain","hill","bridge","path","road","street","avenue","lane","house","hotel","bar","movie theater","theater","venue","club","show","concert","destination","airport","bus stop"]

directions_spanish = ["izquierda", "derecha", "adelante", "atrás", "atrás", "arriba", "abajo", "este", "oeste", "norte", "sur", "compás", "gps","navegador","señal","milla","pie","pies","pulgadas","kilómetro","metro","bote","automóvil","tren","avión","taxi","autobús","ferry","río","arroyo","océano","lago","estanque","playa","línea de costa","montaña","colina","puente","camino","camino","calle","avenida","carril","casa","hotel","bar","cine","teatro","lugar","club","programa de comedia","concierto","destino","aeropuerto","parada de autobús"]

directions_french = ["la gauche","droite","vers l'avant","retour","sens inverse","en haut","vers le bas","est","ouest","nord","sud","boussole","gps","navigatrice","repère","mile","pied","pieds","pouces","kilomètre","mètre","bateau","voiture","métro","avion","taxi","autobus","traversier","rivière","ruisseau","océan","lac","étang","plage","front de mer","montagne","colline","pont","chemin","route","rue","avenue","ruelle","maison","hôtel","bar","cinéma","théâtre","salle","club","spectacle","concert","destination","aéroport","arrêt de bus"]
directions_length = directions_english.length - 1
for i in 0..directions_length
  Word.create(category_id: directions.id, english: directions_english[i], spanish: directions_spanish[i], french: directions_french[i])
end

animals_english = ["albatross","alligator","alpaca","antelope","badger","bat","baboon","badger","bald eagle","baleen whale","bandicoot","bear","beaver","bison","boa","boar","buffalo","caiman","camel","capybara","caribou","cat","cheetah","chimpanzee","cobra","cockatoo","crow","coyote","crane","deer","dog","donkey","dolphin","dove","dragon","eagle","elephant","elk","falcon","ferret","finch","fish","fox","gazelle","gecko","gerbil","giraffe","goose","hare","hawk","hippopotamus","honey badger","horse","hyena","ibex","ibis","iguana","impala","jackal","jackrabbit","jaguar","kangaroo","killer whale","kingfisher","koala","komodo dragon","lemming","lemur","leopard","lion","lizard","lynx","macaque","macaw","magpie","manatee","mockingbird","mongoose","monkey","moose","mountain goat","mountain lion","mule","musk ox","nighthawk","ocelot","orca","otter","owl","ox","parakeet","parrot","partridge","peacock","pelican","penguin","pheasant","pigeon","polar bear","porcupine","possum","puma","python","quail","rabbit","raccoon","rat","rattlesnake","raven","rhinoceros","roadrunner","robin","salmon","sea lion","seal","shark","sheep","sloth","snake","sparrow","squirrel","tiger","tortoise","turkey","viper","vulture","wallaby","warthog","whale","wild dog","wolf","woodchuck","yak","zebra"]

animals_spanish = ["albatros","cocodrilo","alpaca","antílope","tejón","murciélago","babuino","tejón","águila calva","ballena paca","bandicoot","oso","castor","bisonte","boa","jabalí","búfalo","caimán","camello","capibara","caribú","gato","guepardo","chimpancé","cobra","cacatúa","cuervo","coyote","grulla","venado","perro","burro","delfín","paloma","dragón","águila","elefante","alce","halcón","hurón","pinzón","pez","zorro","gacela","gecko","gerbil","jirafa","ganso","liebre","halcón","hipopótamo","tejón de miel","caballo","hiena","cabra montés","ibis","iguana","impala","chacal","jackrabbit","jaguar","canguro","ballena asesina","martín pescador","koala","dragón de komodo","lemming","lemur","leopardo","león","lagarto","lynx","macaco","guacamaya","urraca","manatí","ruiseñor","mangosta","mono","alce","cabra montés","león de montaña","mula","buey almizclero","nighthawk","ocelote","orca","nutria","lechuza","buey","periquito","loro","perdiz","pavo real","pelícano","pingüino","faisán","paloma","oso polar","puercoespín","zarigüeya","puma","pitón","codorniz","conejo","mapache","rata","serpiente de cascabel","cuervo","rinoceronte","correcaminos","robin","salmón","sea lion","foca","tiburón","oveja","perezoso","serpiente","gorrión","ardilla","tigre","tortuga","pavo","víbora","buitre","wallaby","jabalí","ballena","perro salvaje","lobo","marmota","yak","cebra"]

animals_french = ["albatros","alligator","alpaga","antilope","blaireau","chauve-souris","babouin","blaireau","aigle chauve","baleine","bandicoot","ours","castor","bison","boa","sanglier","buffle","caïman","chameau","capybara","caribou","chat","guépard","chimpanzé","cobra","cacatoès","corneille","coyote","grue","cerf","chien","âne","dauphin","colombe","dragon","aigle","éléphant","wapiti","faucon","furet","pinson","poisson","renard","gazelle","gecko","gerbille","girafe","oie","lièvre","faucon","hippopotame","miel de blaireau","cheval","hyène","bouquetin","ibis","iguane","impala","chacal","jackrabbit","jaguar", "kangourou","épaulard","martin-pêcheur","koala","dragon de komodo","lemming","lémurien","léopard","lion","lézard","lynx","macaque","macaw","pie","lamantin","oiseau moqueur","mangouste","singe","orignal","chèvre de montagne","lion de montagne","mule","boeuf musqué","nighthawk","ocelot","orca","loutre","chouette","boeuf","perruche","perroquet","perdrix","paon","pélican","pingouin","faisan","pigeon","ours polaire","porc-épic","possum","puma","python","caille","lapin","raton laveur","rat","crotale","corbeau","rhinocéros","roadrunner","robin","saumon","sea lion","phoque","requin","mouton","paresseux","serpent","moineau","écureuil","tigre","tortue","dinde","vipère","vautour","wallaby","phacochère","baleine","chien sauvage","loup","marmotte","yak","zèbre"]

animals_length = animals_english.length - 75

for i in 0..animals_length
  Word.create(category_id: animals.id, english: animals_english[i], spanish: animals_spanish[i], french: animals_french[i])
end

household_items_english = ["butter knife","steak knife","cutting board","measuring cup","kitchen shears","colander","can opener","mixing bowl","blender","grater","whisk","vegetable peeler","tongs","rolling pin","saucepan","spatula","sauté pan","skillet","baking sheet","oven mitts","roasting pan","dutch oven","cooling rack","flatware","fork","spoon","plates","bowls","glasses","mugs","salad bowl","serving bowl","serving plate","serving spoon","wine opener","food storage container","food processor","french press","pitcher","potato masher","teakettle","grill pan","immersion blender","wok","meat thermometer","food scale","paring knife","oven","sink","refrigerator","dishwasher","microwave","toaster","microwave toaster","coffee pot"]

household_items_spanish = ["cuchillo de mantequilla","cuchillo de carne","tabla de cortar","taza medidora","tijeras de cocina","colador","abrelatas","recipiente","licuadora","rallador","batidor","pelador de verduras","pinzas","rodillo","cacerola","espátula","cacerola salteada","sartén","bandeja para hornear","mitones para horno","cacerola para asar","holandés","horno","rejilla de refrigeración","cubiertos","tenedor","cuchara","platos","cuencos","vasos","tazas","ensaladera","plato para servir","plato para servir","cuchara para servir","abridor de vino","contenedor de almacenamiento de alimentos","procesador de alimentos","prensa francesa","jarra","triturador de papas","tetera","sartén","licuadora de inmersión","wok","termómetro para carne","báscula para alimentos","cuchillo de pelar","horno","fregadero","refrigerador","lavavajillas","microondas","tostadora","tostadora con microondas","café maceta"]

household_items_french = ["couteau à beurre","couteau à steak","planche à découper","tasse à mesurer","cisaille de cuisine","passoire","ouvre-boîte","bol à mélanger","mixeur","râpe","fouet","éplucheur de légumes","pinces","rouleau à pâtisserie","casserole","spatule","sauteuse","poêle","plaque de cuisson","mitaines de four","rôtissoire","néerlandais four","grille de refroidissement","couverts","fourchette","cuillère","assiettes","bols","verres","tasses","saladier","bol de service","assiette de service","cuillère de service","ouvre-vin","récipient pour aliments","robot de cuisine","presse française","pichet","presse-purée","bouilloire","bouilloire","poêle à frire","mélangeur à immersion","wok","thermomètre à viande","balance alimentaire","couteau d'office","four","évier","réfrigérateur","lave-vaisselle","micro-ondes","grille-pain","micro-ondes grille-pain","café pot"]

household_items_length = household_items_english.length - 1

for i in 0..household_items_length
  Word.create(category_id: household_items.id, english: household_items_english[i], spanish: household_items_spanish[i], french: household_items_french[i])
end

food_english = ["fruit","apple","avocado","banana","berry","blueberry","cherry","grape","grapefruit","kiwi","lemon","mango","melon","olive","orange","peach","pear","pineapple","plum","raspberry","strawberry","watermelon","protein","eggs","meat","beef","chicken breast","lamb","nut","almond","chia seed","coconut","macadamia nut","walnut","peanut","vegetable","asparagus","bell pepper","broccoli","carrots","cauliflower","cucumber","garlic","kale","onion","tomato","artichoke","brussel sprout","cabbage","celery","leek","lettuce","mushroom","eggplant","radishes","squash","swiss chard","turnip","zucchini","sea food","salmon","sardine","shellfish","clam","mollusk","oyster","shrimp","trout","tuna","grain","brown rice","oats","quinoa","bread","legumes","green bean","kidney bean","lentil","cheese","milk","yogurt","butter","coconut oil","extra virgin olive oil","tuber","sweet potato","apple cider vinegar","chocolate","soda","pizza","whole grain bread","fruit juice","cereal","french fries","fried chicken","pastry","cookie","cake","potato chip","mashed potato","gluten free","vegetarian","vegan","meat free","lactose","agave nectar","ice cream","candy bar","bacon","sausage","pepperoni","sushi","pancake","waffle","french toast","eggs benedict","chicken nugget","nachos","taco","burrito","cheesecake","donut","hot dog","pie","hamburger","churro"]

food_spanish = ["fruta","manzana","aguacate","plátano","baya","arándano","cereza","uva","toronja","kiwi","limón","mango","melón","oliva","naranja","melocotón","pera","piña","ciruela","frambuesa","fresa","sandía","proteína","huevos","carne","carne de res","pechuga de pollo","cordero","nuez","almendra","semilla de chía","coco","nuez de macadamia","nuez","cacahuete","verdura","espárrago","pimiento","brócoli","zanahorias","coliflor","pepino","ajo","col rizada","cebolla","tomate","alcachofa","brotes de brussel","repollo","apio","puerro","lechuga","hongo","berenjena","rábano","calabaza","acelga","nabo","calabacín","marisco","salmón","sardina","mariscos","almeja","molusco","ostra","camarón","trucha","atún","grano","arroz integral","avena","quinoa","pan","legumbres","frijol verde","frijol","lenteja","queso","leche","yogur","mantequilla","aceite de coco","aceite de oliva virgen extra","tubérculo","batata","vinagre de manzana","chocolate","soda","pizza","pan integral","jugo de fruta","cereal","papas fritas","pollo frito","pastelería","galleta","pastel","papa frita","puré de papas","sin gluten","vegetariano","vegano","sin carne","lactosa","néctar de agave","helado","barra de chocolate","tocino","salchicha","pepperoni","sushi","panqueque","waffle","tostadas francesas","huevos benedict","pepita de pollo","nachos","taco","burrito","tarta de queso","donut","perrito caliente","pastel","hamburguesa","churro"]

food_french = ["fruit","pomme","avocat","banane","baie","myrtille","cerise","raisin","pamplemousse","kiwi","citron","mangue","melon","olive","orange","pêche","poire","ananas","prune","framboise","fraise","pastèque","protéine","oeuf","viande","boeuf","poitrine de poulet","agneau","noix","amande","graines de chia","noix de coco","noix de macadamia","noix","cacahuète","légume","asperges","poivron","brocoli","carottes","chou-fleur","concombre","ail","chou frisé","oignon","tomate","artichaut","chou de Bruxelles","chou","céleri","poireau","laitue","champignon","aubergine","radis","courge","bette à carde","navet","courgette","fruit de mer","saumon","sardine","coquillages","palourde","mollusque","huître","crevette","truite","thon","grain","riz brun","avoine","quinoa","pain","légumineuses","haricot vert","haricot","lentille","fromage","lait","yaourt","beurre","huile de noix de coco","huile d'olive vierge extra","tubercule","patate douce","vinaigre de cidre","chocolat","soda","pizza","pain de grains entiers","jus de fruits","céréales","frites","poulet frit","pâtisserie","biscuits","gâteau","croustilles","purée de pommes de terre","sans gluten","végétarien","végétalien","sans viande","lactose","agave nectar","crème glacée","barre chocolatée","bacon","saucisse","pepperoni","sushi","crêpes","gaufre","pain doré","oeufs benedict","nugget de poulet","nachos","taco","burrito","cheesecake","donut","hot dog","tarte","hamburger","churro"]

food_length = food_english.length - 50

for i in 0..food_length
  Word.create(category_id: food.id, english: food_english[i], spanish: food_spanish[i], french: food_french[i])
end

colors_shapes_english = ["red", "orange", "yellow", "green", "blue", "indigo", "violet", "black", "white", "gray", "square", "circle", "triangle", "line", "point", "equilateral", "star", "diamond", "polygon", "pentagon", "pentagon", "ellipse", "rhombus", "parabola", "plane", "cone", "cup", "pyramid", "disk", "cylinder"]

colors_shapes_spanish = ["rojo", "naranja", "amarillo", "verde", "azul", "índigo", "violeta", "negro", "blanco", "gris", "cuadrado", "círculo", "triángulo","línea","punto","equilátero","estrella","diamante","polígono","pentágono","pentágono","elipse","rombo","parábola","plano","cono","copa","pirámide","disco","cilindro"]

colors_shapes_french = ["rouge", "orange", "jaune", "vert", "bleu", "indigo", "violet", "noir", "blanc", "gris", "carré", "cercle", "triangle","ligne","point","équilatéral","étoile","diamant","polygone","pentagone","pentagone","ellipse","losange","parabole","avion","cône","tasse","pyramide","disque","cylindre"]

colors_shapes_length = colors_shapes_english.length - 1

for i in 0..colors_shapes_length
  Word.create(category_id: colors_shapes.id, english: colors_shapes_english[i], spanish: colors_shapes_spanish[i], french: colors_shapes_french[i])
end

relationships_english = ["mother", "father", "sister", "brother", "grandfather", "grandmother", "cousin", "boyfriend", "girlfriend", "partner", "friend", "acquaintance", "classmate", "schoolmate", "teacher", "tutor", "principal", "dean", "coworker", "boss"]

relationships_spanish = ["madre","padre","hermana","hermano","abuelo","abuela","primo","novio","novia","compañero","amigo","conocido","compañero de clase","compañero de clase","maestro","tutor","director","decano","compañero de trabajo","jefe"]

relationships_french = ["mère","père","soeur","frère","grand-père","grand-mère","cousin","petit ami","petite amie","partenaire","ami","connaissance","camarade de classe","camarade de classe","enseignant","tuteur","directeur","doyen","collègue","patron"]

relationships_length = relationships_english.length - 1

for i in 0..relationships_length
  Word.create(category_id: relationships.id, english: relationships_english[i], spanish: relationships_spanish[i], french: relationships_french[i])
end

activities_english = ["football","soccer","basketball","baseball","tennis","boxing","volleyball","cricket","table tennis","badminton","cycling","gymnastics","fencing","swimming","ice hockey","rowing","rugby","field hockey","wrestling","triathlon","handball","judo","hockey","karate","mixed martial arts","racing","gardening","painting","photography","writing","learning","knitting","exercise","weight lifting","cross fit","hiking","drawing","sewing","dancing","birdwatching","cooking","hunting","scrapbooking","crochet","woodworking","chess","geocaching","embroidery","stamp collecting","pottery","scuba diving","swimming","genealogy","board games","video games","role playing games","archery","cycling","shopping","running","toys","brewing","winemaking","coin collecting","baking","calligraphy","amateur radio","computer programming","quilting","music","snowboarding","beekeeping","roller skating","roller derby", "skateboarding","crossword","jigsaw puzzles","cross-stitch"]

activities_spanish = ["fútbol","fútbol","baloncesto","béisbol","tenis","boxeo","voleibol","cricket","tenis de mesa","bádminton","ciclismo","gimnasia","esgrima","natación","hockey sobre hielo","remo","rugby","hockey sobre hierba","lucha","triatlón","balonmano","judo","hockey","karate","artes marciales mixtas","carreras","jardinería","pintura","fotografía","escritura","aprendizaje","tejido de punto","ejercicio","levantamiento de pesas","cross fit","excursionismo","dibujo","costura","baile","observación de aves","cocinar","caza","álbum de recortes","crochet","carpintería","ajedrez","geocaching","bordado","coleccionar sellos","cerámica","buceo","natación","genealogía","juegos de mesa","juegos de video","juegos de rol","tiro con arco","ciclismo","compras","correr","juguetes","elaborar cerveza","elaborar vino","coleccionar monedas","hornear","caligrafía","radio aficionado","programación informática","acolchar","música","snowboard","apicultura","patinaje sobre ruedas","roller derby","skateboarding","crucigrama","ji gsaw puzzles","punto de cruz"]

activities_french = ["football","football","basket","baseball","tennis","boxe","volleyball","cricket","tennis de table","badminton","cyclisme","gymnastique","escrime","natation","hockey sur glace","aviron","rugby","hockey sur gazon","lutte","triathlon","handball","judo","hockey","karaté","arts martiaux mixtes","course","jardinage","peinture","photographie","écriture","apprentissage","tricot","exercice","musculation","coupe","randonnée","dessin","couture","danse","observation des oiseaux","cuisine","chasse","scrapbooking","crochet","menuiserie","échecs","géocaching","broderie","philatélie","poterie","plongée sous-marine","natation","généalogie","jeux de société","jeux vidéo","jeux de rôle","tir à l'arc","cyclisme","shopping","course","jouets","brassage","viticulture","numismatique","cuisson","calligraphie","radio amateur","programmation informatique","matelassage","musique","surf des neiges","apiculture","patinage à roulettes","roller derby","skateboarding","motscroisés","ji puzzles","point de croix"]

activities_length = activities_english.length - 25

for i in 0..activities_length
  Word.create(category_id: activities.id, english: activities_english[i], spanish: activities_spanish[i], french: activities_french[i])
end
