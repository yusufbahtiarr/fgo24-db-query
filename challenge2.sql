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
select a.first_name, a.last_name, count(r.role) as role_count from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id 
GROUP BY a.id
having COUNT(r.role) > 5;

-- 8. Mendapatkan director paling produktif sepanjang masa
select d.first_name || ' ' || d.last_name as director_name, count(m.name) as count_movie from movies m
join movies_directors md on md.movie_id = m.id
join directors d on d.id = md.director_id
GROUP BY d.id ORDER BY count_movie desc limit 1;

-- 9. Mendapatkan tahun tersibuk sepanjang masa
SELECT year, COUNT(year) AS count_movies
FROM movies
GROUP BY year ORDER BY count_movies desc limit 1;

-- 10. Mendapatkan movies dengan genres yang dibuatkan menjadi 1 column (value dipisahkan dengan comma) dengan menggunakan string_agg
SELECT m.name, string_agg(mg.genre, ', ') AS movie_genre
FROM movies m
JOIN movies_genres mg ON mg.movie_id = m.id
GROUP BY m.id;