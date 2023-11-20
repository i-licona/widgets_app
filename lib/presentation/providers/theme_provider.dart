
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

// selector de thema
final darkModeProvider = StateProvider((ref) => false);
// listado de colores
final colorListProvider = StateProvider((ref) => colorList);
// color seleccionado
final selectedColorProvider = StateProvider((ref) => 0);
// Objeto de tipo AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>((ref) => ThemeNotifier());

//Controller o Notifier
class ThemeNotifier extends StateNotifier<AppTheme>{
  // state = new AppTheme();
  ThemeNotifier(): super(AppTheme());

  void toggleDarkMode(){
    state = state.copyWith(isDarkMode: !state.isDarkMode);
  }

  void changeColor(int colorIndex){
    state = state.copyWith(selectedColor: colorIndex);
  }
}