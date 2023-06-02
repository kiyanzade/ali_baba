import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});

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
                        icon: const Icon(Icons.inbox_outlined)),
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
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: Theme.of(context).dividerColor,
                                      width: 1))),
                          child: const _tableElement(
                            name: "پرواز",
                            icon: Icons.flight,
                          ),
                        ),
                        const _tableElement(
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
                                      color: Theme.of(context).dividerColor,
                                      width: 1))),
                          child: const _tableElement(
                            name: "پرواز",
                            icon: Icons.flight,
                          ),
                        ),
                        const _tableElement(
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
                                  color: Theme.of(context).dividerColor,
                                  width: 1),
                            ),
                          ),
                          child: const _tableElement(
                            name: "پرواز",
                            icon: Icons.flight,
                          ),
                        ),
                        _tableElement(
                          name: "قطار",
                          icon: Icons.train_outlined,
                        )
                      ]),
                ]),
              )
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          _tableElement(name: "aaa", icon: Icons.flight),
        ],
      ),
    );
  }
}

class _tableElement extends StatelessWidget {
  final String name;
  final IconData icon;
  // final Function() onTap;
  const _tableElement({
    super.key,
    required this.name,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        // color: Theme.of(context).colorScheme.surface,
        height: 56,
        width: 190,
        padding: EdgeInsets.only(right: 16),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 8,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
