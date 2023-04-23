BEGIN;

DROP TABLE IF EXISTS 
"user",
"quiz",
"question",
"difficulty",
"answer",
"score";

CREATE TABLE "user" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "nickname" TEXT NOT NULL,
    "avatar" TEXT,
    "role" TEXT DEFAULT 'user';
);

CREATE TABLE "quiz" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "topic" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "image" TEXT NOT NULL,
    "userId" INT NOT NULL REFERENCES "user" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE "difficulty" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "name" TEXT NOT NULL
);

CREATE TABLE "question" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "content" TEXT NOT NULL,
    "difficultyId" INT NOT NULL REFERENCES "difficulty" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    "quizId" INT NOT NULL REFERENCES "quiz" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE "answer" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "content" TEXT NOT NULL,
    "correct" BOOLEAN NOT NULL,
    "questionId" INT NOT NULL REFERENCES "question" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE "score" (
    "id" INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    "score" INT NOT NULL,
    "userId" INT NOT NULL REFERENCES "user" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    "quizId" INT NOT NULL REFERENCES "quiz" ("id") ON DELETE CASCADE ON UPDATE CASCADE,
    "difficultyId" INT NOT NULL REFERENCES "difficulty" ("id") ON DELETE CASCADE ON UPDATE CASCADE
);

COMMIT;
