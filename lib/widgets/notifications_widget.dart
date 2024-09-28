import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'package:recipe_app/configs/constants.dart';
import 'package:recipe_app/configs/theme.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({super.key});

  @override
  State<NotificationsWidget> createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  String formatDate(DateTime date) {
    final formatter = DateFormat.MMMMEEEEd();
    if (formatter.format(date) == formatter.format(DateTime.now())) {
      return 'Today';
    } else if (formatter.format(date) ==
        formatter.format(
          DateTime.now().subtract(
            const Duration(days: 1),
          ),
        )) {
      return 'Yesterday';
    } else {
      return formatter.format(date);
    }
  }

  final List _elements = [
    {
      'title': 'New Recipe Alert 1!',
      'date': DateTime.now(),
      'isRead': true,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
    {
      'title': 'New Recipe Alert 2!',
      'date': DateTime.now().subtract(const Duration(days: 1)),
      'isRead': false,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
    {
      'title': 'New Recipe Alert 3!',
      'date': DateTime(2024, 9, 26),
      'isRead': true,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
    {
      'title': 'New Recipe Alert 4!',
      'date': DateTime(2024, 9, 25),
      'isRead': false,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
    {
      'title': 'New Recipe Alert 5!',
      'date': DateTime(2024, 8, 15),
      'isRead': true,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
    {
      'title': 'New Recipe Alert 6!',
      'date': DateTime(2023, 4, 13),
      'isRead': false,
      'description':
          'Lorem Ipsum tempor incididunt ut labore et dolore,in voluptate velit esse cillum'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GroupedListView(
      elements: _elements,
      groupBy: (date) => date['date'].toString(),
      groupComparator: (value1, value2) {
        final date1 = DateTime.parse(value1);
        final date2 = DateTime.parse(value2);
        return date1.compareTo(date2);
      },
      order: GroupedListOrder.DESC,
      groupSeparatorBuilder: (String value) => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          formatDate(DateTime.parse(value)),
          textAlign: TextAlign.center,
          style: bodySmallBold,
        ),
      ),
      itemBuilder: (c, element) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: 140,
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 10,
                left: 10,
                child: Text(
                  element['title'],
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor:
                          Constants.secondaryColor.withOpacity(0.4),
                      child: const Icon(
                        Ionicons.reader,
                        color: Constants.secondaryColor,
                      ),
                    ),
                    if (element['isRead'] == false)
                      const Positioned(
                        right: 1,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 5,
                        ),
                      )
                  ],
                ),
              ),
              Positioned(
                top: 45,
                left: 10,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    element['description'],
                    style: bodyMediumRegular.copyWith(
                      color: Colors.grey.withOpacity(0.8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
