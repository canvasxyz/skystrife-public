## Sky Strife indexer

![sky strife cloud background](packages/client/src/public/assets/background.png)

This service provides a Sky Strife indexer that exposes
live and finished matches.

## Prerequisites

- `node` - Version 18.16.1 or greater
- `foundry` - Used to run your local node, run tests, and deploy contracts. [Install](https://github.com/foundry-rs/foundry#installation)
- `pnpm`

## Dev

```
pnpm i
pnpm start --filter=packages/headless-client
```

## Deployment

```
pnpm i
./deploy_indexer.sh
```
