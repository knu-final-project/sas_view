-- 음식 영양성분 테이블
-- food 영양성분 table
CREATE TABLE IF NOT EXISTS Food (
	class_num serial PRIMARY KEY,
	food_name varchar(50),
	serving_size_g float,
	calorie_kJ float,
	calorie_kcal float,
	carbohydrate_g float,
	sugar_g float,
	protein_g float,
	fat_g float,
	saturated_fat_g float,
	polyunsaturated_fat_g float,
	unsaturated_fat_g float,
	cholesterol_mg float,
	dietary_fiber_g float,
	salt_mg float,
	potassium_mg float
);

-- import food 영양성분 table data
COPY Food FROM 'D:\Final_Project\Data\food.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');

-- 질병 테이블
-- disease table
CREATE TABLE IF NOT EXISTS disease (
	disease_num serial,
	disease_code varchar(10) primary key,
	disease_name varchar(50),
	bad_food varchar(50)
);

-- import disease table data
COPY disease FROM 'D:\Final_Project\Data\disease.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');

