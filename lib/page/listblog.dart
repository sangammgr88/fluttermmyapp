import 'package:flutter/material.dart';

class Listblog extends StatefulWidget {
  const Listblog({super.key});

  @override
  State<Listblog> createState() => _ListblogState();
}

class _ListblogState extends State<Listblog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Grid View in Flutter"),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
          Image.network(
              "https://images.unsplash.com/photo-1720409886741-0fc1bed267f9?q=80&w=1938&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        ],
      ),
    );
  }
}
