import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subTitle: 'Vaarios botones en Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItem(
    title: 'Snackbars y dialogos',
    subTitle: 'Mensajes y alertas',
    link: '/snackbars',
    icon: Icons.notifications_active,
  ),
  MenuItem(
      title: 'Animated container',
      subTitle: 'Stateful widget animado',
      link: '/animated',
      icon: Icons.check_box_outline_blank_rounded),
  MenuItem(
      title: 'UI Controls + Titles',
      subTitle: 'Una seria de controles en flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItem(
      title: 'Introduccion a la aplicacion',
      subTitle: 'Pequeño tutorial de la app',
      link: '/tutorial',
      icon: Icons.accessible_rounded),
  MenuItem(
      title: 'Infinite scroll y pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded)
];
