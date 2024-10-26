//SPDX-License-Identifier:UNLICENSED

pragma solidity ^0.8.0;
import {Test, console2} from "forge-std/Test.sol";
import {Chatter} from "../src/Chatter.sol";

contract ChatterTest is Test {
    Chatter public chat;

    event Message(address indexed sender, string Message);

    function setUp() public {
        chat = new Chatter();
    }

    function test_sendMessage() public {
        vm.expectEmit(true, false, false, true);
        emit Message(address(this), "test");
        chat.sendMessage("test");
    }
}
