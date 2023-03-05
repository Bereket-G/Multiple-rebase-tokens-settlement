// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.4;

import "../interfaces/IOracle.sol";
import "../wBTC.sol";

/**
 * @title Mock oracle
 */
contract MockOracle is IOracle {
    uint256 private data;
    bool private success;
    uint256 private wBTCPrice;

    /**
     * Return mocked data returned by the oracle
     */
    function getData() external view override returns (uint256, bool) {
        return (data, success);
    }


    /**
     * Return mocked data returned by the oracle
     */
    function getComplementData() external view override returns (uint256, bool) {
        return (wBTCPrice - data, success);
    }

    /**
    * Sets the wBTCPrice
    */
    function setWBTCPrice(uint256 _wBTCPrice) external {
        wBTCPrice = _wBTCPrice;
    }


    /**
     * Return sets the mocked data
     */
    function setData(uint256 dt, bool v) external {
        data = dt;
        success = v;
    }
}
