# Tokenizer
This 42 project aim to learn the basics in web3. I have to create my personal token!

# Introduction
## What is Cryptocurrency ?

Cryptocurrencies are digital currencies that use cryptography to secure transactions and control the creation of new units.

They are decentralized and run on a technology called blockchain, which is essentially a public ledger of all transactions made.

## What is cryptography ?

 Cryptography is a method of protecting information and communications using encryption keys : hiding information except for people with this key which would allow them to decrypt it.
 
 In the context of computing, cryptography refers to secure information and communication techniques derived from algorithms used to encrypt a message and therefore make it very difficult, or even impossible, to decipher.

This modern cryptography is based on four main pillars which are respectively:

- Confidentiality: Information can only be understood by the person for whom it is intended

- Integrity: the information cannot be altered or modified during its storage or transit between the sender and the recipient without this alteration being detected.

- No repudiation: The recipient or sender of the information cannot deny his intentions after having transmitted or sent the information.

- Authentication: The sender and recipient can confirm each other's identity and the origin/destination of the information.

## Token vs Coin

There are two main types of cryptocurrencies:

- Currencies (coins) like Bitcoin (BTC) or Ethereum (ETH), have their own independent blockchain

- Tokens, on the other hand, depend on the blockchain of another cryptocurrency.

For example, ERC-20 tokens depend on the Ethereum blockchain, SLP tokens on the Solana blockchain, etc.

Cryptos are used to pay for transactions, interact with smart contracts or even reward miners or validators who secure the network and verify transactions.


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
