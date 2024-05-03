#!/usr/bin/env sh
cp packages/contracts/out/IWorld.sol/IWorld.abi.json .
#fly deploy --build-arg NODE_ENV=production --remote-only -a canvas-chat-discovery-p0 -c services/p0.fly.toml
fly deploy --build-arg NODE_ENV=production --remote-only -a canvas-chat-discovery-p1 -c services/p1.fly.toml
fly deploy --build-arg NODE_ENV=production --remote-only -a canvas-chat-discovery-p2 -c services/p2.fly.toml
