const express = require('express');
const pg = require('pg');


const pool = new pg.Pool({
   host: 'localhost',
   port: 5432,
   database: 'socialnetwork',
   user: 'postgres',
   password: '',
});

// pool.query(`SELECT 1+1 AS sum;`).then((res) => console.log(res));


app.get('/posts', async (req, res) => {
   const { rows } = pool.query(`
      SELECT * FROM posts;
   `)

   res.send(`
      <table>
         <thead>
            <tr>
               <th>id</th>
               <th>lat</th>
               <th>lng</th>
            </tr>
         </thead>
         <tbody>
            ${rows.map((row) => {
               return `
                  <tr>
                     <td>${row.id}</td>
                     <td>${row.lat}</td>
                     <td>${row.lng}</td>
                  </tr>
               `
            })}
         </tbody>
      </table>
   `)
})