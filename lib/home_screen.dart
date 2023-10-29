
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
            title: Text('WhatsApp'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt_outlined),
                ),
                Tab(
                  child: Text('Chats'),
                ),
                Tab(
                  child: Text('Status'),
                ),
                Tab(
                  child: Text('Calls'),
                ),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 20,),
              PopupMenuButton(
                icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context,) => const [
                  PopupMenuItem(
                      value: 1,
                    child: Text('New Group'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('Setting'),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text('Log Out'),
                  ),
                ],
              ),
              SizedBox(width: 20,),
            ],
          ),
          body: TabBarView(
            children: [
              Text('Camera'),
              ListView.builder(
                itemCount: 100,
                  itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    ),
                    title: Text('Riya'),
                    subtitle: Text('Where is my Home?'),
                    trailing: Text('02:13 AM'),
                  );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Riya'),
                      subtitle: Text('35 minutes ago'),
                    );
                  }
              ),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage('https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Riya'),
                      subtitle: Text(index%3==0?'you missed audio call':'call time at 12:33 AM'),
                      trailing: Icon(index%3==0? Icons.phone: Icons.video_call),
                    );
                  }
              ),
            ],
          ),
        )
    );
  }
}
