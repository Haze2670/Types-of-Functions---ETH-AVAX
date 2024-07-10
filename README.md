ERC20 token

This Solidity smart contract implements the ERC20 standard with three main functions: Mint, Burn, and Transfer.

Description
This Solidity smart contract simulates a scenario where the contract owner can mint tokens for themselves or other users. Other users cannot mint tokens but can transfer and burn their own tokens.

Getting Started
Executing program
To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.21+commit.d9974bed.js

Once you are on the Remix website, create a new file by right-clicking clicking on the window on the left and clicking on new file. Save the file with a .sol extension (e.g., ErrorHandling.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    constructor() ERC20("CATTO", "CTO") {
        _mint(msg.sender, 1000000 * 10 ** uint256(decimals()));
    }

    function mintTokens(address to, uint256 amount) public {
        _mint(to, amount);
    }

    function transferTokens(address to, uint256 amount) public {
        transfer(to, amount);
    }

    function burnTokens(uint256 amount) public {
        _burn(msg.sender, amount);
    }
    
}

First, go to https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.21+commit.d9974bed.js

To get the code working, follow these steps:

on the left part of the website, right click and create new file and name the file Types-of-Functions---ETH-AVAX-Project.sol
paste the code provided above
on the left, click on the icon below the magnifying glass icon and it should show another window and press the blue button with the compile Types-of-Functions---ETH-AVAX-Project.sol written on it
click on the icon that is below the compile icon and press the orange deploy button to deploy the contract
Authors
Raymark
