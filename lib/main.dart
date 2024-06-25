import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

int counter = 0;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                const Expanded(
                    flex: 2,
                    child: ListTile(
                      title: Text('Quantité'),
                    )),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton.small(
                          elevation: 0,
                          backgroundColor:
                              const Color.fromARGB(0, 255, 255, 255),
                          splashColor: const Color.fromARGB(255, 255, 0, 0),
                          shape: RoundedRectangleBorder(
                              side: const BorderSide(
                                  width: 1, color: Colors.black),
                              borderRadius: BorderRadius.circular(100)),
                          onPressed: () {
                            setState(() {
                              counter--;
                            });
                          },
                          child: const Icon(
                            Icons.remove,
                            size: 20,
                          )),
                      Text(counter.toString()),
                      FloatingActionButton.small(
                        elevation: 0,
                        backgroundColor: const Color.fromARGB(0, 255, 255, 255),
                        splashColor: const Color.fromARGB(255, 26, 255, 0),
                        shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.black),
                            borderRadius: BorderRadius.circular(100)),
                        onPressed: () {
                          setState(() {
                            counter++;
                          });
                        },
                        child: const Icon(Icons.add),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
