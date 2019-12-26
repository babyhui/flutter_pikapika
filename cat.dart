import 'package:flutter/material.dart';
//import 'main.dart';
int catcnt=0, flag = 1;
double num = 0.6;

void main() 
{

  if(flag == 0){ //切換畫面
    runApp(MyApp1());

  }else //進入遊戲
  {
    runApp(Cat2());
  }




}
//切換頁面
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage1(title: '  互動遊戲'),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  MyHomePage1({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState1 createState() => _MyHomePageState1();
}


class _MyHomePageState1 extends State<MyHomePage1> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }
  
  
 
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
       
        title: Text(widget.title),
      ),
      
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            Text(
              '還沒完成所有任務(´ー`)\n快點去其他功能看看吧\n',
            ),
  
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text('天氣資訊'),
              ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text('健康規劃'),
              ),
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text('財務規劃'),
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

//任務完成
class Cat2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(title: '  互動遊戲'),
    );
  }
}

class MyHomePage2 extends StatefulWidget {
  MyHomePage2({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState2 createState() => _MyHomePageState2();
}


class _MyHomePageState2 extends State<MyHomePage2> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }
  
  
  
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text(widget.title),
      ),
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '恭喜完成任務清單✧*｡٩(ˊᗜˋ*)و✧*｡\n',
            ),
      
            OutlineButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text('進入遊戲'),
              )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}

//新介面 貓貓房間

class CatRoom extends StatefulWidget {
  @override
  _CatRoomState createState() => _CatRoomState();
}

class _CatRoomState extends State<CatRoom> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body:Column(
          children: <Widget>[
       /*     new Stack(children: <Widget>[
              /*  new Image(
                  image: new AssetImage("images/cat_edit.gif"),
                  width: 300.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),*/]*/
            Container(
              width: 500,
              height: 650,
              child:  Image(image: AssetImage('images/cat_edit.gif'), alignment: Alignment.lerp(Alignment.center,Alignment.bottomCenter, 0.6) ,),
              
            decoration: BoxDecoration(
              
              image: DecorationImage(
                  image: AssetImage('images/room.jpg'),
                  fit: BoxFit.fill,
              )
            )
            ),
            
          /*  Container(
              height: 10,
            ),*/
            Container(
              height: 50,
              child: 
              
              OutlineButton(
                onPressed: (){
                  if(catcnt%6 == 1)
                  {
                    showAlert1(context);
                  }
                  else if(catcnt%6 == 2)
                  {
                    showAlert2(context);
                  }
                  else if(catcnt%6 == 3)
                  {
                    showAlert3(context);
                  }
                  else if(catcnt%6 == 4)
                  {
                    showAlert4(context);
                  }
                  else if(catcnt%6 == 5)
                  {
                    showAlert5(context);
                  }
                  else
                  {
                    showAlert6(context);
                  }
                  catcnt++;
                  if(num<=0.9)
                  {
                    num=num+0.1;
                  }
                  else
                  {
                    num=num-0.6;
                  }
                },
                child:Text('跟我說話 !',)),
        )] )
        //  

          ,
        )
          );
    
      }
      
  }
  Future<void> showAlert1(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('我好可愛 (๑•̀ㅂ•́)و✧'),
        actions: <Widget>[
          FlatButton(
            child: Text('真的 !'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> showAlert2(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('我餓了 ∠( ᐛ 」∠)_'),
        actions: <Widget>[
          FlatButton(
            child: Text('我去幫你拿罐罐 !'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> showAlert3(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('帶我出門 ٩(｡・ω・｡)﻿و_'),
        actions: <Widget>[
          FlatButton(
            child: Text('走吧 !'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> showAlert4(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('好無聊ㄛಠ_ಠ'),
        actions: <Widget>[
          FlatButton(
            child: Text('我也是呢'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> showAlert5(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('我昨天夢到我去遊樂園玩 (*´∀`)~♥'),
        actions: <Widget>[
          FlatButton(
            child: Text('誰帶你去的?!'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
Future<void> showAlert6(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('貓貓說'),
        content: const Text('你去旁邊 我想靜靜ヽ(#`Д´)ﾉ'),
        actions: <Widget>[
          FlatButton(
            child: Text('嗚嗚'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
 // class Dialogue extends StatefulWidget {

  
//   _CatRoom  createState() => _CatRoom();




class _CatRoom  extends State< CatRoom >
    with SingleTickerProviderStateMixin {
      
      
      Widget build(BuildContext context) {
          
 
 
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build2(BuildContext context) {
    return Container(
      
    );
  }
}
    } 