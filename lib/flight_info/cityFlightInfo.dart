import 'package:ali_baba/data/data.dart';
import 'package:flutter/material.dart';

import '../myTravel/my_travel.dart';

class CityFlightInfo extends StatelessWidget {
  final String city;

  CityFlightInfo({super.key, required this.city});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          city,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).colorScheme.tertiary.withOpacity(0.4),
              child: TabBar(
                splashBorderRadius: BorderRadius.circular(24),
                labelStyle: const TextStyle(fontSize: 13, fontFamily: "Vazir"),
                overlayColor: MaterialStateProperty.all(
                    Theme.of(context).colorScheme.secondary.withOpacity(0.1)),
                labelColor: Colors.black,
                unselectedLabelColor:
                    Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0.8,
                indicatorColor: Colors.blue.shade900,
                tabs: [
                  const Tab(
                    text: "پروازهای خروجی",
                  ),
                  const Tab(text: "پروازهای ورودی"),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    color: Theme.of(context).colorScheme.tertiary,
                    child: ListView.builder(
                      padding:
                          EdgeInsets.only(top: 4, bottom: 8, left: 8, right: 8),
                      itemCount: AppData.myTravelItems.length,
                      itemBuilder: (context, index) {
                        final item = AppData.myTravelItems[index];
                        return TravelItem(
                          item: item,
                        );
                      },
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      const Text(
                        "پروازی یافت نشد",
                        style: TextStyle(fontSize: 14),
                      ),
                      const SizedBox(
                        height: 90,
                      ),
                      Image.asset("assets/images/noFlight.jpg"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
