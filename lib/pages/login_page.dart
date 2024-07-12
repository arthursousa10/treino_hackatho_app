import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Aqui está a Image.network adicionada acima do formulário de login
              Image.network(
                'https://firebasestorage.googleapis.com/v0/b/hopeassistence.appspot.com/o/hopeassistence_logo_sf.png?alt=media&token=9c6e4300-58cc-4313-ae69-91876f86f1e6', // URL da sua imagem
                height: 400, // Altura desejada da imagem
                width: 400, // Largura desejada da imagem
                fit: BoxFit.contain, // Ajuste da imagem dentro do espaço disponível
              ),
              const SizedBox(height: 20), // Espaçamento entre a imagem e o formulário
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    TextFormField(
                      autofocus: true,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Color.fromARGB(255, 3, 3, 3), fontSize: 20),
                      decoration: const InputDecoration(
                        labelText: "E-mail do usuário",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira seu e-mail.';
                        }
                        return null;
                      },
                    ),
                    Divider(),
                    TextFormField(
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                      decoration: InputDecoration(
                        labelText: "Senha do usuário",
                        labelStyle: TextStyle(color: Colors.black),
                      ),
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Por favor, insira sua senha.';
                        }
                        return null;
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/forgot_page');
                      },
                      child: const Text(
                        'Esqueceu sua senha?',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                 const   Divider(),
                    ButtonTheme(
                      height: 60.0,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.pushNamed(context, '/donation_page');
                          }
                        },
                        child: const Text(
                          "Entrar",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 30),
                        ),
                        
                      ),
                    ),
                     TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_page');
                      },
                      child: const Text(
                        'criar conta',
                        style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
