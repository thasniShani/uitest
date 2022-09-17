import 'package:flutter/material.dart';
import 'package:ui/chat/widget/chatModel.dart';
import 'package:ui/chat/widget/chatTile.dart';

// ignore: must_be_immutable
class ChatScreen extends StatelessWidget {
  ChatScreen({Key? key, required ChatModel chatDetails}) : super(key: key);
  List<ChatModel> chatList = [
    ChatModel(
      image:
          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRzGnI__Ul05wKYDq3QYeoy1QbXXdWMvJpLezay515H6OiORtH-',
      message: 'Good to know',
      name: 'Kriss Benwat',
      updatedAt: 'Today',
    ),
    ChatModel(
      image:
          'https://media.wired.com/photos/5c82b7509d5bf17d94aac26d/master/pass/Jewel-Burks-4.jpg',
      message: 'Its been a while',
      name: 'Rezi Makarov',
      updatedAt: 'Today',
    ),
    ChatModel(
      image:
          'https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      message: 'Hey ,where are you?',
      name: 'Gustav Lemelo',
      updatedAt: 'Yesterday',
    ),
    ChatModel(
      image:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Chris_Pratt_2018.jpg/1200px-Chris_Pratt_2018.jpg',
      message: 'its over',
      name: 'Bob Rider',
      updatedAt: '28 Jan',
    ),
    ChatModel(
      image:
          'https://i0.wp.com/gulfbusiness.com/wp-content/uploads/2022/03/Luzy-Aziz-Image-1.jpeg',
      message: 'Iam going out',
      name: 'Emma',
      updatedAt: '28 Jan',
    ),
    ChatModel(
      image:
          'https://media.istockphoto.com/photos/young-smiling-handsome-man-in-casual-clothes-posing-isolated-on-blue-picture-id1249420269?k=20&m=1249420269&s=612x612&w=0&h=taSQreK8i8J_nt-NQR0SBGVhXXtNWAtJuXiBnHBNW0g=',
      message: 'your welcome',
      name: 'Ken Simada',
      updatedAt: '24 Jan',
    ),
    ChatModel(
      image:
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bWVufGVufDB8fDB8fA%3D%3D&w=1000&q=80',
      message: 'Just attach the image and send it',
      name: 'Gilbert Hamminway',
      updatedAt: '19 Jan',
    ),
    ChatModel(
      image:
          'https://www.nm.org//-/media/northwestern/healthbeat/images/healthy-tips/nm-9-health-issues-women_feature.jpg',
      message: 'The UI is sexy',
      name: 'Bella Hammers',
      updatedAt: '5 Jan',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            'Conversations',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 244, 190, 208),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.add,
                      color: Colors.red,
                    ),
                    Text(
                      'Add new',
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.grey,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * .7,
                child: ListView.builder(
                  //multiple items
                  itemCount: chatList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ChatTile(
                      chatData: chatList[index],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
