CREATE TABLE "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
CREATE TABLE "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "users" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "first_name" varchar, "last_name" varchar, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "accounts" ("id" INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar, "password_digest" varchar, "user_id" integer, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL);
CREATE TABLE "travels" ("id" integer NOT NULL PRIMARY KEY, "user_id" integer DEFAULT NULL, "title" varchar DEFAULT NULL, "description" varchar DEFAULT NULL, "created_at" datetime NOT NULL, "updated_at" datetime NOT NULL, "travel_date" date DEFAULT NULL);
CREATE INDEX "index_travels_on_travel_date" ON "travels" ("travel_date");
INSERT INTO "schema_migrations" (version) VALUES
('20180802153642'),
('20180802154318'),
('20180802154847'),
('20180803180947'),
('20180803183138');


