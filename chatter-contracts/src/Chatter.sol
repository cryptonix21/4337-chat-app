//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.0;

contract Chatter {
    event Message(address indexed sender, string Message);

    function sendMessage(string calldata message) public {
        emit Message(msg.sender, message);
    }
}
