// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract EtherConverter {
    function convertEther() public payable returns (uint, uint, uint) {
        uint weiValue = msg.value;
        uint etherValue = weiValue / 1 ether;
        uint gweiValue = weiValue / 1 gwei;
        
        return (weiValue, etherValue, gweiValue);
    }
}
