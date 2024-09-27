import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';
import 'package:recipe_app/widgets/spacer.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: 260,
            height: 130,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 10,
                    spreadRadius: 3,
                  )
                ]),
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    'Steak with...',
                    style: bodyMediumBold,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      for (var i = 0; i < 5; i++)
                        const Icon(
                          Icons.star,
                          size: 18,
                          color: Constants.secondaryColor,
                        )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const CircleAvatar(
                        radius: 17,
                        backgroundImage:
                            AssetImage('assets/images/avatar-1.png'),
                      ),
                      addHorizontalSpace(10),
                      Text(
                        'By James Milner',
                        style: labelLargeRegular.copyWith(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 10,
                  child: Row(
                    children: [
                      Icon(
                        Icons.alarm,
                        color: Colors.grey.withOpacity(0.4),
                        size: 18,
                      ),
                      addHorizontalSpace(10),
                      Text(
                        '20 mins',
                        style: bodySmallBold.copyWith(
                          color: Colors.grey.withOpacity(0.4),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10,
            right: 12,
            child: Container(
              width: 120,
              height: 120,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('assets/images/food-3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
