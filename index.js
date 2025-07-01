const express = require("express")
const app = express()
const PORT = 3000
app.get('/', () =>{
    res.send("GCP")
})

app.listen(PORT, () => {
console.log("gcp serevr is running tv 3000")
})