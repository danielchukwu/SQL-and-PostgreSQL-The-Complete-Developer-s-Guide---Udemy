const pg = require('pg');

const pool = new pg.Pool({
   host: 'localhost',
   port: 5432,
   database: 'socialnetwork',
   user: 'postgres',
   password: ''      // TODO: add your password(the one from postgres installation)
})

// pool.query(`SELECT * FROM posts`).then(res => console.log(res))

// perform data migration
pool.query(`
   UPDATE posts
   SET loc = POINT(lat, lng)
   WHERE loc IS NULL;
`).then((res) => {
   console.log('data migration successful🏌️‍♂️')
}).catch ((err) => console.error(err.message))