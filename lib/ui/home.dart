import 'package:flutter/material.dart';


class ScaffoldExample extends StatelessWidget {
  const ScaffoldExample({super.key});
  
  _tabButton(String message) {
    debugPrint(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scaffold'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () => _tabButton("Email Button"), icon: const Icon(Icons.email)),
          IconButton(onPressed: _tabButton("ABC Button"), icon: const Icon(Icons.abc))
        ],
      ),
      backgroundColor: Colors.amberAccent.shade400,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              child: Text("Click Me", style: TextStyle(fontSize: 24.0),),
              onTap: () => debugPrint("InkWell Tap"),
            ),
            CustomButton2("Cool Button over here"),
            CustomButton2("Other Cool button over here")
          ],
        ),
      ),
    );
  }
}

class CustomButton2 extends StatelessWidget {
  String buttonName = "Custom Buttom";
  CustomButton2(this.buttonName, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Text(buttonName)
      ),
      onTap: () {
          final snackBar = SnackBar(content: Text("Hello Again"));
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("New App", textDirection: TextDirection.rtl),
    );
  }
}