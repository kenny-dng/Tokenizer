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

// The DK contract inherits from ERC20, ERC20Burnable, and Ownable.
contract DK is ERC20, ERC20Burnable, Ownable {
    /**
     * @dev Constructor that initializes the ERC20 token with a name and symbol,
     * and sets the initial owner of the contract.
     * @param initialOwner The address that will be set as the initial owner of the contract.
     */
    constructor(address initialOwner)
        ERC20("42DK", "42DK") // Initializes the token with the name "42DK" and symbol "42CL".
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
