import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'package:provider/provider.dart';
import 'package:test_savage/navigation_layer_test_provider/layer_1.dart';
import 'package:test_savage/navigation_layer_test_provider/layer_1_1.dart';
import 'package:test_savage/navigation_layer_test_provider/provid/count_prov.dart';

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
            const Text('Layer_2'),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Layer_1(),
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
