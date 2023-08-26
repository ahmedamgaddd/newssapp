import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
            ),
            SafeArea(
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    DrawerHeader(
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 60,
                                    child: ClipOval(
                                      child: Image.asset(
                                          'assets/WhatsApp Image 2023-07-21 at 04.48.34.jpg'),
                                    ),
                                  ),
                                  const Padding(
                                      padding: EdgeInsets.only(
                                    left: 15,
                                  )),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Welocme',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      Text(
                                        'ahmed amgad',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView(
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.explore,
                            ),
                            title: const Text(
                              'Explore',
                            ),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.chat_bubble,
                            ),
                            title: const Text('Live Chat'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.mark_email_unread_outlined,
                            ),
                            title: const Text('Gallery'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(
                              Icons.favorite_border,
                            ),
                            title: const Text('Wish List'),
                          ),
                          ListTile(
                            onTap: () {},
                            leading: const Icon(Icons.border_vertical_outlined),
                            title: const Text('E-magazine'),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
