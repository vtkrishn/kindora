const express = require('express');
const passport = require('passport');
const session = require('express-session');
const redis = require('connect-redis')(session);

const app = express();
app.use(session({
  store : new RedisStore({
    
  })
}))