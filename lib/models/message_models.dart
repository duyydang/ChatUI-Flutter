import 'package:chat_ui/models/user_models.dart';

class Message {
  final User sender;
  final String time;
  final String message;
  final bool unRead;
  final bool isLiked;

  Message(
      {required this.sender,
      required this.time,
      required this.message,
      required this.unRead,
      required this.isLiked});
}

List<User> users = <User>[
  User(
    id: 0,
    name: 'DuyDang',
    imageURL: 'assets/images/dang.jpg',
  ),
  User(
    id: 1,
    name: 'James',
    imageURL: 'assets/images/james.jpg',
  ),
  User(
    id: 2,
    name: 'John',
    imageURL: 'assets/images/john.jpg',
  ),
  User(
    id: 3,
    name: 'Olivia',
    imageURL: 'assets/images/olivia.jpg',
  ),
  User(
    id: 4,
    name: 'Sam',
    imageURL: 'assets/images/sam.jpg',
  ),
  User(
    id: 5,
    name: 'Sophia',
    imageURL: 'assets/images/sophia.jpg',
  ),
  User(
    id: 6,
    name: 'Eyst',
    imageURL: 'assets/images/steven.jpg',
  ),
];

List<Message> messagesChat = <Message>[
  Message(
    sender: users[1],
    time: '5:30 PM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: true,
    isLiked: true,
  ),
  Message(
    sender: users[4],
    time: '8:30 PM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: false,
    isLiked: false,
  ),
  Message(
    sender: users[0],
    time: '8:12 AM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: true,
    isLiked: false,
  ),
  Message(
    sender: users[5],
    time: '4:20 PM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: true,
    isLiked: true,
  ),
  Message(
    sender: users[3],
    time: '1:30 AM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: false,
    isLiked: true,
  ),
  Message(
    sender: users[2],
    time: '5:30 PM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: false,
    isLiked: false,
  ),
  Message(
    sender: users[6],
    time: '5:30 PM',
    message: 'Chào bạn, bạn có khoẻ không. Có muốn đi làm vài ly không ?',
    unRead: true,
    isLiked: false,
  ),

];


List<Message> messagesIndex = <Message>[
  Message(
    sender: users[1],
    time: '5:30 PM',
    message: 'Hey, how\'s it going? What did you do today?',
    isLiked: true,
    unRead: true,
  ),
  Message(
    sender: users[0],
    time: '4:30 PM',
    message: 'Just walked my doge. She was super duper cute. The best pupper!!',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: users[1],
    time: '3:45 PM',
    message: 'How\'s the doggo?',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: users[1],
    time: '3:15 PM',
    message: 'All the food',
    isLiked: true,
    unRead: true,
  ),
  Message(
    sender: users[0],
    time: '2:30 PM',
    message: 'Nice! What kind of food did you eat?',
    isLiked: false,
    unRead: true,
  ),
  Message(
    sender: users[1],
    time: '2:00 PM',
    message: 'I ate so much food today.',
    isLiked: false,
    unRead: true,
  ),
];
