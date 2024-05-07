import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class Layer_1 extends StatefulWidget {
  const Layer_1({super.key});

  @override
  State<Layer_1> createState() {
    print('Layer_1 -> Widget - createState');
    return _Layer_1State();
  }

    @override
  StatefulElement createElement() {
    print('Layer_1 -> Widget - createElement');
    return super.createElement();
  }
}

class _Layer_1State extends State<Layer_1> {

  @override
  Widget build(BuildContext context) {
    print('Layer_1 -> build');
    return const Placeholder();
  }

  @override
  void initState() {
    print('Layer_1 -> initState');
    super.initState();
  }

  @override
  void didUpdateWidget(covariant Layer_1 oldWidget) {
    print('Layer_1 -> didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    print('Layer_1 -> didChangeDependencies');
    super.didChangeDependencies();
  }
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    print('Layer_1 -> debugFillProperties');
    super.debugFillProperties(properties);
  }

  @override
  void reassemble() {
    print('Layer_1 -> reassemble');
    super.reassemble();
  }

  @override
  void deactivate() {
    print('Layer_1 -> deactivate');
    super.deactivate();
  }
  @override
  void dispose() {
    print('Layer_1 -> dispose');
    super.dispose();
  }

  @override
  void activate() {
    print('Layer_1 -> activate');
    super.activate();
  }
}