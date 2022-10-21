import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());
// void main() => runApp(const ContainerApp2());
// void main() => runApp(const ContainerApp3());
// void main() => runApp(const TextApp());
// void main() => runApp(const WidgetApp());
// void main() => runApp(const ListTitleApp());
void main() => runApp(const ListViewApp());
// void main() => runApp(const ContainerApp());

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Person> persons = <Person>[
      Person("고미정", "010-1234-1234"),
      Person("이테디", "010-1234-1234"),
      Person("유아인", "010-1234-1234"),
      Person("송중기", "010-1234-1234"),
      Person("현빈", "010-1234-1234"),
      Person("손예진", "010-1234-1234"),
      Person("공효진", "010-1234-1234"),
      Person("이효리", "010-1234-1234"),
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              shadowColor: Colors.transparent,
              leading: Icon(Icons.account_box_rounded),
              centerTitle: false,
              title: Text("내 연락처")
          ),
          body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: persons.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text("${persons[index].name}"),
                subtitle: Text("${persons[index].number}"),
                leading: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.person),
                ),
                trailing: Icon(Icons.call),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          )),
    );
  }
}

class Person {
  String name;
  String number;

  Person(this.name, this.number);
}

class ListTitleApp extends StatelessWidget {
  const ListTitleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("내 연락처 앱"),
        ),
        body: ListTile(
          title: Text("고미정"),
          subtitle: Text("010-1234-1234"),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),
          trailing: Icon(Icons.call),
        ),
      ),
    );
  }
}

class WidgetApp extends StatelessWidget {
  const WidgetApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("내 정보앱"),
          ),
          body: Row(
            children: [
              Icon(Icons.person),
              Icon(Icons.call),
              Icon(Icons.settings)
            ],
          )),
    );
  }
}

class TextApp extends StatelessWidget {
  const TextApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("내 정보 앱"),
        ),
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                color: Colors.grey[200],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("이름: mygomii"),
                    Text("나이: 30"),
                    Text("성별: 여자"),
                    Container(height: 40),
                    Text("1. 떡볶이 빨리먹기 대회 예선탈락"),
                    Text("2. 나무젓가락 빨리 떼어내기 대회입선"),
                    Text("3. 마스크 오래쓰기 대회 입선"),
                  ],
                ),
              ),
            )

            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     Text("이름: mygomii"),
            //     Text("나이: 30"),
            //     Text("성별: 여자"),
            //     Container(height: 40),
            //     Text("이력"),
            //     Padding(
            //       padding: const EdgeInsets.all(4.0),
            //       child: Container(
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             Text("1. 떡볶이 빨리먹기 대회 예선탈락"),
            //             Text("2. 나무젓가락 빨리 떼어내기 대회입선"),
            //             Text("3. 마스크 오래쓰기 대회 입선"),
            //           ],
            //         ),
            //       ),
            //     )
            //   ],
            // ),
            ),
      ),
    );
  }
}

class ContainerApp3 extends StatelessWidget {
  const ContainerApp3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container App3"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.deepOrange,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.green,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.blue,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerApp2 extends StatelessWidget {
  const ContainerApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Container App2"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 50,
                height: 50,
                color: Colors.red,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.deepOrange,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.yellow,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.green,
              ),
              Container(
                width: 50,
                height: 50,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// container 위젯 실습
class ContainerApp extends StatelessWidget {
  const ContainerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("내 연락처 앱")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 30,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.orange,
            ),
            Container(
              width: 400,
              height: 200,
              color: Colors.green,
            ),
            Container(
              width: 4,
              height: 4,
              color: Colors.blue,
            ),
            Container(
              width: 350,
              height: 200,
              color: Colors.grey,
              child: Center(
                child: Text("반갑습니다"),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              centerTitle: false,
              title: Text("내 정보앱"),
            ),
            body: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Text("이름: Teddy"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("나이: 99"),
                    ),
                    Text("성별: 여자"),
                    Container(
                      height: 40,
                    ),
                    Text("이력"),
                    Text("떡볶이 빨리먹기 대회 예선탈락"),
                    Text("나무젓가락 빨리 떼어내기 대회 입선"),
                    Text("마스크 오래쓰기 대회 입선"),
                    Container(
                      height: 30,
                    ),
                    Container(
                      width: 200,
                      height: 100,
                      color: Colors.orange,
                    ),
                    Container(
                      width: 400,
                      height: 200,
                      color: Colors.green,
                    ),
                    Container(
                      width: 4,
                      height: 4,
                      color: Colors.blue,
                    ),
                    Container(
                      width: 350,
                      height: 200,
                      color: Colors.grey,
                      child: Center(
                        child: Text("반갑습니다"),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
