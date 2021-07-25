import 'package:flutter/material.dart';
import 'package:flt_amz_prj/matematicon/widgets/navigator_menu_widget.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              const SizedBox(
                height: 48,
              ),
              buildMenuItem(
                text: 'Home',
                icon: Icons.home,
                context: context,
                index: 0,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Teorie',
                icon: Icons.add_business,
                context: context,
                index: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              buildMenuItem(
                text: 'Rezultate',
                icon: Icons.pedal_bike,
                context: context,
                index: 2,
              ),
              const SizedBox(
                height: 16,
              ),
              Divider(
                color: Colors.white70,
              ),
              buildMenuItem(
                text: 'Setari',
                icon: Icons.settings,
                context: context,
                index: 3,
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
