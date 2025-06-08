SELECT *
FROM order_reviews_clean
WHERE review_id IS NULL;

SELECT count(*)
FROM order_reviews_clean
WHERE review_id IS NULL;

SELECT review_id, order_id, review_score, review_comment_title_en,
       review_comment_message_en, review_creation_date, review_answer_timestamp,
       COUNT(*) AS duplicates_count
FROM order_reviews_clean
GROUP BY review_id, order_id, review_score, review_comment_title_en,
         review_comment_message_en, review_creation_date, review_answer_timestamp
HAVING COUNT(*) > 1;

SELECT *
FROM order_reviews_clean
WHERE review_id LIKE 'I recommend it'
  AND order_id IS NULL
  AND review_score IS NULL
  AND review_comment_title_en IS NULL
  AND review_comment_message_en IS NULL
  AND review_creation_date IS NULL
  AND review_answer_timestamp IS NULL;

DELETE FROM order_reviews_clean
WHERE review_id IS NULL
  AND order_id IS NULL
  AND review_score IS NULL
  AND review_comment_title_en IS NULL
  AND review_comment_message_en IS NULL
  AND review_creation_date IS NULL
  AND review_answer_timestamp IS NULL;

DELETE FROM order_reviews_clean
WHERE review_id LIKE 'I recommend it'
  AND order_id IS NULL
  AND review_score IS NULL
  AND review_comment_title_en IS NULL
  AND review_comment_message_en IS NULL
  AND review_creation_date IS NULL
  AND review_answer_timestamp IS NULL;

  SELECT review_id, order_id, review_score, review_comment_title_en,
       review_comment_message_en, review_creation_date, review_answer_timestamp,
       COUNT(*) AS duplicates_count
FROM order_reviews_clean
GROUP BY review_id, order_id, review_score, review_comment_title_en,
         review_comment_message_en, review_creation_date, review_answer_timestamp
HAVING COUNT(*) > 1;

SELECT *
FROM order_reviews_clean
WHERE order_id IS NULL;

SELECT count(*)
FROM order_reviews_clean
WHERE order_id IS NULL;

DELETE FROM order_reviews_clean
WHERE order_id IS NULL;

   SELECT *
FROM order_reviews_clean
WHERE review_score IS NULL;

SELECT *
FROM order_reviews_clean
WHERE review_comment_title_en IS NULL;

SELECT *
FROM order_reviews_clean
WHERE review_comment_message_en IS NULL;

UPDATE order_reviews_clean
SET
review_comment_title_en = COALESCE(review_comment_title_en, 'no comment'),
review_comment_message_en = COALESCE(review_comment_message_en, 'no comment message')
WHERE review_comment_title_en IS NULL OR review_comment_message_en IS NULL;

SELECT *
FROM order_reviews_clean
WHERE review_id IS NULL
   OR order_id IS NULL
   OR review_score IS NULL
   OR review_comment_title_en IS NULL
   OR review_comment_message_en IS NULL;

SELECT *
FROM order_reviews_clean
WHERE review_creation_date IS NULL;

SELECT *
FROM order_reviews_clean
WHERE review_answer_timestamp IS NULL;


SELECT count(*)
FROM order_reviews_clean
WHERE review_creation_date IS NULL;

SELECT count(*)
FROM order_reviews_clean
WHERE review_answer_timestamp IS NULL;

SELECT *
FROM order_reviews_clean
LIMIT 5;

UPDATE order_reviews_clean
SET review_comment_title_en = 'no comment'
WHERE review_comment_title_en ~ '^[^a-zA-Z]+$';

UPDATE order_reviews_clean
SET review_comment_message_en = 'no comment'
WHERE review_comment_title_en = '-';

UPDATE order_reviews_clean
SET review_comment_title_en = REGEXP_REPLACE(review_comment_title_en, '^\*+', '' )
WHERE review_comment_title_en ~ '^\*+';

UPDATE order_reviews_clean
SET review_comment_message_en = 'no comment'
WHERE review_comment_message_en ~ '^[\*\!\?\.,\- ]+$';

UPDATE order_reviews_clean
SET review_comment_message_en = INITCAP(TRIM(review_comment_message_en)),
    review_comment_title_en = INITCAP(TRIM(review_comment_title_en));

SELECT *
FROM order_reviews_clean
WHERE review_comment_title_en = '-';

select *
from order_reviews_clean;

