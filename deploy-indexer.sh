#!/usr/bin/env sh
pnpm --filter contracts build
cp packages/contracts/out/IWorld.sol/IWorld.abi.json .
fly deploy --build-arg NODE_ENV=production --remote-only
