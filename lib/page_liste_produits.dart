import 'package:flutter/material.dart';
import 'models/produit.dart';

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
    // L'affichage de la liste sera ajouté à l'étape 5.
    return Scaffold(
      appBar: AppBar(title: const Text("Liste de Produits")),
    );
  }
}
