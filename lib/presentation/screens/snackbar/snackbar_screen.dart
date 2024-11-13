import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hello, Snackbars!'),
      action: SnackBarAction(label: 'Ok', onPressed: () {}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Estas seguro?'),
        content: const Text(
            'Quis eiusmod voluptate laboris reprehenderit est officia velit id. Commodo nostrud eiusmod commodo laborum mollit culpa aliquip Lorem irure. Id eiusmod nisi nostrud minim irure ad elit labore dolor reprehenderit. Sint consectetur cupidatat sint excepteur proident aliqua eu ullamco proident sit culpa. Reprehenderit consequat esse in est. Aute cupidatat dolor ipsum sint exercitation qui nulla. Proident adipisicing esse consequat est et occaecat anim dolore do.'),
        actions: [
          TextButton(
              onPressed: () => context.pop(), child: const Text('Cancelar')),
          FilledButton(
              onPressed: () => context.pop(), child: const Text('Aceptar'))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
                onPressed: () {
                  showAboutDialog(context: context, children: [
                    const Text(
                        'Amet nisi aliquip veniam laboris magna amet Lorem sunt laborum reprehenderit occaecat tempor eu. Sunt officia aliquip Lorem amet aliquip aliqua adipisicing enim exercitation exercitation qui do nostrud. Esse consectetur Lorem consequat duis pariatur sit culpa dolore.')
                  ]);
                },
                child: Text('Licencias usadas')),
            FilledButton.tonal(
                onPressed: () => openDialog(context),
                child: Text('Mostrar dialogo'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => showCustomSnackbar(context),
        label: const Text('Show Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
      ),
    );
  }
}
