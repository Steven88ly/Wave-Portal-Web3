//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
    uint256 totalWaves;
    mapping(address => uint256) public waveMap;

    constructor() {
        console.log("REEEEEEEEEEEEEEEEE");
    }

    function wave() public {
        totalWaves++;
        waveMap[msg.sender]++;
        console.log("%s has waved %d times!", msg.sender, waveMap[msg.sender]);
        
    }

    function getTotalWaves() public view returns (uint256){
        console.log("We have %d total waves", totalWaves);
        return totalWaves;
    }
}
