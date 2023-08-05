// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console2} from "forge-std/Test.sol";
import {Soladyfi} from "../src/Soladyfi.sol";

contract SoladyfiTest is Test {
    
    Soladyfi public soladyfi;

    function setUp() public {
        soladyfi = new Soladyfi();
    }

}
