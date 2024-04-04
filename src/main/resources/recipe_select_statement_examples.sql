select * from recipe;

select * from recipe order by recipe_name ;

select * from recipe where recipe_id = 1;

SELECT LAST_INSERT_ID() FROM recipe;

SELECT recipe_id, recipe_name
FROM recipe
WHERE recipe_id = 1;

select * from ingredient;

select * from ingredient
where recipe_id = 2;

SELECT *
FROM category
WHERE category_id = 1;

SELECT prep_time AS 'Time to Prepare'
FROM recipe;

SELECT *
FROM category;

SELECT *
FROM category
WHERE category_name >= 'a'
  AND category_name <= 'd';
  
SELECT *
FROM category
WHERE category_name <= 'b'
  OR category_name >= 't';
  
SELECT *
FROM category
WHERE category_id IN (4, 6, 8);

SELECT *
FROM category
WHERE category_id BETWEEN 8 AND 10;

SELECT *
FROM category
WHERE category_name LIKE 'Veg%';

SELECT *
FROM category
WHERE category_name LIKE '_e%';

SELECT ingredient_name, amount
FROM ingredient
WHERE amount IS NULL;

SELECT *
FROM category
WHERE category_id NOT BETWEEN 3 AND 22;

SELECT *
FROM category
ORDER BY category_name DESC;

SELECT prep_time, recipe_name
FROM recipe
ORDER BY prep_time, recipe_name;

SELECT DISTINCT 
  prep_time
FROM recipe
ORDER BY prep_time;

SELECT recipe_name, prep_time
FROM recipe
ORDER BY prep_time
LIMIT 3;

SELECT recipe_name, prep_time
FROM recipe
ORDER BY prep_time
LIMIT 2 OFFSET 1;

SELECT count(*) AS 'Num Recipes', prep_time
FROM recipe
GROUP BY prep_time;
--HAVING count(*) = 1;

SELECT count(*) AS 'Num Recipes', prep_time
FROM recipe
GROUP BY prep_time
HAVING count(*) = 1;

-- Gets unpredictable results, maybe an error. having without GROUP BY
SELECT count(*) AS 'Num Recipes', prep_time
FROM recipe
HAVING count(*) > 0;


INSERT INTO ingredient (recipe_id, unit_id, ingredient_name, instruction, ingredient_order, amount)
VALUES 
(2, null, 'green apple', 'quartered', 1, 1),
(2, 2, 'peanut butter', null, 2, 2),
(2, null, 'strawberries', 'halved', 3, 2),
(2, null, 'sunflower seeds', null, 4, null),
(2, null, 'candy eyes', null, 5, 8);


-- SQL INjection
SELECT * FROM recipe WHERE recipe_id = 2; show tables;





