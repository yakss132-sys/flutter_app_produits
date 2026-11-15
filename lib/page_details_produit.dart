import 'package:flutter/material.dart';
import 'models/produit.dart';

/// Page qui affiche les informations d'un produit reçu en paramètre.
class DetailsProduit extends StatelessWidget {
  final Produit produit;

  const DetailsProduit({super.key, required this.produit});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(produit.nom)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Nom : ${produit.nom}",
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),

            Text("Prix : ${produit.prix} \$", style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),

            const Text("Description :", style: TextStyle(fontSize: 18)),
            const SizedBox(height: 5),

            Text(produit.description, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
