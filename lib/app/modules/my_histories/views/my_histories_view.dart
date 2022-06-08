import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_histories_controller.dart';

class MyHistoriesView extends GetView<MyHistoriesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFEFEFEF),
        appBar: AppBar(
          title: const Text('MyHistoriesView'),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: const Text(
            'Add History',
            style: TextStyle(
              fontWeight: FontWeight.w400,
            ),
          ),
          icon: const Icon(
            Icons.add,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 26.0),
          children: [
            const SizedBox(height: 26),
            Container(
              width: 323,
              height: 206,
              margin: const EdgeInsets.only(bottom: 20),
              padding: const EdgeInsets.all(18.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18.0),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_downward),
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const SizedBox(height: 21),
                      const Text(
                        '1.000.000',
                        style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'November bonus',
                        style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF9796A1),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      IconButton(
                        onPressed: () {},
                        iconSize: 14,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(
                          maxHeight: 20,
                          maxWidth: 20,
                        ),
                        color: Colors.red,
                        icon: const Icon(Icons.close),
                      ),
                      const SizedBox(height: 32),
                      const Text(
                        '10/10/22',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xFF5D5FEF),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: const [
                            Text(
                              'From or To',
                              style: TextStyle(
                                fontSize: 12,
                                color: Color(0xFF9796A1),
                              ),
                            ),
                            Text(
                              'Intive Studio',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
