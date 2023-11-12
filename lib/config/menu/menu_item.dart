import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon
  });
}

const appMenuItems = <MenuItem> [
  MenuItem(
    title: 'Botones', 
    subTitle: 'Varios botones flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card_off_outlined
  ),
  MenuItem(
    title: 'Progress',
    subTitle: 'General',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),
  MenuItem(
  title: 'Snackbars',
  subTitle: 'Mensajes y alertas',
  link: '/snackbars',
  icon: Icons.info_outline
  ),
  MenuItem(
    title: 'Animated container',
    subTitle: 'Stateful Widget animated',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),
  MenuItem(
    title: 'UI Controls + Titles',
    subTitle: 'Titulos flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),
  MenuItem(
    title: 'App Tutorial',
    subTitle: 'Tutorial de la aplicación',
    link: '/tutorial',
    icon: Icons.tune_outlined
  )
  ,
  MenuItem(
    title: 'Infinite Scroll',
    subTitle: 'Listas infinitas y pull to refresh',
    link: '/infinite-scroll',
    icon: Icons.list_alt_rounded
  ),
  MenuItem(
    title: 'Counter Screen',
    subTitle: 'Contador flutter',
    link: '/counter',
    icon: Icons.plus_one_rounded
  ),
  MenuItem(
    title: 'Change theme',
    subTitle: 'Cambiar tema de la aplicación',
    link: '/theme',
    icon: Icons.color_lens_outlined
  )
]; 