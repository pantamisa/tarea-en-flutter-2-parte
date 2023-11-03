import 'package:flutter/material.dart';

class PAG2 extends StatelessWidget {
  const PAG2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorSchemeSeed: const Color(0xff6750a4), useMaterial3: true),
      title: "Colegio Quipux",
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});
  @override
  _InicioState createState() => _InicioState();
}

List<String> materias = <String>[
  'Lenguaje',
  'comunicación',
  'cultura',
  'Educación',
  'artística',
  'Matemáticas	',
  'Castellano',
  'Ciencias ',
  'naturales',
  'sociedad',
  'Inglés',
  'Ciencias ',
  'sociales',
  'Matemáticas',
  'Física',
  'Química',
  'Orientación',
  'Convivencia',
  'Ciencias naturales',
  'Geografía',
];

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 1;

    return DefaultTabController(
        length: tabsCount,
        child: Scaffold(
            drawer: Drawer(
              child: Container(
                color: Colors.teal[300],
                child: Column(
                  children: [
                    Container(
                      width: 100,
                      height: 100,
                      margin: const EdgeInsets.only(top: 50, bottom: 10),
                      child: Image.network(
                          "https://icones.pro/wp-content/uploads/2021/02/icone-utilisateur.png"),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: Text(
                        "",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    ListTile(
                      title: const Text('cursos'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Notas'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      title: const Text('Estudiantes'),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Expanded(child: Container()),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      padding: const EdgeInsets.all(20),
                      width: double.infinity,
                      color: Colors.black87,
                      alignment: Alignment.center,
                      child: const Text(
                        "close",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              title: Container(
                width: 40,
                height: 40,
                child: Image.asset('images/logo.png'),
              ),
              actions: [
                Icon(
                  Icons.notifications,
                ),
              ],
            ),
            body: TabBarView(
              children: [
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      tileColor: index.isOdd ? oddItemColor : evenItemColor,
                      title: Text('${materias[index]} '),
                    );
                  },
                ),
              ],
            )));
  }
}
