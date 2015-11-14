#!/usr/bin/env node

// Reads GSON from stdin and spits out decoded value to stdout

var gson = require('gson');
var stdin = process.stdin,
    stdout = process.stdout,
    input = '';

process.stdin.resume();
stdin.setEncoding('utf8');

process.stdin.on('data', function(buf) {
  input += buf.toString();
});

process.stdin.on('end', function() {
  parsed = gson.parse(input);
  stdout.write(parsed);
  stdout.write('\n');
});
