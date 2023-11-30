import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; //Se importa para poder abrir urls en el navegador web

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cards',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(
                244, 0, 248, 248)), //Se cambia el color del homepage
        useMaterial3: true,
      ),
      home: const MyHomePage(
          title: 'Sedes Universidad de Los Lagos'), //Titulo del homepage
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            //Se utiliza el image.network para poder cargar una imagen a partir de una URL
            Image.network(
              'https://www.ulagos.cl/wp-content/uploads/2020/12/semda-538x392.jpg',
              width: double
                  .infinity, //Se ajusta el ancho para que ocupe toda la pantalla
              fit: BoxFit
                  .cover, //Se ajusta la imagen para que ocupe todo el espacio
              height: 150, //Altura de la imagen
            ),
            //Se deja espacio entre la imagen y el texto
            const SizedBox(height: 10),
            //Se crea el texto de la imagen
            const Text(
              'Ulagos Sede Osorno',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 5, 0, 5),
              ),
            ),
            //Se utiliza el image.network para poder cargar una imagen a partir de una URL
            Image.network(
              'https://www.ulagos.cl/wp-content/uploads/2020/12/Chinquihue-538x392.jpg',
              width: double
                  .infinity, //Se ajusta el ancho para que ocupe toda la pantalla
              fit: BoxFit
                  .cover, //Se ajusta la imagen para que ocupe todo el espacio
              height: 150, //Altura de la imagen
            ),
            //Se deja espacio entre la imagen y el texto
            const SizedBox(height: 10),
            //Se crea el texto de la imagen
            const Text(
              'Ulagos Sede Puerto Montt',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 5, 0, 5),
              ),
            ),
            //Se utiliza el image.network para poder cargar una imagen a partir de una URL
            Image.network(
              'https://www.ulagos.cl/wp-content/uploads/2020/12/chiloe-538x392.jpg',
              width: double
                  .infinity, //Se ajusta el ancho para que ocupe toda la pantalla
              fit: BoxFit
                  .cover, //Se ajusta la imagen para que ocupe todo el espacio
              height: 150, //Altura de la imagen
            ),
            //Se deja espacio entre la imagen y el texto
            const SizedBox(height: 10),
            //Se crea el texto de la imagen
            const Text(
              'Ulagos Sede Chiloe',
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 5, 0, 5),
              ),
            ),
            //Se deja espacio entre la imagen y el texto
            const SizedBox(height: 50),
            //Se crea el boton para redirigir a la pagina de ulagos
            ElevatedButton(
                onPressed: () {
                  //Se pasa la url de la pagina a una variable
                  String url = 'https://www.ulagos.cl/';
                  //Invoca la pagina web
                  launch(url);
                },
                //Algunos estilos para el boton
                style: ElevatedButton.styleFrom(
                    primary: Colors.blue, onPrimary: Colors.white),
                //Texto del boton
                child: Text(
                  'Mas informacion',
                  style: TextStyle(fontSize: 16),
                ))
          ],
        ),
      ),
    );
  }
}
