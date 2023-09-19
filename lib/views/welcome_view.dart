import 'package:flutter/material.dart';
import 'package:news_app/utils/config.dart';

// ignore: must_be_immutable
class WelcomeView extends StatelessWidget {
   WelcomeView({super.key});

   List <Color> colorGradient =const
   [
     Config.colorNews,
     Color(0xffC168FD),
     Color(0xffB288CE),
     Color(0xffC8A9DC),
     Color(0xffEAD7F7),
     Color(0xffC168FD),
     Color(0xffB288CE),
     Color(0xffC8A9DC),
     Color(0xffEAD7F7),
     Color(0xffC168FD),
     Color(0xffB288CE),
     Color(0xffC8A9DC),
     Color(0xffEAD7F7),
     Color(0xffC168FD),
     Color(0xffB288CE),
     Color(0xffC8A9DC),
     Color(0xffEAD7F7),
     Config.colorNews,
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: colorGradient,
          )
        ),
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/news.png'),
                radius: 150,
            ),
            const Center(
              child: Text(
                'News Around The World',
                style: TextStyle(
                  fontFamily: Config.primaryFont,
                  fontWeight: Config.primaryWeight,
                  fontSize: 35,
                  color: Config.colorWelcome,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: (){
                Navigator.pushNamed(context, 'NewsView');
              },
              icon: const Icon(
                Icons.play_for_work_outlined,
                size: 35,
                color: Config.colorWelcome,
              ),
            )
          ],
        ),
      ),
    );
  }
}
