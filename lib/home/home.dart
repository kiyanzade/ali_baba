import 'package:ali_baba/chat_inbox/chat_inbox.dart';
import 'package:ali_baba/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController _scrollController = ScrollController();
  late Color? _appBarColor = Colors.yellow.shade800;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_changeAppBarColor);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shadowColor: Colors.black,
          scrolledUnderElevation: 0.25,
          elevation: 0,
          backgroundColor: _appBarColor,
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
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ChatInboxScreen(),
                          ));
                        },
                        icon: Icon(
                          Icons.inbox_outlined,
                          color: Theme.of(context).colorScheme.secondary,
                        )),
                  ),
                ],
              ),
            )
          ]),
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            color: _appBarColor,
                          ),
                        ),
                        Container(
                          clipBehavior: Clip.antiAlias,
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, top: 8),
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2),
                            color: Theme.of(context).colorScheme.surface,
                          ),
                          child: Column(children: [
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Theme.of(context)
                                                    .dividerColor,
                                                width: 1))),
                                    child: _TableElement(
                                      onTap: () {},
                                      name: "پرواز",
                                      icon: Icons.flight,
                                    ),
                                  ),
                                  _TableElement(
                                    onTap: () {},
                                    name: "قطار",
                                    icon: Icons.train_outlined,
                                  )
                                ]),
                            Divider(
                              color: Theme.of(context).dividerColor,
                              height: 0,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                            left: BorderSide(
                                                color: Theme.of(context)
                                                    .dividerColor,
                                                width: 1))),
                                    child: _TableElement(
                                      onTap: () {},
                                      name: "اتوبوس",
                                      icon: CupertinoIcons.bus,
                                    ),
                                  ),
                                  _TableElement(
                                    onTap: () {},
                                    name: "هتل",
                                    icon: CupertinoIcons.house_alt,
                                  )
                                ]),
                            Divider(
                              color: Theme.of(context).dividerColor,
                              height: 0,
                            ),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      border: Border(
                                        left: BorderSide(
                                            color:
                                                Theme.of(context).dividerColor,
                                            width: 1),
                                      ),
                                    ),
                                    child: _TableElement(
                                        onTap: () {},
                                        name: "تور",
                                        icon: Icons.tour_outlined),
                                  ),
                                  _TableElement(
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
                    const _ColumnItemWidget(
                      iconUrl: 'assets/images/icon-bime_home.jpg',
                      title: 'بیمه مسافرتی',
                      caption: "بیمه سفرهای خارجی از این پس در علی‌بابا",
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 18, 8),
                      child: Text(
                        "سفر را بخوانید و بشنوید",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(
                          8,
                        ),
                        // book list view
                        scrollDirection: Axis.horizontal,
                        itemCount: AppData.bookItems.length,
                        itemBuilder: (context, index) {
                          final item = AppData.bookItems[index];
                          return _ListItemBook(
                            item: item,
                          );
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const _ColumnItemWidget(
                      iconUrl: 'assets/images/esterdad.png',
                      title: 'درخواست استرداد',
                      caption: "سریع‌ترین راه برای کنسلی و لغو رزرو",
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const _ColumnItemWidget(
                      iconUrl: 'assets/images/infoIcon.png',
                      title: 'اطلاع از آخرین شرایط سفر و استرداد',
                      caption: "اطلاعیه‌های مربوط به شیوع ویروس کرونا",
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 24, 18, 8),
                      child: Text(
                        "مجله گردشگری علی‌بابا",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(
                      height: 250,
                      child: ListView.builder(
                        padding: const EdgeInsets.all(
                          8,
                        ),
                        // book list view
                        scrollDirection: Axis.horizontal,
                        itemCount: AppData.magazineItems.length,
                        itemBuilder: (context, index) {
                          final item = AppData.magazineItems[index];
                          return _MagItemList(item: item);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                      height: 185,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 5),
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Theme.of(context).colorScheme.surface,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 12, 24, 8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.support_agent_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 32,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'پشتیبانی 24 ساعته'.toPersianDigit(),
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Theme.of(context).dividerColor,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 24, 8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.tablet_mac_rounded,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 32,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Text(
                                    'کامل‌ترین اپ گردشگری',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  ),
                                ]),
                          ),
                          Divider(
                            color: Theme.of(context).dividerColor,
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 8, 24, 8),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    CupertinoIcons.tickets,
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    size: 32,
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Expanded(
                                      child: Text(
                                    'خرید و استرداد آنلاین',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .secondary,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 16),
                                  )),
                                ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _changeAppBarColor() {
    const double maxOffset = 100; // Maximum height of the SliverAppBar
    final double offset = _scrollController.offset + 10;

    // Calculate a ratio between 0.0 and 1.0 based on the scroll position
    // This ratio will be used to interpolate between two colors
    final double ratio = offset / maxOffset;

    // Define your initial and target colors
    final Color initialColor = Theme.of(context)
        .colorScheme
        .primary; // Change this to your desired initial color
    const Color targetColor =
        Colors.white; // Change this to your desired target color

    // Interpolate the color based on the scroll position
    final updatedColor = Color.lerp(initialColor, targetColor, ratio);

    // Update the AppBar color
    setState(() {
      _appBarColor = updatedColor;
    });
  }
}

class _MagItemList extends StatelessWidget {
  const _MagItemList({
    super.key,
    required this.item,
  });

  final MagazineItem item;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      width: 280,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 155,
            width: 280,
            child: Image.asset(
              item.imageUrl,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                item.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .apply(color: Theme.of(context).colorScheme.secondary),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ColumnItemWidget extends StatelessWidget {
  final String iconUrl;
  final String title;
  final String caption;
  const _ColumnItemWidget({
    super.key,
    required this.iconUrl,
    required this.title,
    required this.caption,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16, left: 16),
      height: 72,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 3)
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 12, left: 24),
        child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Image.asset(
            iconUrl,
            color: Colors.greenAccent,
            width: 36,
          ),
          const SizedBox(
            width: 16,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                const SizedBox(height: 4),
                Text(
                  caption,
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
    );
  }
}

class _ListItemBook extends StatelessWidget {
  final BookItem item;
  const _ListItemBook({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.fromLTRB(8, 0, 8, 0),
      width: 260,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 5),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 155,
              child: Image.asset(
                item.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  item.title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .apply(color: Theme.of(context).colorScheme.secondary),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 14),
              child: Text(item.caption,
                  style: Theme.of(context).textTheme.caption),
            ),
          ]),
    );
  }
}

class _TableElement extends StatelessWidget {
  final String name;
  final IconData icon;
  final Function() onTap;
  const _TableElement({
    super.key,
    required this.name,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox.fromSize(
      size: const Size(197.4, 56),
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
