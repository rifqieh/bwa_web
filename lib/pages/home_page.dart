import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    buildAppBar(int index, String title) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 4),
            Container(
              width: 80,
              height: 2,
              color: selectedIndex == index
                  ? Color(0xffFE998D)
                  : Colors.transparent,
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'background.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fill,
          ),
          ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.black,
                padding: EdgeInsets.symmetric(
                  horizontal: 100,
                  vertical: 35,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'logo.png',
                      width: 72,
                    ),
                    Row(
                      children: [
                        buildAppBar(0, 'Guides'),
                        SizedBox(
                          width: 50,
                        ),
                        buildAppBar(1, 'Pricing'),
                        SizedBox(
                          width: 50,
                        ),
                        buildAppBar(2, 'Team'),
                        SizedBox(
                          width: 50,
                        ),
                        buildAppBar(3, 'Stories'),
                      ],
                    ),
                    Image.asset(
                      'account_button.png',
                      width: 163,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Image.asset(
                'illustration.png',
                height: 400,
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'icon_scroll.png',
                    width: 16,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Text(
                    'Scroll to Learn More',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100),
            ],
          ),
        ],
      ),
    );
  }
}
