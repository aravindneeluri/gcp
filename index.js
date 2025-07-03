const express = require("express")
const app = express()
const PORT = 3000
app.get('/', (req, res) =>{
    res.send("GCP")
})

app.listen(PORT, () => {
console.log("gcp serevr is running at 3000")
})