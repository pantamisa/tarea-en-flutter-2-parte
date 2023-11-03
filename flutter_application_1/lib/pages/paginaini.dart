import 'package:flutter/material.dart';
import 'pagina2.dart';

class paginaini extends StatefulWidget {
  paginaini({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<paginaini> {
  final userrname = TextEditingController();
  final passw = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 200,
            child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrNmNNAo1mzssk_tEYpQcKH0SOnc1In1B6uCZleaqttiv61cle'),
          ),
          SizedBox(
            height: 60,
            width: 400,
            child: TextField(
              controller: userrname,
              autofocus: true,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'usuario',
              ),
            ),
          ),
          SizedBox(
            height: 60,
            width: 400,
            child: TextField(
              controller: passw,
              autofocus: true,
              textCapitalization: TextCapitalization.characters,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'contraseña',
              ),
            ),
          ),
          ElevatedButton(
            child: Text("ingresar"),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PAG2(),
                ),
              ),
            },
          ),
          Container(
              margin: EdgeInsets.all(10.0),
              child: ElevatedButton(
                child: Text("cancelar"),
                onPressed: () {
                  userrname.clear();
                  passw.clear();
                },
              )),
        ],
      )),
    );
  }
}
