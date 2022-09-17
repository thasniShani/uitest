import 'package:flutter/material.dart';
import 'package:ui/chat/widget/MessageModel.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key? key, required this.msg}) : super(key: key);
  final MessageModel msg;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: msg.isSend! ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 150,
        ),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          color: msg.isSend! ? Colors.blue : Colors.white,
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 5, right: 30, top: 7, bottom: 20),
                child: Text(msg.message.toString()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
