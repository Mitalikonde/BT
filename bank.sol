// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8;
contract Bank{
    uint256 Balance;
    function deposit(uint256 value) public{
        Balance = Balance + value;
    }
    function show() public view returns(uint256){
        return(Balance);
    }
    function withdraw(uint256 value) public{
        Balance = Balance - value;
    }
}