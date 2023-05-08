import 'package:flutter/material.dart';
import 'package:blur_glass/blur_glass.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blur Glass',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  IconButton _IconButton(String iconPath, String linkPath) {
    return IconButton(
      icon: ImageIcon(AssetImage(iconPath)),
      color: Colors.white,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onPressed: () {
        //launchUrl(Uri.parse(linkPath));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E2E48),
      body: Container(
          margin: const EdgeInsets.all(10.0), //.only(top: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/background.jpg'),
            ),
          ),
          child: Flex(
            direction: Axis.vertical,
            children: [
              Expanded(
                flex: 9,
                child: Center(
                  child: BlurGlass(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '   WELCOME\nTO  MY  BLOG!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.w900,
                              shadows: [
                                BoxShadow(
                                    blurRadius: 5,
                                    color: Colors.white.withOpacity(0.54)),
                              ]),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          ' ShadowPlusing ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    BlurGlass(
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            _IconButton('assets/github.png',
                                'https://github.com/shAdow-XJY'),
                            _IconButton('assets/gitee.png',
                                'https://gitee.com/shAdowPlusing'),
                            _IconButton('assets/bilibili.png',
                                'https://space.bilibili.com/437699902'),
                          ],
                        )
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
