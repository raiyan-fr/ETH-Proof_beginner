// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract calculator{
    function sum(uint a,uint b) external pure returns(uint) {
        return a + b;
    }
    function subtract(uint a,uint b) external pure returns(uint) {
        return a - b;
    }
    function multiply(uint a,uint b) external pure returns(uint) {
        return a * b;
    }
    function divide(uint a,uint b) external pure returns(uint) {
        return a / b;
    }
    function exponent(uint base,uint power) external pure returns(uint) {
        if (power == 0){
            return 1; // anything to the power of zero is 1
        }
        uint result = 1;
        for(uint i=0; i<power ;i++){
            result *= base;
        }
        return result;
    }
    function modulo(uint a,uint b) external pure returns(uint) {
        require(b != 0, "Divisor cannot be zero");//require identifier basically reverts the call if the condition is not met
        return a % b;// Calculates the remainder of a divided by b
    }
}