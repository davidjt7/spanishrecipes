import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
  MobileAds.instance.initialize();
}

final List<String> recipes = [
  "Paella",
  "Tortilla de Patatas",
  "Gazpacho",
  "Croquetas",
  "Patatas Bravas",
  "Churros",
  "Empanadas",
  "Albondigas",
  "Pollo al Ajillo",
  "Crema Catalana"
];

final List<String> recipeshorts = [
  "Rice Dish",
  "Potato Omelette",
  "Cold Soup",
  "Fried Balls",
  "Fried Potatoes",
  "Fried Dough",
  "Pastry Turnover",
  "Meatballs",
  "Garlic Chicken",
  "Creamy Dessert"
];

List<List<String>> ingredients = [
  [
    "Olive oil (1/4 cup)",
    "Chicken (1 lb, cut into pieces)",
    "Chorizo (4 oz, sliced)",
    "Onion (1, chopped)",
    "Garlic (3 cloves, minced)",
    "Tomato (1, chopped)",
    "Rice (1 1/2 cups)",
    "Chicken broth (3 cups)",
    "Saffron threads (1/2 tsp)",
    "Green beans (1 cup, trimmed)",
    "Peas (1 cup)",
    "Shrimp (1/2 lb, peeled and deveined)",
    "Lemon wedges (4)"
  ],
  [
    "Potatoes (2, peeled and thinly sliced)",
    "Onion (1, thinly sliced)",
    "Eggs (4)",
    "Olive oil (1/4 cup)",
    "Salt (1 tsp)"
  ],
  [
    "Tomatoes (4, chopped)",
    "Cucumber (1, chopped)",
    "Red bell pepper (1, chopped)",
    "Red onion (1/2, chopped)",
    "Garlic (2 cloves, minced)",
    "Bread (1 slice, crust removed)",
    "Red wine vinegar (2 tbsp)",
    "Olive oil (1/4 cup)",
    "Water (1/4 cup)",
    "Salt (1 tsp)",
    "Pepper (1/4 tsp)"
  ],
  [
    "Butter (2 tbsp)",
    "Onion (1, finely chopped)",
    "Flour (3 tbsp)",
    "Milk (1 1/2 cups)",
    "Ham (1/2 cup, finely chopped)",
    "Nutmeg (1/4 tsp)",
    "Salt (1/4 tsp)",
    "Pepper (1/4 tsp)",
    "Egg (1, beaten)",
    "Bread crumbs (1 cup)",
    "Olive oil (1/4 cup)"
  ],
  [
    "Potatoes (2, peeled and diced)",
    "Olive oil (1/4 cup)",
    "Paprika (1 tbsp)",
    "Garlic (2 cloves, minced)",
    "Tomato sauce (1/2 cup)",
    "Mayonnaise (1/4 cup)",
    "Hot sauce (1 tbsp)"
  ],
  [
    "Water (1 cup)",
    "Butter (1/2 cup)",
    "Sugar (1 tbsp)",
    "Salt (1/4 tsp)",
    "All-purpose flour (1 cup)",
    "Eggs (3)",
    "Vegetable oil (for frying)",
    "Cinnamon sugar (1/4 cup)"
  ],
  [
    "Olive oil (1/4 cup)",
    "Onion (1, chopped)",
    "Green bell pepper (1, chopped)",
    "Garlic (2 cloves, minced)",
    "Ground beef (1 lb)",
    "Tomato sauce (1/2 cup)",
    "Paprika (1 tsp)",
    "Cumin (1 tsp)",
    "Salt (1 tsp)",
    "Pepper (1/4 tsp)",
    "Pie crust dough (2 sheets)",
    "Egg (1, beaten)"
  ],
  [
    "Ground beef (1 lb)",
    "Bread crumbs (1/2 cup)",
    "Egg (1)",
    "Onion (1, grated)",
    "Garlic (2 cloves, minced)",
    "Paprika (1 tsp)",
    "Cumin (1 tsp)",
    "Salt (1 tsp)",
    "Pepper (1/4 tsp)",
    "Olive oil (1/4 cup)",
    "Tomato sauce (1/2 cup)",
    "Chicken broth (1 cup)"
  ],
  [
    "Chicken thighs (4, bone-in and skin-on)",
    "Olive oil (1/4 cup)",
    "Garlic (6 cloves, minced)",
    "White wine (1/2 cup)",
    "Chicken broth (1/2 cup)",
    "Bay leaf (1)",
    "Lemon juice (1 tbsp)",
    "Salt (1 tsp)",
    "Pepper (1/4 tsp)",
    "Parsley (1/4 cup, chopped)"
  ],
  [
    "Milk (2 cups)",
    "Lemon peel (1)",
    "Cinnamon stick (1)",
    "Egg yolks (6)",
    "Cornstarch (2 tbsp)",
    "Sugar (1/2 cup)",
    "Vanilla extract (1 tsp)"
  ]
];

const instructions = [
  [
    "Heat olive oil in a large paella pan over medium heat.",
    "Add chopped onion and garlic and cook until softened.",
    "Add diced tomatoes, saffron, paprika, and rice to the pan.",
    "Stir in chicken broth and bring to a boil.",
    "Reduce heat and simmer for 20-25 minutes or until the rice is tender.",
    "Add shrimp, mussels, and peas to the pan.",
    "Cover and cook for an additional 5-10 minutes or until the seafood is cooked through.",
    "Serve hot with lemon wedges."
  ],
  [
    "Heat olive oil in a skillet over medium heat.",
    "Add thinly sliced potatoes and diced onion to the skillet.",
    "Cook until the potatoes are tender and the onion is softened.",
    "Beat eggs in a bowl.",
    "Pour the eggs into the skillet and cook until set on the bottom.",
    "Flip the tortilla over and cook until set on the other side.",
    "Slide the tortilla onto a plate and let cool slightly.",
    "Slice and serve warm or at room temperature."
  ],
  [
    "Puree tomatoes, cucumber, red pepper, garlic, and bread in a blender.",
    "Add olive oil, vinegar, salt, and pepper to the blender and blend until smooth.",
    "Chill the soup for at least 2 hours before serving.",
    "Serve cold with croutons and chopped vegetables as toppings."
  ],
  [
    "Melt butter in a saucepan over medium heat.",
    "Add flour and whisk until smooth.",
    "Gradually whisk in milk and cook until thickened.",
    "Stir in chopped ham and season with salt, pepper, and nutmeg.",
    "Spread the mixture into a shallow dish and refrigerate until firm.",
    "Form the mixture into small rolls.",
    "Dip the rolls in beaten egg and coat in breadcrumbs.",
    "Fry in hot oil until golden brown on all sides.",
    "Serve hot with aioli."
  ],
  [
    "Cut potatoes into small cubes.",
    "Fry the potatoes in hot oil until golden brown and crispy.",
    "Mix together mayonnaise, ketchup, hot sauce, and paprika in a bowl to make a spicy sauce.",
    "Drizzle the sauce over the potatoes.",
    "Serve hot as a tapa."
  ],
  [
    "Mix together flour, salt, and water in a bowl to make a dough.",
    "Heat oil in a deep skillet or fryer over medium-high heat.",
    "Pipe the dough through a churro maker, or use a pastry bag to pipe the dough into long strips.",
    "Fry the churros in the hot oil until golden brown.",
    "Drain on paper towels.",
    "Mix together sugar and cinnamon in a bowl.",
    "Roll the churros in the cinnamon sugar mixture.",
    "Serve hot with chocolate sauce for dipping."
  ],
  [
    "Mix together ground beef, onion, garlic, diced tomatoes, olives, and raisins in a bowl.",
    "Season with cumin, paprika, salt, and pepper.",
    "Roll out dough and cut into circles.",
    "Place a spoonful of the meat mixture in the center of each circle.",
    "Fold the dough over the meat mixture and pinch the edges together to seal.",
    "Brush with beaten egg.",
    "Bake at 375°F for 20-25 minutes or until golden brown."
  ],
  [
    "Mix together ground beef, bread crumbs, egg, onion, garlic, and parsley in a bowl.",
    "Season with salt and pepper.",
    "Form the mixture into small meatballs.",
    "Heat olive oil in a large pot over medium-high heat.",
    "Add sliced onion and diced tomatoes to the pot and cook until softened.",
    "Add beef broth and bring to a simmer.",
    "Add the meatballs to the pot and simmer for 20-25 minutes or until cooked through.",
    "Serve hot with crusty bread."
  ],
  [
    "Cut chicken into bite-sized pieces.",
    "Heat olive oil in a skillet over medium-high heat.",
    "Add minced garlic and cook for 1-2 minutes or until fragrant.",
    "Add the chicken to the skillet and cook until browned on all sides.",
    "Season with salt and pepper.",
    "Add white wine and chicken broth to the skillet and bring to a simmer.",
    "Reduce heat and simmer until the chicken is cooked through and the sauce has thickened.",
    "Serve hot with crusty bread."
  ],
  [
    "Heat milk and lemon zest in a saucepan over medium heat.",
    "Whisk together egg yolks and sugar in a bowl until light and fluffy.",
    "Whisk in cornstarch and a splash of milk to the egg yolk mixture.",
    "Slowly whisk in the remaining milk.",
    "Return the mixture to the saucepan and cook over low heat, stirring constantly, until thickened.",
    "Stir in vanilla extract.",
    "Pour the mixture into individual ramekins.",
    "Sprinkle sugar over the top of each ramekin.",
    "Caramelize the sugar with a kitchen torch or under the broiler.",
    "Chill the ramekins for at least 2 hours before serving."
  ],
];
const recipeDescriptions = [
  "Paella is a classic Spanish rice dish that originated in the Valencia region of Spain. It's typically made with short-grain rice that's cooked with saffron, which gives the dish its characteristic yellow color and slightly floral flavor. The rice is then mixed with a variety of ingredients, such as seafood, chicken, chorizo, or vegetables, and simmered in a shallow pan until it's fully cooked and slightly crispy on the bottom. Paella is often served at large gatherings or celebrations and is a source of pride for many Spaniards.",
  "Tortilla de patatas, also known as tortilla española, is a traditional Spanish dish that's similar to an omelette or frittata. It's made with potatoes, onions, and eggs, and is often served as a hearty breakfast or light lunch. To make a tortilla de patatas, thinly sliced potatoes and onions are sautéed in olive oil until they're tender and slightly browned. The eggs are then beaten and mixed with the potato mixture before being cooked in a skillet until the eggs are set. The tortilla is usually served sliced into wedges and can be eaten hot or cold.",
  "Gazpacho is a refreshing cold soup that's perfect for a hot summer day. It's made with fresh tomatoes, cucumber, red bell pepper, garlic, bread, olive oil, vinegar, and salt. All of the ingredients are blended together until they're smooth and creamy, then chilled in the refrigerator for several hours before serving. Gazpacho is often served with croutons, chopped vegetables, or a drizzle of olive oil on top.",
  "Croquetas are small rolls that are filled with a creamy mixture and then coated in breadcrumbs and fried. They're a popular tapa in Spain and can be filled with a variety of ingredients, such as ham, chicken, or cheese. To make croquetas, a mixture of flour, butter, and milk is cooked into a thick béchamel sauce, then mixed with the filling ingredients. The mixture is then chilled until it's firm enough to be rolled into small balls, which are then coated in breadcrumbs and fried until golden brown.",
  "Patatas bravas are a classic Spanish tapa that consists of crispy fried potatoes that are served with a spicy tomato sauce. The potatoes are usually cut into small cubes and fried until they're crispy and golden brown. The tomato sauce is made with tomatoes, onions, garlic, smoked paprika, and cayenne pepper and is cooked until it's thick and flavorful. The potatoes are then drizzled with the sauce and served hot.",
  "Churros are a popular Spanish dessert that are often enjoyed for breakfast or as a snack. They're long, thin doughnuts that are made with a simple dough that's piped through a churrera, a special tool that creates the distinctive ridges. The churros are then fried until they're crispy and golden brown before being rolled in a mixture of cinnamon and sugar. Churros are often served with a cup of hot chocolate for dipping.",
  "Empanadas are a type of pastry that are common throughout Spain and Latin America. They're typically filled with a mixture of meat, vegetables, or cheese, and are often served as a snack or appetizer. To make empanadas, a simple dough is made with flour, water, and salt, then rolled out and cut into circles. The filling is then placed on one half of the circle, and the other half is folded over and crimped to seal it shut. The empanadas are then baked until they're golden brown and crispy.",
  "Albondigas are small meatballs that are often served in a tomato-based sauce. They're typically made with ground beef, but can also be made with pork or a combination of the two. To make albondigas, the meat is mixed with breadcrumbs, egg, onions, garlic, and spices, then formed into small balls. The sauce is usually made with tomatoes, onions, garlic, and a variety of spices, and is simmered until it's thick and flavorful. The meatballs are then added to the sauce and cooked until they're fully cooked and tender.",
  "Pollo al ajillo, which translates to 'garlic chicken,' is a classic Spanish dish that's made with chicken, garlic, white wine, and chicken broth. To make pollo al ajillo, the chicken is first browned in a skillet until it's golden brown and crispy. The garlic is then sautéed in the same skillet until it's fragrant and slightly softened. White wine and chicken broth are added to the skillet and simmered until the chicken is fully cooked and the sauce has thickened slightly. The dish is typically served with crusty bread to soak up the delicious sauce.",
  "Crema catalana is a traditional Spanish dessert that's similar to crème brûlée. It's made with a custard base that's flavored with lemon zest, cinnamon, and vanilla. The custard is then baked until it's set, then chilled until it's firm. Before serving, the top of the custard is sprinkled with a generous amount of sugar, which is then caramelized with a kitchen torch or under the broiler. The result is a creamy, decadent dessert with a crispy, caramelized top."
];
const recipeImages = [
  "assets/images/pae.png",
  "assets/images/tor.png",
  "assets/images/gaz.png",
  "assets/images/cro.png",
  "assets/images/pat.png",
  "assets/images/chu.png",
  "assets/images/emp.png",
  "assets/images/alb.png",
  "assets/images/pol.png",
  "assets/images/cre.png",
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spanish Recipes',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Spanish Recipes'),
    );
  }
}

const appBarColor = Color(0xFFEF6C00);
const bgColor = Color(0xFF4CAF50);
const cardColor = Color(0xFFF44336);
const cardBorderColor = Color(0xFFD32F2F);
const avatarBorderColor = Color(0xFFFFEB3B);

class NewScreen extends StatelessWidget {
  const NewScreen({super.key, required this.i});

  final int i;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cardColor,
      appBar: AppBar(
          backgroundColor: appBarColor,
          title: Text(recipes[i],
              style: GoogleFonts.nunito(
                  textStyle: const TextStyle(
                color: Colors.white,
              )))),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                  child: CircleAvatar(
                      backgroundColor: avatarBorderColor,
                      radius: 178,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(recipeImages[i]),
                        radius: 170,
                      )))),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Ingredients",
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
              )),
          for (var ingredient in ingredients[i])
            Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 2.0, 0, 0),
                child: ingredient[0] != ";"
                    ? Text(
                        "●  $ingredient",
                        style: GoogleFonts.nunito(
                            textStyle: const TextStyle(
                          color: Colors.white,
                        )),
                      )
                    : Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                        child: Text(
                            ingredient.substring(
                              1,
                            ),
                            style: GoogleFonts.nunito(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            )))),
          Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 15.0, 0, 10.0),
              child: Text(
                "Instructions",
                style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                )),
              )),
          for (var instruction in instructions[i])
            Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 5.0, 0, 10.0),
                child: Text("➤  $instruction",
                    style: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                      color: Colors.white,
                    ))))
        ],
      )),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _index = 0;

  void _navigateToNextScreen(BuildContext context, int i) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => NewScreen(i: i)));
  }

  InterstitialAd? _interstitialAd;
  final adUnitId = 'ca-app-pub-8816215996841265/6212191491';

  void loadAd() {
    InterstitialAd.load(
        adUnitId: adUnitId,
        request: const AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
          onAdLoaded: (ad) {
            debugPrint('$ad loaded.');
            _interstitialAd = ad;
          },
          onAdFailedToLoad: (LoadAdError error) {
            debugPrint('InterstitialAd failed to load: $error');
          },
        ));
  }

  @override
  void initState() {
    super.initState();
    loadAd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(widget.title,
            style: GoogleFonts.nunito(
                textStyle: const TextStyle(
              color: Colors.white,
            ))),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 520,
          child: PageView.builder(
            itemCount: 10,
            controller: PageController(viewportFraction: 0.7),
            onPageChanged: (int index) => setState(() => _index = index),
            itemBuilder: (_, i) {
              return Transform.scale(
                scale: i == _index ? 1 : 0.9,
                child: Card(
                  elevation: 6,
                  color: cardBorderColor,
                  child: Center(
                    child: Card(
                      color: cardColor,
                      child: SizedBox(
                        width: 300,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              InkWell(
                                  onTap: () {
                                    _interstitialAd?.show();
                                    loadAd();
                                    _navigateToNextScreen(context, i);
                                  },
                                  child: CircleAvatar(
                                    backgroundColor: avatarBorderColor,
                                    radius: 108,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage(recipeImages[i]),
                                      radius: 100,
                                    ),
                                  )),
                              const SizedBox(
                                height: 10,
                              ),
                              Center(
                                  child: Text(
                                recipes[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              )),
                              Center(
                                  child: Text(
                                recipeshorts[i],
                                textAlign: TextAlign.center,
                                style: GoogleFonts.eagleLake(
                                    textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                )),
                              )),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                  child: SingleChildScrollView(
                                      child: Text(
                                recipeDescriptions[i],
                                style: GoogleFonts.nunito(
                                    textStyle: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                )),
                              ))),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
