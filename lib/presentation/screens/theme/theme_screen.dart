import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeScreen extends ConsumerWidget {

  static String name = "ThemeScreen";
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotifierProvider).isDarkMode;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Theme screen'),
        actions: [
          IconButton(
            icon: Icon( isDarkMode ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
            onPressed: (){
              // ref.read(darkModeProvider.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkMode();
            },
          )
        ],
      ),
      body: const _ThemeChangerView(),
    );
  }
}

class _ThemeChangerView extends ConsumerWidget {

  const _ThemeChangerView();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorListProvider);
    // final int selectedColor = ref.watch(selectedColorProvider);
    final int selectedColor = ref.watch(themeNotifierProvider).selectedColor;
    return ListView.builder(
      itemCount: colors.length,
      itemBuilder: (context, index){
       final color = colors[index];
       return RadioListTile(
        title: Text(
          'Este color', 
          style: TextStyle(color: color),
        ),
        subtitle: Text('${color.value}'),
        value: index,
        activeColor: color,
        groupValue: selectedColor,
        onChanged: (value){
          // ref.read(selectedColorProvider.notifier).update((state) => index);
          ref.read(themeNotifierProvider.notifier).changeColor(index);
        },
       );
      },
    );
  }
}