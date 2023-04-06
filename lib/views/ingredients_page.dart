import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngredientPage extends StatefulWidget {
  String information;

  @override
  State<IngredientPage> createState() => _IngredientPageState();
}

class _IngredientPageState extends State<IngredientPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          title: Text("Ingredients"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Container(
                  // decoration: ShapeDecoration(
                  //     shape: StadiumBorder()
                  // ),
                    width:300,
                    height:200,
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("""- 1 lb chicken breasts \n - 1 cup mayonnaise \n - ½ cup parmesan cheese \n - 1 teaspoon garlic powder \n - 1 teaspoon seasoning salt \n - ½ teaspoon black pepper""",
                            style: GoogleFonts.lato(fontSize: 15,color: Colors.black)
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Container(
                    width: 500,
                    height: 200,
                    color: Colors.orange,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: Text("""Instructions \n - Preheat oven to 375°F. \n - Mix : \n -mayonnaise, parmesan cheese, garlic powder in a small bowl. \n - Place chicken in a baking dish and cover with the parmesan mixture. \n - Bake for 40-45 minutes \n - Ensure chicken reaches 165°F internally.""",
                              style: GoogleFonts.lato(fontSize: 15,color: Colors.black)),
                        )
                      ],
                    )),
              )
            ],
          ),
        )
      //
      //      Padding(
      //   padding: const EdgeInsets.all(20.0),
      //   child: Container(
      //     decoration: BoxDecoration(
      //         color: Colors.orange,
      //         border: Border.all(
      //             width: 20,
      //         )
      //     ),
      //     child: Column(
      //
      //       children: [
      //         Container(
      //           child:Text("""
      //       Ingredients
      //       - 1 lb chicken breasts
      //       - ⅔ cup mayonnaise
      //       - ½ cup parmesan cheese shredded
      //       - 1 teaspoon garlic powder
      //       - 1 teaspoon seasoning salt
      //       - ½ teaspoon black pepper
      //       """,
      //             style: GoogleFonts.lato(fontSize: 25, color: Colors.white),),
      //
      //         ),
      //
      //         Container(
      //
      //             child: Text("""
      //       Instructions
      //        - Preheat oven to 375°F.
      //         - Mix mayonnaise, parmesan cheese, garlic powder, seasoning salt, and pepper in a small bowl.
      //         - Place chicken in a baking dish and cover with the parmesan mixture.
      //         - Bake for 40-45 minutes or until chicken reaches 165°F internally.""",
      //               style: GoogleFonts.lato(fontSize: 25, color : Colors.white),)
      //         )
      //
      //
      //       ],
      //     ),
      //   ),
      // )

    );
  }
}