// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {
    struct Product {
        string Product_name;
        uint256 Product_price;
    }

    mapping(uint256 => Product) public items;
    mapping(address => uint256) public playerInventory;
    uint256 public nextItemId = 1;

    constructor() ERC20("Degen", "DGN") {
    addItem("Bag", 5);
    addItem("Bat", 10);
    addItem("Ball", 2);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function transfer(address recipient, uint256 amount) public override returns (bool) {
        require(amount > 0, "Transfer amount must be greater than zero");
        require(recipient != address(0), "Invalid address");

        _transfer(_msgSender(), recipient, amount);
        return true;
    }

    function redeem(uint256 itemId) public returns (bool) {
        Product memory item = items[itemId];
        require(bytes(item.Product_name).length > 0, "Invalid item id");
        require(balanceOf(msg.sender) >= item.Product_price, "Insufficient balance");

        _burn(msg.sender, item.Product_price);
        playerInventory[msg.sender] += 1;
        return true;
    }

    function checkBalance(address account) public view returns (uint256) {
        return balanceOf(account);
    }

    function burn(uint256 amount) public {
        require(amount > 0, "Burn amount must be greater than zero");

        _burn(msg.sender, amount);
    }

    function addItem(string memory Product_name, uint256 Product_price) public onlyOwner {
        items[nextItemId] = Product(Product_name, Product_price);
        nextItemId += 1;
    }

    function getItemPrice(uint256 itemId) public view returns (uint256) {
        return items[itemId].Product_price;
    }

    function getItem(address player) public view returns (uint256) {
        return playerInventory[player];
    }
        function getAllItems() public view returns (Product[] memory) {
        Product[] memory allItems = new Product[](nextItemId - 1);
        for (uint256 i = 1; i < nextItemId; i++) {
            allItems[i - 1] = items[i];
        }
        return allItems;
    }
}
