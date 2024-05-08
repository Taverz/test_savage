import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_savage/navigation_layer_test_provider/layer_1_1.dart';
import 'package:test_savage/navigation_layer_test_provider/layer_2.dart';
import 'package:test_savage/navigation_layer_test_provider/provid/count_prov.dart';

class Layer_1 extends StatefulWidget {
  const Layer_1({super.key});

  /// 1
  @override
  StatefulElement createElement() {
    print('Layer_1 -> Widget - createElement');
    return super.createElement();
  }

  /// 2
  @override
  State<Layer_1> createState() {
    print('Layer_1 -> Widget - createState');
    return _Layer_1State();
  }
}

class _Layer_1State extends State<Layer_1> {

  /// 3
  @override
  void initState() {
    print('Layer_1 -> initState');
    super.initState();
  }

  /// 4 - pre Build
  @override
  void didChangeDependencies() {
    print('Layer_1 -> didChangeDependencies');
    super.didChangeDependencies();
  }

  /// 5
  @override
  Widget build(BuildContext context) {
    print('Layer_1 -> build');
    final stateCount = context.watch<CountProvider>().count;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            print('Navigator POP');
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Provider read count - Button onTap');
          context.read<CountProvider>().countPlus();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Layer_1'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Layer_2(),
                  ),
                );
              },
              child: Text('Layer_2'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Layer_1_1(),
                  ),
                );
              },
              child: Text('Layer_1_1'),
            ),
          ],
        ),
      ),
    );
  }

  /// 6
  @override
  void deactivate() {
    print('Layer_1 -> deactivate');
    super.deactivate();
  }

  /// 7
  @override
  void dispose() {
    print('Layer_1 -> dispose');
    super.dispose();
  }

///// ---------------------------

  /// NO BASE
  @override
  void didUpdateWidget(covariant Layer_1 oldWidget) {
    print('Layer_1 -> didUpdateWidget');
    super.didUpdateWidget(oldWidget);
  }

  /// NO BASE
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    print('Layer_1 -> debugFillProperties');
    super.debugFillProperties(properties);
  }

  /// NO BASE
  @override
  void reassemble() {
    print('Layer_1 -> reassemble');
    super.reassemble();
  }

  /// NO BASE
  @override
  void activate() {
    print('Layer_1 -> activate');
    super.activate();
  }
}
