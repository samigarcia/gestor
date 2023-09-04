import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String _user = "";
  String _password = "";
  String _password1 = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 27, 27, 27),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
        children: <Widget>[
          Column(
            children: [
              const CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.blueAccent,
                child: Text(
                  "Registro",
                  style: TextStyle(
                    fontFamily: 'Times New Roman',
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 1, right: 265),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: const Color.fromARGB(255, 43, 73, 245),
                  ),
                  child: const Text('Guardar'),
                  onPressed: () {
                    debugPrint('Click Guardado');
                  },
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 280),
                child: const Text(
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  'Usuario',
                ),
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  textCapitalization: TextCapitalization.characters,
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: 'Ingrese su Usuario',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                    suffixIcon: Icon(
                      Icons.verified_user,
                      color: Colors.white,
                    ),
                  ),
                  onSubmitted: (valor) {
                    _user = valor;
                    // ignore: avoid_print
                    print('el nombre es: $_user');
                  },
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 210),
                child: const Text(
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  'Crear contraseña',
                ),
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black,
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.white,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.white),
                  ),
                  onSubmitted: (valor) {
                    _password = valor;
                    // ignore: avoid_print
                    print('la contraseña es: $_password');
                  },
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              Container(
                margin: const EdgeInsets.only(
                  right: 170,
                ),
                child: const Text(
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                  'Confirmar contraseña',
                ),
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  enableInteractiveSelection: false,
                  obscureText: true,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black,
                    suffixIcon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.white,
                    ),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onSubmitted: (valor) {
                    _password1 = valor;
                    // ignore: avoid_print
                    print('la contraseña es: $_password1');
                  },
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: TextField(
                  enabled: false,
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: 'seleciona una pregunta',
                    suffixIcon: Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onSubmitted: (valor) {},
                ),
              ),
              const Divider(
                height: 15.0,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: TextField(
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.black,
                    hintText: 'Respuesta',
                    hintStyle: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onSubmitted: (valor) {},
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
