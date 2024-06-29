// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "../src/ethpricefeed.sol";

contract TestDataConsumerV3 is Test {
    DataConsumerV3 public dataConsumer;

    function setUp() public {
        // 部署合约
        dataConsumer = new DataConsumerV3();
    }

    function testGetLatestPrice() public {
        // 调用合约方法获取价格
        int price = dataConsumer.getChainlinkDataFeedLatestAnswer();
        console.logInt(price); // 打印价格到控制台
        // 进行断言，确保价格大于0
        assertTrue(price > 0);
    }
}