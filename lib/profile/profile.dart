import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProfileScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  ProfileScreen({super.key});

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
                  onPressed: () {
                    showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.only(
                              bottom: MediaQuery.of(context).viewInsets.bottom),
                          child: Container(
                            height: 300,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.surface,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(16),
                                  topLeft: Radius.circular(16)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: EdgeInsets.fromLTRB(0, 16, 24, 16),
                                    child: Text('ورود / ثبت نام به علی بابا')),
                                Divider(
                                  thickness: 1,
                                  color: Theme.of(context).dividerColor,
                                  height: 0,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 16, 24, 0),
                                  child: Text(
                                    'لطفا برای ادامه شماره همراه خود را وارد کنید.',
                                    style: Theme.of(context).textTheme.caption,
                                  ),
                                ),
                                SizedBox(
                                  height: 36,
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(24, 8, 24, 8),
                                  height: 46,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border(
                                          bottom: BorderSide(
                                              width: 1,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .tertiary))),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      SizedBox(
                                        height: 20,
                                        width: 100,
                                        child: TextField(
                                          cursorColor: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                          autofocus: true,
                                          inputFormatters: [
                                            LengthLimitingTextInputFormatter(10)
                                          ],
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                  fontSize: 16,
                                                  letterSpacing: 1),
                                          controller: _controller,
                                          onChanged: (value) {
                                            _controller.value =
                                                _controller.value.copyWith(
                                              text: value.toPersianDigit(),
                                              selection:
                                                  TextSelection.collapsed(
                                                      offset: value.length),
                                            );
                                          },
                                          textDirection: TextDirection.ltr,
                                          keyboardType: TextInputType.phone,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 8),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: DottedLine(
                                          dashColor: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          dashLength: 4,
                                          direction: Axis.vertical,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Text(
                                        "98+".toPersianDigit(),
                                        style: TextStyle(
                                            letterSpacing: 1,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary),
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Image.asset(
                                        "assets/images/Flag_of_Iran.png",
                                        width: 30,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 36),
                                Container(
                                  margin: EdgeInsets.only(right: 24, left: 24),
                                  width: MediaQuery.of(context).size.width,
                                  height: 50,
                                  child: ElevatedButton(
                                      style: ButtonStyle(
                                        foregroundColor:
                                            MaterialStateProperty.all(
                                                Colors.white),
                                        shape: MaterialStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8))),
                                        backgroundColor:
                                            MaterialStateProperty.all(
                                                Colors.black),
                                      ),
                                      onPressed: () {},
                                      child: Text('تایید و دریافت کد')),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
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
