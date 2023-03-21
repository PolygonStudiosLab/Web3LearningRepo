// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/draft-ERC20Permit.sol";

contract ERC20P is ERC20, ERC20Permit {
    constructor(
      string memory name_, 
      string memory symbol_, 
      uint256 initialSupply_
      ) ERC20(name_, symbol_) ERC20Permit(name_) {
      _mint(msg.sender , initialSupply_);
    }
}