import 'package:bubble/bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:workshop2/components/Sidebar/navigation_bloc.dart';

class ICareBot extends StatefulWidget with NavigationStates{
  @override
  _ICareBotState createState() => _ICareBotState();
}

class _ICareBotState extends State<ICareBot> {
  final List<ChatMessage> _messages = <ChatMessage>[];
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return new IconTheme(
      data: new IconThemeData(color: Theme.of(context).accentColor),
      child: new Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        child: new Row(
          children: <Widget>[
            new Flexible(
              child: new TextField(
                controller: _textController,
                onSubmitted: _handleSubmitted,
                decoration:
                    new InputDecoration.collapsed(hintText: "Send a message"),
              ),
            ),
            new Container(
              margin: new EdgeInsets.symmetric(horizontal: 4.0),
              child: new IconButton(
                  icon: new Icon(Icons.send),
                  onPressed: () => _handleSubmitted(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void responses(query) async {
    _textController.clear();
    AuthGoogle authGoogle =
        await AuthGoogle(fileJson: "assets/services.json")
            .build();
    Dialogflow dialogflow =
        Dialogflow(authGoogle: authGoogle, language: Language.english);
    AIResponse response = await dialogflow.detectIntent(query);
    ChatMessage message = new ChatMessage(
      text: response.getMessage() ??
          new CardDialogflow(response.getListMessage()[0]).title,
      name: "Bot",
      type: false,
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = new ChatMessage(
      text: text,
      name: "User",
      type: true,
    );
    setState(() {
      _messages.insert(0, message);
    });
    responses(text);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("iCare Bot"),
      ),
      body: new Column(children: <Widget>[
        new Flexible(
            child: new ListView.builder(
          padding: new EdgeInsets.all(8.0),
          reverse: true,
          itemBuilder: (_, int index) => _messages[index],
          itemCount: _messages.length,
        )),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(color: Theme.of(context).cardColor),
          child: _buildTextComposer(),
        ),
      ]),
    );
  }
}

class ChatMessage extends StatelessWidget {
  ChatMessage({this.text, this.name, this.type});

  final String text;
  final String name;
  final bool type;

  List<Widget> otherMessage(context) {
    return <Widget>[
      new Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: new CircleAvatar(child: new Text('B')),
      ),
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Text(this.name,
                style: new TextStyle(fontWeight: FontWeight.bold)),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
    ];
  }

  List<Widget> myMessage(context) {
    return <Widget>[
      new Expanded(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            new Text(this.name),
            new Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: new Text(text),
            ),
          ],
        ),
      ),
      new Container(
        margin: const EdgeInsets.only(left: 16.0),
        child: new CircleAvatar(
            child: new Text(
          this.name[0],
          style: new TextStyle(fontWeight: FontWeight.bold),
        )),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: this.type ? myMessage(context) : otherMessage(context),
      ),
    );
  }
  // void response(query) async {
  //   AuthGoogle authGoogle = await AuthGoogle(
  //           fileJson: "assets/services.json")
  //       .build();
  //   Dialogflow dialogflow =
  //       Dialogflow(authGoogle: authGoogle, language: Language.english);
  //   AIResponse aiResponse = await dialogflow.detectIntent(query);
  //   setState(() {
  //     messsages.insert(0, {
  //       "data": 0,
  //       "message": aiResponse.getListMessage()[0]["text"]["text"][0].toString()
  //     });
  //   });
  // }

  // final messageInsert = TextEditingController();
  // List<Map> messsages = List();

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text(
  //         "iCare Bot",
  //       ),
  //       backgroundColor: Colors.deepOrange,
  //     ),
  //     body: Container(
  //       child: Column(
  //         children: <Widget>[
  //           Flexible(
  //               child: ListView.builder(
  //                   reverse: true,
  //                   itemCount: messsages.length,
  //                   itemBuilder: (context, index) => chat(
  //                       messsages[index]["message"].toString(),
  //                       messsages[index]["data"]))),
  //           Divider(
  //             height: 5.0,
  //             color: Colors.deepOrange,
  //           ),
  //           Container(
  //             padding: EdgeInsets.only(left: 15.0, right: 15.0),
  //             margin: const EdgeInsets.symmetric(horizontal: 8.0),
  //             child: Row(
  //               children: <Widget>[
  //                 Flexible(
  //                     child: TextField(
  //                   controller: messageInsert,
  //                   decoration: InputDecoration.collapsed(
  //                       hintText: "Send your message",
  //                       hintStyle: TextStyle(
  //                           fontSize: 18.0)),
  //                 )),
  //                 Container(
  //                   margin: EdgeInsets.symmetric(horizontal: 4.0),
  //                   child: IconButton(
                      
  //                       icon: Icon(
                          
  //                         Icons.send,
  //                         size: 30.0,
  //                         color: Colors.deepOrange,
  //                       ),
  //                       onPressed: () {
  //                         if (messageInsert.text.isEmpty) {
  //                           print("empty message");
  //                         } else {
  //                           setState(() {
  //                             messsages.insert(0,
  //                                 {"data": 1, "message": messageInsert.text});
  //                           });
  //                           response(messageInsert.text);
  //                           messageInsert.clear();
  //                         }
  //                       }),
  //                 )
  //               ],
  //             ),
  //           ),
  //           SizedBox(
  //             height: 15.0,
  //           )
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // //for better one i have use the bubble package check out the pubspec.yaml

  // Widget chat(String message, int data) {
  //   return Padding(
  //     padding: EdgeInsets.all(10.0),
  //     child: Bubble(
  //         radius: Radius.circular(15.0),
  //         color: data == 0 ? Colors.deepOrange : Colors.orangeAccent,
  //         elevation: 0.0,
  //         alignment: data == 0 ? Alignment.topLeft : Alignment.topRight,
  //         nip: data == 0 ? BubbleNip.leftBottom : BubbleNip.rightTop,
  //         child: Padding(
  //           padding: EdgeInsets.all(2.0),
  //           child: Row(
  //             mainAxisSize: MainAxisSize.min,
  //             children: <Widget>[
  //               CircleAvatar(
  //                 backgroundImage: AssetImage(
  //                     data == 0 ? "assets/images/bot.png" : "assets/images/user.png"),
  //               ),
  //               SizedBox(
  //                 width: 10.0,
  //               ),
  //               Flexible(
  //                   child: Text(
  //                 message,
  //                 style: TextStyle(
  //                     color: Colors.white, fontWeight: FontWeight.bold),
  //               ))
  //             ],
  //           ),
  //         )),
  //   );
  // }
}