import 'dart:core';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'TelegramModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => TelegramModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Telegram'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
            child: Text(widget.title, style: TextStyle(fontSize: 25))),
        actions: <Widget>[
          Hero(
            tag: "hero-search",
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 30.0,
              ),
              onPressed: () => _gotoSearch(context),
            ),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Chat(
              heading: "Розробка програмного забезпечення",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              id: 0,
              color: Colors.green),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ 1",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              id: 1,
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              id: 2,
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              id: 3,
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка пdls;fkslkdfd",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              id: 4,
              color: Colors.purple),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ двплавпвам",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              id: 5,
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ cvp[dsfp[sdof",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              id: 6,
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              id: 7,
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка програмного забезпечення",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              id: 8,
              color: Colors.green),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ 1",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              id: 9,
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              id: 10,
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              id: 11,
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "Розробка пdls;fkslkdfd",
              icon: IconData(0xe2ee, fontFamily: 'MaterialIcons'),
              id: 12,
              color: Colors.purple),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "ЧАТ двплавпвам",
              icon: IconData(0xe9e7, fontFamily: 'MaterialIcons'),
              id: 13,
              color: Colors.blue),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "НОВИЙ ЧАТ cvp[dsfp[sdof",
              icon: IconData(0xe2f4, fontFamily: 'MaterialIcons'),
              id: 14,
              color: Colors.pink),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
          Chat(
              heading: "СЕКРЕТНИЙ ЧАТ",
              icon: IconData(0xf807, fontFamily: 'MaterialIcons'),
              id: 15,
              color: Colors.yellow),
          Container(
              height: 1,
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(85, 0, 0, 0)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _gotoSearch(context),
        tooltip: 'Increment',
        backgroundColor: Colors.amber,
        child: Icon(IconData(0xf67a, fontFamily: 'MaterialIcons'),
            color: Colors.white),
      ),
      drawer:
          MyDrawer(), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _gotoSearch(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Search'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: 'hero-rectangle',
                child:
                    Container(width: 400, height: 400, color: Colors.black54),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}

class Chat extends StatefulWidget {
  final IconData icon;
  final String heading;
  final int id;
  final Color color;
  const Chat(
      {Key? key,
      required this.heading,
      required this.color,
      required this.icon,
      required this.id})
      : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Consumer<TelegramModel>(
        builder: (context, chat, child) => InkWell(
              onTap: () => _sendMessage(context),
              child: Row(children: <Widget>[
                Container(
                    padding: EdgeInsets.fromLTRB(0, 7, 0, 7),
                    height: 70,
                    child: MaterialButton(
                      shape: CircleBorder(),
                      color: widget.color,
                      padding: EdgeInsets.all(5),
                      onPressed: () {},
                      child: Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    )),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(children: <Widget>[
                          Row(children: <Widget>[
                            Expanded(
                                child: SizedBox(
                                    height: 25,
                                    child: Text(widget.heading,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold)))),
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                                child: Text(chat.getTime(widget.id),
                                    style: TextStyle(fontSize: 17))),
                          ]),
                          Row(children: <Widget>[
                            Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 7, 0),
                                child: Text(chat.getUser(widget.id),
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold))),
                            Expanded(
                                child: SizedBox(
                                    height: 20,
                                    child: Text(chat.getMessage(widget.id),
                                        style: TextStyle(fontSize: 17)))),
                          ]),
                        ])))
              ]),
            ));
  }

  void _sendMessage(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (BuildContext context) => Message(id: widget.id)));
  }
}

class Message extends StatefulWidget {
  final int id;
  const Message({Key? key, required this.id}) : super(key: key);

  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onSubmitted: (text) {
                var counter = context.read<TelegramModel>();
                counter.addMessage("Vitalii:", text, widget.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white10,
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 70,
                      width: 70,
                      child: MaterialButton(
                        shape: CircleBorder(),
                        color: Colors.amber,
                        onPressed: () {},
                        child: Text("V", style: TextStyle(fontSize: 30)),
                      )),
                  Padding(
                      padding: EdgeInsets.fromLTRB(0, 20, 0, 5),
                      child: Text("Vitalii", style: TextStyle(fontSize: 18))),
                  Text("+380 (50) 777 77 77",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white60))
                ]),
          ),
          MenuItem(
              icon: IconData(0xf0d9, fontFamily: 'MaterialIcons'),
              name: 'Нова група'),
          MenuItem(
              icon: IconData(0xe491, fontFamily: 'MaterialIcons'),
              name: 'Контакти'),
          MenuItem(
              icon: IconData(0xef1a, fontFamily: 'MaterialIcons'),
              name: 'Виклики'),
          MenuItem(
              icon: IconData(0xf663, fontFamily: 'MaterialIcons'),
              name: 'Люди поблизу'),
          MenuItem(
              icon: IconData(0xf5cf, fontFamily: 'MaterialIcons'),
              name: 'Збережене'),
          MenuItem(
              icon: IconData(0xe57f, fontFamily: 'MaterialIcons'),
              name: 'Налаштування'),
          Container(
              margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
              height: 0.3,
              color: Colors.black),
          MenuItem(
              icon: IconData(0xf278, fontFamily: 'MaterialIcons'),
              name: 'Запросити друзів'),
          MenuItem(
              icon: IconData(0xf7e4,
                  fontFamily: 'MaterialIcons', matchTextDirection: true),
              name: 'Можливості Telegram')
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String name;
  const MenuItem({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Padding(
          padding: EdgeInsets.fromLTRB(15, 10, 30, 5),
          child: Icon(
            this.icon,
            color: Colors.white60,
            size: 30.0,
          )),
      Padding(
          padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
          child: Text(this.name,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w600)))
    ]);
  }
}
