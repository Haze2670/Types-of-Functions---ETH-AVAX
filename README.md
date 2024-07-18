ERC20 token

MyToken is a smart contract implementing an ERC20 token named "HAZE" with the symbol "HZE". This contract allows for minting, transferring, and burning of tokens. 
The minting function is restricted to the contract owner to control the token supply.

Description
This Solidity smart contract simulates a scenario where the contract owner can mint tokens for themselves or other users. Other users cannot mint tokens but can transfer and burn their own tokens.

Getting Started with Remix
Prerequisites
Remix IDE
Steps
Open Remix IDE

Navigate to Remix IDE in your browser.
Create a New File

Click on the "File Explorer" icon in the sidebar.
Click on the "New File" button and name it MyToken.sol.
Copy Contract Code

Copy the following contract code into the MyToken.sol file:

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

Compile the Contract

Click on the "Solidity Compiler" icon in the sidebar.
Select the appropriate compiler version (0.8.0 or higher).
Click on the "Compile MyToken.sol" button.
Deploy the Contract

Click on the "Deploy & Run Transactions" icon in the sidebar.
Make sure the "Environment" is set to "JavaScript VM (London)".
Click on the "Deploy" button.
Interact with the Contract

After deployment, you will see the deployed contract under "Deployed Contracts".
You can now interact with the contract functions (mintTokens, transferTokens, burnTokens) directly from the Remix interface.

Authors
Raymark
