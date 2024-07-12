import 'package:flutter/material.dart';
//import '../services/auth_provider.dart';
import 'my_list_tile.dart';
import "../themes/theme_provider.dart";
import 'package:provider/provider.dart';
import '../themes/theme.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = context.watch<ThemeProvider>().themeData;
//    final userLoggedIn = context.watch<UserProvider>().isAuthenticated;
    return Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Center(
                    child: 
                    Image.network("https://firebasestorage.googleapis.com/v0/b/hopeassistence.appspot.com/o/hopeassistence_logo_sf.png?alt=media&token=9c6e4300-58cc-4313-ae69-91876f86f1e6")
                     /*Icon(
                      Icons.shopping_bag,
                      size: 72,
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),*/
                  ),
                ),

                const SizedBox(height: 25),
                //shop
                MyListTile(
                    text: "Doações",
                    icon: Icons.shopping_bag_outlined,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/donation_page");
                    }),

                //cart
                MyListTile(
                    text: "Carrinho",
                    icon: Icons.shopping_cart,
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.pushNamed(context, "/cart_page");
                    }),
              ],
            ),
            //cabeçalho drawer : logo

            //exit
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Column(
                children: [
                  MyListTile(
                      text: "Sair",
                      icon: Icons.logout,                  
                      onTap: () {
                       Navigator.pop(context);
                       Navigator.pushNamed(context, "/_page");
                      }),
                      //Navigator.pushNamed(context, "/login_page");

                  MyListTile(
                      text: theme == lightMode ? "Modo Escuro" : "Modo Claro",
                      icon: theme == lightMode
                          ? Icons.toggle_off
                          : Icons.toggle_on_outlined,
                      onTap: () {
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme();
                      }),
                ],
              ),
            ),
          ],
        ));
  }
}