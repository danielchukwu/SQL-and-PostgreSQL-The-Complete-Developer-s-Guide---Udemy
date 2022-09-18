const { urlencoded } = require('express');
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

const app = express();
app.use(urlencoded({ extended : true }));

app.get('/posts', async (req, res) => {
   const { rows } = pool.query(`
      SELECT * FROM posts;
   `);

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

      <form method="POST">
         <h3>Create Post</h3>
         <div>
            <label>Lat</label>
            <input type="text" name="lat" />
         </div>
         <div>
            <label>Lng</label>
            <input type="text" name="lng" />
         </div>
         <button type="submit" >Create</button>
      </form>
   `);
});

app.listen(3005, () => {
   console.log('Listening on port 3005');
})