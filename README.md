# Building-on-Avalanche-ETH-AVAX
ETH + AVAX PROOF: Intermediate EVM Course | Building on Avalanche - ETH + AVAX

## Features

1. **ERC-20 Token**: Inherits from the OpenZeppelin ERC20 standard, providing basic token functionalities.
2. **Ownership**: Utilizes the Ownable contract from OpenZeppelin, ensuring that certain functions can only be executed by the contract owner.
3. **Item Marketplace**: Allows the owner to add items with names and prices to the marketplace.
4. **Player Inventory**: Tracks the inventory of players who can redeem items using their token balances.
5. **Minting**: The contract owner can mint new tokens and distribute them to specific addresses.
6. **Transferring**: Overrides the ERC-20 `transfer` function to add custom logic or features.
7. **Burning**: Token holders can burn a specified amount of their tokens.
