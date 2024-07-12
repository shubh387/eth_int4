# DEGEN TOKEN (ERC-20): Unlocking the Future of Gaming


## Description


## Getting Started

### Executing program

To run this program, I have used online Remix Solidity IDE. You can visit the Remix website at https://remix.ethereum.org/ .
Extension used for creating a new file is .sol , example: fileName.sol

SMART CONTRACT CODE:

```solidity

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

```
The SPDX-License-Identifier comment is used to specify the license under which the contract is released. In this case, it is set to MIT.
The pragma solidity statement specifies the version of the Solidity compiler that should be used. In this case, it requires version 0.8.0 or higher.

```solidity

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

```

This import brings in the ERC20.sol file, which contains a standard implementation of the ERC-20 token. It provides basic functionalities like balanceOf, transfer, and allowance.

```solidity

import "@openzeppelin/contracts/access/Ownable.sol";

```

This import includes the Ownable.sol file, which provides a basic contract ownership mechanism. It ensures that certain functions can only be executed by the contract owner.

```solidity

contract GT is ERC20, Ownable {

```

This line defines a new Solidity contract called GT. It inherits from three other contracts: ERC20, Ownable.
