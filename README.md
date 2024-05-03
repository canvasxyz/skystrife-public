## Sky Strife indexer and libp2p relay

![sky strife cloud background](packages/client/src/public/assets/background.png)

# Dev Setup

## Prerequisites

- `node` - Version 18.16.1 or greater
- `foundry` - Used to run your local node, run tests, and deploy contracts. [Install](https://github.com/foundry-rs/foundry#installation)

## Steps

1. Install the latest forge using `foundryup` (see [Foundry docs](https://book.getfoundry.sh/getting-started/installation)).

   If necessary, you can update to a new version of [Rust](https://doc.rust-lang.org/book/ch01-01-installation.html).

   ```sh copy
   rustup update
   ```

2. Clone the repository and install dependencies

   ```sh copy
   git clone https://github.com/latticexyz/skystrife-public.git
   cd skystrife-public
   pnpm install
   ```

3. Start your local node, deploy contracts, and start the client.

   ```sh copy
   pnpm dev
   ```

4. Browse to [`http://localhost:1337`](http://localhost:1337) to view the client.

   If you get an error saying `The connected Sky Strife world is not valid.`, wait about a minute and reload.
   It takes some time for the contracts to build and deploy.

   You should automatically be connected as the admin of the world.

## Deployment

TBD
