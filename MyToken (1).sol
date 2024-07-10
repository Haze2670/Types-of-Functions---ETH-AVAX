// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract MyToken is ERC20 {

    constructor() ERC20("HAZE", "HZE") {
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