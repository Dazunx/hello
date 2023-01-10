import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//stful 치시면 자동생성 됩니다!
class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white54,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // red
                Container(
                  color: Colors.red,
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.all(10),
                ),

                // blue
                Container(
                  color: Colors.blue,
                  width: 150,
                  height: 150,
                  margin: const EdgeInsets.all(10),
                ),

                TextButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext bctx) {
                        return AlertDialog(
                          content: Text("게시글 등록을 원하시나요?"),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text("네"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('아니요'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text('Text Button'),
                ),

                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () {
                    final snackBar = SnackBar(
                      content: const Text('Yay! A SnackBar!'),
                      action: SnackBarAction(
                        label: 'Undo',
                        onPressed: () {},
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  },
                  child: Text('Outlined Button'),
                ),

                SizedBox(
                  width: 100,
                  height: 40,
                ),

                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add_alarm, size: 20),
                  label: Text('Elevated Button'),
                ),

                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'asset/image/bear.jpg',
                        width: 200,
                        height: 150,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        ],
      ),

    );
  }
}
