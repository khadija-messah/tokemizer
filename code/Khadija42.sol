```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

// Importation de l'implémentation standard ERC-20 depuis OpenZeppelin.
// Elle fournit les fonctions classiques d'un token : transfer, approve,
// transferFrom, balanceOf, totalSupply, etc.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Déclaration du contrat Khadija42.
// L'héritage ERC20 permet de réutiliser les fonctionnalités d'OpenZeppelin.
contract Khadija42 is ERC20 {

    // Constructeur exécuté une seule fois lors du déploiement.
    constructor() ERC20("khmessah42", "KH42") {

        // Création de l'offre initiale de 100 000 tokens.
        // msg.sender représente l'adresse qui déploie le contrat.
        // decimals() retourne 18 par défaut dans l'implémentation ERC-20
        // d'OpenZeppelin.
        // Le montant est donc multiplié par 10^18 pour tenir compte
        // des 18 décimales du token.
        // Tous les tokens initiaux sont attribués au déployeur.
        _mint(msg.sender, 100_000 * 10 ** decimals());
    }
}