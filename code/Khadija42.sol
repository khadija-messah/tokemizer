
 // SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Khadija42 is ERC20 {
    constructor() ERC20("khmessah42", "KH42") {
        _mint(msg.sender, 100_000 * 10 ** decimals());
    }
}
