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

```solidity

 function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount > 0, "Transfer amount must be greater than zero");
        require(recipient != address(0), "Invalid address");

        _transfer(_msgSender(), recipient, amount);
        return true;
    }

```

The transferTokens function allows the sender of the transaction to transfer tokens to another address _receiver. It takes two parameters: _receiver, the address of the recipient, and _value, the amount of tokens to be transferred.
The require statement checks whether the balance of the msg.sender (the caller of the function) is greater than or equal to _value. If the condition evaluates to false, meaning the sender does not have enough tokens, the function will revert with the error message "INSUFFICIENT TOKENS!!".
The approve function is called to allow the msg.sender to spend tokens on behalf of themselves. This function is required by the ERC20 standard to enable the transferFrom function.
The transferFrom function is called to transfer the tokens from the msg.sender to the _receiver address. It moves _value tokens from the msg.sender to _receiver.

```solidity

 function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

```

The checkBalance function is an external view function that allows an external caller to check the token balance of the address calling the function (msg.sender). It returns the token balance of the caller.

```solidity

function burn(uint256 amount) public {
        require(amount > 0, "Burn amount must be greater than zero");

        _burn(msg.sender, amount);
    }

```

The burnTokens function allows the sender to burn (destroy) a specified amount of their own tokens. It takes one parameter: _value, the amount of tokens to be burned.
The require statement checks whether the balance of the msg.sender (the caller of the function) is greater than or equal to _value. If the condition evaluates to false, meaning the sender does not have enough tokens, the function will revert with the error message "INSUFFICIENT TOKENS!!".
The _burn function is called to burn (remove) the specified amount of tokens from the msg.sender.

![Screenshot 2024-07-12 144136](https://github.com/user-attachments/assets/b6a73cea-b4ef-4d8a-abab-711828331de5)


## Authors

Shubham Kumar

## License

This project is licensed under the MIT License - see the License.md file for details.
