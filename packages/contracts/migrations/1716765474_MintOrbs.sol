// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

import "forge-std/Script.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { IWorld } from "../src/codegen/world/IWorld.sol";

import { IERC20Mintable } from "@latticexyz/world-modules/src/modules/erc20-puppet/IERC20Mintable.sol";

// table imports
import { SkyPoolConfig } from "../src/codegen/index.sol";

contract MintOrbs is Script {
  function run(address worldAddress) external {
    IWorld world = IWorld(worldAddress);
    StoreSwitch.setStoreAddress(worldAddress);

    uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
    address deployerAddress = vm.addr(deployerPrivateKey);
    vm.startBroadcast(deployerPrivateKey);

    IERC20Mintable orbToken = IERC20Mintable(SkyPoolConfig.getOrbToken());
    orbToken.mint(address(0x70997970C51812dc3A010C7d01b50e0d17dc79C8), 10_000 ether);

    vm.stopBroadcast();
  }
}
