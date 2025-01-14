@new-product
Feature: Ajouter un nouveau produit
  ETQ utilisateur je souhaite ajouter un nouveau produit

  Background: 
    Given Je visite l'application NopCommerce
    When Je saisis l'adresse mail "admin@yourstore.com"
    And Je saisis le login "admin"
    And Je clique sur le bouton Login
    Then Je me redirige vers la page home

  @add-product
  Scenario: Je souhaite ajouter un nouveau produit
    When Je clique sur catalog
    And Je clique sur products
    And Je clique sur add new
    And Je remplis les champs suivants
      | productName      | Book             |
      | shortDescription | La vie est belle |
    # | fullDescription  | Auteurs : Roberto Benigni et Vincenzo Cerami |
    And Je choisis une categorie
    And Je clique sur show on home page
    #And Je saisis le nom du nouveau produit "Parfum"
    #And Je clique sur le bouton save
