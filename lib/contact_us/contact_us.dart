import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            surfaceTintColor: Colors.white,
            title: Text(
              "تماس با ما",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium!
                  .apply(fontSizeFactor: 0.9),
            ),
            actions: [
              ElevatedButton(
                onPressed: () async {
                  String phoneNumber = "02143900000";
                  final Uri launchUri = Uri(
                    scheme: 'tel',
                    path: phoneNumber,
                  );
                  await launchUrl(launchUri);
                },
                style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(8))),
                    iconColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                child: const Text(
                  "تماس با پشتیبانی",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
            ]),
        backgroundColor: Theme.of(context).colorScheme.tertiary,
        body: SingleChildScrollView(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 16),
                    const Text(
                      "دسترسی سریع",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                      height: 65,
                      padding: const EdgeInsets.fromLTRB(24, 0, 32, 0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "راهنمای استرداد بلیط",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 65,
                      padding: const EdgeInsets.fromLTRB(24, 0, 32, 0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "ثبت درخواست پشتیبانی",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 65,
                      padding: const EdgeInsets.fromLTRB(24, 0, 32, 0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "مشاهده و دانلود بلیط",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 65,
                      padding: const EdgeInsets.fromLTRB(24, 0, 32, 0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "فراموشی رمز عبور",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      height: 65,
                      padding: const EdgeInsets.fromLTRB(24, 0, 32, 0),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "راهنمای ورود و ثبت نام",
                            style: TextStyle(fontSize: 12),
                          ),
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 18,
                            color: Theme.of(context)
                                .colorScheme
                                .secondary
                                .withOpacity(0.3),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 14,
                    ),
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.surface,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                              color: Colors.black.withOpacity(0.15))),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text("تماس با ما"),
                          const SizedBox(
                            height: 12,
                          ),
                          Text(
                            "سوال یا درخواستی داریند؟ در همه روز های هفته و در هر ساعت از شبانه روز که بخواهید، میتوانید از طریق راه های زیر با ما ارتباط بگیرید",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 24),
                          const Row(
                            children: [
                              Icon(Icons.call),
                              SizedBox(
                                width: 8,
                              ),
                              Text("تلفن پشتیبانی"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "43900000 - 021".toPersianDigit(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 24),
                          const Row(
                            children: [
                              Icon(Icons.email),
                              SizedBox(
                                width: 8,
                              ),
                              Text("ایمیل"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "support@alibaba.ir",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 24),
                          const Row(
                            children: [
                              Icon(Icons.location_on_sharp),
                              SizedBox(
                                width: 8,
                              ),
                              Text("آدرس دفتر پشتیبانی"),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "اکباتان، نبش اتوبان لشگری، کوی بیمه، خیابان بیمه چهارم، بن بست گلها، پلاک 1",
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "کد پستی: 1393733691".toPersianDigit(),
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                  ]),
            ),
          ),
        ));
  }
}
