import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './presentation/screens/my_home_page.dart';
import './presentation/screens/binary_page.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: MediaQuery.of(context).size.height * 0.1,
          selectedIndex: controller.selectedIndex.value,
          elevation: 0.5,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.onetwothree),
              label: 'Counter',
            ),
            NavigationDestination(
              icon: Icon(Icons.outlet_outlined),
              label: 'Binary Converter',
            ),
          ],
        ),
        // onTap: (int index) {
        //   setState(() {
        //     myIndex = index;
        //   });
        //   if (index == 0) {
        //     Navigator.pushNamed(context, '/HomePage');
        //   } else if (index == 1) {
        //     Navigator.pushNamed(context, '/binary');
        //   }
        // },
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = const [MyHomePage(), ToDecimal()];
}
