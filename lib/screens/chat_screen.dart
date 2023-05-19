import 'package:flutter/material.dart';

import '../models/message_models.dart';

class ChatScreen extends StatefulWidget {
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Screen',
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.keyboard_return),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
          ],
          elevation: 0.0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: true,
                    itemCount: messagesIndex.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: const EdgeInsets.all(18),
                        alignment: messagesIndex[index].sender.name == 'James'
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        margin: messagesIndex[index].sender.name == 'James'
                            ? const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                left: 100,
                              )
                            : const EdgeInsets.only(
                                top: 5,
                                bottom: 5,
                                right: 100,
                              ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xFFFFEFEE)),
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  messagesIndex[index].time,
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  messagesIndex[index].message,
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                      );
                    },
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              color: Colors.white,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
                  labelText: 'Nhập tin nhắn',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
