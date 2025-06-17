-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
select * from movies where year > 2000;

-- 2. Mencari actor dengan akhiran nama 's' 
select * from actors where last_name ilike '%s'; 

-- 3. Mencari movie dengan rating diantara 5 dan 7 dan tahun rilis 2004 sampai 2006
select * from movies where (rankscore BETWEEN 5 and 7) and (year BETWEEN 2004 and 2006) ORDER BY rankscore DESC;
