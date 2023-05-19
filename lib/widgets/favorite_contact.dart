import 'package:chat_ui/widgets/recent_chat.dart';
import 'package:flutter/material.dart';
import 'package:chat_ui/models/message_models.dart';

class FavoriteContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 150,
        decoration: const BoxDecoration(
          color: Color(0xfffaebd7),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 25,
              ),
              //This is Favarotie Contact Text
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Favorite Contact',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.grey),
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 28,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            // This is avatar and name of Favorite Contact
            SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(users[index].imageURL),
                          radius: 35,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(users[index].name),
                      ],
                    ),
                  );
                },
              ),
            ),
            //Recent chat
            Expanded(child: RecentChat()),
          ],
        ),
      ),
    );
  }
}
