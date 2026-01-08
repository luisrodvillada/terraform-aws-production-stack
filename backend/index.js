const express = require("express");
const os = require("os");

const app = express();

app.get("/api/ping", (req, res) => {
    res.json({
        status: "ok",
        host: os.hostname(),
    });
});

app.listen(3000, () => {
    console.log("Backend running on port 3000, Eres un maquina Luis");
});
