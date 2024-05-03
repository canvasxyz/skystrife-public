import { Has, defineEnterSystem } from "@latticexyz/recs";
import { createSkyStrife } from "./createSkyStrife";
import express from "express";

export const finishedMatches = new Set<string>();

const port = 8000;
const skyStrife = await createSkyStrife();

const {
  networkLayer: {
    world,
    components: { MatchConfig, MatchFinished },
  },
} = skyStrife;

defineEnterSystem(world, [Has(MatchConfig), Has(MatchFinished)], ({ entity }) => {
  const appTopic = `${entity}.canvas.xyz`;
  finishedMatches.add(appTopic);
});

const api = express();
api.set("query parser", "simple");
api.use(express.json());

api.get("/", async (req, res) =>
  res.json({
    finishedMatches: Array.from(finishedMatches),
  }),
);

api.listen(port, "::", () => {
  const host = `http://localhost:${port}`;
  console.log(`[skystrife-indexer] API server listening on ${host}`);
  console.log(`GET  ${host}/`);
});

process.on("SIGINT", async () => {
  console.log("\nReceived SIGINT. Attempting to shut down gracefully.");
  api.close();
  process.exit(0);
});
