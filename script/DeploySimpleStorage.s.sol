// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0 ;

import {Script} from "forge-std/Script.sol" ;
import {SimpleStorage} from "../src/SimpleStorage.sol";
contract DeploySimpleStorage is Script{
function run() external returns (SimpleStorage) {
    vm.startBroadcast();
    // everything wrtten affter this line of code will be sent to rpc 
SimpleStorage simpleStorage = new SimpleStorage();

    vm.stopBroadcast();
    return simpleStorage;
}
}
