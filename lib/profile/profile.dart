import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(6),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://discoverymood.com/wp-content/uploads/2020/04/Mental-Strong-Women-min.jpg"),
                          fit: BoxFit.cover,
                        ),
                        boxShadow: [
                          new BoxShadow(color: Colors.black, blurRadius: 8.0)
                        ],
                        color: Colors.green),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Jordan Lane',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: const Padding(
                                        padding: EdgeInsets.only(left: 155),
                                        child: Icon(
                                          Icons.edit,
                                          color: Colors.blue,
                                        ),
                                      )),
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              manageList(
                                icon: const Icon(
                                  Icons.person,
                                  color: Colors.red,
                                ),
                                text: 'Account',
                              ),
                              manageList(
                                icon: const Icon(
                                  Icons.notifications,
                                  color: Colors.blue,
                                ),
                                text: 'Notifications',
                              ),
                              manageList(
                                icon: const Icon(
                                  Icons.help,
                                  color: Colors.yellow,
                                ),
                                text: 'Help & Legal',
                              ),
                              manageList(
                                icon: const Icon(
                                  Icons.share,
                                  color: Colors.green,
                                ),
                                text: 'Tell a Friend',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget manageList({Icon? icon, String? text}) {
  return Padding(
    padding: const EdgeInsets.all(10.0),
    child: ListTile(
      onTap: () {},
      selected: true,
      selectedTileColor: Colors.white,
      leading: icon,
      title: Text(
        text!,
        style: const TextStyle(color: Colors.black),
      ),
    ),
  );
}
