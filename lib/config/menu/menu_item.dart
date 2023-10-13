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
  )
];