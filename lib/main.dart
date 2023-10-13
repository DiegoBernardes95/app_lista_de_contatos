import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:lista_de_contatos/page/home_page.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ListaDeContatos());
}

class ListaDeContatos extends StatelessWidget{
  const ListaDeContatos({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.blue,
          centerTitle: true,
          elevation: 10,
        ),
        primaryColor: Colors.black
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}