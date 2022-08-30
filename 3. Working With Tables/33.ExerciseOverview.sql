-- SQL - ()
-- Program: You are building a database for a naval shipping company. You need to store a list of boats and the crew members who work on each, so you create a table called boats and a table called crew_members. From the perspective of a boat this is a one-to-many relationship

--        boats                        crew_members
-- id      name                |   id      name
-- 1     Rogue Wave            |   1       Alex
-- 2    harbor Master          |   2      Lucia
--                             |   3       Ari

-- To complete this design, you need to do two things:
-- 1. Add a column to the crew_members table definition that will relate crew_members to boats. Call Foreign Key column boat_id, then Associate Alex, Lucia to Rogue Wave and Ari to Harbor Master

-- 2. Write a query that will fetch all crew_members associated with the boat that has an ID of 1



-- solution

