/* eslint-disable camelcase */

exports.shorthands = undefined;

exports.up = pgm => {
   pgm.sql(`
      ALTER TABLE posts
      ADD COLUMN loc;
   `)
};

exports.down = pgm => {
   pgm.sql(`
      ALTER TABLE posts
      DROP COLUMN loc;
   `)
};
