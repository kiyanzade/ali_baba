import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "تماس با ما",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(fontSizeFactor: 0.9),
            ),
            actions: [
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8))),
                    iconColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: Text(
                  "تماس با پشتیبانی",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                width: 16,
              ),
            ]),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child:
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  SizedBox(height: 16),
                          Text(
                "دسترسی سریع",
                style: TextStyle(fontSize: 16),
                          ),
                        ]),
              ),
        ));
  }
}
