import 'package:flutter/material.dart';
import 'package:workshop2/constants.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: _buildAppBar(),
        body: _buildTabBarView(),
        //floatingActionButton: _buildFloatingActionButton(),
        //drawer: _buildDrawer(),
        //endDrawer: _buildEndDrawer(),
      ),
    );
  }
}

AppBar _buildAppBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    // leading: IconButton(
    //   icon: Icon(Icons.menu),
    //   onPressed: _doNothing,
    // ),
    title: Text('Essential Medicines'),
    bottom: TabBar(tabs: [
      Tab(text: 'Children', icon: Icon(Icons.child_care)),
      Tab(text: 'Adults', icon: Icon(Icons.person)),
      Tab(text: 'Cart', icon: Icon(Icons.shopping_cart)),
    ]),
  );
}

TabBarView _buildTabBarView() {
  final chats = List<String>.generate(10, (i) => 'Chat message #${i + 1}');

 return TabBarView(children: [
    Container(color: Colors.white, child: Center(child: Text('Child medicine list'))),
    _ChatsTabView(chats),
    Container(color: Colors.white, child: Center(child: Text('Item added into cart'))),
  ]);
}

class _ChatsTabView extends StatelessWidget {
  final List items;

  _ChatsTabView(this.items);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.chat),
        title: Text(items[index]),
        subtitle: Text('Subtitle ${index + 1}'),
        trailing: Icon(Icons.more_horiz),
        onLongPress: () => Scaffold.of(context).showSnackBar(SnackBar(
          duration: Duration(seconds: 5),
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.5),
          content: Text('Item ${items[index]} has been long pressed'),
        )),
      ),
    );
  }
}

//FloatingActionButton _buildFloatingActionButton() {
//  return FloatingActionButton(
//    onPressed: _doNothing,
//    child: Icon(Icons.add),
//  );
//}