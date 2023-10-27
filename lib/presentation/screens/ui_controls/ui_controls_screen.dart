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

class _UIControlsView extends StatelessWidget {
  const _UIControlsView();

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(value: false, onChanged: (value){

        })
      ],
    );
  }
}