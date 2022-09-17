// To parse this JSON data, do
//
//     final messageModel = messageModelFromJson(jsonString);

import 'dart:convert';

MessageModel messageModelFromJson(String str) =>
    MessageModel.fromJson(json.decode(str));

String messageModelToJson(MessageModel data) => json.encode(data.toJson());

class MessageModel {
  MessageModel({
    this.isSend,
    this.message,
    
  });

  bool? isSend;

  String? message;
 

  factory MessageModel.fromJson(Map<String, dynamic> json) => MessageModel(
        isSend: json["isSend"],
        message: json["message"],
        
      );

  Map<String, dynamic> toJson() => {
        "isSend": isSend,
        "message": message,
        
      };
}
