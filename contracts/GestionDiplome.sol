// SPDX-License-Identifier: GPL-3.
pragma solidity >=0.4.22 <0.9.0;

contract GestionDiplome {

    constructor()  {
    }

    struct Produit {
        uint idProduit;
        string nomProduit;
        uint Prix;
    }

    Produit[] private produits;

    function ajouterProduit (uint _id, string memory _nomProduit, uint _prix) public {
        Produit memory nouveauProduit = Produit(_id, _nomProduit, _prix);
        produits.push(nouveauProduit);
    }

    function totalProduit() public view returns (uint)  {
        return produits.length;
    }

    function voirUnProduit(uint i) public view returns (string memory)  {
        return produits[i].nomProduit;
    }

}
