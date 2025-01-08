// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.24;

import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract FEYToken is ERC20, ERC20Permit, Ownable {
    constructor(
        address _bridge
    ) ERC20("Feyorra", "FEY") ERC20Permit("Feyorra") Ownable(_bridge) {}

    function burn(uint256 _amount) external onlyOwner {
        _burn(_msgSender(), _amount);
    }

    function mint(uint256 _amount) external onlyOwner {
        _mint(_msgSender(), _amount);
    }
}
