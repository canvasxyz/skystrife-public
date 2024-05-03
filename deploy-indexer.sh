#!/usr/bin/env sh
cp packages/contracts/out/IWorld.sol/IWorld.abi.json .
fly deploy --build-arg NODE_ENV=production --remote-only -a skystrife-indexer -c service.fly.toml
