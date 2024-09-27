import 'package:flutter/material.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key, required this.textController, this.onFilter});

  final TextEditingController textController;
  final void Function()? onFilter;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onFilter!();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.4,
              height: 45,
              child: TextField(
                controller: textController,
                cursorColor: Constants.primaryColor,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.5),
                    ),
                  ),
                  hintText: 'Search recipe',
                  hintStyle: bodyMediumRegular.copyWith(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.withOpacity(0.5),
                  ),
                ),
              ),
            ),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Constants.primaryColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Icon(
                Icons.tune_outlined,
                color: Colors.white,
                size: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
