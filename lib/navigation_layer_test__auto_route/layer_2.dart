import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class Layer_2 extends StatefulWidget {
  const Layer_2({super.key});

  @override
  State<Layer_2> createState() {
    print('Layer_2 -> Widget - createState');
    return _Layer_2State();
  }

  @override
  StatefulElement createElement() {
    print('Layer_2 -> Widget - createElement');
    return super.createElement();
  }
}

class _Layer_2State extends State<Layer_2> {

  @override
  Widget build(BuildContext context) {
    print('Layer_2 -> build');
    return const Placeholder();
  }

  @override
  void initState() {
    print('Layer_2 -> initState');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Layer_2 oldWidget) {
    print('Layer_2 -> didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('Layer_2 -> didChangeDependencies');
    super.didChangeDependencies();
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    print('Layer_2 -> debugFillProperties');
    super.debugFillProperties(properties);
  }

  @override
  void reassemble() {
    print('Layer_2 -> reassemble');
    super.reassemble();
  }

  @override
  void deactivate() {
    print('Layer_2 -> deactivate');
    super.deactivate();
  }
  @override
  void dispose() {
    print('Layer_2 -> dispose');
    super.dispose();
  }

  @override
  void activate() {
    print('Layer_2 -> activate');
    super.activate();
  }
}