import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter/services.dart';

void main() => runApp(first());

class first extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('用餐挑選'),
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: foodall(),
          ),
        ),
      ),
    );
  }
}

class foodall extends StatefulWidget {
  @override
  _foodallState createState() => _foodallState();
}

class _foodallState extends State<foodall> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 300,
            height: 150,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.orange[700],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('images/food.png'),
                    ),
                    Text(
                      ' 隨機食物',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new randomfood()),
                  );
                  //The user picked true.
                },
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                textColor: Colors.white,
                color: Colors.orange[900],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('images/diet.png'),
                    ),
                    Text(
                      ' 均衡飲食',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(builder: (context) => new avefood()),
                  );
                  //The user picked true.
                },
              ),
            ),
          ),
          Container(
            width: 300,
            height: 150,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: FlatButton(
                color: Colors.red[800],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('images/dial.png'),
                    ),
                    Text(
                      ' 轉盤',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new turntable()),
                  );
                  //The user picked false.
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class randomfood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              '隨機食物'),
          
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: food1(),
          ),
        ),
      ),
    );
  }
}

class avefood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              '均衡飲食'),
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new first()),
              );
            },
          ),
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: food2(),
          ),
        ),
      ),
    );
  }
}

class turntable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              '轉盤'),
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new first()),
              );
            },
          ),
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: food3(),
          ),
        ),
      ),
    );
  }
}

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              '轉盤'),
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new turntable()),
              );
            },
          ),
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: food4(),
          ),
        ),
      ),
    );
  }
}

class screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(''
              '轉盤'),
          leading: IconButton(
            icon: Icon(Icons.keyboard_return),
            onPressed: () {
              Navigator.push(
                context,
                new MaterialPageRoute(builder: (context) => new turntable()),
              );
            },
          ),
          backgroundColor: Colors.deepOrange[200],
        ),
        backgroundColor: Colors.orange[50],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: food5(),
          ),
        ),
      ),
    );
  }
}

class food1 extends StatefulWidget {
  @override
  _food1State createState() => _food1State();
}

class _food1State extends State<food1> {
  var random = new Random();
  var num;
  var food = '請按隨機';
  List a = [
    '麥當勞',
    '炒飯',
    '炒麵',
    '火鍋',
    '肯德基',
    '鹽酥雞',
    '義大利麵',
    '披薩',
    '便當',
    '自助餐',
    '越南料理',
    '泰式料理',
    '韓國料理',
    '泡麵',
    '燴飯',
    '牛肉麵',
    '滷肉飯',
    '三明治',
    '飯糰',
    '蛋餅',
    '蔥抓餅',
    '蔥油餅',
    '吐司',
    '漢堡',
    '熱狗堡',
    '蛋糕',
    '蘿蔔糕',
    '壽司',
    '拉麵',
    '雞腿飯',
    '控肉飯',
    '滷味',
    '丼飯',
    '肉圓',
    '餛飩麵',
    '燒肉',
    '水餃',
    '鍋貼',
    '稀飯',
    '鴨肉飯',
    '豬排飯',
    '鐵板燒',
    '章魚燒',
    '雞排',
    '雞肉飯',
    '牛排',
    '韓式炸雞',
    '乾麵',
    '陽春麵',
    '豆花',
    '壓磚吐司',
    '鍋燒意麵',
    '麻醬麵',
    '炸醬麵'
  ];
  void ranfood() {
    setState(() {
      num = random.nextInt(54);
      food = a[num];
    }); // error
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80, top: 190, right: 70, bottom: 0),
          child: Image(
            height: 100,
            width: 100,
            image: AssetImage('images/breakfast.png'),
          ),
        ),
        Container(
          width: 250,
          height: 100,
          margin: EdgeInsets.only(left: 120, top: 10, right: 60, bottom: 50),
          child: Text(
            '食物：$food',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
            ),
          ),
        ),
        Container(
          width: 80,
          height: 60,
          //margin: EdgeInsets.only(bottom: ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.deepOrange[900],
              child: Text(
                '隨機',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
              ),
              onPressed: () {
                ranfood();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class food2 extends StatefulWidget {
  @override
  _food2State createState() => _food2State();
}

class _food2State extends State<food2> {
  var random = new Random();
  var num;
  var mainfood = '請按隨機';
  var vegetable1 = '請按隨機';
  var vegetable2 = '請按隨機';
  var soup = '請按隨機';
  List a = [
    '蜜汁雞腿',
    '雞胸肉',
    '炸排骨',
    '炭烤雞排',
    '魚排',
    '三杯雞',
    '滷排骨',
    '東坡肉',
    '炸雞腿',
    '叉燒',
    '豬排',
    '雞肉',
    '沙茶牛肉',
    '沙茶羊肉',
    '糖醋排骨',
    '滷雞腿',
    '鴨肉',
    '鱈魚',
    '秋刀魚',
    '鯖魚',
    '起司豬排',
    '燒肉',
    '德式香腸',
    '檸檬雞柳',
    '蝦捲',
    '控肉',
    '烤肉',
    '油雞'
  ];
  List b = [
    '炒高麗菜',
    '炒空心菜',
    '炒青江菜',
    '炒地瓜葉',
    '炒花椰菜',
    '炒大陸妹',
    '炒豆芽菜',
    '炒菠菜',
    '炒小白菜',
    '炒芹菜',
    '炒茼蒿',
    '炒芥菜',
    '番茄炒蛋'
  ];
  List c = [
    '菜甫蛋',
    '蛤蜊絲瓜',
    '宮保皮蛋',
    '麻婆豆腐',
    '薑絲大腸',
    '蝦仁煎蛋',
    '滑蛋蝦仁',
    '鹹蛋苦瓜',
    '醬爆茄子',
    '蒸蛋',
    '螞蟻上樹',
    '荷包蛋',
    '麻辣鴨血',
    '蘆筍沙拉'
  ];
  List d = [
    '玉米濃湯',
    '貢丸湯',
    '魚丸湯',
    '蛋花湯',
    '豬血湯',
    '四神湯',
    '南瓜濃湯',
    '蔬菜湯',
    '豆腐湯',
    '味噌湯',
    '番茄湯',
    '海帶湯',
    '蘿蔔湯',
    '餛飩湯',
    '酸辣湯',
    '豬肝湯',
    '魚湯',
    '雞湯',
    '肉羹湯',
    '蛤蜊湯',
    '司目魚湯',
    '鮮魚湯'
  ];
  void ranfood() {
    setState(() {
      num = random.nextInt(28);
      mainfood = a[num];
      num = random.nextInt(13);
      vegetable1 = b[num];
      num = random.nextInt(14);
      vegetable2 = c[num];
      num = random.nextInt(19);
      soup = d[num];
    });
  } // error

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80, top: 140, right: 70, bottom: 0),
          child: Image(
            height: 100,
            width: 100,
            image: AssetImage('images/salad.png'),
          ),
        ),
        Container(
          width: 300,
          height: 50,
          margin: EdgeInsets.only(left: 90, top: 30, right: 90),
          child: Text(
            '主食：$mainfood',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
            ),
          ),
        ),
        Container(
          width: 300,
          height: 50,
          margin: EdgeInsets.only(left: 90, top: 0, right: 90),
          child: Text(
            '配菜：$vegetable1',
            style: TextStyle(
              color: Colors.deepOrange[900],
              fontSize: 30.0,
            ),
          ),
        ),
        Container(
          width: 300,
          height: 50,
          margin: EdgeInsets.only(left: 90, top: 0, right: 90),
          child: Text(
            '配菜：$vegetable2',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
            ),
          ),
        ),
        Container(
          width: 300,
          height: 50,
          margin: EdgeInsets.only(left: 100, top: 0, right: 90, bottom: 60),
          child: Text(
            ' 湯：$soup',
            style: TextStyle(
              color: Colors.deepOrange[900],
              fontSize: 30.0,
            ),
          ),
        ), //
        Container(
          width: 80,
          height: 60,
          //margin: EdgeInsets.only(bottom: ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.deepOrange[900],
              child: Text(
                '隨機',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 23.0,
                ),
              ),
              onPressed: () {
                ranfood();
              },
            ),
          ),
        ),
      ],
    );
  }
}

class food3 extends StatefulWidget {
  @override
  _food3State createState() => _food3State();
}

int num;

class _food3State extends State<food3> {
  final TextEditingController myController = new TextEditingController();
  //int num;
  void btnEvent() {
    setState(() {
      num = int.parse(myController.text);
      if (num <= 0) {
        myController.clear();
      } else {
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new screen4()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80, top: 60, right: 70, bottom: 20),
          child: Image(
            height: 150,
            width: 150,
            image: AssetImage('images/restaurant.png'),
          ),
        ),
        Container(
          width: 250,
          height: 30,
          margin: EdgeInsets.only(left: 0, top: 30, right: 70, bottom: 0),
          child: Text(
            '請輸入人數',
            style: TextStyle(
              color: Colors.red[800],
              fontSize: 25.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, right: 30, top: 20, bottom: 20),
          child: Column(
            children: <Widget>[
              TextField(
                controller: myController,
                decoration: InputDecoration(hintText: '請輸入人數'),
                inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              ),
              FlatButton(
                textColor: Colors.white,
                color: Colors.deepOrange[900],
                child: Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                  child: Text(
                    ('輸入完成'),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
                onPressed: btnEvent,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class food4 extends StatefulWidget {
  @override
  _food4State createState() => _food4State();
}

List food = [];
var changefood;

class _food4State extends State<food4> {
  final TextEditingController myController = new TextEditingController();
  int n = 1;
  var random = new Random();
  var num2;
  void btnEvent() {
    setState(() {
      if (n < num) {
        food.insert(n - 1, myController.text);
        n = n + 1;
      } else {
        num2 = random.nextInt(num);
        changefood = food[num2];
        Navigator.push(
          context,
          new MaterialPageRoute(builder: (context) => new screen5()),
        );
      }
    });

    myController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80, top: 60, right: 70, bottom: 20),
          child: Image(
            height: 150,
            width: 150,
            image: AssetImage('images/chinese.png'),
          ),
        ),
        Container(
          width: 250,
          height: 30,
          margin: EdgeInsets.only(left: 0, top: 30, right: 70),
          child: Text(
            '請輸入第$n個食物',
            style: TextStyle(
              color: Colors.red[800],
              fontSize: 25.0,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 40, top: 30, right: 30 ),
          child: Column(
            children: <Widget>[
              TextField(
                controller: myController,
                decoration: InputDecoration(hintText: '請輸入食物'),
              ),
              FlatButton(
                textColor: Colors.white,
                color: Colors.deepOrange[900],
                child: Container(
                  width: 100,
                  height: 40,
                  margin: EdgeInsets.only(left: 0, right: 0, top: 10),
                  child: Text(
                    ('輸入完成'),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 23.0,
                    ),
                  ),
                ),
                onPressed: btnEvent,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class food5 extends StatefulWidget {
  @override
  _food5State createState() => _food5State();
}

class _food5State extends State<food5> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 80, top: 150, right: 70, bottom: 20),
          child: Image(
            height: 150,
            width: 150,
            image: AssetImage('images/tom-yum-goong.png'),
          ),
        ),
        Container(
          width: 250,
          height: 50,
          margin: EdgeInsets.only(left: 105, top: 50, right: 70, bottom: 0),
          child: Text(
            '轉盤隨機結果：',
            style: TextStyle(
              color: Colors.red,
              fontSize: 30.0,
            ),
          ),
        ),
        Center(
          child: Container(
            width: 250,
            height: 100,
            margin: EdgeInsets.only(left: 165, top: 0, right: 70, bottom: 0),
            child: Text(
              '$changefood',
              style: TextStyle(
                color: Colors.red[900],
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
