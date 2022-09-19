const pg = require('pg');

const pool = new pg.Pool({
   host: 'localhost',
   port: 5432,
   database: 'socialnetwork',
   user: 'postgres',
   password: ''      // TODO: remove
})

// pool.query(`SELECT * FROM posts`).then(res => console.log(res))

// perform data migration
pool.query(`
   UPDATE posts
   SET loc = POINT(lat, lng)
   WHERE loc = NULL;
`)