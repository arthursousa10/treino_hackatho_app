import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  const ForgotPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController _emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text('Redefinir Senha'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Esqueceu sua senha?',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Digite seu e-mail para receber instruções sobre como redefinir sua senha.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: 'E-mail',
                hintText: 'Digite seu e-mail',
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor, insira seu e-mail.';
                }
                // Verificação adicional de formato de e-mail pode ser feita aqui
                return null;
              },
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String email = _emailController.text.trim();
                // Mostrar um AlertDialog usando showDialog
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Enviar e-mail de redefinição para:'),
                      content: Text(email),
                      actions: <Widget>[
                        TextButton(
                          child: const Text('OK'),
                          onPressed: () {
                            Navigator.of(context).pop(); // Fecha o AlertDialog
                          },
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Enviar')
              ,
            ),
          ],
        ),
      ),
    );
  }
}
