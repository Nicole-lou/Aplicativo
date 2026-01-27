import 'package:aplicativo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:aplicativo/pages/home.dart';

void main() async {
  // Garante que os componentes do Flutter estejam prontos
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa o Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'QualquerCoisa',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      initialRoute: '/',

      routes: {
        // Página inicial
        '/': (context) => const HomePage(),
      },
    );
  }
}