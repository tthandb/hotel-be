require('dotenv').config()
const express = require('express')
const passport = require('passport')
const cors = require('cors')
require('./config/passportConfig')(passport)
const app = express()
// const corsOptions = {
//   origin: ['hotel-fe-blush.vercel.app', 'localhost:3000'],
//   credentials: true
// }
// app.use(cors(corsOptions));
app.use(cors({ credentials: true, origin: ['https://hotel-fe-blush.vercel.app', 'http://localhost:3000'] }))
const session = require('express-session')
const routes = require('./routes')
const sessionStore = require('./config/promiseConnection')
const PORT = process.env.PORT
if (process.env.NODE_ENV === 'production') {
  app.use(express.static('client/build'))
}
app.use(express.urlencoded({ extended: true }))
app.use(express.json())
app.use(
  session({
    secret: 'hotelmgmt',
    store: sessionStore,
    resave: true,
    saveUninitialized: true,
    cookie: {
      maxAge: 3600000,
      sameSite: true,
    }
  })
)

app.use(passport.initialize())
app.use(passport.session())
app.use(routes)
app.get('/', (req, res) => {
  res.send('Hotel management')
})
app.listen(PORT, () =>
  console.log(`Server listening on http://localhost:${PORT}`)
)
