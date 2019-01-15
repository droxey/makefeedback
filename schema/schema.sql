-- Tested on PostgreSQL 11.

-- Drop, create, and use a DB called "makefeedback."
DROP DATABASE IF EXISTS "makefeedback";
CREATE DATABASE "makefeedback";
USE "makefeedback";

-- Drop makefeedback.feedback if it already exists.
-- WARNING: This will delete all your data.
DROP TABLE IF EXISTS "feedback";

-- Create the table.
CREATE TABLE "feedback" (
    "id" SERIAL PRIMARY KEY,
    "rating" SMALLINT NOT NULL DEFAULT 0 CHECK (("rating" >= 0) AND ("rating" <= 5)),
    "date" DATE NOT NULL DEFAULT CURRENT_DATE,
    "time" TIME NOT NULL DEFAULT CURRENT_TIME,
    "class" VARCHAR(8) NOT NULL,
    "term" SMALLINT NOT NULL DEFAULT 3,
    "year" SMALLINT NOT NULL DEFAULT 2019,
    UNIQUE ("term", "year", "class", "date")
);
