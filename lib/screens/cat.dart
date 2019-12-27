import 'package:flutter/material.dart';
import '../main.dart';
import 'food.dart';
int catcnt=0, flag=1;
double num = 0.6;

void main() 
{
  if(flag == 0){ //切換畫面
    runApp(Cat1());
  }else //進入遊戲
  {
    runApp(Cat2());
  }
}

//切換頁面
class Cat1 extends StatelessWidget {
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
  void _incrementCounter() {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange[200],
        leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new first()),
              );
            },
          ),
      ),
      backgroundColor: Colors.orange[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              ' 還沒完成所有任務  \n貓貓不想出現 (´･_･`)\n',
               style: TextStyle
                  (
                  fontSize: 22, color: Colors.grey[700]),
            ),
            RaisedButton(
              color: Colors.orangeAccent[400],
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => MyApp()));},
              child:Text(
                '天氣資訊',
                style: TextStyle
                  (
                  fontSize: 15, color: Colors.white),),
              ),
            RaisedButton(
              color: Colors.deepOrange[300],
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text(
                '健康規劃',
                style: TextStyle
                  (
                  fontSize: 15, color: Colors.white),),
              ),
            RaisedButton(
              color: Colors.deepOrange[400],
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text(
                '財務規劃',
                style: TextStyle
                  (
                  fontSize: 15, color: Colors.white),),
              ),
            RaisedButton(
              color: Colors.red[400],
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => first()));},
              child:Text(
                '用餐選擇',
                style: TextStyle
                  (
                  fontSize: 15, color: Colors.white),),
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
  

  void _incrementCounter() {
    setState(() {
     
     
    });
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.deepOrange[200],
        leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new first()),
              );
            },
          ),
      ),
      backgroundColor: Colors.orange[50],
      body: Center(
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '恭喜完成任務清單✧*｡٩(ˊᗜˋ*)و✧*｡\n',
              style: TextStyle
                  (
                  fontSize: 20, color: Colors.grey[700]),
            ),
      
            RaisedButton(
              color: Colors.deepOrange[400],
              onPressed: () {
                Navigator.push(context,
                //切換頁面
                MaterialPageRoute(builder: (context) => CatRoom()));},
              child:Text(
                '進入遊戲',
                style: TextStyle
                  (
                  fontSize: 15, color: Colors.white),),
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
        appBar: AppBar(
          title: Text("睡眠"),
          backgroundColor: Colors.deepOrange[200],
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          
        ),
        backgroundColor: Colors.orange[50],
        body:Column(
          children: <Widget>[
          
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
            
            Container(
              height: 10,
            ),
            Container(
              height: 50,
              child: 
              
              RaisedButton(
                color: Colors.deepOrange[300],
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
 