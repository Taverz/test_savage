import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:test_savage/navigation_layer_test_provider/layer_1.dart';
import 'package:test_savage/navigation_layer_test_provider/provid/count_prov.dart';
import 'package:test_savage/navigation_layer_test_provider/provid/count_simple_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        /// ListenableProvider: конкретный Provider объекта Listenable. ListenableProvider будет прослушивать объект и 
        /// запрашивать виджеты, которые зависят от него, 
        /// перестроиться при каждом вызове прослушивателя.
        /// ------- ==>
        /// ChangeNotifierProvider: спецификация ListenableProvider для 
        /// ChangeNotifier. При необходимости он 
        /// автоматически вызовет ChangeNotifier.dispose.
        ChangeNotifierProvider(
          create: (_) => CountProvider(),
        ),


        /// Общая реализация InheritedWidget . 
        /// Любой потомок этого виджета может получить его valueс помощью Provider.of . 
        /// Не используйте этот класс напрямую, если вы не создаете собственный «Поставщик». 
        /// Вместо этого используйте класс Provider , который является оберткой InheritedProvider .
        InheritedProvider<int>(
          create: (context) => 0,
          dispose: (context, value) => value = 0,
        ),
        /// Provider: Самая основная форма Provider. Он принимает значение и раскрывает его, каким бы оно ни было.
        Provider(
          create: (_) => CountSimpleProvider(),
        ),


        /// TODO: InheritedWidget  ??? !!!!
      ],
      child: MaterialApp(
        title: 'Tested state flutter widget',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(title: 'Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Layer_1(),
      ),
    );
    // setState(() {
    //   _counter++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
