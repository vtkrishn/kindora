'use strict';

var express = require("express");
var redis = require("redis");

var client = redis.createClient();
var app = express();

client.on('connect', function() {
    console.log('connected');
});

client.get('vinod', function(err, reply) {
    console.log(reply);
});
