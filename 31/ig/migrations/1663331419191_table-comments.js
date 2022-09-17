/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = pgm => {
   pgm.sql(`
      BEGIN;
      CREATE TABLE comments (
         id SERIAL PRIMARY KEY,
         created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
         updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
         contents VARCHAR(240) NOT NULL
      );
      COMMIT;
   `)
};

exports.down = pgm => {
   pgm.sql(`
      BEGIN;
      DROP TABLE comments;
      COMMIT;
   `);
};
