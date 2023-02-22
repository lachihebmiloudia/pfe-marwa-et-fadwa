import 'package:agritun/Pages/Menu.dart';
import 'package:agritun/constant/couleur.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double widthDrawer = MediaQuery.of(context).size.width * 0.5;
    return SizedBox(
        width: 200,
        child: Drawer(
          //backgroundColor: c2,
          child: ListView(
            // Remove padding
            padding: EdgeInsets.zero,

            children: [
              UserAccountsDrawerHeader(
                decoration: const BoxDecoration(
                  color: c2,
                ),
                accountName: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Ayadi Nabiha'),
                    ]),
                accountEmail: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [Text('example@gmail.com')]),
                currentAccountPictureSize: Size(widthDrawer, 100),
                currentAccountPicture: Center(
                    child: CircleAvatar(
                  radius: 45,
                  child: ClipOval(
                    child: Image.network(
                      'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                      fit: BoxFit.cover,
                      width: 90,
                      height: 90,
                    ),
                  ),
                )),
              ),
              ListTile(
                title: const Text(
                  'قطع الأرض',
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(
                  Icons.dashboard,
                  color: c2,
                ),
                onTap: () => Menu(),
              ),
              ListTile(
                trailing: const Icon(
                  Icons.groups,
                  color: c2,
                ),
                title: const Text(
                  'الجماعة',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              const ListTile(
                trailing: Icon(
                  Icons.airline_seat_recline_normal,
                  color: c2,
                ),
                title: Text(
                  'قائمة السائقين',
                  textAlign: TextAlign.right,
                ),
              ),
              //Divider(),
              ListTile(
                trailing: const Icon(
                  Icons.local_shipping,
                  color: c2,
                ),
                title: const Text(
                  'عمليات التوصيل',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              ListTile(
                trailing: const Icon(
                  Icons.factory,
                  color: c2,
                ),
                title: const Text(
                  'قائمة المعاصر',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              ListTile(
                trailing: const Icon(
                  Icons.money,
                  color: c2,
                ),
                title: const Text(
                  'عمليات البيع',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              ListTile(
                trailing: const Icon(
                  Icons.shopping_basket,
                  color: c2,
                ),
                title: const Text(
                  'عمليات الشراء',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              ListTile(
                trailing: const Icon(
                  Icons.shopping_cart,
                  color: c2,
                ),
                title: const Text(
                  'مدفوعات أخرى',
                  textAlign: TextAlign.right,
                ),
                onTap: () => null,
              ),
              ListTile(
                title: const Text(
                  'الإحصائيات',
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(
                  Icons.query_stats,
                  color: c2,
                ),
                onTap: () => null,
              ),
              //Divider(),
              ListTile(
                title: const Text(
                  'Exit',
                  textAlign: TextAlign.right,
                ),
                trailing: const Icon(
                  Icons.exit_to_app,
                  color: c2,
                ),
                onTap: () => null,
              ),
            ],
          ),
        ));
  }
}
