import 'package:ali_baba/auth/auth.dart';
import 'package:ali_baba/common/logInReq.dart';
import 'package:ali_baba/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class MyTravelScreen extends StatelessWidget {
  const MyTravelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AuthInfo?>(
      builder: (context, authInfo, child) {
        final bool isLogin =
            authInfo != null && authInfo.phoneNumber.isNotEmpty;
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.tertiary,
          appBar: AppBar(
            scrolledUnderElevation: 0.25,
            surfaceTintColor: Colors.white,
            toolbarHeight: isLogin ? 88 : 72,
            title: isLogin
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'سفرهای من',
                        style: Theme.of(context).textTheme.bodyMedium!.apply(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 68,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "پرواز داخلی",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            width: 68,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "پرواز خارجی",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            width: 68,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "قطار",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            width: 68,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "اتوبوس",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Container(
                            width: 68,
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(left: 4),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.tertiary,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Text(
                              "هتل",
                              style: TextStyle(fontSize: 12),
                            ),
                          )
                        ],
                      )
                    ],
                  )
                : Column(
                    children: [
                      Text(
                        'سفرهای من',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                      const SizedBox(
                        height: 8,
                      )
                    ],
                  ),
            centerTitle: isLogin ? false : true,
          ),
          body: isLogin
              ? ListView.builder(
                  padding: const EdgeInsets.fromLTRB(8, 14, 8, 16),
                  itemCount: AppData.myTravelItems.length + 1,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12, right: 4),
                        child: Text(
                          'آخرین رزروهای انجام شده',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      );
                    } else {
                      final MyTravel item = AppData.myTravelItems[index - 1];
                      return TravelItem(item: item);
                    }
                  },
                )
              : const LoginRequestScreen(
                  iconUrl: 'assets/images/travels_login.png',
                  message:
                      'برای دسترسی به سفرهای من باید ثبت نام کنید و یا وارد حساب کاربری خود شوید'),
        );
      },
      valueListenable: Auth.authChangeNotifier,
    );
  }
}

class TravelItem extends StatelessWidget {
  const TravelItem({
    super.key,
    required this.item,
  });

  final MyTravel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      padding: const EdgeInsets.fromLTRB(16, 14, 32, 16),
      margin: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Theme.of(context).colorScheme.surface),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Image.asset(
                  item.iconUrl,
                  width: 50,
                ),
              ),
              Text(
                item.vehicle,
                style: const TextStyle(
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          const SizedBox(
            width: 32,
          ),
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      color: Theme.of(context)
                          .colorScheme
                          .secondary),
                ),
                const SizedBox(height: 4),
                Text(
                  item.description,
                  style: Theme.of(context).textTheme.caption,
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment:
                      CrossAxisAlignment.center,
                  children: [
                    Text(
                      item.date.toPersianDigit(),
                      style:
                          Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(width: 24),
                    Icon(
                      Icons.person,
                      color: Colors.black.withOpacity(0.4),
                      size: 18,
                    ),
                    const SizedBox(width: 4),
                    Text(
                      item.count.toString().toPersianDigit(),
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(
                            fontSizeFactor: 0.8,
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondary),
                    ),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(
                        0, 15, 0, 14),
                    width: 286,
                    height: 1,
                    color: Theme.of(context).dividerColor),
                Text(
                  'شماره سفارش  ${item.id}'.toPersianDigit(),
                  style: TextStyle(
                      fontSize: 13,
                      color: Theme.of(context)
                          .colorScheme
                          .secondary,
                      fontWeight: FontWeight.w300),
                ),
              ])
        ],
      ),
    );
  }
}
