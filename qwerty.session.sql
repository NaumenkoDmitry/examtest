--SELECT Users FROM "squadhelp-dev";

--Выводик количество юзеров по ролям
-- SELECT role, count(role) 
-- FROM "Users"
-- GROUP BY role;

-- Для роли сreative необходимо выплатить 3-м юзерам
-- с самым высоким рейтингом по 10$ на их счета.

-- UPDATE "Users" u
-- SET balance = balance + 10
-- WHERE id in (
--     SELECT u.id
--     FROM "Users" u
--     WHERE u."role" = 'creator'
--     ORDER BY u.rating DESC
--     LIMIT 3
-- );


-- CREATE VIEW users_cashback AS
-- SELECT sum(c.prize), u.id
-- FROM "Users" u
-- JOIN "Contests" c ON c."userId" = u.id
-- WHERE 
--     "role" = 'customer' AND
--     c."createdAt" BETWEEN '2021-12-25T00:00:00' AND '2021-01-14T23:59:59'
-- GROUP BY u.id;

-- UPDATE "Users" u
-- SET "balance" = "balance" + (
--     SELECT sum FROM users_cashback uc
--     WHERE uc.id = u.id
-- )*0.1
-- WHERE u.id in (
--     SELECT id from users_cashback
-- );

-- DROP VIEW users_cashback;