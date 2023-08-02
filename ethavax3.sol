// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // public variables here
    string public tokenname ="Microprocessor";
    string public tokenAbbrv = "MP";
    uint public totalsupply = 0;

    // mapping variable here
    mapping(address => uint) public myamount;

    // mint function
    function mint (address _address,uint _cost) public{
        totalsupply += _cost;
        myamount[ _address] += _cost;
    } 
    // burn function
    function burn(address _address,uint _cost) public{
        if (myamount[_address] >= _cost){
            totalsupply -= _cost;
            myamount[_address] -=_cost;
        }
    }
}
