/// Modèle représentant un produit.
/// Sert à stocker les informations de chaque produit affiché dans l'application.
class Produit {
  final String nom;
  final String description;
  final double prix;

  Produit({
    required this.nom,
    required this.description,
    required this.prix,
  });
}
