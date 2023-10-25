import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';
  const SnackBarScreen({super.key});
  
  void customSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: const Text('Hola mundo'), // Se cambió "context" a "content"
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Ok',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false, //precionar boton para regresar
      builder: (context) {
        return AlertDialog(
          title: const Text('Are you sure you want to?'),
          content: const Text('Lorem ipsum dolor'),
          actions: [
            TextButton(
              onPressed: () => context.pop(),
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () => context.pop(),
              child: const Text('Ok'),
            )
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Dialogos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Aplicacion de widgets')  
                  ]
                );
              },
              child: const Text('Licencias usadas'),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar dialogo')
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text(
          'Mostrar snackbar',
          style: TextStyle(
            color: Colors.white
          ),
        ),
        icon: const Icon(
          Icons.info_outline,
          color: Colors.white,
        ),
        backgroundColor: colors.primary,
        onPressed: () => customSnackBar(context),
      ),
    );
  }
}