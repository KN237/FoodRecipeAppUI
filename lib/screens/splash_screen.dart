import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/widgets/primary_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: mediaSize.width,
            height: mediaSize.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg-fruit.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            width: mediaSize.width,
            height: mediaSize.height,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: mediaSize.width,
              height: mediaSize.height / 2,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.transparent,
                  Colors.black,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/hat.png',
                      color: Colors.white.withOpacity(0.9),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      '100K + Premium Recipe',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.9),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'Get \n Cooking',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 50,
                        height: 1.15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white.withOpacity(0.9),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Simple way to find Tasty Recipe',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    PrimaryButton(
                      title: 'Start Something',
                      onTap: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
