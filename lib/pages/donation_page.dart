import 'package:flutter/material.dart';
import 'package:hackathon/models/minifitalina.dart';
import 'package:provider/provider.dart';
import '../components/my_bottom.dart';
import '../components/my_product_tile.dart';
import '../models/drogaboa.dart';


class DonationPage extends StatelessWidget {
  const DonationPage({ super.key });

  @override
  Widget build(BuildContext context) {
      final remedios = context.watch<Remedios>().donation;
   
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 2,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  Text("Doações Disponiveis"),

          
       ),
         body: ListView(children: [
        const SizedBox(height: 25),
        Center(
            child: Text("Somente produtos selecionados",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ))),
        SizedBox(
          height: 550,
          child: ListView.builder(
              itemCount: remedios.length,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemBuilder: (context, index) {
                final Remedios = remedios[index];
                return MyProductTile(product: Remedios);
              }),
        )
      ]),
        
      bottomNavigationBar: BottomTabs(),
    );
  }
}