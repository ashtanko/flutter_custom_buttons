import 'package:flutter/material.dart';
import 'package:flutter_custom_buttons/index.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Custom Buttons';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Style.dark,
      themeMode: ThemeMode.dark,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const CustomButton(
                  title: 'Disabled',
                ),
                const CustomButton(
                  title: 'Disabled Rounded',
                  isRounded: true,
                ),
                const CustomButton(
                  icon: Icon(Icons.android_sharp),
                  title: 'Disabled With Icon',
                  isRounded: true,
                ),
                const CustomButton(
                  icon: Icon(Icons.wifi),
                  isRounded: true,
                ),
                CustomButton(
                  title: 'Enabled',
                  isRounded: true,
                  onPressed: () {},
                ),
                CustomButton(
                  title: 'BorderRadius',
                  isRounded: true,
                  borderRadius: 20,
                  onPressed: () {},
                ),
                CustomButton(
                  title: 'BorderSide',
                  isRounded: true,
                  borderRadius: 20,
                  onPressed: () {},
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                CustomButton(
                  title: 'With Icon',
                  icon: const Icon(Icons.style),
                  isRounded: true,
                  borderRadius: 10,
                  onPressed: () {},
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                CustomButton(
                  title: 'With Icon Padding',
                  icon: const Icon(Icons.attachment),
                  iconPadding: 20,
                  isRounded: true,
                  borderRadius: 10,
                  onPressed: () {},
                ),
                CustomButton(
                  title: 'Transparent',
                  icon: const Icon(Icons.extension),
                  iconPadding: 20,
                  isRounded: true,
                  borderRadius: 10,
                  color: Colors.transparent,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  onPressed: () {},
                ),
                CustomButton(
                  icon: const Icon(Icons.brightness_3),
                  iconPadding: 20,
                  isRounded: true,
                  borderRadius: 10,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  onPressed: () {},
                ),
                CustomButton(
                  width: 100,
                  height: 45,
                  icon: const Icon(Icons.admin_panel_settings),
                  iconPadding: 20,
                  isRounded: true,
                  borderRadius: 40,
                  color: Colors.teal[700],
                  side: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                  onPressed: () {},
                ),
                CustomButton(
                  icon: const Icon(Icons.adb),
                  iconPadding: 20,
                  isRounded: true,
                  borderRadius: 0,
                  side: const BorderSide(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  onPressed: () {},
                ),
                CustomButton(
                  height: 60,
                  icon: const Icon(Icons.search),
                  iconPadding: 10,
                  color: Colors.indigo,
                  isRounded: true,
                  borderRadius: 10,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
