import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Colors.purple,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.purple,
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.menu, color: Colors.white,),
                        Expanded(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.person , color: Colors.white,),
                              Icon(Icons.notifications , color: Colors.white,)
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white, size: 50,),
                        Text(
                          "Hello \nThomas",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                // height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text(
                        "Quick actions",
                        style: TextStyle(
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
