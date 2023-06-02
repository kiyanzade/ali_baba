import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/alibaba-logo-text.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.inbox_outlined,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                  ),
                ],
              ),
            )
          ]),
      backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100,
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background),
              ),
              Container(
                clipBehavior: Clip.antiAlias,
                margin: const EdgeInsets.only(left: 16, right: 16, top: 8),
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                      color: Theme.of(context).colorScheme.background,
                      width: 2),
                  color: Theme.of(context).colorScheme.surface,
                ),
                child: Column(children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Theme.of(context).dividerColor,
                                  width: 1))),
                      child: _tableElement(
                        onTap: () {},
                        name: "پرواز",
                        icon: Icons.flight,
                      ),
                    ),
                    _tableElement(
                      onTap: () {},
                      name: "قطار",
                      icon: Icons.train_outlined,
                    )
                  ]),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    height: 0,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              left: BorderSide(
                                  color: Theme.of(context).dividerColor,
                                  width: 1))),
                      child: _tableElement(
                        onTap: () {},
                        name: "اتوبوس",
                        icon: CupertinoIcons.bus,
                      ),
                    ),
                    _tableElement(
                      onTap: () {},
                      name: "هتل",
                      icon: CupertinoIcons.house_alt,
                    )
                  ]),
                  Divider(
                    color: Theme.of(context).dividerColor,
                    height: 0,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                              color: Theme.of(context).dividerColor, width: 1),
                        ),
                      ),
                      child: _tableElement(
                          onTap: () {}, name: "تور", icon: Icons.tour_outlined),
                    ),
                    _tableElement(
                      onTap: () {},
                      name: "ویلا و اقامتگاه",
                      icon: Icons.villa_outlined,
                    )
                  ]),
                ]),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(right: 16, left: 16),
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Theme.of(context).colorScheme.surface,
              boxShadow: [
                BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 3)
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 12,left:24),
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                Image.asset(
                  'assets/images/icon-bime_home.jpg',
                  color: Colors.greenAccent,
                  width: 36,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'بیمه مسافرتی',
                      ),
                      SizedBox(height: 4),
                      Text(
                        "بیمه سفرهای خارجی از این پس در علی‌بابا",
                        style: Theme.of(context).textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.grey.shade700,
                  weight: 5,
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class _tableElement extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onTap;
  const _tableElement({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: Size(197.4, 56),
      child: ClipRRect(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Row(
                children: [
                  Icon(icon),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    name,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
