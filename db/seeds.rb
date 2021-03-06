
OrderItem.destroy_all
Order.destroy_all
Dose.destroy_all
Ingredient.destroy_all
Recipe.destroy_all


dummy_instructions = "Set the oven to 400°F. Rinse and dry the parsley and lettuce. Cut the top leaves away from the stems of the parsley and add to the work bowl of a food processor. Measure out 2 teaspoons of the cornstarch and add it to the work bowl, reserving the rest for the onion rings. Peel and slice ⅔ of the onion into thin rounds, then roughly chop the rest. Add the chopped onion to the work bowl.

Drain and rinse the beans. Add the beans, walnuts, oats, garlic powder, cumin, and 1/2 teaspoon of salt and a pinch of pepper to the food processor. Pulse until everything is incorporated but there are still visible pieces of the ingredients. Divide the mixture into 2 patties and put in the refrigerator to chill until you are ready to cook them.

Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown.Keeping the corn in the husk, place the ears on the middle rack for 15 to 20 minutes or until the husk is golden brown."


chickpea =  Ingredient.create(name: "chickpea")
peanut =  Ingredient.create(name: "peanut")
sesame_oil =  Ingredient.create(name: "sesame oil")
sesame_pastry =  Ingredient.create(name: "sesame pastry")
garlic =  Ingredient.create(name: "garlic")
lemon =  Ingredient.create(name: "lemons")


houmous = Recipe.create(name: "Houmous with peanuts", category: "starter", photo: "houmous.png", description: "Hummus is this delicious mashed chickpeas, blended with tahini, the sesame paste. Hummus is native to the Middle East countries. It is eaten raw, with raw vegetables, or with pita bread!", price:3, prep_time:6 , cooking_time:0, calories:150,

vegetarian: true, gluten_free: true, egg_free: true, dairy_free: true, vegan: true, instructions: dummy_instructions)

chick = Dose.create(measure: "400g of", ingredient:chickpea, recipe: houmous)
peanut = Dose.create(measure: "100g of", ingredient:peanut, recipe: houmous)
sesame = Dose.create(measure: "dessert spoon of", ingredient: sesame_oil, recipe: houmous)
pastry = Dose.create(measure: "10g of", ingredient: sesame_pastry, recipe: houmous)
garlic = Dose.create(measure: "some", ingredient: garlic, recipe: houmous)
lemon = Dose.create(measure: "2" , ingredient: lemon, recipe: houmous)


bean_burger = Recipe.create(name: "Bean Burger", description: "Better bean burger with spiced ketchup and onions", price: 9, photo: "bean_burger.png", instructions: dummy_instructions, prep_time: 15, cooking_time: 20, category: "Main course", calories: 907, gluten_free: false, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

parsley = Ingredient.create(name: "Fresh parsley")
Dose.create(measure: "a bunch", recipe: bean_burger, ingredient: parsley)
romaine = Ingredient.create(name: "Romaine lettuce")
Dose.create(measure: "2 leaves", recipe: bean_burger, ingredient: romaine)
onion = Ingredient.create(name: "Onion")
Dose.create(measure: "1", recipe: bean_burger, ingredient: onion)
kidney_beans = Ingredient.create(name: "Kidney beans")
Dose.create(measure: "1 package", recipe: bean_burger, ingredient: kidney_beans)
ketchup = Ingredient.create(name: "Ketchup")
Dose.create(measure: "3 tablespoons", recipe: bean_burger, ingredient: ketchup)
corn = Ingredient.create(name: "corn")
Dose.create(measure: "2 ears", recipe: bean_burger, ingredient: corn)


rice_risotto = Recipe.create(name: "Lemon Rice Risotto", description: "Meyer lemon forbidden rice risotto with sweet peas", price: 8, photo: "rice_risotto.png", instructions: dummy_instructions, prep_time: 30, cooking_time: 10, category: "Main course", calories: 433, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: true, vegan: true)

shallot = Ingredient.create(name: "Shallot")
Dose.create(measure: "1", recipe: rice_risotto, ingredient: shallot)
rice = Ingredient.create(name: "Rice")
Dose.create(measure: "1 cup", recipe: rice_risotto, ingredient: rice)
mustard = Ingredient.create(name: "Dijon mustard")
Dose.create(measure: "1 teaspoon", recipe: rice_risotto, ingredient: mustard)
peas = Ingredient.create(name: "Peas")
Dose.create(measure: "⅓ cup", recipe: rice_risotto, ingredient: peas)
vegetable_oil = Ingredient.create(name: "Vegetable oil")
Dose.create(measure: "3 tablespoons", recipe: rice_risotto, ingredient: vegetable_oil)
lemon = Ingredient.create(name: "lemon")
Dose.create(measure: "1", recipe: rice_risotto, ingredient: lemon)


asado_negro = Recipe.create(name: "Venezuelan Asado Negro", description: "Venezuelan asado negro with roasted vegetables and tostones", price: 10, photo: "asado_negro.jpg", instructions: dummy_instructions, prep_time: 20, cooking_time: 15, category: "Main course", calories: 527, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

garlic = Ingredient.create(name: "Garlic")
Dose.create(measure: "2 cloves", recipe: asado_negro, ingredient: shallot)
courgette = Ingredient.create(name: "Courgette")
Dose.create(measure: "2", recipe: asado_negro, ingredient: courgette)
steak = Ingredient.create(name: "Flat Iron Steaks")
Dose.create(measure: "2", recipe: asado_negro, ingredient: steak)
oregano = Ingredient.create(name: "Dried Oregano")
Dose.create(measure: "½ tsp", recipe: asado_negro, ingredient: oregano)
wine = Ingredient.create(name: "Cooking wine")
Dose.create(measure: "3 fluid oz", recipe: asado_negro, ingredient: wine)
butter = Ingredient.create(name: "Butter")
Dose.create(measure: "⅗ oz", recipe: asado_negro, ingredient: butter)


tofu_pad_thai = Recipe.create(name: "Tofu Pad Thai", description: "Tofu Pad Thai with carrots and sweet chili sauce", price: 10, photo: "tofu_pad_thai.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 10, category: "Main course", calories: 837, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: true, vegan: true)

tofu = Ingredient.create(name: "Extra Firm Tofu")
Dose.create(measure: "2 cloves", recipe: tofu_pad_thai, ingredient: tofu)
green_onion = Ingredient.create(name: "Green Onion")
Dose.create(measure: "2", recipe: tofu_pad_thai, ingredient: green_onion)
lime = Ingredient.create(name: "Lime")
Dose.create(measure: "1", recipe: tofu_pad_thai, ingredient: lime)
peanuts = Ingredient.create(name: "Roasted Peanuts")
Dose.create(measure: "¾ oz", recipe: tofu_pad_thai, ingredient: peanuts)
chili_sauce = Ingredient.create(name: "Sweet Chili Sauce")
Dose.create(measure: "6 fluid oz", recipe: tofu_pad_thai, ingredient: chili_sauce)
carrots = Ingredient.create(name: "Carrots")
Dose.create(measure: "4 oz", recipe: tofu_pad_thai, ingredient: carrots)


tuscan_chicken = Recipe.create(name: "Tuscan Chicken", description: "Tuscan Chicken with rainbow vegetable skewers", price: 10, photo: "tuscan_chicken.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 0, category: "Main course", calories: 406, gluten_free: true, dairy_free: true, egg_free: false, vegetarian: false, vegan: false)

# garlic
Dose.create(measure: "2 cloves", recipe: tuscan_chicken, ingredient: garlic)
chicken = Ingredient.create(name: "Skinless Chicken")
Dose.create(measure: "2 breasts", recipe: tuscan_chicken, ingredient: chicken)
red_onion = Ingredient.create(name: "Red onion")
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: red_onion)
red_bell_pepper = Ingredient.create(name: "Red Bell Pepper")
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: red_bell_pepper)
# courgette
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: courgette)
orange_bell_pepper = Ingredient.create(name: "Orange Bell Pepper")
Dose.create(measure: "1", recipe: tuscan_chicken, ingredient: orange_bell_pepper)



stuffed_mushrooms = Recipe.create(name: "Stuffed Mushrooms", description: "Mouth-Watering Stuffed Mushrooms", price: 8, photo: "stuffed_mushrooms.jpg", instructions: dummy_instructions, prep_time: 25, cooking_time: 20, category: "Starter", calories: 250, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

# garlic
Dose.create(measure: "1 tablespoon minced", recipe: stuffed_mushrooms, ingredient: garlic)
# vegetable_oil
Dose.create(measure: "1 tablespoon", recipe: stuffed_mushrooms, ingredient: vegetable_oil)
cream_cheese = Ingredient.create(name: "Cream cheese")
Dose.create(measure: "1 package", recipe: stuffed_mushrooms, ingredient: cream_cheese)
mushrooms = Ingredient.create(name: "Whole fresh mushrooms")
Dose.create(measure: "12", recipe: stuffed_mushrooms, ingredient: mushrooms)
parmesan_cheese = Ingredient.create(name: "Parmesan Cheese")
Dose.create(measure: "¼ cup", recipe: stuffed_mushrooms, ingredient: parmesan_cheese)
cayenne_pepper = Ingredient.create(name: "Cayenne pepper")
Dose.create(measure: "¼ teaspoon", recipe: stuffed_mushrooms, ingredient: cayenne_pepper)



buffalo_chicken_dip = Recipe.create(name: "Baked Buffalo Chicken Dip", description: "Baked buffalo rotisserie chicken dip, great for parties", price: 9, photo: "buffalo_chicken_dip.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 10, category: "Starter", calories: 500, gluten_free: true, dairy_free: false, egg_free: true, vegetarian: false, vegan: false)

# chicken
Dose.create(measure: "3 cups diced", recipe: buffalo_chicken_dip, ingredient: chicken)
# cream_cheese
Dose.create(measure: "2 packages", recipe: buffalo_chicken_dip, ingredient: cream_cheese)
hot_pepper_sauce = Ingredient.create(name: "Frank’s RedHot Sauce")
Dose.create(measure: "¾ cup", recipe: buffalo_chicken_dip, ingredient: hot_pepper_sauce)
pepper_jack_cheese = Ingredient.create(name: "Pepper Jack Cheese")
Dose.create(measure: "½ cup", recipe: buffalo_chicken_dip, ingredient: pepper_jack_cheese)
blue_cheese_dressing = Ingredient.create(name: "Blue Cheese Dressing")
Dose.create(measure: "½ cup", recipe: buffalo_chicken_dip, ingredient: blue_cheese_dressing)
# cayenne_pepper
Dose.create(measure: "1 pinch", recipe: buffalo_chicken_dip, ingredient: cayenne_pepper)



artichoke_hearts_gratin = Recipe.create(name: "Artichoke Hearts Gratin", description: "Tasty all-veggie appetizer", price: 10, photo: "artichoke_gratin.jpg", instructions: dummy_instructions, prep_time: 15, cooking_time: 15, category: "Starter", calories: 460, gluten_free: false, dairy_free: false, egg_free: true, vegetarian: true, vegan: false)

artichoke_hearts = Ingredient.create(name: "Artichoke Hearts")
Dose.create(measure: "6", recipe: artichoke_hearts_gratin, ingredient: artichoke_hearts)
# vegatable_oil
Dose.create(measure: "1 teaspoon", recipe: artichoke_hearts_gratin, ingredient: vegetable_oil)
bread_crumbs = Ingredient.create(name: "Bread crumbs")
Dose.create(measure: "2 tablespoons", recipe: artichoke_hearts_gratin, ingredient: bread_crumbs)
olive_oil = Ingredient.create(name: "Olive oil")
Dose.create(measure: "1 tablespoon", recipe: artichoke_hearts_gratin, ingredient: olive_oil)
# lemon
Dose.create(measure: "½ in wedges", recipe: artichoke_hearts_gratin, ingredient: lemon)
salt = Ingredient.create(name: "Salt")
Dose.create(measure: "1 pinch", recipe: artichoke_hearts_gratin, ingredient: salt)



mocha_bundt_cake = Recipe.create(name: "Mexican Mocha Bundt Cake", description: "Delicious choclatey crowd-pleaser", price: 6, photo: "mocha_cake.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 460, gluten_free: false, dairy_free: false, egg_free: false, vegetarian: true, vegan: false)

vanilla_pudding_mix = Ingredient.create(name: "Vanilla Pudding Mix")
Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: vanilla_pudding_mix)
milk = Ingredient.create(name: "Milk")
Dose.create(measure: "1 cup", recipe: mocha_bundt_cake, ingredient: milk)
# vegetable_oil
Dose.create(measure: "½ cup", recipe: mocha_bundt_cake, ingredient: vegetable_oil)
chocolate_cake_mix = Ingredient.create(name: "Chocolate cake mix")
Dose.create(measure: "1 package", recipe: mocha_bundt_cake, ingredient: chocolate_cake_mix)
egg = Ingredient.create(name: "Egg")
Dose.create(measure: "4", recipe: mocha_bundt_cake, ingredient: egg)
cinnamon = Ingredient.create(name: "Cinnamon")
Dose.create(measure: "1 tablespoon", recipe: mocha_bundt_cake, ingredient: cinnamon)



courgette_brownies = Recipe.create(name: "Whole-Wheat Chocolate Courgette Brownies", description: "Moist, chocolatey, delicious, double-chocolate brownies", price: 8, photo: "courgette_brownies.jpg", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 420, gluten_free: false, dairy_free: true, egg_free: false, vegetarian: true, vegan: false)

whole_wheat_flour = Ingredient.create(name: "Whole Wheat Flour")
Dose.create(measure: "1 cup", recipe: courgette_brownies, ingredient: whole_wheat_flour)
cocoa = Ingredient.create(name: "Cocoa")
Dose.create(measure: "⅓ cup", recipe: courgette_brownies, ingredient: cocoa)
# vegetable_oil
Dose.create(measure: "¼ cup", recipe: courgette_brownies, ingredient: vegetable_oil)
sugar = Ingredient.create(name: "Sugar")
Dose.create(measure: "½ cup", recipe: courgette_brownies, ingredient: sugar)
egg = Ingredient.create(name: "Egg")
Dose.create(measure: "2 large", recipe: courgette_brownies, ingredient: egg)
# courgette
Dose.create(measure: "1.5 cups", recipe: courgette_brownies, ingredient: courgette)




melon =  Ingredient.create(name: "melon")
mozzarella =  Ingredient.create(name: "mozzarella")
ham =  Ingredient.create(name: "ham")
pesto =  Ingredient.create(name: "pesto")
rocket_salad = Ingredient.create(name: "rocket salad")

italian_salad = Recipe.new(name: "Italian salad with pesto", description: "The perfect italian taste", price: 6, photo: "italian_salad.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1/4" , ingredient: melon, recipe: italian_salad)
Dose.create(measure: "2", ingredient: mozzarella, recipe: italian_salad)
Dose.create(measure:  "100g", ingredient: rocket_salad, recipe: italian_salad)
Dose.create(measure:  "4 tablespoons", ingredient: pesto, recipe: italian_salad)


peppers =  Ingredient.create(name: "peppers")
tomatoes =  Ingredient.create(name: "tomatoes")
onions =  Ingredient.create(name: "onions")

gazpacho = Recipe.new(name: "Gazpacho of red peppers and tomatoes", description: "Richful mix of vegetables", price: 12, photo: "gazpacho.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "5", ingredient: tomatoes, recipe: gazpacho)
Dose.create(measure: "3", ingredient: peppers, recipe: gazpacho)
Dose.create(measure: "2", ingredient: onions, recipe: gazpacho)


beans =  Ingredient.create(name: "tomatoes")
corns =  Ingredient.create(name: "corns")
lime_juice =  Ingredient.create(name: "lime juice")
vinegar =  Ingredient.create(name: "vinegar")

mexican_salad = Recipe.new(name: "Mexican salad with beans", description: "The right salad at the right place", price:10, photo: "mexican_salad.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1 can", ingredient: beans, recipe: mexican_salad)
Dose.create(measure: "1 can", ingredient: corns, recipe: mexican_salad)
Dose.create(measure: "2", ingredient: onion, recipe: mexican_salad)
Dose.create(measure: "1/2 cup", ingredient: vinegar, recipe: mexican_salad)
Dose.create(measure: "2 tablespoons", ingredient: lime_juice, recipe: mexican_salad)





pasta =  Ingredient.create(name: "pasta")
bacon =  Ingredient.create(name: "bacon")
thyme=  Ingredient.create(name: "thyme")
salt =  Ingredient.create(name: "salt")

pasta_carbonara = Recipe.new(name: "Pasta carbonara with thyme", description: "Get the meal rolling with your friends", price: 15, photo: "pasta_carbonara.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)
Dose.create(measure: "250g", ingredient: pasta, recipe: pasta_carbonara)
Dose.create(measure: "2 pieces", ingredient: bacon, recipe: pasta_carbonara)
Dose.create(measure:  "1 tablespoon", ingredient: thyme, recipe: pasta_carbonara)
Dose.create(measure: "1 pinch", ingredient: salt, recipe: pasta_carbonara)



coley =  Ingredient.create(name: "coley")
potatoes =  Ingredient.create(name: "potatoes")
parmesan=  Ingredient.create(name: "parmesan")

coley_parmesan = Recipe.new(name: "Coley with potatoes and parmesan cream", description: "For fish lovers, give it a try", price: 20, photo: "coley_parmesan.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1", ingredient: coley, recipe: coley_parmesan)
Dose.create(measure: "2", ingredient: potatoes, recipe: coley_parmesan)
Dose.create(measure:  "75g", ingredient: parmesan, recipe: coley_parmesan)



beef =  Ingredient.create(name: "beef")
mash_potatoes =  Ingredient.create(name: "mash_potatoes")
ginger =  Ingredient.create(name: "ginger")
honey =  Ingredient.create(name:"honey")

beef_mash = Recipe.new(name: "Beef with rice, honey and ginger", description: "Beef up your evening!", price: 14, photo: "beef_mash.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Main course", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "150g", ingredient: beef, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: honey, recipe: beef_mash)
Dose.create(measure: "100g", ingredient: rice, recipe: beef_mash)
Dose.create(measure: "2 tablespoons", ingredient: ginger, recipe: beef_mash)


dark_chocolate =  Ingredient.create(name: "dark chocolate")
potatoes =  Ingredient.create(name: "potatoes")
vanilla=  Ingredient.create(name: "vanilla")
eggs=  Ingredient.create(name: "vanilla")
custard_cream= Ingredient.create(name: "custard cream")


brownie_custard = Recipe.new(name: "Brownie with custard cream", description:"Not for faint hearted", price: 9, photo: "brownie_custard.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 2000, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "375g", ingredient: dark_chocolate, recipe: brownie_custard)
Dose.create(measure: "375g", ingredient: butter, recipe: brownie_custard)
Dose.create(measure: "1 tablespoon", ingredient: vanilla, recipe: brownie_custard)
Dose.create(measure: "700ml", ingredient: custard_cream, recipe: brownie_custard)
Dose.create(measure:  "6", ingredient: eggs, recipe: brownie_custard)


strawberries =  Ingredient.create(name: "strawberries")
walnut_shortbread=  Ingredient.create(name: "walnut shortbread")
sugar=  Ingredient.create(name: "sugar")
water = Ingredient.create(name: "water")

strawberry_compote = Recipe.new(name: "Strawberry compote with walnut shortbread", description: "Strawberries are always on top of the world", price: 8, photo: "strawberry_compote.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "Dessert", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "250g", ingredient: strawberries, recipe: strawberry_compote)
Dose.create(measure: "3 slices", ingredient: walnut_shortbread, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: sugar, recipe: strawberry_compote)
Dose.create(measure:  "½ cup", ingredient: water, recipe: strawberry_compote)


cottage_cheese =  Ingredient.create(name: "cottage cheese")
honey =  Ingredient.create(name:"honey")

cottage_cheese_honey = Recipe.new(name: "Cottage cheese with honey", description: "The perfect combination in the mouth", price: 7, photo: "cottage_cheese_honey.png", instructions: dummy_instructions, prep_time: 10, cooking_time: 20, category: "starter", calories: 300, gluten_free: true, dairy_free: true, egg_free: true, vegetarian: false, vegan: false)

Dose.create(measure: "1/2 cup", ingredient: cottage_cheese, recipe: cottage_cheese_honey)
Dose.create(measure: "2 teaspoons", ingredient: honey, recipe: cottage_cheese_honey)



order = Order.create(user: User.last, delivery_date: Date.today)
OrderItem.create(order: order, recipe: Recipe.first, quantity: 3)
OrderItem.create(order: order, recipe: Recipe.last, quantity: 1)
# OrderItem.create(order: order, recipe_id: 5, quantity: 3)




