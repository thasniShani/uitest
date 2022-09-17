import 'package:flutter/material.dart';
import 'package:ui/chat/widget/MessageModel.dart';
import 'package:ui/chat/widget/chatList.dart';
import 'package:ui/chat/widget/chatModel.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key, required this.chatDetails}) : super(key: key);
  final ChatModel chatDetails;

  @override
  State<ChatDetails> createState() => _ChatDetails();
}

class _ChatDetails extends State<ChatDetails> {
  bool? isSend = false;
  final TextEditingController _msgController = TextEditingController(text: '');
  bool emojiShow = false;
  final FocusNode _focusNode = FocusNode();
  List<MessageModel> messages = [
    MessageModel(isSend: false, message: 'Hello,Will'),
    MessageModel(message: 'How have you been?', isSend: false),
    MessageModel(message: 'Hey Kriss, I am doing fine dude.wbu', isSend: true),
    MessageModel(message: 'ehhhh,doing OK.', isSend: false),
    MessageModel(message: 'Is there anything wrong?', isSend: true),
  ];
  @override
  Widget build(BuildContext context) {
    FocusScopeNode currentFocus = FocusScope.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: .1,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(widget.chatDetails.image!)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.chatDetails.name.toString(),
                  style: const TextStyle(color: Colors.black),
                ),
                Text(
                  '${widget.chatDetails.updatedAt}',
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.settings,
            color: Colors.grey,
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index) {
                return ChatBubble(
                  msg: messages[index],
                );
              },
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          mini: true,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.add),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 105,
                          child: Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: TextField(
                              focusNode: _focusNode,
                              controller: _msgController,
                              onChanged: (value) {
                                if (value.isNotEmpty) {
                                  setState(() {
                                    isSend = true;
                                  });
                                } else {
                                  setState(() {
                                    isSend = false;
                                  });
                                }
                              },
                              decoration:
                                  const InputDecoration(hintText: 'Message'),
                            ),
                          ),
                        ),
                        FloatingActionButton(
                          onPressed: () {
                            setState(() {
                              messages.add(MessageModel(
                                isSend: true,
                                message: _msgController.text,
                              ));
                              _msgController.clear();
                            });
                          },
                          mini: true,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Icon(Icons.send),
                          ),
                        ),
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
