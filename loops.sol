// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract loops{

    function loopstuck() external pure{
        uint a = 0;
        while (a < 1000){
            a++;
        }
        for (uint i=0 ; i<=10 ;i++){
            if(i==5){
                continue; 
            }
        }
    }
    function sum(uint _a) external pure returns(uint){
        uint s;
        for(uint i=0; i<=_a; i++){
            s += i;
        }
        return s;
    }
}    