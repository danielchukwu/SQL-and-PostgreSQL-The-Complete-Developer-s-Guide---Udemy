const express = require('express');
const pg = require('pg');


const pool = new pg.Pool({
   host: 'localhost',
   port: 5432,
   database: 'socialnetwork',
   user: 'postgres',
   password: '',
});

pool.query(`SELECT 1+1;`).then((res) => console.log(res));