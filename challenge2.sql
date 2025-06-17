-- 4. Melakkukan join director, genre ke table movies, dapatkan hanya 5 movie
SELECT m.name, d.first_name, d.last_name, mg.genre FROM movies m
join movies_directors md on md.movie_id = m.id
join movies_genres mg on mg.movie_id = m.id
join directors d on d.id = md.director_id
limit 50;

-- 5. Melakukan join movie dan roles berdasarkan table actors.
select a.first_name, a.last_name, r.role, m.name as title from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id
limit 50;

-- 6. Mendapatkan data director, berapa genre yang di-direct
select d.first_name, d.last_name, count(mg.genre) as genres_count from movies m
join movies_directors md on md.movie_id = m.id
join movies_genres mg on mg.movie_id = m.id
join directors d on d.id = md.director_id 
GROUP BY d.id;
-- 7. Mendapatkan data actor yang memiliki roles lebih dari 5
select * from (select a.first_name, a.last_name, count(r.role) as role_count from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id 
GROUP BY a.id) where role_count > 5;
-- 8. Mendapatkan director paling produktif sepanjang masa

-- 9. Mendapatkan tahun tersibuk sepanjang masa

-- 10. Mendapatkan movies dnegan genres yang dibuatkan menjadi 1 column (value dipisahkan dengan comma) dengan menggunakan string_agg