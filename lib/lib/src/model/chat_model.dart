class ChatModel{
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;

  String status;
  int id;
bool slected=false;
  ChatModel({required this.name,
    required this.icon,
    required this.isGroup,
    required this.currentMessage,
    required this.time, required this.status ,this.slected=false,
    required this.id
    // this.status

  });


}
