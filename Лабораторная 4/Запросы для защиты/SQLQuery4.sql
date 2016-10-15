/*4. Посчитать, сколько людей имеют электронную
 почту в доменах com, net, org. Вывести число 
 людей с указанием соответствующего домена.
*/
SELECT '.com', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.com%'
UNION
SELECT '.net', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.net%'
UNION
SELECT '.org', COUNT(*)
FROM Person.Contact
WHERE Person.Contact.EmailAddress LIKE '%.org%'