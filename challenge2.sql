-- 4. Melakkukan join director, genre ke table movies, dapatkan hanya 5 movie
SELECT m.name, d.first_name, d.last_name, mg.genre FROM movies m
join movies_directors md on md.movie_id = m.id
join movies_genres mg on mg.movie_id = m.id
join directors d on d.id = md.director_id
limit 50;