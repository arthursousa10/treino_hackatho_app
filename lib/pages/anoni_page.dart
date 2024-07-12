import 'package:flutter/material.dart';

class AnonimosPage extends StatelessWidget {
  const AnonimosPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Conheça a Hope Assistance'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: 
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            Image.network("https://firebasestorage.googleapis.com/v0/b/hopeassistence.appspot.com/o/hopeassistence_logo_sf.png?alt=media&token=9c6e4300-58cc-4313-ae69-91876f86f1e6"),
            SizedBox(height: 20),
            const Text(
              'Bem-vindo! Por favor, escolha uma opção para continuar:',
               style: TextStyle(
                fontSize: 18),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/donation_page');
              },
              child: const Text('Entrar como Anônimo',
               style: TextStyle(
                fontSize: 18,
                color: Colors.black, // Alteração da cor do texto para azul
              ),),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login_page');
              },
              child: const Text('Entrar com Conta Cadastrada',
               style: TextStyle(
                fontSize: 18,
                color: Colors.black, 
              ),
              
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnonymousHomePage extends StatelessWidget {
  const AnonymousHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Anônimo'),
      ),
      body: const Center(
        child: Text('Bem-vindo ao modo anônimo!'),
      ),
    );
  }
}
