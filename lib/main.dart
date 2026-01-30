import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeActivity());
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Infirmary App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        titleSpacing: 10,
        toolbarHeight: 60,
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            onPressed: () => clickNotificationButton(context),
            icon: Icon(Icons.notifications, size: 28),
          ),
          IconButton(
            visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),
            onPressed: () => clickMenuButton(context),
            icon: Icon(Icons.menu_open_sharp, size: 28),
          ),
        ],
      ),
      body: Text(
        'Hey, this is body part!',
        style: TextStyle(
          color: Colors.blue.shade500,
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: FloatingActionButton(
          elevation: 6,
          backgroundColor: Colors.blue.shade900,
          foregroundColor: Colors.white,
          onPressed: () => clickFloatingCartButton(context),
          child: const Icon(Icons.shopping_cart, size: 28),
        ),
      ),
    );
  }

  // snackbar
  showSnackbar(BuildContext context, String message) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        showCloseIcon: true,
        duration: Duration(seconds: 2),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        margin: EdgeInsets.all(10),
      ),
    );
  }

  void clickNotificationButton(BuildContext context) {
    showSnackbar(context, 'Notification button clicked');
  }

  void clickMenuButton(BuildContext context) {
    showSnackbar(context, 'Menu button clicked');
  }

  void clickFloatingCartButton(BuildContext context) {
    showSnackbar(context, 'Cart button clicked');
  }
}
