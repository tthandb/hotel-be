const router = require('express').Router()
const passport = require('passport')

router.route('/').post(passport.authenticate('local'), (req, res) => {
  res.status(200).json({ user: req.user })
})

router.route('/status').get((req, res) => {
  res.status(200).json(req.isAuthenticated())
})

module.exports = router
