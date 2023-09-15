// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract Statevariables{
   string hey = "hello world!";
   uint number;
   bool statement = true;
   address place = 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;

//this will set the state variables into assigned values
   function sethey(string memory _hey) public{
       hey = _hey;
   }
   function setnumber(uint _number) public{
       number = _number;
   }
   function setstatement(bool _statement) public {
       statement = _statement;
   }
   function setplace(address _place) public{
       place = _place;
   }
//this will get the assigned values
    function getvariables() view public returns(string memory,uint,bool,address){
        return(hey,number,statement,place);
    }
}