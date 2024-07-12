import 'package:flutter/material.dart';

// Define a página de Medicações como um StatefulWidget
class Medications extends StatefulWidget {
  const Medications({Key? key}) : super(key: key);

  @override
  _MedicationsState createState() => _MedicationsState();
}

// Estado da página de Medicações
class _MedicationsState extends State<Medications> {
  // Variável para armazenar a quantidade de doação
  double _donationAmount = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Título da página
        title: const Text(
          'Doação Feliz',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Imagem carregada da internet
            Image.network(
              'https://via.placeholder.com/400x200.png?text=Doação',
              height: 200,
            ),
            const SizedBox(height: 20),
            // Texto para orientar o usuário
            const Text(
              'Selecione o valor da doação:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            // Slider para selecionar o valor da doação
            Slider(
              value: _donationAmount,
              min: 1.0,
              max: 100.0,
              divisions: 99,
              label: _donationAmount.toStringAsFixed(2),
              onChanged: (value) {
                setState(() {
                  _donationAmount = value; // Atualiza o valor da doação
                });
              },
            ),
            const SizedBox(height: 20),
            // Botão para confirmar a doação
            ElevatedButton(
              onPressed: () {
                _showConfirmationDialog(); // Mostra o diálogo de confirmação
              },
              child: Text(
                'Doar R\$ ${_donationAmount.toStringAsFixed(2)}',
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

  // Método para mostrar o diálogo de confirmação
  void _showConfirmationDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Confirmação'),
          content: Text(
              'Você deseja doar R\$ ${_donationAmount.toStringAsFixed(2)}?'),
          actions: [
            // Botão para cancelar a doação
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o diálogo
              },
              child: const Text('Cancelar'),
            ),
            // Botão para confirmar a doação
            ElevatedButton(
              onPressed: () {
                // Lógica para processar a doação
                Navigator.of(context).pop(); // Fecha o diálogo
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        'Doação de R\$ ${_donationAmount.toStringAsFixed(2)} realizada com sucesso!'),
                  ),
                );
              },
              child: const Text('Confirmar'),
            ),
          ],
        );
      },
    );
  }
}
