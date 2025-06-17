-- 4. Melakkukan join director, genre ke table movies, dapatkan hanya 5 movie
SELECT m.name, d.first_name, d.last_name, mg.genre FROM movies m
join movies_directors md on md.movie_id = m.id
join movies_genres mg on mg.movie_id = m.id
join directors d on d.id = md.director_id
limit 50;

-- 5. Melakukan join movie dan roles berdasarkan table actors.
select a.first_name, a.last_name, r.role, m.name from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id
limit 50;