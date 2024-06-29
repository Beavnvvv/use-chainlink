// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "forge-std/Script.sol";
import "../src/ethpricefeed.sol";

contract DeployDataConsumerV3 is Script {
    function run() external {
        vm.startBroadcast();
        new DataConsumerV3();
        vm.stopBroadcast();
    }
}