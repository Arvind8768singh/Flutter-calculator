import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Arvind watsapp'),
          centerTitle: true,
          leading: const Icon(Icons.phone),
          actions: [
            const Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => [
                const PopupMenuItem(child: Text('Logout')),
                const PopupMenuItem(child: Text('Block')),
                const PopupMenuItem(child: Text('Settings')),
              ],
            )
          ],
          actionsIconTheme: const IconThemeData(
            color: Colors.black,
          ),
          backgroundColor: Colors.teal.shade700,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(
                  Icons.camera,
                  size: 30,
                  color: Colors.black87,
                ),
              ),
              Tab(
                child: Text(
                  'Chats',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Status',
                  style: TextStyle(color: Colors.black87),
                ),
              ),
              Tab(
                child: Text(
                  'Call',
                  style: TextStyle(color: Colors.black87),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            const Text('Camera'),
            ListView.builder(
              itemCount: 500,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Arvind'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png'),
                  ),
                  subtitle: Text('hello\nLast seen 35min ago'),
                  trailing: Icon(Icons.video_call),
                );
              },
            ),
            ListView.builder(
              itemCount: 500,
              itemBuilder: (context, index) {
                return ListTile(
                  title: const Text('Arvind'),

                  leading: Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        //  color: Colors.teal,
                        border: Border.all(
                          color: Colors.teal,
                          width: 5,
                        )),
                    child: const CircleAvatar(
                      backgroundImage: AssetImage('assets/logo.png'),
                    ),
                  ),
                  // subtitle: Text('hello\nLast seen 35min ago'),
                  // trailing: Icon(Icons.video_call),
                );
              },
            ),
            ListView.builder(
              itemCount: 500,
              itemBuilder: (context, index) {
                return const ListTile(
                  title: Text('Arvind'),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/logo.png'),
                  ),
                  subtitle: Text('hello\nLast seen 35min ago'),
                  trailing: Icon(Icons.video_call),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
