## 42CringeLord Smart Contract Documentation

## Table of Contents

-   [Overview](#overview)
-   [Contract Details](#contract-details)
-   [Key Features](#key-features)
-   [Inheritance](#inheritance)
-   [Code Structure](#code-structure)
-   [Functionalities](#functionalities)
    -   [Constructor](#constructor)
    -   [Minting Function](#minting-function)
-   [Inherited Functionalities](#inherited-functionalities)
-   [Deployment](#deployment)
    -   [Requirements](#requirements)
    -   [How to deploy the contract from Remix IDE the first time](#how-to-deploy-the-contract-from-remix-ide-the-first-time)
    -   [Interact with the contract if it has already been deployed once](#interact-with-the-contract-if-it-has-already-been-deployed-once)
-   [Usage](#usage)
    -   [Approve](#approve)
    -   [Burn](#burn)
    -   [Burn From](#burn-from)
    -   [Mint](#mint)
    -   [Renounce Ownership](#renounce-ownership)
    -   [Transfer](#transfer)
    -   [Transfer From](#transfer-from)
    -   [Transfer Ownership](#transfer-ownership)
    -   [Allowance](#allowance)
    -   [Balance Of](#balance-of)
    -   [Decimals](#decimals)
    -   [Name](#name)
    -   [Owner](#owner)
    -   [Symbol](#symbol)
    -   [Total Supply](#total-supply)

##

### Overview

The CringeLord smart contract is an ERC-20 compliant token with additional minting and burning functionalities. This contract allows the owner to mint new tokens and provides standard token operations, including transferring and burning tokens. The contract is based on OpenZeppelin's robust and secure libraries, ensuring reliability and security in its implementation.

### Contract Details

    Contract Name: CringeLord
    Token Name: 42CringeLord
    Token Symbol: 42CL
    Decimals: 18 (default for ERC-20 tokens)

### Key Features

    ERC-20 Standard: Implements the basic functionalities of an ERC-20 token, including transfer, approve, and transferFrom.
    Minting Capability: The contract owner can mint new tokens and assign them to any address.
    Burnable: Token holders can burn their tokens to reduce the total supply.
    Ownership Control: The contract has an owner who can mint tokens and manage ownership-related functionalities.

### Inheritance

The CringeLord contract inherits from the following OpenZeppelin contracts:

    ERC20: Provides standard ERC-20 token functionality.
    ERC20Burnable: Adds the ability for token holders to burn their tokens.
    Ownable: Adds ownership control functionalities.

### Code Structure

Here is a breakdown of the code and its components:

```solidity
// SPDX-License-Identifier: MIT
// This license identifier is a mandatory comment to specify the license under which this contract is published.

// Compatible with OpenZeppelin Contracts ^5.0.0
// Indicates that this contract is compatible with OpenZeppelin Contracts version 5.0.0 and above.

pragma solidity ^0.8.20;
// Specifies the Solidity version required for this contract. This ensures compatibility with Solidity 0.8.20 and above.

// Import the ERC20 standard implementation from OpenZeppelin library.
import "@openzeppelin/contracts@5.0.2/token/ERC20/ERC20.sol";

// Import the ERC20Burnable extension, which adds burn functionality to the ERC20 token.
import "@openzeppelin/contracts@5.0.2/token/ERC20/extensions/ERC20Burnable.sol";

// Import the Ownable contract from OpenZeppelin, which provides basic authorization control functions.
import "@openzeppelin/contracts@5.0.2/access/Ownable.sol";

// The CringeLord contract inherits from ERC20, ERC20Burnable, and Ownable.
contract CringeLord is ERC20, ERC20Burnable, Ownable {
    /**
     * @dev Constructor that initializes the ERC20 token with a name and symbol,
     * and sets the initial owner of the contract.
     * @param initialOwner The address that will be set as the initial owner of the contract.
     */
    constructor(address initialOwner)
        ERC20("42CringeLord", "42CL") // Initializes the token with the name "42CringeLord" and symbol "42CL".
        Ownable(initialOwner) // Sets the initial owner of the contract to the provided address.
    {}

    /**
     * @dev Function to mint new tokens.
     * Can only be called by the owner of the contract.
     * @param to The address that will receive the minted tokens.
     * @param amount The amount of tokens to mint.
     */
    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount); // Calls the internal _mint function to create new tokens and assign them to the 'to' address.
    }
}
```

### Functionalities

#### 1. Constructor

```solidity
constructor(address initialOwner)
    ERC20("42CringeLord", "42CL")
    Ownable(initialOwner)
{}
```

-   **Purpose:** Initializes the contract with a name and symbol for the token and sets the initial owner of the contract.
-   **Parameters:** `initialOwner` - Address that will be assigned as the contract owner.

#### 2. Minting Function

```solidity
function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
}
```

-   **Purpose:** Allows the contract owner to mint new tokens and assign them to a specified address.

-   **Access control:** `onlyOwner` - Restricts the minting function to be called only by the contract owner.

-   **Parameters:**
    -   `to` - Address that will receive the minted tokens.
    -   `amount` - Number of tokens to mint.

### Inherited Functionalities

The CringeLord contract inherits the following functionalities from the OpenZeppelin contracts:

#### ERC20 Standard

-   **Transfer:** Allows token holders to transfer tokens to other addresses.
-   **Approve:** Allows token holders to approve another address to spend tokens on their behalf.
-   **TransferFrom:** Allows approved addresses to transfer tokens on behalf of token holders.
-   **Allowance:** Returns the amount of tokens that an address is allowed to spend on behalf of another address.
-   **BalanceOf:** Returns the token balance of a specific address.
-   **TotalSupply:** Returns the total supply of the token.
-   **Decimals:** Returns the number of decimal places used for the token.
-   **Name:** Returns the name of the token.
-   **Symbol:** Returns the symbol of the token.

##

## Deployment

### Requirements

-   See [deployment/DEPLOYMENT.md](https://github.com/ThePush/tokenizer/blob/main/deployment/DEPLOYMENT.md)

##

### How to deploy the contract from Remix IDE the first time

1. Open the Remix IDE and create a new file with the name `42CL.sol`.

2. Copy the code from the `42CL.sol` file in the `contracts` folder of this repository and paste it into the Remix IDE.

3. Go on the `Solidity compiler` tab and compile the contract by clicking on the `Compile contract-42CL.sol` button on the left side of the IDE.

4. Deploy the contract by clicking on the `Deploy & run transactions` tab on the left side of the IDE.

5. Select the environment `Injected Provider - MetaMask` to connect you MetaMask wallet and the account you want to deploy the contract from in the `Deploy` section.

6. Click on the `Deploy` button.

7. Confirm the transaction in your wallet.

8. The contract is now deployed and you can interact with it in the `Deployed/Unpinned Contracts` section of the IDE.

##

### Interact with the contract if it has already been deployed once

1. Open the Remix IDE and go on the `Solidity compiler` tab and compile the contract by clicking on the `Compile contract-42CL.sol` button on the left side of the IDE.

2. Go to the `Deploy & run transactions` tab on the left side of the IDE.

3. Select the environment `Injected Provider - MetaMask` to connect you MetaMask wallet and the account you want to deploy the contract from in the `Deploy` section.

4. In the `At Address` field, enter the address of the contract `0xf5496e66945e03914708d0e7b7324a15ca8d951c`, and click on the `At Address` button.

5. The contract is now deployed and you can interact with it in the `Deployed/Unpinned Contracts` section of the IDE.

##

## Usage

#### Approve

Before transferring tokens, the token holder needs to approve the contract to spend their tokens on their behalf. This is done by calling the `approve` function with the contract address and the amount of tokens to approve.

```solidity
approve(address spender, uint256 amount)
// Example: Approve the contract to spend 100 tokens on behalf of the token holder.
approve(contractAddress, 100);
```

#### Burn

Token holders can burn their tokens by calling the `burn` function with the amount of tokens they wish to burn.

```solidity
burn(uint256 amount)
// Example: Burn 50 tokens from the token holder's balance.
burn(50);
```

#### Burn From

If a token holder has approved another address to spend their tokens, the approved address can burn tokens on behalf of the token holder by calling the `burnFrom` function.

```solidity
burnFrom(address account, uint256 amount)
// Example: Burn 30 tokens from the token holder's balance on behalf of the approved address.
burnFrom(tokenHolder, 30);
```

#### Mint

To mint new tokens, the contract owner can call the `mint` function with the recipient's address and the amount of tokens to mint.
We use the `onlyOwner` modifier to restrict the minting function to the contract owner.
Tokens are 18 decimal places by default.
If you want to mint 100 tokens, you need to pass the value `100000000000000000000` as the amount.

```solidity
mint(address to, uint256 amount)
// Example: Mint 100 tokens and assign them to the recipient's address.
mint(recipientAddress, 100000000000000000000);
```

#### Renounce Ownership

The contract owner can renounce ownership by calling the `renounceOwnership` function. This will remove the owner's privileges, and the contract will no longer have an owner.

```solidity
renounceOwnership()
```

#### Transfer

Token holders can transfer tokens to other addresses using the standard ERC-20 `transfer` function.

```solidity
transfer(address recipient, uint256 amount)
// Example: Transfer 50 tokens to the recipient's address.
transfer(recipientAddress, 50);
```

#### Transfer From

If a token holder has approved another address to spend their tokens, the approved address can transfer tokens on behalf of the token holder by calling the `transferFrom` function.

```solidity
transferFrom(address sender, address recipient, uint256 amount)
// Example: Transfer 30 tokens from the sender's address to the recipient's address.
transferFrom(senderAddress, recipientAddress, 30);
```

#### Transfer Ownership

The contract owner can transfer ownership to another address by calling the `transferOwnership` function with the new owner's address.

```solidity
transferOwnership(address newOwner)
```

#### Allowance

The `allowance` function can be used to check the amount of tokens that an address is allowed to spend on behalf of another address.

```solidity
allowance(address owner, address spender)
```

#### Balance Of

The `balanceOf` function can be used to check the token balance of a specific address.

```solidity
balanceOf(address account)
```

#### Decimals

The `decimals` function returns the number of decimal places used for the token.

```solidity
decimals()
```

#### Name

The `name` function returns the name of the token.

```solidity
name()
```

#### Owner

The `owner` function returns the address of the contract owner.

```solidity
owner()
```

#### Symbol

The `symbol` function returns the symbol of the token.

```solidity
symbol()
```

#### Total Supply

The `totalSupply` function returns the total supply of the token.

```solidity
totalSupply()
```
