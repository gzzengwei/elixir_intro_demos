const express = require('express')
const app = express()
const port = 3000
const fib = (x) => {
  if (x == 0 || x == 1) {
    return 1
  } else {
    return fib(x - 1) + fib(x - 2)
  }
}

app.get('/boom', (req, res) => {
  setTimeout(() => {
    throw new Error('Boom!!!!!');
  }, 5000)

  res.send(result)
})

app.get('/fib/:number', (req, res) => {
  let number = parseInt(req.params['number'])
  let result = fib(number).toString()
  res.send(result)
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
