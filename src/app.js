const express = require('express')

const http = require('http')


const app = express()

app.use(express.static('./'))

const server = http.Server(app)
server.listen(3000, () => {
    
    console.log('Started web server')
})
