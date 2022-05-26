-- # Query
-- - csv경로는 path로 바꿔서 작성

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
COPY Food FROM 'path\food.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');

-- 질병 테이블
-- disease table
CREATE TABLE IF NOT EXISTS disease (
	disease_num serial,
	disease_code varchar(10) primary key,
	disease_name varchar(50),
	bad_food varchar(50)
);

-- import disease table data
COPY disease FROM 'path\disease.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');

-- output data
-- output table (pred_out)
CREATE TABLE IF NOT EXISTS pred_out (
	DI2_DG int,
	DI3_DG int,
	DI4_DG int,
	DI5_DG int,
	DM2_DG int,
	DM3_DG int,
	DM4_DG int,
	DJ2_DG int,
	DJ4_DG int,
	DJ6_DG int,
	DJ8_DG int,
	DI6_DG int,
	DF2_DG int,
	DL1_DG int,
	DE1_DG int,
	DE2_DG int,
	DH4_DG int,
	DC1_DG int,
	DC3_DG int,
	DK8_DG int,
	user_id varchar(50)
);

-- import data_dis
COPY pred_out FROM 'path\data_dis.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');

-- input data
-- input table (pred_in)
CREATE TABLE IF NOT EXISTS pred_in (
	LQ_3EQL	int,
	N_MUFA float,
	TOTAL_SLP_WD int,
	HE_BMI float,
	N_PHOS float,
	BD1_11 int,
	HE_WT float,
	BP1 int,
	N_FAT float,
	BH1 int,
	AGE int,
	N_CAROT float,
	BS13 int,
	N_INTK float,
	N_EN float,
	LQ_5EQL int,
	BE3_85 int,
	N_WATER float,
	HE_HT float,
	N_CHOL float,
	N_NA float,
	N_PROT float,
	SEX int,
	BP7 int,
	LQ_2EQL int,
	HE_DBP int,
	LQ_1EQL int,
	BE3_81 int,
	N_SFA float,
	ID varchar(50) primary key,
	HE_RPLS int,
	N_SUGAR float,
	SM_PRESNT int,
	L_BR_FQ int,
	HE_FH int,
	LQ_4EQL int,
	MH_STRESS int,
	LQ4_00 int
);

-- import data_value
COPY pred_in FROM 'path\data_value.csv' (DELIMITER ',', FORMAT CSV, HEADER, ENCODING 'EUC-KR');
