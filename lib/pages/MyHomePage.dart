import 'package:flutter/material.dart';
import 'package:flutteroman/pages/secondpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  static List<Widget> pages = <Widget> [
    Container(
    child: Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Color.fromRGBO(0, 0, 0, 0)
        ),
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: SizedBox(
        width: 800,
        height: 800,
        child: Image.asset("assets/mag1.jpg") ,
      ),
    ),),
    Container(color: Colors.green,),
    Container(color: Colors.blue)
  ];

  void _onItemTapped (int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text(widget.title),
          centerTitle: true,
        ),
        body: pages[_selectedIndex],
        // body: Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: <Widget>[
        //       const SizedBox(height: 30),
        //       ElevatedButton(
        //         onPressed: () {
        //           Navigator.push(context,
        //               MaterialPageRoute(builder: (context) => secondwidget()),);
        //         },
        //         child: const Text('Press Me'),
        //       ),
        //       Text("Text widget"),
        //       const Text(
        //         'You have pushed the button this many times:',
        //       ),
        //       Text(
        //         '$_counter',
        //         style: Theme.of(context).textTheme.headline4,
        //       ),
        //     ],
        //   ),
        // ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "1"),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "2"),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard), label: "3")
          ],
        )
      // bottomNavigationBar: Container(
      //   color: Colors.red,
      //   child: Text("hello footer", style: TextStyle(
      //       fontSize: 30,
      //   ),),
      // ),
    );
  }
}