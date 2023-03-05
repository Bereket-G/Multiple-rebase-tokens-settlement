// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract wBTC is ERC20("Wrapped BTC", "WBTC") {
    constructor() public {
        _mint(msg.sender, 1000000000);
    }
}
