import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('게시판 연습'),
          backgroundColor: Colors.grey,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          ],
        ),
        body: ListView(
          children: [
              BoardItem(),
              BoardItem(),
              BoardItem(),
              BoardItem(),
              BoardItem(),
              BoardItem(),
              BoardItem(),
            ],
          ),
        ),
    );
  }
}

class BoardItem extends StatelessWidget {
  const BoardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 380,
      height: 150,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(10),
                width: 150,
                height: 130,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/camera.jpg', fit: BoxFit.fill),
                ),
              ),
            ),
            Flexible(
              flex: 6,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: Column(
                  children: [
                    SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: Text('카메라 팝니다', style: TextStyle(fontSize: 20),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 20,
                    child: Text('부산 해운대구 끌올 10분 전', style: TextStyle(fontSize: 13, color: Colors.grey),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: Text('100,000원', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 30,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.favorite_border, size: 30, color: Colors.grey),
                        Text('4', style: TextStyle(color: Colors.grey),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
