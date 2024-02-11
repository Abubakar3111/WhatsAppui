import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> randomNames = [
    'Emily',
    'Alex',
    'Jasmine',
    'Brandon',
    'Sophia',
    'Marcus',
    'Isabella',
    'Jordan',
    'Olivia',
    'Carter',
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal.shade700,
          title: Text('WhatsApp'),
          bottom: TabBar(tabs: [
            Tab(child: Icon(Icons.groups)),
            Tab(
              child: Text('Chats'),
            ),
            Tab(
              child: Text('Updates'),
            ),
            Tab(
              child: Text('Calls'),
            ),
          ]),
          actions: [   Icon(Icons.camera_alt_outlined),   SizedBox(
            width: 15,
          ),
            Icon(Icons.search),

            PopupMenuButton(
                icon: Icon(Icons.more_vert),
                itemBuilder: (
                  context,
                ) =>
                    [
                      PopupMenuItem(value: 1, child: Text('New Group')),
                      PopupMenuItem(value: 1, child: Text('New Broadcast')),
                      PopupMenuItem(value: 1, child: Text('linked device')),
                      PopupMenuItem(value: 1, child: Text('Starred Message')),
                      PopupMenuItem(value: 1, child: Text('Setting')),

                    ]),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [


           ListView.builder(


             itemCount: 10,
             itemBuilder: (context, index) {
               return Padding(
                 padding: EdgeInsets.all(10),
                 child: ListTile(
                   leading: CircleAvatar(
                       radius: 30,
                       backgroundColor: Colors.blue,
                       backgroundImage: NetworkImage(
                           'https://vectorseek.com/wp-content/uploads/2023/06/Asia-Cup-2023-Logo-Vector.jpg')),
                   title: Text("ACC-Asian Cricket Council"),
                   subtitle: Text(
                       'Hey i am Abubakar Asif-Full Stack Flutter App Developer.'),

                   onTap: () {
                     // Add your onTap logic here
                   },
                 ),
               );
             },
           )
         ,

          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    backgroundImage:index % 2 == 0? NetworkImage(
                        'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600')
                 :NetworkImage('https://images.pexels.com/photos/2608353/pexels-photo-2608353.jpeg?auto=compress&cs=tinysrgb&w=600') ),
                  title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                  subtitle:index % 2 == 0? Text('Full Stack Flutter App Developer'):Text('Full Stack Flutter App Developer.'),
                  trailing: Text('6:36 pm'),
                );
              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return index == 0
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ListTile(
                            leading: Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  width: 3,
                                  color: Colors.grey.shade600,
                                ),
                              ),
                              child: CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                    'https://images.pexels.com/photos/5988921/pexels-photo-5988921.jpeg?auto=compress&cs=tinysrgb&w=600'),
                              ),
                            ),
                            title: Text(
                              'My Status',
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('Yesterday.10:59 PM'),
                            trailing: PopupMenuButton(
                                icon: Icon(Icons.more_horiz),
                                itemBuilder: (
                                  context,
                                ) =>
                                    [
                                      PopupMenuItem(
                                          value: 1, child: Text('Forward')),
                                      PopupMenuItem(
                                          value: 1, child: Text('Share')),
                                      PopupMenuItem(
                                          value: 1,
                                          child: Text('Share to Facebook')),
                                      PopupMenuItem(
                                          value: 1, child: Text('Delete')),
                                    ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              'Recent Updates',
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          ListTile(
                            leading: index % 2 == 0
                                ? Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green.shade600,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/8164737/pexels-photo-8164737.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    ),
                                  )
                                : Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        width: 3,
                                        color: Colors.green,
                                      ),
                                    ),
                                    child: CircleAvatar(
                                      radius: 30,
                                      backgroundImage: NetworkImage(
                                          'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600'),
                                    ),
                                  ),
                            title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                            subtitle: Row(
                              children: [Text("26 minutes ago")],
                            ),
                          ),
                        ],
                      );
              }),
          ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                      backgroundImage:index % 2 == 0? NetworkImage(
                          'https://images.pexels.com/photos/7129744/pexels-photo-7129744.jpeg?auto=compress&cs=tinysrgb&w=600')
                          :NetworkImage('https://images.pexels.com/photos/2608353/pexels-photo-2608353.jpeg?auto=compress&cs=tinysrgb&w=600')

                  ),
                  title:index % 2 == 0? Text('Abubakar'):Text('Ahmed'),
                  subtitle: Row(
                    children: [
                      index % 2 == 0
                          ? Icon(
                        CupertinoIcons.arrow_up,
                              color: Colors.green,
                            )
                          : Icon(
                              CupertinoIcons.arrow_down,
                              color: Colors.red,
                            ),
                      Text("August 11,7:38 PM")
                    ],
                  ),
                  trailing: index % 2 == 0
                      ? Icon(Icons.call, color: Colors.teal.shade700)
                      : Icon(CupertinoIcons.video_camera_solid,
                          color: Colors.teal.shade700),
                );
              }),

        ]),
      ),
    );
  }
}
