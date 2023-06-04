import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        title: Column(
          children: [
            Text(
              'حساب کاربری',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(
              height: 8,
            )
          ],
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(16, 18, 16, 8),
            margin: EdgeInsets.fromLTRB(16, 18, 16, 0),
            height: 150,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      CupertinoIcons.person_crop_circle,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.8),
                      size: 50,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ورود / ثبت نام'),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'با ثبت نام در اپلیکیشن از امکانات ویژه کاربری\n بهره مند شوید',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "ورود یا ثبت نام",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(56, 35)),
                      elevation: MaterialStateProperty.all(0),
                      foregroundColor: MaterialStateProperty.all(Colors.black),
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5))),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: 68,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(Icons.cell_tower_sharp),
                SizedBox(
                  width: 24,
                ),
                Text("اطلاعات فرودگاهی"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
            height: 68,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Row(
              children: [
                Icon(CupertinoIcons.question_circle),
                SizedBox(
                  width: 24,
                ),
                Text("سوالات متداول"),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(16, 24, 16, 24),
            margin: EdgeInsets.fromLTRB(16, 16, 16, 46),
            height: 130,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(CupertinoIcons.phone),
                      SizedBox(
                        width: 24,
                      ),
                      Text("تماس با ما"),
                    ],
                  ),
                  // SizedBox(height: 18,),
                  Row(
                    children: [
                      Icon(Icons.menu_book_rounded),
                      SizedBox(
                        width: 24,
                      ),
                      Text("قوانین و مقررات"),
                    ],
                  ),
                ]),
          ),
          Text(
            "Version 8.9.7",
            style: TextStyle(
                fontWeight: FontWeight.w300,
                color:
                    Theme.of(context).colorScheme.secondary.withOpacity(0.3)),
          )
        ],
      ),
    );
  }
}
