# Brawl Box 2.1

Browser game with a loading screen and role administration (Developer / Moderator).

## Run locally
Extract `brawl-box-release.zip` into a new folder, run `node server.js`. Then open http://localhost:3000.

Set a strong `OWNER_CLAIM_TOKEN` environment variable on the server before starting. The first owner can claim Developer access with this secret; never commit the secret into GitHub.

## Render
Docker web service using the included Dockerfile. Assets and game code are packaged inside `brawl-box-release.zip`. The server is required for shared roles. Free Render instances have ephemeral storage; sessions/roles reset on instance replacement unless using a durable data store.

No real-time multiplayer battles are included.
