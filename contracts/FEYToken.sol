// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.24;

import {ERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "./Ownable.sol";

contract FEYToken is ERC20, ERC20Permit, Ownable {
    constructor(
        uint256 initialSupply
    ) public ERC20("Feyorra", "FEY") ERC20Permit("Feyorra") {
        _mint(_msgSender(), initialSupply);
    }

    function burn(uint256 value) public onlyOwner {
        _burn(_msgSender(), value);
    }

    function mint(uint256 value) public onlyOwner {
        _mint(_msgSender(), value);
    }
}
