import 'package:ali_baba/auth/auth.dart';
import 'package:ali_baba/flight_info/flight_info.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 72,
        title: ValueListenableBuilder(
          builder: (context, authInfo, child) {
            final bool isLogin =
                authInfo != null && authInfo.phoneNumber.isNotEmpty;
            return !isLogin
                ? Column(
                    children: [
                      Text(
                        'حساب کاربری',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  )
                : Row(
                    children: [
                      Icon(CupertinoIcons.profile_circled,
                          size: 36,
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(0.5)),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'محمدصادق کیان‌زاده',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .apply(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text('موجودی: 0 ریال'.toPersianDigit(),
                                  style: Theme.of(context).textTheme.caption)
                            ]),
                      ),
                      Column(children: [
                        Row(
                          children: [
                            Text(
                              '65 امتیاز'.toPersianDigit(),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .apply(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .secondary),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Icon(
                              CupertinoIcons.smiley,
                              color: Theme.of(context)
                                  .colorScheme
                                  .primary
                                  .withOpacity(0.5),
                            )
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'جزئیات امتیاز',
                          style: Theme.of(context)
                              .textTheme
                              .caption!
                              .apply(color: Colors.blue.shade800),
                        )
                      ])
                    ],
                  );
          },
          valueListenable: Auth.authChangeNotifier,
        ),
        centerTitle: true,
      ),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: ValueListenableBuilder<AuthInfo?>(
        builder: (context, authInfo, child) {
          final bool isLogin =
              authInfo != null && authInfo.phoneNumber.isNotEmpty;
          return Column(
            children: [
              !isLogin
                  ? Container(
                      padding: const EdgeInsets.fromLTRB(16, 18, 16, 8),
                      margin: const EdgeInsets.fromLTRB(16, 18, 16, 0),
                      // height: 150,
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
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('ورود / ثبت نام'),
                                  const SizedBox(
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
                          const SizedBox(
                            height: 14,
                          ),
                          MediaQuery(
                              data: MediaQuery.of(context)
                                  .copyWith(textScaleFactor: 1.0),
                              child: ElevatedButtomLogin()),
                        ],
                      ),
                    )
                  : Container(),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    isLogin
                        ? Container(
                            height: 56,
                            child: const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Row(
                                children: [
                                  Icon(Icons.people_alt),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text("لیست مسافران"),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                    isLogin
                        ? Container(
                            height: 56,
                            child: const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Row(
                                children: [
                                  Icon(Icons.list_alt_rounded),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text("سوابق تراکنش ها"),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                    isLogin
                        ? Container(
                            height: 56,
                            child: const Padding(
                              padding: EdgeInsets.only(right: 16),
                              child: Row(
                                children: [
                                  Icon(Icons.account_balance_wallet_outlined),
                                  SizedBox(
                                    width: 24,
                                  ),
                                  Text("شارژ اعتبار"),
                                ],
                              ),
                            ),
                          )
                        : Container(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MediaQuery(
                                  data: MediaQuery.of(context)
                                      .copyWith(textScaleFactor: 1.0),
                                  child: FlightInfo()),
                            ));
                      },
                      child: Container(
                        height: 56,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 16),
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
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Container(
                  height: 56,
                  child: const Padding(
                    padding: EdgeInsets.only(right: 16),
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
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(16, 16, 16, 46),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      isLogin
                          ? Container(
                              height: 56,
                              child: const Padding(
                                padding: EdgeInsets.only(right: 16),
                                child: Row(
                                  children: [
                                    Icon(Icons.support_agent_rounded),
                                    SizedBox(
                                      width: 24,
                                    ),
                                    Text("درخواست پشتیبانی"),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                      Container(
                        height: 56,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Icon(CupertinoIcons.phone),
                              SizedBox(
                                width: 24,
                              ),
                              Text("تماس با ما"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 56,
                        child: const Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            children: [
                              Icon(Icons.menu_book_rounded),
                              SizedBox(
                                width: 24,
                              ),
                              Text("قوانین و مقررات"),
                            ],
                          ),
                        ),
                      ),
                      isLogin
                          ? InkWell(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Directionality(
                                      textDirection: TextDirection.rtl,
                                      child: AlertDialog(
                                        backgroundColor: Colors.white,
                                        surfaceTintColor: Colors.white,
                                        contentPadding:
                                            const EdgeInsets.symmetric(
                                                horizontal: 35.0, vertical: 10),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8)),
                                        title: const Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('خروج از حساب کاربری'),
                                        ),
                                        content: const Text(
                                            'آیا میخواهید از حساب کاربری خود خارج شوید'),
                                        actions: [
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                authRepo.signOut();
                                              },
                                              child: Text(
                                                'بله',
                                                style: TextStyle(
                                                    color:
                                                        Colors.amber.shade800),
                                              )),
                                          TextButton(
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                              child: Text(
                                                'خیر',
                                                style: TextStyle(
                                                    color:
                                                        Colors.amber.shade800),
                                              ))
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 56,
                                child: const Padding(
                                  padding: EdgeInsets.only(right: 16),
                                  child: Row(
                                    children: [
                                      Icon(Icons.logout_outlined),
                                      SizedBox(
                                        width: 24,
                                      ),
                                      Text("خروج از حساب"),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ]),
              ),
              Text(
                "Version 8.9.7",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Theme.of(context)
                        .colorScheme
                        .secondary
                        .withOpacity(0.3)),
              )
            ],
          );
        },
        valueListenable: Auth.authChangeNotifier,
      ),
    );
  }
}

class ElevatedButtomLogin extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  ElevatedButtomLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(16),
                      topLeft: Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.fromLTRB(0, 16, 24, 16),
                        child: Text(
                          'ورود / ثبت نام به علی بابا',
                          textScaleFactor: 1.0,
                        )),
                    Divider(
                      thickness: 1,
                      color: Theme.of(context).dividerColor,
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 16, 24, 0),
                      child: Text(
                        'لطفا برای ادامه شماره همراه خود را وارد کنید.',
                        textScaleFactor: 1.0,
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(24, 8, 24, 8),
                      height: 46,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom: BorderSide(
                                  width: 1,
                                  color:
                                      Theme.of(context).colorScheme.tertiary))),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 20,
                            width: 100,
                            child: MediaQuery(
                              data: MediaQuery.of(context)
                                  .copyWith(textScaleFactor: 1.0),
                              child: TextField(
                                cursorColor:
                                    Theme.of(context).colorScheme.tertiary,
                                autofocus: true,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10)
                                ],
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                      fontSize: 16,
                                      letterSpacing: 1,
                                    ),
                                controller: _controller,
                                onChanged: (value) {
                                  _controller.value =
                                      _controller.value.copyWith(
                                    text: value.toPersianDigit(),
                                    selection: TextSelection.collapsed(
                                        offset: value.length),
                                  );
                                },
                                textDirection: TextDirection.ltr,
                                keyboardType: TextInputType.phone,
                                decoration: const InputDecoration(
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 10),
                            child: DottedLine(
                              dashColor:
                                  Theme.of(context).colorScheme.secondary,
                              dashLength: 4,
                              direction: Axis.vertical,
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Text(
                            "98+".toPersianDigit(),
                            textScaleFactor: 1.0,
                            style: TextStyle(
                                letterSpacing: 1,
                                color: Theme.of(context).colorScheme.secondary),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            "assets/images/Flag_of_Iran.png",
                            width: 30,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 36),
                    Container(
                      margin: const EdgeInsets.only(right: 24, left: 24),
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                          style: ButtonStyle(
                            foregroundColor:
                                MaterialStateProperty.all(Colors.white),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black),
                          ),
                          onPressed: () {
                            authRepo
                                .persistAuthInfo(AuthInfo(_controller.text));
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'تایید و دریافت کد',
                            textScaleFactor: 1.0,
                          )),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      child: const Text(
        "ورود یا ثبت نام",
        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
      ),
      style: ButtonStyle(
          minimumSize: MaterialStateProperty.all(const Size(56, 35)),
          elevation: MaterialStateProperty.all(0),
          foregroundColor: MaterialStateProperty.all(Colors.black),
          backgroundColor: MaterialStateProperty.all(
              Theme.of(context).colorScheme.primary.withOpacity(0.5))),
    );
  }
}
