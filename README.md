# 42 project Tokenizer
# Introduction
### Qu’est-ce qu’une crypto-monnaie ?

Les crypto monnaies sont des monnaies numériques qui utilisent la cryptographie pour sécuriser les transactions et contrôler la création de nouvelles unités.

Elles sont décentralisées et fonctionnent sur une technologie appelée blockchain, qui est essentiellement un registre public de toutes les transactions effectuées.

### Qu’est-ce que la cryptographie ?

Concrètement, la cryptographie est une méthode visant à protéger des informations et communications en utilisant des clés de chiffrement. Voyez ici une méthode de dissimuler une information exceptée pour les personnes possédant cette clé (souvent les destinataires du message) qui leur permettrait de déchiffrer celui-ci. Dans le contexte de l’informatique, la cryptographie, fait référence à des techniques d’information et de communication sécurisées dérivées d 'lgorithmes utilisés pour chiffrer un message et donc le rendre très difficile, voire impossible, à déchiffrer.

Cette cryptographie moderne se base sur quatre grands piliers qui sont respectivement :

- La confidentialité : L'information ne peut être comprise que par la personne à qui elle est destinée

- L'intégrité : l'information ne peut pas être altérée ou modifiée lors de son stockage ou de son transit entre l'expéditeur et le destinataire sans que cette altération ne soit détectée.

- La non-répudiation : Le destinataire ou l’expéditeur de l’information ne peut pas nier ses intentions après avoir effectué la transmission ou l’expédition de l’information.

- Authentification : L'expéditeur et le destinataire peuvent confirmer l'identité de l'autre et l'origine / destination de l'information.


### Token vs Coin : Quelle est la différence ?

Il y a deux principaux types de crypto monnaies :
- Les monnaies (coins) comme Bitcoin (BTC) ou Ethereum (ETH), ont leur propre blockchain indépendante
- Les jetons (tokens), en revanche, dépendent de la blockchain d'une autre crypto monnaie.

Par exemple, les jetons ERC-20 dépendent de la blockchain Ethereum, les jetons SLP de la blockchain Solana, etc.

Les cryptos servent à payer des transactions, interagir avec des contrats intelligents ou encore de récompenser les mineurs ou les validateurs qui sécurisent le réseau et vérifient les transactions. 


###


## Implementation choices

### Why I chose Ethereum over other blockchain platforms



### Why I chose ERC20 over other token standards

-   ERC20 is a standard interface for fungible tokens, meaning that each token is identical to every other token. **_This is the most common type of token on the Ethereum network._**
-   Other token standards, such as ERC721 and ERC1155, are used for non-fungible tokens, which are unique and indivisible tokens.
-   ERC20 tokens are supported by most exchanges and wallets, making them **_easy to integrate._**
-   ERC20 tokens are **_easy to create and deploy_**, and they can be used for a wide range of applications, from simple token transfers to complex decentralized applications.
-   ERC20 tokens are **_interoperable_**, meaning that they can be used with other smart contracts and decentralized applications on the Ethereum network.
-   ERC20 tokens are **_secure and reliable_**, as they are based on the Ethereum network, which is one of the most secure and reliable blockchain networks in the world.
-   ERC20 tokens are **_transparent and auditable_**, as all transactions are recorded on the Ethereum blockchain and can be easily verified by anyone.

### Why I chose Solidity as the programming language

-   Solidity is a **_contract-oriented, high-level language for implementing smart contracts_** that is specifically designed for writing smart contracts on the Ethereum network. It was influenced by C++, Python and JavaScript and is designed to target the Ethereum Virtual Machine (EVM).

Solidity is statically typed, supports inheritance, libraries and complex user-defined types among other features.

### Why I chose to deploy with Remix IDE

-   Remix IDE is an **_online development environment_** that allows you to write, test, and deploy smart contracts on the Ethereum network.
-   Remix IDE is **_easy to use_**, with a simple and intuitive interface that makes it easy to write and deploy smart contracts.

### Why I chose to deploy on the Sepolia testnet

-   The Sepolia testnet is a **_public test network_** that is designed to test smart contracts and decentralized applications before deploying them on the Ethereum mainnet.
-   The Sepolia testnet is **_fast and reliable_**, with low transaction fees and high throughput, making it ideal for testing and deploying smart contracts.

### Why I chose to use the MetaMask wallet

-   MetaMask is a **_popular Ethereum wallet_** that allows you to store, send, and receive ERC20 tokens and other cryptocurrencies.
-   MetaMask is **_easy to use_**, with a simple and intuitive interface that makes it easy to manage your tokens and interact with decentralized applications.

### Why I chose to use the Etherscan blockchain explorer

-   Etherscan is a **_blockchain explorer_** that allows you to view and verify transactions on the Ethereum network.
-   Etherscan is **_easy to use_**, with a simple and intuitive interface that makes it easy to search for transactions and view detailed information about smart contracts and decentralized applications.

### Conclusion

In conclusion, I chose to create an **_ERC20_** token using the **_Remix IDE_**, deploy it on the **_Sepolia_** testnet, and interact with it using the **_MetaMask_** wallet and the **_Etherscan_** blockchain explorer because they are all easy to use, reliable, and secure tools that make it easy to create, deploy, and interact with smart contracts on the Ethereum network.

**Keep It Simple, Stupid**

##

### File structure

```bash
tokenizer
├── code
│   └── 42DK.sol
├── deployment
│   └── README.md
├── documentation
│   └── README.md
└── README.md
```

### File content

-   **_42DK.sol_**: This file contains the Solidity code for the ERC20 token.

-   **_DEPLOYMENT.md_**: This file contains the requirents needed to deploy the ERC20 token on the Sepolia testnet using Remix IDE, MetaMask wallet, and Etherscan blockchain explorer.

-   **_DOCUMENTATION.md_**: This file contains the documentation for the ERC20 token, including the token name, symbol, total supply, and other details as well as the instructions for deploying the ERC20 token on the Sepolia testnet using Remix IDE.

-   **_README.md_**: This file contains the introduction to the project and the implementation choices.
