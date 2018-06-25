const express = require('express')
const config = require('./config')


// App

const app = express()
app.get('/', (req, res) => res.send('Hello World!'))
app.listen(config.PORT, () => console.log(`Example app listening on port ${config.PORT}!`))
