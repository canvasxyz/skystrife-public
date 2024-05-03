FROM node:20-buster

WORKDIR /app
COPY package.json package.json
COPY packages packages
COPY pnpm-lock.yaml pnpm-lock.yaml
COPY pnpm-workspace.yaml pnpm-workspace.yaml
RUN npm install -g pnpm
RUN pnpm install

RUN mkdir -p packages/headless-client/node_modules/contracts/out/IWorld.sol
COPY IWorld.abi.json packages/headless-client/node_modules/contracts/out/IWorld.sol/IWorld.abi.json

CMD ["pnpm", "start"]
