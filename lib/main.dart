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
            visualDensity: const VisualDensity(
              horizontal: -4.0,
              vertical: -4.0,
            ),
            onPressed: () => clickNotificationButton(context),
            icon: const Icon(Icons.notifications, size: 28),
          ),
          IconButton(
            visualDensity: const VisualDensity(
              horizontal: -4.0,
              vertical: -4.0,
            ),
            onPressed: () => clickMenuButton(context),
            icon: const Icon(Icons.menu_open_sharp, size: 28),
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
}
