import 'package:flutter/material.dart';

class Addblog extends StatefulWidget {
  const Addblog({super.key});

  @override
  State<Addblog> createState() => _AddblogState();
}

class _AddblogState extends State<Addblog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Go to HomePage"),
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Raman"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Dawa"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Roshan"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Mahendra"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Dipesh"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
            ListTile(
              leading: Text(
                "A",
                style: TextStyle(color: Colors.amber),
              ),
              title: Text("Sangam"),
              subtitle: Text("9845829097"),
              trailing: Icon(Icons.call),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: const [
              UserAccountsDrawerHeader(
                accountName: const Text("Sangam Magar"), 
              accountEmail: const Text("Sangamtmagar46@gmail.com"),
             currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.pink,
   backgroundImage: NetworkImage(
    "https://images.unsplash.com/photo-1720380839431-b69d4376d3cd?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      
   ),
             ), ),
              DrawerHeader(child: Text("This is Drawer Header")),
              ListTile(
                title: Text("Home1"),
              ),
              ListTile(
                title: Text("About 2"),
              ),
            ],
          ),
        ));
  }
}