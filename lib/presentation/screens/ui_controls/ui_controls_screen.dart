import 'package:flutter/material.dart';

class UIControlsAnimatedScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';
  const UIControlsAnimatedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: _UIControlsView(),
    );
  }
}

class _UIControlsView extends StatefulWidget {
  const _UIControlsView();

  @override
  State<_UIControlsView> createState() => _UIControlsViewState();
}

enum Transportation { car, plane, boot, submarine }
class _UIControlsViewState extends State<_UIControlsView> {
  bool isDeveloper = false;
  Transportation selectedTransportation = Transportation.car;
  bool whanstBreakfast = false;
  bool whantsLunch = true;
  bool whanstDinner = false;
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
          title: const Text('Developer mode'),
          subtitle: const Text('Controles adicionales'),
          value: isDeveloper, 
          onChanged: (value) => setState(() {
            isDeveloper =  !isDeveloper;
          }),
        ),
        ExpansionTile(
          title: const Text('Vehiculo de transporte'),
          subtitle: Text('$selectedTransportation'),
          initiallyExpanded: true,
          children: [
            RadioListTile(
              title: const Text('By Car'),
              subtitle: const Text('Viajar por auto'),
              value: Transportation.car, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.car;
              }),
            ),
            RadioListTile(
              title: const Text('By Plane'),
              subtitle: const Text('Viajar por avion'),
              value: Transportation.plane, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.plane;
              }),
            ),
            RadioListTile(
              title: const Text('By Bot'),
              subtitle: const Text('Viajar por Barco'),
              value: Transportation.boot, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.boot;
              }),
            ),
            RadioListTile(
              title: const Text('By Submarine'),
              subtitle: const Text('Viajar por submarino'),
              value: Transportation.submarine, 
              groupValue: selectedTransportation, 
              onChanged: (value) => setState(() {
                selectedTransportation = Transportation.submarine;
              }),
            )
          ],        
        ),
        ExpansionTile(
          title: const Text('Hotel services'),
          subtitle: const Text('Seleccione los servicios requeridos'),
          initiallyExpanded: true,
          children: [
            CheckboxListTile(
              title: const Text('Whants breakfast'),
              subtitle: const Text('Desayuno en restaurante'),
              value: whanstBreakfast,
              onChanged: (value) => setState(() {
                whanstBreakfast =!whanstBreakfast;
              }),
            ),
            CheckboxListTile(
              title: const Text('Whants lunch'),
              subtitle: const Text('Almuerzo en restaurante'),
              value: whantsLunch,
              onChanged: (value) => setState(() {
                whantsLunch =!whantsLunch;
              }),
            ),
            CheckboxListTile(
              title: const Text('Whants dinner'),
              subtitle: const Text('Cena en restaurante'),
              value: whanstDinner,
              onChanged: (value) => setState(() {
                whanstDinner =!whanstDinner;
              }),
            )
          ],
        )
      ],
    );
  }
}