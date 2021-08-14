import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'panel_widget.dart';
import 'bottom_navigation_bar_widget.dart';
import 'users.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  int index=0;
  @override

  Widget build(BuildContext context) {
    final user=users[index];
    return Scaffold(
      extendBodyBehindAppBar: true,

      appBar: AppBar(


        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.person_outline),
          onPressed: (){},
        ),

        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: (){},
          )
        ],
      ),

      body: SlidingUpPanel (
        color: Colors.transparent,
        body: PageView(
          children:users.map((user)=>Image.asset(user.urlImage,fit:BoxFit.cover)).toList(),
          onPageChanged: (index)=>setState(() {
            this.index=index;
          }),


        ),

        panelBuilder: (ScrollController scrollController)=>PanelWidget(

          user:user,
          onClickedPanel:(){},
          onClickedFollowing:()=>setState((){
            user.isFollowing=!user.isFollowing;
          }),
        ),
      ),

      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
