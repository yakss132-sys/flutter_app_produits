# flutter_app_produits

Atelier Flutter 06 – Échange des données entre pages
Cours : Développement d'applications – Techniques des systèmes informatiques (2e année)
Étudiant : Yacoub Bâ

## Description

Application Flutter qui affiche une liste de produits. Le bouton **Voir** de chaque
produit ouvre une page de détails en lui transmettant l'objet `Produit` sélectionné.

## Structure

```
lib/
├── main.dart                   # Point d'entrée : ListProduits comme page d'accueil
├── models/
│   └── produit.dart            # Modèle Produit (nom, description, prix)
├── page_liste_produits.dart    # ListProduits : ListView + Card + ListTile
└── page_details_produit.dart   # DetailsProduit : affiche le produit reçu
```

## Lancer le projet

```bash
flutter pub get
flutter run
```
