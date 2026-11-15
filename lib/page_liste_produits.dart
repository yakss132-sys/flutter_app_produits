import 'package:flutter/material.dart';
import 'models/produit.dart';
import 'page_details_produit.dart';

/// Page principale qui affichera la liste des produits.
class ListProduits extends StatelessWidget {
  ListProduits({super.key});

  final List<Produit> produits = [
    Produit(
      nom: "Ordinateur Portable",
      description: "Laptop puissant pour travail et gaming.",
      prix: 1200.0,
    ),
    Produit(
      nom: "Smartphone",
      description: "Téléphone nouvelle génération avec triple caméra.",
      prix: 900.0,
    ),
    Produit(
      nom: "Casque Bluetooth",
      description: "Casque sans fil avec réduction de bruit.",
      prix: 150.0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Liste de Produits")),
      body: ListView.builder(
        itemCount: produits.length,
        itemBuilder: (context, index) {
          final produit = produits[index];
          // Chaque produit est affiché dans une Card
          return Card(
            elevation: 3,
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                produit.nom,
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text("${produit.prix} \$"),
              trailing: ElevatedButton(
                child: const Text("Voir"),
                onPressed: () {
                  // Navigation vers la page Détails en passant le produit sélectionné
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsProduit(produit: produit),
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
