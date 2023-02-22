import 'package:agritun/constant/Navbar.dart';
import 'package:agritun/constant/couleur.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "قطع الأرض",
          ),
          centerTitle: true,
          backgroundColor: c2,
        ),
        endDrawer: NavBar());
  }
}
