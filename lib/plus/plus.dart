import 'package:ali_baba/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlusScreen extends StatefulWidget {
  const PlusScreen({super.key});

  @override
  State<PlusScreen> createState() => _PlusScreenState();
}

class _PlusScreenState extends State<PlusScreen> {
  late Color? _appBarColor = Colors.yellow.shade800;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
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
        toolbarHeight: 72,
        surfaceTintColor: Colors.white,
        backgroundColor: _appBarColor,
        centerTitle: true,
        title: Image.asset('assets/images/plus_logo.png', width: 170),
      ),
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          controller: _scrollController,
          itemCount: AppData.plusListViewsItems.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              // دسته بندی ها
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 16),
                    child: Text('دسته بندی ها'),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(0, 16, 12, 16),
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return _Category(
                            icon: Icons.hotel,
                            title: 'اقامت و هتل',
                          );
                        } else if (index == 1) {
                          return _Category(
                              icon: Icons.store, title: 'بازار و خرید');
                        } else if (index == 2) {
                          return _Category(
                              icon: Icons.beach_access,
                              title: 'جاذبه های گردشگری');
                        } else {
                          return _Category(
                              icon: Icons.restaurant, title: "خورد و خوراک");
                        }
                      },
                    ),
                  )
                ],
              );
            } else {
              final listItem = AppData.plusListViewsItems[index - 1];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14, top: 14),
                    child: Text(
                      listItem.title,
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: 320,
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(4, 20, 4, 16),
                      itemCount: listItem.cities.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return _CityItem(item: listItem.cities[index]);
                      },
                    ),
                  ),
                ],
              );
            }
          },
        ),
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

class _Category extends StatelessWidget {
  final IconData icon;
  final String title;
  const _Category({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 16),
      margin: EdgeInsets.fromLTRB(12, 0, 0, 0),
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.surface,
        border: Border.all(
            width: 1,
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2)),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            SizedBox(
              height: 4,
            ),
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
            ),
          ]),
    );
  }
}

class _CityItem extends StatelessWidget {
  final PlusCityInfo item;
  const _CityItem({
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
            Padding(
              padding: const EdgeInsets.all(12),
              child: Text(
                item.title,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: Text(
                item.city,
                style: Theme.of(context).textTheme.caption,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, bottom: 14, left: 12),
              child: Text(item.caption,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context)
                      .textTheme
                      .caption!
                      .copyWith(fontWeight: FontWeight.w600)),
            ),
          ]),
    );
  }
}
