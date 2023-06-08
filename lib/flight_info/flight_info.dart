import 'package:ali_baba/data/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightInfo extends StatelessWidget {
  const FlightInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.35,
        surfaceTintColor: Colors.white,
        scrolledUnderElevation: 0.5,
        title: Text(
          'اطلاعات پرواز فرودگاه های کشور',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 16),
        ),
      ),
      body: ListView.builder(
        itemCount: AppData.cities.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 8, 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Theme.of(context).colorScheme.secondary,
                      size: 28,
                    ),
                    const SizedBox(height: 10,)
                  ],
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 16, 20),
                        child: Text(
                          AppData.cities[index],
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.secondary,
                              fontSize: 16),
                        ),
                      ),
                      Container(
                        width: 400,
                        height: 1,
                        color: Theme.of(context).dividerColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
