// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Script.sol";
import "../src/ethpricefeed.sol";

contract ReadEthPrice is Script {
    DataConsumerV3 dataConsumer;

    function setUp() public {
        // 初始化合约实例，替换为你的合约地址
        dataConsumer = DataConsumerV3(0x073Ad1e8c02595f3E2bbD442C4718476fbCd67C7);
    }

    function run() public {
        vm.startBroadcast();
        int price = dataConsumer.getChainlinkDataFeedLatestAnswer();
        console.logInt(price); // 打印价格到控制台
        vm.stopBroadcast();
    }
}