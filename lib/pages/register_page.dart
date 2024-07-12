import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<RegisterPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _pixKeyController = TextEditingController();
  final TextEditingController _cpfController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'E-mail',
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
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Senha',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira sua senha.';
                  }
                  // Verificações adicionais de complexidade da senha podem ser feitas aqui
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _pixKeyController,
                decoration: InputDecoration(
                  labelText: 'Chave PIX',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira sua chave PIX.';
                  }
                  // Verificações adicionais da chave PIX podem ser feitas aqui
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                controller: _cpfController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'CPF',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, insira seu CPF.';
                  }
                  // Verificações adicionais do CPF podem ser feitas aqui
                  return null;
                },
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/donation_page');
                  }
                },
                child: Text('Cadastrar',
                  style: TextStyle(
                fontSize: 18,
                color: Colors.black, 
              ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
