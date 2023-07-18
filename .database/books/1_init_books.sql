-- DROP SCHEMA books;

CREATE SCHEMA books AUTHORIZATION postgres;

-- books.authors definition

-- Drop table

-- DROP TABLE books.authors;

CREATE TABLE books.authors (
	author_id serial4 NOT NULL,
	first_name varchar(255) NULL,
	middle_name varchar(255) NULL,
	last_name varchar(255) NULL,
	CONSTRAINT authors_pkey PRIMARY KEY (author_id)
);

-- books.book_authors definition

-- Drop table

-- DROP TABLE books.book_authors;

CREATE TABLE books.book_authors (
	book_id int4 NOT NULL,
	author_id int4 NOT NULL
);

-- books.book_genres definition

-- Drop table

-- DROP TABLE books.book_genres;

CREATE TABLE books.book_genres (
	book_id int4 NOT NULL,
	genre_id int4 NOT NULL
);

-- books.books definition

-- Drop table

-- DROP TABLE books.books;

CREATE TABLE books.books (
	book_id serial4 NOT NULL,
	title varchar(255) NOT NULL,
	total_pages int4 NOT NULL,
	rating int4 NOT NULL,
	isbn varchar(255) NOT NULL,
	published_date date NOT NULL,
	publisher_id int4 NOT NULL,
	CONSTRAINT books_pkey PRIMARY KEY (book_id),
	CONSTRAINT chk_books_ratingrange CHECK (((rating >= 1) AND (rating <= 10)))
);

-- books.genres definition

-- Drop table

-- DROP TABLE books.genres;

CREATE TABLE books.genres (
	genre_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	CONSTRAINT genres_pkey PRIMARY KEY (genre_id)
);

-- books.publishers definition

-- Drop table

-- DROP TABLE books.publishers;

CREATE TABLE books.publishers (
	publisher_id serial4 NOT NULL,
	"name" varchar(255) NULL,
	CONSTRAINT publishers_pkey PRIMARY KEY (publisher_id)
);

ALTER TABLE books.book_authors DROP CONSTRAINT fk_bookauthors_book;
ALTER TABLE books.book_authors ADD CONSTRAINT fk_bookauthors_book FOREIGN KEY (book_id) REFERENCES books.books(book_id) ON DELETE CASCADE;

ALTER TABLE books.book_genres DROP CONSTRAINT fk_bookgenres_book;
ALTER TABLE books.book_genres ADD CONSTRAINT fk_bookgenres_book FOREIGN KEY (book_id) REFERENCES books.books(book_id) ON DELETE CASCADE;


INSERT INTO books.authors (first_name,middle_name,last_name) VALUES
	 ('Gregorio','Cate','Caryl'),
	 ('Valeria','Birk','Wendeline'),
	 ('Byrle','Freddy','Bertine'),
	 ('Neilla','Jarvis','Norah'),
	 ('Caesar','Kathryn','Clarke'),
	 ('Isabelita','Lonee','Pate'),
	 ('Shay','Lionel','Kele'),
	 ('Leeland','Tim','Alayne'),
	 ('Kathryn','Chen','Dedra'),
	 ('Pepito','Lyssa','Fredericka');

INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (1,10),
	 (2,6),
	 (3,9),
	 (4,2),
	 (5,4),
	 (6,6),
	 (7,8),
	 (8,10),
	 (9,9),
	 (10,6);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (11,6),
	 (12,4),
	 (13,7),
	 (14,2),
	 (15,4),
	 (16,3),
	 (17,10),
	 (18,9),
	 (19,6),
	 (20,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (21,9),
	 (22,3),
	 (23,7),
	 (24,6),
	 (25,2),
	 (26,10),
	 (27,1),
	 (28,4),
	 (29,1),
	 (30,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (31,8),
	 (32,9),
	 (33,9),
	 (34,6),
	 (35,1),
	 (36,1),
	 (37,1),
	 (38,4),
	 (39,1),
	 (40,6);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (41,9),
	 (42,10),
	 (43,6),
	 (44,3),
	 (45,7),
	 (46,10),
	 (47,9),
	 (48,1),
	 (49,6),
	 (50,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (51,4),
	 (52,4),
	 (53,10),
	 (54,4),
	 (55,2),
	 (56,4),
	 (57,4),
	 (58,2),
	 (59,2),
	 (60,8);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (61,9),
	 (62,1),
	 (63,6),
	 (64,10),
	 (65,8),
	 (66,1),
	 (67,1),
	 (68,2),
	 (69,4),
	 (70,9);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (71,8),
	 (72,10),
	 (73,7),
	 (74,1),
	 (75,10),
	 (76,1),
	 (77,8),
	 (78,5),
	 (79,7),
	 (80,4);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (81,6),
	 (82,8),
	 (83,3),
	 (84,2),
	 (85,6),
	 (86,1),
	 (87,5),
	 (88,10),
	 (89,8),
	 (90,7);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (91,7),
	 (92,2),
	 (93,8),
	 (94,6),
	 (95,1),
	 (96,8),
	 (97,5),
	 (98,6),
	 (99,10),
	 (100,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (101,9),
	 (102,5),
	 (103,4),
	 (104,4),
	 (105,6),
	 (106,8),
	 (107,10),
	 (108,7),
	 (109,1),
	 (110,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (111,10),
	 (112,9),
	 (113,10),
	 (114,10),
	 (115,5),
	 (116,6),
	 (117,5),
	 (118,1),
	 (119,6),
	 (120,9);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (121,3),
	 (122,8),
	 (123,5),
	 (124,6),
	 (125,7),
	 (126,3),
	 (127,4),
	 (128,8),
	 (129,1),
	 (130,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (131,7),
	 (132,8),
	 (133,7),
	 (134,10),
	 (135,2),
	 (136,2),
	 (137,8),
	 (138,6),
	 (139,10),
	 (140,9);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (141,5),
	 (142,6),
	 (143,4),
	 (144,2),
	 (145,3),
	 (146,2),
	 (147,9),
	 (148,10),
	 (149,6),
	 (150,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (151,10),
	 (152,4),
	 (153,2),
	 (154,10),
	 (155,7),
	 (156,10),
	 (157,4),
	 (158,3),
	 (159,8),
	 (160,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (161,8),
	 (162,9),
	 (163,10),
	 (164,5),
	 (165,1),
	 (166,3),
	 (167,10),
	 (168,8),
	 (169,1),
	 (170,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (171,5),
	 (172,3),
	 (173,6),
	 (174,5),
	 (175,8),
	 (176,5),
	 (177,6),
	 (178,1),
	 (179,9),
	 (180,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (181,6),
	 (182,2),
	 (183,3),
	 (184,7),
	 (185,8),
	 (186,7),
	 (187,5),
	 (188,6),
	 (189,1),
	 (190,9);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (191,4),
	 (192,7),
	 (193,4),
	 (194,5),
	 (195,2),
	 (196,6),
	 (197,7),
	 (198,4),
	 (199,6),
	 (200,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (201,10),
	 (202,7),
	 (203,2),
	 (204,2),
	 (205,5),
	 (206,10),
	 (207,9),
	 (208,6),
	 (209,9),
	 (210,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (211,2),
	 (212,6),
	 (213,2),
	 (214,4),
	 (215,3),
	 (216,5),
	 (217,5),
	 (218,8),
	 (219,4),
	 (220,7);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (221,9),
	 (222,10),
	 (223,10),
	 (224,1),
	 (225,4),
	 (226,7),
	 (227,5),
	 (228,9),
	 (229,9),
	 (230,7);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (231,8),
	 (232,9),
	 (233,6),
	 (234,7),
	 (235,10),
	 (236,2),
	 (237,4),
	 (238,5),
	 (239,10),
	 (240,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (241,7),
	 (242,7),
	 (243,7),
	 (244,3),
	 (245,3),
	 (246,8),
	 (247,3),
	 (248,2),
	 (249,9),
	 (250,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (251,2),
	 (252,6),
	 (253,4),
	 (254,9),
	 (255,2),
	 (256,6),
	 (257,6),
	 (258,10),
	 (259,1),
	 (260,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (261,5),
	 (262,2),
	 (263,7),
	 (264,5),
	 (265,9),
	 (266,7),
	 (267,10),
	 (268,9),
	 (269,8),
	 (270,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (271,5),
	 (272,2),
	 (273,9),
	 (274,3),
	 (275,5),
	 (276,7),
	 (277,8),
	 (278,9),
	 (279,10),
	 (280,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (281,2),
	 (282,2),
	 (283,9),
	 (284,9),
	 (285,5),
	 (286,5),
	 (287,5),
	 (288,5),
	 (289,5),
	 (290,7);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (291,10),
	 (292,7),
	 (293,4),
	 (294,3),
	 (295,7),
	 (296,8),
	 (297,10),
	 (298,3),
	 (299,2),
	 (300,4);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (301,1),
	 (302,2),
	 (303,8),
	 (304,10),
	 (305,5),
	 (306,6),
	 (307,6),
	 (308,8),
	 (309,6),
	 (310,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (311,6),
	 (312,8),
	 (313,1),
	 (314,3),
	 (315,4),
	 (316,4),
	 (317,2),
	 (318,5),
	 (319,3),
	 (320,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (321,7),
	 (322,5),
	 (323,4),
	 (324,4),
	 (325,8),
	 (326,7),
	 (327,2),
	 (328,4),
	 (329,5),
	 (330,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (331,7),
	 (332,10),
	 (333,1),
	 (334,5),
	 (335,6),
	 (336,8),
	 (337,9),
	 (338,2),
	 (339,7),
	 (340,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (341,7),
	 (342,1),
	 (343,4),
	 (344,2),
	 (345,10),
	 (346,1),
	 (347,3),
	 (348,3),
	 (349,4),
	 (350,5);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (351,7),
	 (352,9),
	 (353,9),
	 (354,10),
	 (355,7),
	 (356,7),
	 (357,3),
	 (358,9),
	 (359,8),
	 (360,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (361,1),
	 (362,9),
	 (363,6),
	 (364,8),
	 (365,9),
	 (366,7),
	 (367,8),
	 (368,10),
	 (369,2),
	 (370,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (371,8),
	 (372,9),
	 (373,5),
	 (374,10),
	 (375,6),
	 (376,8),
	 (377,8),
	 (378,10),
	 (379,1),
	 (380,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (381,1),
	 (382,9),
	 (383,1),
	 (384,4),
	 (385,8),
	 (386,2),
	 (387,9),
	 (388,6),
	 (389,7),
	 (390,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (391,1),
	 (392,10),
	 (393,7),
	 (394,2),
	 (395,9),
	 (396,3),
	 (397,5),
	 (398,10),
	 (399,3),
	 (400,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (401,1),
	 (402,10),
	 (403,7),
	 (404,2),
	 (405,2),
	 (406,2),
	 (407,2),
	 (408,6),
	 (409,3),
	 (410,8);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (411,3),
	 (412,8),
	 (413,4),
	 (414,10),
	 (415,3),
	 (416,8),
	 (417,3),
	 (418,1),
	 (419,3),
	 (420,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (421,3),
	 (422,7),
	 (423,4),
	 (424,1),
	 (425,6),
	 (426,1),
	 (427,2),
	 (428,5),
	 (429,4),
	 (430,2);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (431,10),
	 (432,10),
	 (433,6),
	 (434,1),
	 (435,7),
	 (436,2),
	 (437,3),
	 (438,8),
	 (439,10),
	 (440,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (441,1),
	 (442,1),
	 (443,7),
	 (444,9),
	 (445,6),
	 (446,7),
	 (447,1),
	 (448,1),
	 (449,4),
	 (450,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (451,10),
	 (452,2),
	 (453,5),
	 (454,10),
	 (455,8),
	 (456,10),
	 (457,7),
	 (458,5),
	 (459,4),
	 (460,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (461,6),
	 (462,5),
	 (463,2),
	 (464,6),
	 (465,3),
	 (466,2),
	 (467,1),
	 (468,5),
	 (469,1),
	 (470,8);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (471,9),
	 (472,2),
	 (473,1),
	 (474,10),
	 (475,10),
	 (476,1),
	 (477,3),
	 (478,6),
	 (479,4),
	 (480,8);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (481,8),
	 (482,4),
	 (483,1),
	 (484,4),
	 (485,8),
	 (486,5),
	 (487,5),
	 (488,1),
	 (489,5),
	 (490,4);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (491,2),
	 (492,6),
	 (493,1),
	 (494,2),
	 (495,5),
	 (496,8),
	 (497,6),
	 (498,2),
	 (499,5),
	 (500,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (501,10),
	 (502,6),
	 (503,8),
	 (504,7),
	 (505,7),
	 (506,8),
	 (507,3),
	 (508,9),
	 (509,4),
	 (510,8);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (511,5),
	 (512,1),
	 (513,4),
	 (514,8),
	 (515,9),
	 (516,10),
	 (517,3),
	 (518,3),
	 (519,5),
	 (520,9);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (521,6),
	 (522,1),
	 (523,2),
	 (524,1),
	 (525,10),
	 (526,7),
	 (527,6),
	 (528,10),
	 (529,5),
	 (530,4);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (531,1),
	 (532,9),
	 (533,10),
	 (534,8),
	 (535,1),
	 (536,5),
	 (537,6),
	 (538,2),
	 (539,4),
	 (540,6);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (541,8),
	 (542,6),
	 (543,1),
	 (544,3),
	 (545,10),
	 (546,5),
	 (547,3),
	 (548,5),
	 (549,10),
	 (550,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (551,7),
	 (552,3),
	 (553,6),
	 (554,2),
	 (555,7),
	 (556,3),
	 (557,7),
	 (558,1),
	 (559,6),
	 (560,3);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (561,6),
	 (562,5),
	 (563,6),
	 (564,4),
	 (565,10),
	 (566,3),
	 (567,2),
	 (568,10),
	 (569,5),
	 (570,1);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (571,5),
	 (572,6),
	 (573,1),
	 (574,9),
	 (575,6),
	 (576,6),
	 (577,9),
	 (578,3),
	 (579,6),
	 (580,6);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (581,8),
	 (582,2),
	 (583,3),
	 (584,8),
	 (585,10),
	 (586,8),
	 (587,8),
	 (588,2),
	 (589,1),
	 (590,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (591,10),
	 (592,7),
	 (593,9),
	 (594,9),
	 (595,4),
	 (596,2),
	 (597,8),
	 (598,2),
	 (599,1),
	 (600,10);
INSERT INTO books.book_authors (book_id,author_id) VALUES
	 (601,1),
	 (602,4),
	 (603,6),
	 (604,7);


INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (1,6),
	 (2,6),
	 (3,2),
	 (4,6),
	 (5,5),
	 (6,8),
	 (7,10),
	 (8,10),
	 (9,3),
	 (10,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (11,9),
	 (12,1),
	 (13,3),
	 (14,7),
	 (15,6),
	 (16,4),
	 (17,1),
	 (18,4),
	 (19,6),
	 (20,8);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (21,10),
	 (22,6),
	 (23,7),
	 (24,3),
	 (25,1),
	 (26,2),
	 (27,5),
	 (28,7),
	 (29,8),
	 (30,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (31,6),
	 (32,7),
	 (33,7),
	 (34,7),
	 (35,9),
	 (36,4),
	 (37,9),
	 (38,7),
	 (39,4),
	 (40,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (41,4),
	 (42,10),
	 (43,6),
	 (44,8),
	 (45,6),
	 (46,6),
	 (47,5),
	 (48,5),
	 (49,9),
	 (50,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (51,5),
	 (52,10),
	 (53,6),
	 (54,8),
	 (55,2),
	 (56,3),
	 (57,5),
	 (58,6),
	 (59,7),
	 (60,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (61,9),
	 (62,5),
	 (63,10),
	 (64,6),
	 (65,9),
	 (66,7),
	 (67,2),
	 (68,4),
	 (69,10),
	 (70,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (71,8),
	 (72,9),
	 (73,6),
	 (74,7),
	 (75,6),
	 (76,6),
	 (77,1),
	 (78,10),
	 (79,6),
	 (80,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (81,8),
	 (82,5),
	 (83,1),
	 (84,5),
	 (85,1),
	 (86,9),
	 (87,7),
	 (88,8),
	 (89,3),
	 (90,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (91,10),
	 (92,10),
	 (93,4),
	 (94,4),
	 (95,3),
	 (96,4),
	 (97,3),
	 (98,7),
	 (99,7),
	 (100,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (101,4),
	 (102,4),
	 (103,5),
	 (104,2),
	 (105,9),
	 (106,10),
	 (107,3),
	 (108,1),
	 (109,4),
	 (110,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (111,8),
	 (112,2),
	 (113,7),
	 (114,3),
	 (115,9),
	 (116,5),
	 (117,3),
	 (118,7),
	 (119,4),
	 (120,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (121,4),
	 (122,5),
	 (123,8),
	 (124,2),
	 (125,10),
	 (126,6),
	 (127,7),
	 (128,8),
	 (129,7),
	 (130,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (131,3),
	 (132,2),
	 (133,8),
	 (134,2),
	 (135,5),
	 (136,6),
	 (137,4),
	 (138,10),
	 (139,6),
	 (140,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (141,8),
	 (142,3),
	 (143,7),
	 (144,3),
	 (145,2),
	 (146,7),
	 (147,2),
	 (148,2),
	 (149,8),
	 (150,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (151,10),
	 (152,8),
	 (153,7),
	 (154,3),
	 (155,8),
	 (156,10),
	 (157,9),
	 (158,10),
	 (159,6),
	 (160,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (161,9),
	 (162,4),
	 (163,7),
	 (164,8),
	 (165,1),
	 (166,8),
	 (167,7),
	 (168,5),
	 (169,6),
	 (170,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (171,8),
	 (172,3),
	 (173,2),
	 (174,10),
	 (175,5),
	 (176,1),
	 (177,1),
	 (178,4),
	 (179,10),
	 (180,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (181,8),
	 (182,4),
	 (183,1),
	 (184,6),
	 (185,7),
	 (186,8),
	 (187,5),
	 (188,6),
	 (189,3),
	 (190,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (191,6),
	 (192,8),
	 (193,1),
	 (194,3),
	 (195,7),
	 (196,9),
	 (197,4),
	 (198,8),
	 (199,10),
	 (200,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (201,2),
	 (202,10),
	 (203,8),
	 (204,5),
	 (205,6),
	 (206,4),
	 (207,1),
	 (208,2),
	 (209,8),
	 (210,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (211,5),
	 (212,6),
	 (213,4),
	 (214,3),
	 (215,2),
	 (216,10),
	 (217,9),
	 (218,8),
	 (219,2),
	 (220,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (221,5),
	 (222,4),
	 (223,2),
	 (224,7),
	 (225,7),
	 (226,8),
	 (227,7),
	 (228,9),
	 (229,10),
	 (230,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (231,7),
	 (232,5),
	 (233,9),
	 (234,10),
	 (235,10),
	 (236,1),
	 (237,3),
	 (238,7),
	 (239,10),
	 (240,8);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (241,10),
	 (242,4),
	 (243,8),
	 (244,9),
	 (245,2),
	 (246,9),
	 (247,8),
	 (248,2),
	 (249,2),
	 (250,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (251,2),
	 (252,10),
	 (253,8),
	 (254,4),
	 (255,3),
	 (256,9),
	 (257,10),
	 (258,5),
	 (259,3),
	 (260,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (261,5),
	 (262,5),
	 (263,7),
	 (264,6),
	 (265,4),
	 (266,8),
	 (267,7),
	 (268,9),
	 (269,10),
	 (270,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (271,5),
	 (272,9),
	 (273,9),
	 (274,6),
	 (275,7),
	 (276,10),
	 (277,1),
	 (278,1),
	 (279,7),
	 (280,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (281,7),
	 (282,8),
	 (283,9),
	 (284,2),
	 (285,4),
	 (286,2),
	 (287,7),
	 (288,9),
	 (289,7),
	 (290,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (291,7),
	 (292,7),
	 (293,6),
	 (294,10),
	 (295,6),
	 (296,1),
	 (297,3),
	 (298,7),
	 (299,4),
	 (300,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (301,1),
	 (302,4),
	 (303,4),
	 (304,10),
	 (305,5),
	 (306,8),
	 (307,6),
	 (308,2),
	 (309,4),
	 (310,8);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (311,3),
	 (312,10),
	 (313,6),
	 (314,10),
	 (315,1),
	 (316,9),
	 (317,4),
	 (318,6),
	 (319,6),
	 (320,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (321,7),
	 (322,3),
	 (323,2),
	 (324,9),
	 (325,7),
	 (326,6),
	 (327,10),
	 (328,7),
	 (329,1),
	 (330,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (331,10),
	 (332,6),
	 (333,2),
	 (334,9),
	 (335,9),
	 (336,9),
	 (337,5),
	 (338,4),
	 (339,8),
	 (340,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (341,1),
	 (342,3),
	 (343,3),
	 (344,3),
	 (345,8),
	 (346,6),
	 (347,8),
	 (348,4),
	 (349,6),
	 (350,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (351,6),
	 (352,1),
	 (353,6),
	 (354,3),
	 (355,9),
	 (356,4),
	 (357,1),
	 (358,7),
	 (359,10),
	 (360,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (361,4),
	 (362,7),
	 (363,9),
	 (364,7),
	 (365,2),
	 (366,10),
	 (367,9),
	 (368,6),
	 (369,10),
	 (370,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (371,7),
	 (372,9),
	 (373,6),
	 (374,3),
	 (375,2),
	 (376,2),
	 (377,1),
	 (378,4),
	 (379,7),
	 (380,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (381,6),
	 (382,2),
	 (383,2),
	 (384,1),
	 (385,6),
	 (386,8),
	 (387,9),
	 (388,1),
	 (389,7),
	 (390,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (391,5),
	 (392,6),
	 (393,9),
	 (394,4),
	 (395,6),
	 (396,5),
	 (397,8),
	 (398,5),
	 (399,6),
	 (400,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (401,3),
	 (402,1),
	 (403,10),
	 (404,10),
	 (405,1),
	 (406,4),
	 (407,7),
	 (408,4),
	 (409,7),
	 (410,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (411,8),
	 (412,1),
	 (413,3),
	 (414,10),
	 (415,6),
	 (416,7),
	 (417,4),
	 (418,10),
	 (419,1),
	 (420,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (421,9),
	 (422,1),
	 (423,7),
	 (424,6),
	 (425,8),
	 (426,9),
	 (427,1),
	 (428,2),
	 (429,10),
	 (430,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (431,3),
	 (432,5),
	 (433,5),
	 (434,5),
	 (435,6),
	 (436,10),
	 (437,9),
	 (438,4),
	 (439,4),
	 (440,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (441,8),
	 (442,4),
	 (443,7),
	 (444,10),
	 (445,9),
	 (446,2),
	 (447,9),
	 (448,9),
	 (449,4),
	 (450,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (451,1),
	 (452,6),
	 (453,6),
	 (454,2),
	 (455,9),
	 (456,5),
	 (457,9),
	 (458,2),
	 (459,8),
	 (460,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (461,10),
	 (462,5),
	 (463,9),
	 (464,7),
	 (465,4),
	 (466,10),
	 (467,4),
	 (468,5),
	 (469,8),
	 (470,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (471,7),
	 (472,7),
	 (473,5),
	 (474,4),
	 (475,8),
	 (476,2),
	 (477,9),
	 (478,10),
	 (479,4),
	 (480,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (481,2),
	 (482,3),
	 (483,9),
	 (484,1),
	 (485,2),
	 (486,7),
	 (487,10),
	 (488,9),
	 (489,3),
	 (490,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (491,6),
	 (492,3),
	 (493,8),
	 (494,1),
	 (495,6),
	 (496,4),
	 (497,3),
	 (498,2),
	 (499,3),
	 (500,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (501,4),
	 (502,10),
	 (503,10),
	 (504,8),
	 (505,8),
	 (506,8),
	 (507,1),
	 (508,2),
	 (509,3),
	 (510,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (511,7),
	 (512,1),
	 (513,7),
	 (514,6),
	 (515,9),
	 (516,4),
	 (517,8),
	 (518,3),
	 (519,6),
	 (520,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (521,8),
	 (522,8),
	 (523,8),
	 (524,1),
	 (525,4),
	 (526,10),
	 (527,3),
	 (528,4),
	 (529,1),
	 (530,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (531,10),
	 (532,4),
	 (533,4),
	 (534,10),
	 (535,7),
	 (536,10),
	 (537,4),
	 (538,1),
	 (539,3),
	 (540,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (541,6),
	 (542,4),
	 (543,3),
	 (544,5),
	 (545,10),
	 (546,10),
	 (547,8),
	 (548,8),
	 (549,4),
	 (550,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (551,9),
	 (552,1),
	 (553,9),
	 (554,10),
	 (555,6),
	 (556,2),
	 (557,3),
	 (558,7),
	 (559,1),
	 (560,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (561,8),
	 (562,1),
	 (563,7),
	 (564,8),
	 (565,8),
	 (566,8),
	 (567,9),
	 (568,7),
	 (569,1),
	 (570,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (571,9),
	 (572,4),
	 (573,10),
	 (574,9),
	 (575,10),
	 (576,2),
	 (577,5),
	 (578,4),
	 (579,1),
	 (580,8);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (581,4),
	 (582,10),
	 (583,7),
	 (584,5),
	 (585,10),
	 (586,6),
	 (587,3),
	 (588,10),
	 (589,6),
	 (590,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (591,10),
	 (592,6),
	 (593,4),
	 (594,7),
	 (595,4),
	 (596,3),
	 (597,8),
	 (598,10),
	 (599,6),
	 (600,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (601,4),
	 (602,1),
	 (603,1),
	 (604,7),
	 (605,4),
	 (606,10),
	 (607,8),
	 (608,6),
	 (609,6),
	 (610,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (611,5),
	 (612,6),
	 (613,10),
	 (614,9),
	 (615,4),
	 (616,7),
	 (617,9),
	 (618,7),
	 (619,10),
	 (620,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (621,5),
	 (622,5),
	 (623,5),
	 (624,6),
	 (625,1),
	 (626,8),
	 (627,2),
	 (628,6),
	 (629,2),
	 (630,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (631,10),
	 (632,4),
	 (633,10),
	 (634,4),
	 (635,8),
	 (636,10),
	 (637,5),
	 (638,6),
	 (639,6),
	 (640,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (641,3),
	 (642,2),
	 (643,9),
	 (644,6),
	 (645,8),
	 (646,6),
	 (647,5),
	 (648,8),
	 (649,3),
	 (650,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (651,7),
	 (652,6),
	 (653,7),
	 (654,4),
	 (655,10),
	 (656,4),
	 (657,1),
	 (658,9),
	 (659,2),
	 (660,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (661,6),
	 (662,6),
	 (663,10),
	 (664,3),
	 (665,7),
	 (666,4),
	 (667,10),
	 (668,1),
	 (669,3),
	 (670,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (671,1),
	 (672,10),
	 (673,9),
	 (674,2),
	 (675,7),
	 (676,6),
	 (677,1),
	 (678,6),
	 (679,3),
	 (680,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (681,8),
	 (682,3),
	 (683,6),
	 (684,5),
	 (685,10),
	 (686,2),
	 (687,10),
	 (688,4),
	 (689,6),
	 (690,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (691,3),
	 (692,1),
	 (693,2),
	 (694,6),
	 (695,7),
	 (696,4),
	 (697,7),
	 (698,4),
	 (699,7),
	 (700,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (701,1),
	 (702,5),
	 (703,6),
	 (704,10),
	 (705,6),
	 (706,5),
	 (707,6),
	 (708,6),
	 (709,3),
	 (710,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (711,3),
	 (712,8),
	 (713,4),
	 (714,10),
	 (715,9),
	 (716,4),
	 (717,2),
	 (718,2),
	 (719,2),
	 (720,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (721,4),
	 (722,6),
	 (723,1),
	 (724,1),
	 (725,3),
	 (726,4),
	 (727,10),
	 (728,3),
	 (729,4),
	 (730,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (731,1),
	 (732,3),
	 (733,2),
	 (734,7),
	 (735,4),
	 (736,5),
	 (737,4),
	 (738,3),
	 (739,5),
	 (740,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (741,2),
	 (742,9),
	 (743,8),
	 (744,10),
	 (745,2),
	 (746,6),
	 (747,2),
	 (748,1),
	 (749,4),
	 (750,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (751,6),
	 (752,9),
	 (753,6),
	 (754,8),
	 (755,6),
	 (756,3),
	 (757,8),
	 (758,3),
	 (759,2),
	 (760,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (761,9),
	 (762,6),
	 (763,1),
	 (764,6),
	 (765,8),
	 (766,6),
	 (767,1),
	 (768,7),
	 (769,6),
	 (770,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (771,2),
	 (772,1),
	 (773,1),
	 (774,8),
	 (775,4),
	 (776,1),
	 (777,2),
	 (778,8),
	 (779,4),
	 (780,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (781,6),
	 (782,1),
	 (783,6),
	 (784,8),
	 (785,7),
	 (786,4),
	 (787,4),
	 (788,2),
	 (789,4),
	 (790,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (791,4),
	 (792,8),
	 (793,9),
	 (794,4),
	 (795,8),
	 (796,6),
	 (797,1),
	 (798,4),
	 (799,1),
	 (800,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (801,5),
	 (802,3),
	 (803,7),
	 (804,3),
	 (805,10),
	 (806,9),
	 (807,7),
	 (808,10),
	 (809,2),
	 (810,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (811,7),
	 (812,5),
	 (813,10),
	 (814,8),
	 (815,2),
	 (816,5),
	 (817,6),
	 (818,6),
	 (819,6),
	 (820,7);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (821,6),
	 (822,9),
	 (823,7),
	 (824,7),
	 (825,5),
	 (826,2),
	 (827,1),
	 (828,6),
	 (829,7),
	 (830,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (831,9),
	 (832,8),
	 (833,10),
	 (834,10),
	 (835,1),
	 (836,8),
	 (837,2),
	 (838,2),
	 (839,10),
	 (840,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (841,10),
	 (842,6),
	 (843,5),
	 (844,8),
	 (845,8),
	 (846,1),
	 (847,9),
	 (848,8),
	 (849,8),
	 (850,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (851,9),
	 (852,4),
	 (853,4),
	 (854,6),
	 (855,5),
	 (856,9),
	 (857,10),
	 (858,2),
	 (859,3),
	 (860,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (861,4),
	 (862,2),
	 (863,9),
	 (864,2),
	 (865,6),
	 (866,5),
	 (867,9),
	 (868,7),
	 (869,4),
	 (870,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (871,8),
	 (872,2),
	 (873,6),
	 (874,10),
	 (875,2),
	 (876,8),
	 (877,4),
	 (878,2),
	 (879,9),
	 (880,4);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (881,10),
	 (882,7),
	 (883,2),
	 (884,3),
	 (885,8),
	 (886,7),
	 (887,10),
	 (888,9),
	 (889,2),
	 (890,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (891,10),
	 (892,3),
	 (893,3),
	 (894,5),
	 (895,5),
	 (896,7),
	 (897,1),
	 (898,4),
	 (899,1),
	 (900,1);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (901,4),
	 (902,1),
	 (903,7),
	 (904,5),
	 (905,8),
	 (906,6),
	 (907,5),
	 (908,7),
	 (909,8),
	 (910,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (911,10),
	 (912,3),
	 (913,3),
	 (914,10),
	 (915,3),
	 (916,2),
	 (917,4),
	 (918,10),
	 (919,10),
	 (920,9);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (921,7),
	 (922,3),
	 (923,1),
	 (924,3),
	 (925,3),
	 (926,1),
	 (927,1),
	 (928,1),
	 (929,10),
	 (930,2);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (931,10),
	 (932,6),
	 (933,2),
	 (934,1),
	 (935,1),
	 (936,9),
	 (937,4),
	 (938,10),
	 (939,6),
	 (940,8);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (941,5),
	 (942,7),
	 (943,6),
	 (944,1),
	 (945,4),
	 (946,2),
	 (947,8),
	 (948,9),
	 (949,5),
	 (950,5);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (951,2),
	 (952,4),
	 (953,8),
	 (954,9),
	 (955,7),
	 (956,8),
	 (957,6),
	 (958,9),
	 (959,6),
	 (960,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (961,3),
	 (962,10),
	 (963,7),
	 (964,1),
	 (965,8),
	 (966,6),
	 (967,9),
	 (968,10),
	 (969,2),
	 (970,6);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (971,6),
	 (972,8),
	 (973,1),
	 (974,10),
	 (975,3),
	 (976,6),
	 (977,7),
	 (978,6),
	 (979,4),
	 (980,3);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (981,9),
	 (982,9),
	 (983,6),
	 (984,7),
	 (985,9),
	 (986,10),
	 (987,3),
	 (988,2),
	 (989,10),
	 (990,10);
INSERT INTO books.book_genres (book_id,genre_id) VALUES
	 (991,6),
	 (992,1),
	 (993,3),
	 (994,10),
	 (995,1),
	 (996,3),
	 (997,2),
	 (998,5),
	 (999,3),
	 (1000,2);

INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Scatter My Ashes at Bergdorf''s',976,10,'772870420-6','1931-04-23',8),
	 ('Kommissarie SpÃ¤ck',1055,1,'538822283-7','2019-08-30',10),
	 ('End of the Line',1472,3,'994679440-3','1933-02-23',2),
	 ('Cthulhu',630,8,'366347723-1','1942-12-21',9),
	 ('1984 (Nineteen Eighty-Four)',328,2,'510628161-X','1971-07-08',4),
	 ('Pepe',1295,10,'203351751-9','1933-11-29',10),
	 ('Bestiaire',1470,4,'869418768-X','1943-09-24',8),
	 ('Great Santini, The',101,5,'492686078-3','1968-08-06',4),
	 ('Confessions of a Burning Man',946,4,'393813211-6','1962-11-11',2),
	 ('Shadow Warriors 2 (Assault on Devil''s Island)',1095,7,'297865288-8','1913-03-22',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Frenzy',870,9,'875647700-7','1907-07-22',7),
	 ('The Referee',358,5,'126184295-2','1903-04-08',8),
	 ('Cabin Fever 2: Spring Fever',219,6,'821011807-2','1973-11-24',4),
	 ('Comedians of Comedy, The',1360,3,'436574248-5','1951-10-31',9),
	 ('Imago mortis',1106,8,'001068231-7','1970-02-23',2),
	 ('Furry Vengeance',650,7,'084274772-9','1969-05-26',8),
	 ('Lucky Numbers',455,6,'601310752-1','1901-12-31',5),
	 ('Scenesters, The',897,1,'905873401-3','2010-10-12',10),
	 ('Fraternity Demon',376,1,'082807893-9','2004-05-20',9),
	 ('JÃ¶nssonligan dyker upp igen',864,7,'094653310-5','1980-10-22',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Grayeagle',294,3,'077450517-6','1981-08-19',2),
	 ('Lady Chatterley',1331,10,'932202426-7','1933-10-03',4),
	 ('May in the Summer',343,4,'773842201-7','2019-08-18',4),
	 ('Cargo',523,1,'829158301-3','1964-06-21',2),
	 ('Some Guy Who Kills People',193,3,'322709843-1','1954-03-22',1),
	 ('Strangers, The',1100,10,'150106156-9','2007-12-19',6),
	 ('Dungeons & Dragons',1291,8,'518301211-3','1918-08-24',5),
	 ('Warrior',424,3,'925901957-5','2021-03-22',3),
	 ('Mr. Average',730,4,'957936771-X','1997-10-16',5),
	 ('Ed and His Dead Mother',285,7,'973605509-4','2006-11-20',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Tom, Dick and Harry',314,8,'958991054-8','1947-06-20',3),
	 ('Food (JÃ­dlo)',423,9,'649898716-2','1943-07-02',1),
	 ('Undocumented',1262,4,'520150994-0','1989-12-15',3),
	 ('Small Town Murder Songs',255,2,'597194889-X','1902-10-22',1),
	 ('JosÃ© and Pilar (JosÃ© e Pilar)',1139,7,'848076929-7','2000-02-12',3),
	 ('Charleston',1105,5,'271565610-6','1904-02-10',5),
	 ('Jesse Stone: Stone Cold',554,1,'359213680-1','1939-02-27',2),
	 ('Confiance rÃ¨gne, La',222,3,'451088675-6','1908-11-17',10),
	 ('Alila',206,3,'079384887-3','1959-05-04',6),
	 ('Kidnapping, Caucasian Style (Kavkazskaya plennitsa)',1347,5,'412981399-4','2012-09-25',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Punk''s Dead: SLC Punk! 2',935,1,'429070951-6','1976-05-11',3),
	 ('Another Country',125,10,'690298419-0','1906-05-04',6),
	 ('El Robobo De La Jojoya',1350,1,'858215816-5','1929-04-10',6),
	 ('Cove, The',242,5,'669825087-2','1909-05-12',7),
	 ('Core, The',731,7,'565739385-6','1989-04-05',4),
	 ('RFK Must Die: The Assassination of Bobby Kennedy',866,1,'747129817-0','1971-02-08',6),
	 ('Hot Rock, The',705,9,'384022331-8','1997-01-21',10),
	 ('Power 98',850,10,'084021488-X','1971-10-16',9),
	 ('Twelve O''Clock High',1407,1,'789488498-7','2007-05-30',8),
	 ('Three Colors: Red (Trois couleurs: Rouge)',463,6,'812909604-8','1997-07-16',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Bridge, The (Most)',184,8,'667607845-7','1992-10-30',2),
	 ('Faces of Death: Fact or Fiction?',367,9,'732538909-4','2006-06-09',7),
	 ('Benigni',1262,2,'844933539-6','2022-06-26',6),
	 ('Mother Knows Best',635,1,'215646051-5','1955-01-20',6),
	 ('Godzilla Raids Again (Gojira no gyakushÃ»)',552,10,'289963467-4','1957-05-14',7),
	 ('Mystery on Monster Island',523,8,'974299828-0','2011-02-18',3),
	 ('Living Ghost, The',576,4,'090705672-5','2011-05-01',3),
	 ('It''s Always Fair Weather',296,3,'965718349-9','2002-04-05',2),
	 ('Left Behind II: Tribulation Force',937,9,'246665896-8','2004-04-11',1),
	 ('Game of Werewolves',955,1,'218876983-X','1954-05-15',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Dark City',998,6,'020956825-9','1957-12-21',10),
	 ('Eastern Promises',487,7,'107757636-6','2007-11-29',6),
	 ('Sherlock Holmes: A Game of Shadows',440,1,'420305861-9','1922-06-05',9),
	 ('Boys Are Back, The',1088,10,'944337050-6','1968-02-24',4),
	 ('Salem''s Lot',1001,4,'511551745-0','1957-12-17',8),
	 ('Wonder Boys',778,10,'867297925-7','1971-08-26',3),
	 ('Noah',987,9,'661909679-4','1991-05-22',10),
	 ('Mercenary for Justice',466,1,'664548045-8','1922-11-09',1),
	 ('Sokkotanssi',287,3,'852674098-9','1975-07-15',5),
	 ('Line King: The Al Hirschfeld Story, The',563,9,'089081213-6','1948-05-21',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Third Person',628,8,'115584717-2','1973-02-15',6),
	 ('On the DoubleÂ ',1364,6,'502042139-1','1930-10-31',2),
	 ('Cell 2, The',1011,2,'452083265-9','1915-11-05',5),
	 ('7th Cavalry (Seventh Cavalry)',414,10,'011614455-6','1981-10-19',8),
	 ('Advanced Style',449,5,'927486877-4','1928-03-02',1),
	 ('How to Irritate People',989,8,'391399091-7','1928-10-25',7),
	 ('Amazonia',399,4,'746313698-1','1925-08-04',4),
	 ('Meek''s Cutoff',397,8,'739678420-4','1954-02-23',3),
	 ('Blood Simple',104,1,'588875905-8','1979-11-26',4),
	 ('Distinguished Gentleman, The',805,7,'886492888-X','1916-12-07',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Je, tu, il, elle (I, You, He, She)',1312,2,'999616134-X','1921-08-12',2),
	 ('Stand Up and Fight',101,1,'932848790-0','1976-08-16',10),
	 ('Color of Money, The',752,7,'220438517-4','2015-11-19',4),
	 ('Re-cycle (Gwai wik)',879,3,'638939798-4','2004-06-29',1),
	 ('Coffin Rock',832,3,'970764157-6','1977-07-31',10),
	 ('Sorority Row',240,2,'482205902-2','1928-02-10',8),
	 ('Burn Paris Burn',119,4,'007271445-X','1927-05-09',2),
	 ('Revisionaries, The',1426,1,'622474262-6','1959-02-04',2),
	 ('Robots',173,4,'289697226-9','2016-03-17',6),
	 ('She''s Gotta Have It',1084,10,'179540047-1','1991-05-13',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Blades of Glory',1471,8,'205505062-1','1948-11-11',9),
	 ('Singapore Sling (Singapore sling: O anthropos pou agapise ena ptoma)',397,4,'513700237-2','1918-02-25',7),
	 ('Left-Hand Side of the Fridge, The (MoitiÃ© gauche du frigo, La)',1480,9,'316334104-7','1992-02-23',1),
	 ('Berlin Alexanderplatz',268,8,'828912041-9','1980-03-19',7),
	 ('City Heat',1309,10,'929415947-7','1935-08-01',5),
	 ('Place at the Table, A',772,2,'360920327-7','1949-07-30',7),
	 ('Day a Pig Fell Into the Well, The (Daijiga umule pajinnal)',1153,9,'272914205-3','2017-10-04',4),
	 ('Slingshot, The (KÃ¥disbellan)',1105,3,'122705653-2','1906-03-09',5),
	 ('S.O.B.',489,8,'404076696-2','1906-04-10',5),
	 ('Free the Nipple',1203,7,'715477296-4','1945-04-08',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Cut',341,4,'631537355-0','2017-02-22',1),
	 ('Children Underground',1416,7,'578599344-9','1907-03-15',2),
	 ('X: The Unknown',1015,1,'972541885-9','1943-01-18',9),
	 ('The Whisperer in Darkness',880,9,'379565957-4','1981-08-11',7),
	 ('My Life',497,1,'539141230-7','1995-10-31',2),
	 ('Sune pÃ¥ bilsemester',689,7,'467859023-4','1925-08-23',7),
	 ('Book of Fate, The (Kohtalon kirja)',837,9,'693535503-6','1954-01-27',2),
	 ('Stolen Collection, (Skradziona kolekcja)',263,2,'474432976-4','2009-05-09',10),
	 ('Bangkok Dangerous',145,6,'973894092-3','1915-10-12',10),
	 ('Shanghai Surprise',237,2,'876302851-4','1991-02-10',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Fear No Evil',1364,4,'860855948-X','1905-05-03',4),
	 ('An American Tail: The Mystery of the Night Monster',995,9,'052728800-4','2009-02-25',10),
	 ('A.K.A. Don Bonus',1185,1,'698767791-3','1946-03-16',5),
	 ('Beefcake',1073,8,'552267431-8','2004-10-08',6),
	 ('C.O.G.',1200,5,'994745743-5','1948-06-21',7),
	 ('Godzilla',153,6,'292916027-6','1910-09-09',8),
	 ('Revenge of the Nerds III: The Next Generation',1275,5,'106232311-4','1908-08-03',4),
	 ('Mother (Mat)',419,1,'453381048-9','1986-05-13',8),
	 ('Eggs',332,6,'871588843-6','1953-11-30',8),
	 ('Vincent',677,1,'039607991-1','1931-06-27',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Tender Comrade',677,6,'197414619-7','1975-11-09',4),
	 ('Dark House, The (Dom zly)',317,1,'746946871-4','1959-02-06',3),
	 ('FernGully 2: The Magical Rescue',1439,9,'659854842-X','1966-08-16',5),
	 ('The Uninvited Guest',831,8,'235935680-1','1904-04-19',7),
	 ('Lemony Snicket''s A Series of Unfortunate Events',1364,2,'377006995-1','1905-01-19',1),
	 ('Muertos, Los',1071,3,'924871664-4','1960-04-08',9),
	 ('Operation Pacific',1207,10,'536456620-X','1974-11-30',2),
	 ('Redemption of General Butt Naked, The',339,2,'999616000-9','1901-12-21',9),
	 ('Searching for Bobby Fischer',1375,9,'092947592-5','1916-11-25',2),
	 ('Nell',1422,8,'015852054-8','1958-04-15',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Beginning of the End',582,2,'550879013-6','1985-12-16',5),
	 ('Georgia',829,3,'894565448-8','2017-11-14',3),
	 ('Muppet Musicians of Bremen, The',1443,4,'852048297-X','1919-12-02',7),
	 ('Oliver & Company',190,7,'263295885-7','1945-04-30',6),
	 ('Blaze',131,3,'125400761-X','1902-08-17',8),
	 ('Strange Planet',113,7,'302845184-0','2005-08-10',4),
	 ('Hi, Mom!',1469,9,'507410152-2','1982-01-12',2),
	 ('Killing Us Softly 3',1435,4,'222892012-6','2002-07-29',7),
	 ('Murphy''s Law',355,9,'952077276-6','2002-01-11',5),
	 ('Summer Stock',1345,5,'305412619-6','1990-05-29',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Seventh Horse of the Sun  (Suraj Ka Satvan Ghoda)',807,10,'438750766-7','1920-05-07',1),
	 ('Brothers, The',1011,4,'019775633-6','1953-10-24',7),
	 ('Palermo Shooting',421,1,'886714638-6','1921-01-22',2),
	 ('Star Wars: Episode I - The Phantom Menace',729,4,'613664124-0','1936-06-03',2),
	 ('Airheads',1428,5,'107907125-3','1947-04-09',10),
	 ('Blood and Bone',477,10,'992314578-6','2009-08-27',4),
	 ('21-87',971,4,'164226270-6','1970-07-26',5),
	 ('Delicate Balance, A',700,7,'359799217-X','1983-12-15',1),
	 ('Rose Tattoo, The',663,3,'499284824-9','1984-12-03',8),
	 ('Dead Pit, The',609,4,'328858344-5','1983-01-07',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Airport 1975',970,10,'645691347-0','1969-01-17',6),
	 ('Kevin & Perry Go Large',833,3,'531068728-9','1906-11-01',2),
	 ('Marked for Death',945,5,'818424770-2','1941-02-12',1),
	 ('Call Me Kuchu',1350,9,'486156307-0','1957-02-20',3),
	 ('Stella Street',705,1,'366326354-1','1923-10-25',6),
	 ('Black Bread (Pa Negre)',790,8,'190074886-X','1911-08-29',7),
	 ('Bush Mama',178,9,'327218553-4','1941-07-13',6),
	 ('Iron Island (Jazireh Ahani)',1231,3,'489359003-0','2007-01-06',1),
	 ('Anything Else',399,1,'288339853-4','2021-01-22',1),
	 ('Snow Cake',632,10,'099188862-6','1911-06-21',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('At Play in the Fields of the Lord',749,7,'187766637-8','2013-07-16',2),
	 ('Dark Matter',897,10,'748622964-1','1923-02-10',2),
	 ('Life Is a Long Quiet River (La vie est un long fleuve tranquille)',681,10,'787732711-0','1913-04-24',10),
	 ('The Private Life of a Cat',1187,8,'610919843-9','1969-09-04',9),
	 ('Grateful Dawg',1277,5,'713886877-4','1981-04-08',6),
	 ('Julius Caesar',872,9,'326655110-9','1975-06-17',9),
	 ('8 (8, the Play)',408,6,'776306514-1','2002-12-03',5),
	 ('Everly',1156,9,'498052915-1','1943-11-21',3),
	 ('Breathing Fire',1387,2,'450012353-9','1956-10-17',1),
	 ('Family Meeting',1369,10,'001104730-5','1936-01-25',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Spirit, The',658,1,'666339178-X','1927-01-19',9),
	 ('Zotz!',146,4,'714130184-4','1944-04-14',5),
	 ('Pitfall (Otoshiana)',150,7,'531551144-8','1937-07-02',5),
	 ('Origin: Spirits of the Past (Gin-iro no kami no Agito)',711,8,'051119733-0','2009-04-04',10),
	 ('Paperboy, The',218,7,'032422830-9','1985-07-06',7),
	 ('White Oleander',945,8,'337212204-6','1901-05-14',3),
	 ('Space Raiders',644,3,'402899599-X','1977-04-18',6),
	 ('Cruel Gun Story (KenjÃ» zankoku monogatari)',157,6,'700608893-3','2010-08-25',9),
	 ('Flushed Away',1464,5,'892548717-9','1971-09-11',6),
	 ('Quicksilver',1422,2,'015697013-9','1901-08-18',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Cronos',1321,10,'370481530-6','1932-05-29',5),
	 ('For Love or Country: The Arturo Sandoval Story',1350,10,'347791280-2','1910-09-29',9),
	 ('Week-End at the Waldorf',419,4,'221276715-3','1997-02-28',5),
	 ('Timecrimes (CronocrÃ­menes, Los)',737,10,'594166762-0','1909-08-27',1),
	 ('Under African Skies',930,2,'146235262-6','1933-12-09',6),
	 ('Too Late Blues',912,8,'874258035-8','2009-07-14',1),
	 ('Ong-Bak 2: The Beginning (Ong Bak 2)',1384,9,'539057199-1','1992-02-24',8),
	 ('Suing the Devil',767,4,'957152952-4','2003-01-14',4),
	 ('Velvet Goldmine',357,1,'984761374-5','2001-05-08',2),
	 ('The UFO Incident',1152,10,'291054337-4','1982-07-09',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Demon Seed',1112,7,'738578998-6','1977-07-27',4),
	 ('Intruders',1244,6,'256384483-5','1917-11-13',1),
	 ('A Thousand Times Goodnight',589,8,'834874195-X','1954-11-06',4),
	 ('Remember the Night',750,7,'761825405-2','2017-04-08',9),
	 ('Prime',1139,5,'225205935-4','1900-01-27',7),
	 ('Great Race, The',1448,1,'801580442-6','1988-09-15',1),
	 ('Rally ''Round the Flag, Boys!',517,8,'075758295-8','1975-07-03',6),
	 ('Front of the Class',1431,8,'019380713-0','1979-05-31',8),
	 ('Kon-Tiki',1108,5,'844276822-X','1922-06-22',7),
	 ('I Can Get It for You Wholesale',540,4,'258496980-7','1942-02-21',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Mammuth',799,5,'568454300-6','1934-07-21',7),
	 ('After School Special (a.k.a. Barely Legal)',182,4,'257527757-4','1926-06-25',5),
	 ('Suddenly, Last Winter (Improvvisamente l''inverno scorso)',921,10,'731735785-5','2017-09-01',8),
	 ('Norm MacDonald: Me Doing Standup',698,5,'735529314-1','1983-11-30',7),
	 ('Falls, The',683,7,'539345309-4','1953-01-03',2),
	 ('Spy Kids 2: The Island of Lost Dreams',832,10,'756917440-2','1900-11-24',9),
	 ('Deewaar',410,2,'703820781-4','1910-05-25',1),
	 ('In Country',776,8,'354639765-7','2018-10-29',5),
	 ('All Watched Over by Machines of Loving Grace',904,7,'250974884-X','2018-01-03',2),
	 ('New York Lightboard Record',859,2,'633186872-0','1957-01-27',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Leila',1488,7,'072241880-9','1978-08-11',5),
	 ('Document of the Dead',1090,10,'327289234-6','1993-12-08',4),
	 ('Venus',329,1,'698435871-X','1911-11-25',9),
	 ('Frankenhooker',689,9,'915461177-6','1911-07-27',10),
	 ('Jive Turkey',608,7,'303913106-0','1962-03-28',3),
	 ('Cambridge Spies',1418,9,'505536709-1','1988-04-01',4),
	 ('The Sex and Violence Family Hour',295,1,'860430966-7','1922-07-15',8),
	 ('Contracted',727,3,'013291560-X','1968-06-30',1),
	 ('Angels in America',350,7,'949677485-7','1971-11-14',1),
	 ('Casting By',575,8,'463061973-9','1992-11-29',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Dana Carvey: Squatting Monkeys Tell No Lies',1120,9,'904979505-6','1990-03-07',4),
	 ('Whale, The',561,8,'074227721-6','1970-07-28',1),
	 ('Juice',368,10,'964342831-1','1924-10-23',8),
	 ('Zone 39',1193,5,'464700462-7','2005-10-28',3),
	 ('Herbie: Fully Loaded',118,2,'208827801-X','1923-12-01',4),
	 ('Vampire Apocalypse',660,2,'938512682-2','2003-04-12',1),
	 ('By Dawn''s Early Light',1028,8,'250827679-0','1954-05-07',7),
	 ('Octagon, The',832,8,'972074078-7','2009-10-19',5),
	 ('Secret Agent, The',174,1,'103437811-2','1973-08-02',4),
	 ('Girls Town',443,1,'124699152-7','1958-04-25',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Trancers',699,5,'430651762-4','2009-04-12',3),
	 ('Danny Deckchair',1135,4,'966548090-1','1989-02-03',2),
	 ('Trader Horn',123,3,'267595747-X','1982-09-11',4),
	 ('Mrs. Palfrey at the Claremont',1096,7,'722296552-1','1943-03-13',5),
	 ('Kill List',1350,3,'344571218-2','2001-09-08',9),
	 ('Ghosts of the Abyss',1464,7,'632087768-5','1900-08-06',3),
	 ('Into the Night',888,9,'515960952-0','1995-08-03',3),
	 ('Easy Rider',1331,2,'711564014-9','1920-01-05',5),
	 ('True Blue ',382,2,'720926889-8','2001-01-24',6),
	 ('Quiet Earth, The',576,8,'346627258-0','1985-06-05',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Maltese Falcon, The (a.k.a. Dangerous Female)',1165,7,'641885975-8','2020-11-22',7),
	 ('Ferocious',128,5,'350175828-6','1941-05-22',4),
	 ('Judex',1259,2,'163263309-4','1969-04-02',6),
	 ('Felicity',854,8,'047107498-5','1902-12-21',10),
	 ('Redwood Highway',459,4,'667844250-4','1917-08-30',9),
	 ('Black',805,3,'543403907-6','1937-01-05',10),
	 ('I Love You Too',896,1,'264499234-6','1924-03-30',9),
	 ('Crawlspace',147,5,'230541140-5','1924-10-22',3),
	 ('Spies (Spione)',1154,4,'642618264-8','1962-05-08',3),
	 ('Skyjacked',809,8,'363131008-0','1970-08-28',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Marvin Gaye: What''s Going On',1362,8,'494772286-X','1920-09-24',9),
	 ('Who Am I? (Wo shi shei)',537,2,'309716730-7','2002-08-29',8),
	 ('Assassination on the Tiber',1385,10,'069096895-7','1939-06-03',3),
	 ('A Mulher InvisÃ­vel',543,2,'722639075-2','1925-09-19',8),
	 ('Good Heart, The',1412,6,'102352970-X','2008-03-11',7),
	 ('Acadia Acadia?!? (L''acadie, l''Acadie)',381,5,'375538284-9','2005-08-07',6),
	 ('Babe, The',696,10,'426089306-8','1944-07-17',4),
	 ('Bereavement',1480,8,'437549223-6','1975-09-16',3),
	 ('Sea Wife',772,2,'282232791-2','1908-07-25',8),
	 ('High, Wide, and Handsome',1203,7,'212827621-7','1966-06-07',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Treasure of the Sierra Madre, The',533,1,'884061006-5','1969-06-03',3),
	 ('Just One of the Girls',729,8,'754686933-1','1968-05-11',1),
	 ('Harakiri',339,7,'844385659-9','2007-04-12',7),
	 ('Levity',1036,3,'092397718-X','1989-08-26',6),
	 ('StreetDance 3D',741,9,'033980822-5','1919-09-21',3),
	 ('The Car',1177,8,'899828390-5','1917-06-22',2),
	 ('Heidi',337,6,'220032339-5','1993-04-23',7),
	 ('Anna',748,3,'515832135-3','1906-11-17',8),
	 ('Celebration, The (Festen)',1351,8,'168825891-4','1980-07-12',7),
	 ('Donovan''s Echo',411,2,'228898537-2','1984-05-07',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Open Season',1292,3,'108986960-6','1921-09-16',2),
	 ('Jackpot',178,6,'390376627-5','1949-10-27',8),
	 ('Pearl Harbor',1251,2,'430318833-6','1952-10-16',5),
	 ('Rebound',251,10,'150550380-9','2012-04-25',2),
	 ('Milius',346,1,'962534579-5','1933-06-08',9),
	 ('Expendables 2, The',873,4,'869369014-0','1982-09-05',8),
	 ('What Have They Done to Your Daughters?',620,8,'446296768-2','1978-05-24',7),
	 ('Ballad of the Paper Balloons (a.k.a. Humanity and Paper Balloons) (NinjÃ´ kami fÃ»sen)',1042,10,'361525142-3','1907-02-05',10),
	 ('Africa: Texas Style',900,7,'846130220-6','2016-07-23',1),
	 ('Margaret Cho: Assassin',746,7,'185239540-0','1956-04-17',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Welcome to the South (Benvenuti al Sud)',305,2,'468760923-6','1957-07-01',6),
	 ('All Superheros Must Die',1423,2,'488969216-9','1944-03-04',3),
	 ('Surprise',1199,4,'732907853-0','1988-07-08',9),
	 ('Exhibition',170,6,'626847786-3','1946-05-10',7),
	 ('New Adventures of Pippi Longstocking, The',384,7,'976124926-3','1926-08-10',10),
	 ('Caveman',328,5,'372379680-X','1940-09-28',9),
	 ('Les invincibles',658,4,'721059767-0','1990-11-12',10),
	 ('Piter FM',1050,10,'158157970-5','1967-04-18',7),
	 ('Begone Dull Care',1374,8,'547428834-4','1943-05-06',2),
	 ('Haunting, The',584,9,'117216030-9','1984-07-06',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('15 Minutes',438,5,'401320766-4','1971-09-16',4),
	 ('The Monkey King',1367,2,'688087843-1','2009-09-21',9),
	 ('Fog City Mavericks',250,4,'562300925-5','1951-04-28',6),
	 ('Extreme Ops',1148,4,'297049963-0','1920-04-28',1),
	 ('The Bronze',1035,9,'505040224-7','2001-10-10',5),
	 ('Shake Hands with the Devil',674,9,'132004463-8','1979-08-08',10),
	 ('Goodbye Girl, The',516,4,'375266418-5','1922-08-03',6),
	 ('Singles',1215,1,'291844238-0','2000-11-25',2),
	 ('Little Caesar',1159,7,'658192552-7','1996-11-20',4),
	 ('Summer of Blood',105,2,'639607071-5','1990-02-09',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Boy in Blue, The',385,1,'607316713-X','1953-08-21',10),
	 ('Broadway Melody, The',308,9,'506692498-1','1960-03-08',6),
	 ('Legend of Suram Fortress, The (Ambavi Suramis tsikhitsa) ',444,9,'648098726-8','1960-01-24',2),
	 ('Delta',102,8,'268320418-3','1935-02-14',8),
	 ('From Beyond the Grave (Creatures)',243,2,'074436975-4','1910-01-22',2),
	 ('Twenty-Four Eyes (NijÃ»shi no hitomi)',1286,6,'938499014-0','1993-11-09',9),
	 ('Trembling Before G-d',356,1,'715503768-0','1986-03-06',6),
	 ('Ghost of Frankenstein, The',1201,9,'465000240-0','1910-03-06',10),
	 ('Rat Race',1411,7,'381224624-4','2018-02-11',6),
	 ('Atomic States of America, The',1252,10,'189211844-0','1955-07-15',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Turning, The',377,3,'471655994-7','1993-03-07',5),
	 ('Action in the North Atlantic',1139,3,'880154965-2','1980-09-27',9),
	 ('Eight Legged Freaks',1164,2,'776656641-9','1983-07-09',5),
	 ('Beethoven''s 5th',426,6,'497239888-4','1959-01-21',4),
	 ('Moving McAllister',347,1,'345770101-6','1965-08-29',6),
	 ('Forbidden Door (Pintu Terlarang)',579,9,'907312945-1','1987-05-30',8),
	 ('Friends of God: A Road Trip with Alexandra Pelosi',1296,8,'906428431-8','1995-10-06',9),
	 ('Tuck Everlasting',199,7,'155677542-3','1903-02-21',4),
	 ('Wild Child, The (Enfant sauvage, L'')',859,9,'019640113-5','1941-10-21',1),
	 ('Cut',1252,5,'899223790-1','2016-11-04',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Cleaner',1056,10,'549698982-5','1944-02-10',1),
	 ('Craft, The',1437,7,'786139020-9','1983-08-25',1),
	 ('Robots',282,9,'451374305-0','2009-12-12',10),
	 ('Soft Toilet Seats',137,6,'062365773-2','1985-01-13',6),
	 ('One-Way Ticket to Mombasa (Menolippu Mombasaan)',632,2,'583557240-9','1969-06-28',2),
	 ('Of Mice and Men',376,6,'751991921-8','1930-07-27',6),
	 ('Drug War (Du zhan)',488,9,'446005214-8','2010-11-28',8),
	 ('Blue Juice',879,6,'573816340-0','1939-06-29',8),
	 ('Shadows and Fog',790,3,'921903858-7','1984-05-27',4),
	 ('Family Thing, A',666,6,'475334950-0','1921-09-27',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('BloodRayne: Deliverance (BloodRayne II: Deliverance)',144,9,'908390127-0','1925-09-19',1),
	 ('Concert for George, The',836,3,'642799199-X','1924-01-09',3),
	 ('Eros (Men and Women) (Noite Vazia)',1087,8,'206661238-3','1904-11-26',2),
	 ('Aliyah (Alyah) ',529,3,'898312406-7','1916-07-07',6),
	 ('Night, The (Notte, La)',1490,4,'196095032-0','2013-10-25',5),
	 ('What the Day Owes the Night',348,8,'633836391-8','1977-01-14',5),
	 ('Don''t Come Knocking',638,1,'716962300-5','1954-04-11',8),
	 ('Clonus Horror, The',339,7,'313485640-9','1991-01-09',4),
	 ('Fast and the Furious, The',558,2,'639511964-8','1991-03-06',4),
	 ('Holiday Inn',491,5,'155650452-7','1966-10-21',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Lake City',1487,9,'486811472-7','1991-04-16',1),
	 ('Comfort of Strangers, The',1152,8,'367461759-5','1907-06-04',2),
	 ('Beautiful Boxer',512,4,'063941790-6','2023-01-26',6),
	 ('Freedom Writers',1016,7,'452404991-6','1902-01-23',10),
	 ('Bridge, The (Most)',1434,2,'877715534-3','1941-05-03',7),
	 ('Kummelin jackpot',395,8,'855230548-8','1917-11-24',7),
	 ('Cat''s Eye',1205,6,'613797686-6','2012-09-29',8),
	 ('Tank',700,2,'301288625-7','2011-08-31',2),
	 ('HOUBA! On the Trail of the Marsupilami (Sur la piste du Marsupilami)',834,4,'488749346-0','2010-08-23',7),
	 ('Girl Who Played with Fire, The (Flickan som lekte med elden)',806,8,'864803411-6','1973-11-17',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Onechanbara - Zombie Bikini Squad (a.k.a. Oneechanbara: The Movie)',106,9,'666977222-X','1937-04-26',4),
	 ('Woodstock Diary',1247,6,'245208952-4','1999-11-27',5),
	 ('The Seven-Ups',285,8,'184096847-8','1929-06-23',1),
	 ('Shut Up and Play the Hits',420,2,'237844297-1','1967-09-01',2),
	 ('Escuela de seducciÃ³n',1423,6,'485828655-X','1953-10-18',10),
	 ('Jane Austen Book Club, The',279,6,'974560772-X','1940-10-03',2),
	 ('Cleopatra',337,10,'952090504-9','1935-02-28',5),
	 ('Private Fears in Public Places (Coeurs)',1486,10,'985493312-1','1907-09-12',1),
	 ('The Snow White Murder Case',461,3,'138863448-1','2020-01-17',7),
	 ('Jack and the Beanstalk',1382,2,'205187174-4','1900-08-24',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Before Sunset',1299,7,'453291158-3','1954-07-23',8),
	 ('Insomnia',902,10,'973325553-X','1996-05-26',1),
	 ('La Putain du roi',1335,4,'477398127-X','1943-10-13',5),
	 ('Summer Catch',1460,10,'462664605-0','1975-05-22',2),
	 ('Running Time',793,9,'815944193-2','1918-05-19',6),
	 ('Brightness (Yeelen)',1169,10,'251222903-3','1938-02-27',8),
	 ('Festival Express',1326,3,'197185991-5','1937-09-20',2),
	 ('Clink of Ice, The (a.k.a.: Sound of Ice Cubes, The) (Le bruit des glaÃ§ons)',1389,9,'102807310-0','1952-05-05',9),
	 ('Beethoven''s 5th',781,6,'664036832-3','1905-04-26',8),
	 ('Second Time Around, The',1103,2,'696251113-2','2008-04-01',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Kummeli Stories',765,8,'270570756-5','1939-04-01',1),
	 ('Smoke',289,10,'547950572-6','1955-06-02',9),
	 ('Django, Kill... If You Live, Shoot! (Se sei vivo spara)',612,4,'204970748-7','1937-05-18',6),
	 ('The Madagascar Penguins in a Christmas Caper',1327,8,'198707729-6','1911-08-04',2),
	 ('13/13/13',273,6,'007284042-0','1945-05-10',7),
	 ('Emma''s Bliss (Emmas GlÃ¼ck)',1297,2,'802229551-5','2006-03-19',6),
	 ('Madigan',111,10,'536560171-8','1963-04-28',5),
	 ('Mumford',110,3,'017229300-6','1906-11-10',10),
	 ('Long Good Friday, The',1458,2,'465574050-7','1918-02-26',9),
	 ('For the Moment',151,2,'285470054-6','1955-02-21',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Escape to Witch Mountain',108,10,'993407067-7','1935-09-17',3),
	 ('Con, The',466,8,'738597341-8','2019-08-29',5),
	 ('Rocketship X-M',1247,1,'920260368-5','1932-05-03',6),
	 ('Tales of Vesperia: The First Strike (Teiruzu obu vesuperia: The first strike)',1263,10,'748506141-0','1975-03-09',2),
	 ('Mediterraneo',116,10,'971947123-9','2018-04-23',4),
	 ('Windfall',379,2,'960938875-2','1944-10-17',8),
	 ('Europa (Zentropa)',1380,7,'662793577-5','1947-11-14',10),
	 ('Welcome to the Sticks (Bienvenue chez les Ch''tis)',832,5,'374361771-4','1920-06-15',8),
	 ('B-Side',1216,7,'482464365-1','1986-05-02',4),
	 ('Ask Me Anything',783,3,'046173680-2','1975-01-06',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('American Gun',583,8,'452413090-X','1904-06-04',7),
	 ('Africa: The Serengeti',412,8,'003714764-1','2019-04-12',2),
	 ('3 Idiots',750,8,'386215558-7','1972-07-24',2),
	 ('Crazy People',1363,10,'016264151-6','1910-12-25',5),
	 ('Fido',1134,4,'147415929-X','1970-04-11',7),
	 ('American Idiots',900,8,'228750363-3','1968-06-15',4),
	 ('Hills Have Eyes Part II, The',1476,8,'643575066-1','1910-02-06',7),
	 ('Sweeney Todd: The Demon Barber of Fleet Street',738,9,'348683784-2','1993-03-06',10),
	 ('Gothika',448,7,'992064884-1','2023-03-13',8),
	 ('Sherlock Holmes and the Masks of Death',1321,6,'643001504-1','1970-02-16',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Trick or Treat',986,1,'243315760-9','1960-05-15',2),
	 ('Where Is the Friend''s Home? (Where Is My Friend''s House?) (Khane-ye doust kodjast?)',786,8,'518821217-X','1987-06-13',2),
	 ('Code Name Coq Rouge',1449,3,'936860418-5','1972-05-16',4),
	 ('Overlord',1173,3,'105683325-4','1977-05-26',2),
	 ('Monsieur Ibrahim (Monsieur Ibrahim et les fleurs du Coran)',658,7,'453668198-1','1909-10-29',6),
	 ('Brushfires',320,4,'135456910-5','1978-03-03',8),
	 ('What About Dick?',1367,2,'822166106-6','1965-05-03',4),
	 ('Hansel & Gretel',1052,2,'038534560-7','1972-11-29',4),
	 ('Tongan Ninja',1477,3,'298563240-4','2012-01-25',8),
	 ('Vivacious Lady',417,10,'189887643-6','1934-08-28',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Forgotten One, The',683,9,'621149422-X','2012-09-16',1),
	 ('Lucky Star',485,2,'595981820-5','1970-04-18',6),
	 ('Danny Deckchair',826,4,'211081127-7','1985-09-22',7),
	 ('World, the Flesh and the Devil, The',775,10,'415135829-3','1958-06-24',7),
	 ('Dead & Breakfast',173,1,'407044410-6','1924-11-24',4),
	 ('Fierce People',270,2,'036525899-7','1968-06-18',3),
	 ('Alpha and Omega 2: A Howl-iday Adventure (Alpha & Omega 2)',183,10,'493926652-4','1977-12-26',7),
	 ('BloodRayne: Deliverance (BloodRayne II: Deliverance)',231,6,'087162316-1','1903-11-10',7),
	 ('Mulholland Drive',210,5,'497610012-X','1978-09-18',10),
	 ('Toxic Avenger, The',710,7,'746092147-5','2007-10-18',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('It''s a Mad, Mad, Mad, Mad World',263,7,'676573528-3','2016-07-12',2),
	 ('Standby',551,5,'901979174-5','1948-03-17',3),
	 ('Now or Never',1262,1,'890089742-X','1987-03-04',3),
	 ('War Lord, The',863,6,'918410575-5','1902-08-01',7),
	 ('Anthropophagus: The Grim Reaper (Antropophagus) (Man Beast) (Savage Island, The) (Zombie''s Rage, The)',712,9,'175326537-1','1902-08-31',6),
	 ('They Call Us Misfits (Dom kallar oss mods)',1074,1,'672296169-9','1953-03-12',6),
	 ('Winnie the Pooh and a Day for Eeyore',1157,6,'102444562-3','2020-06-19',9),
	 ('Who Am I (Kein System Ist Sicher)',1170,5,'714086162-5','1950-11-16',9),
	 ('47  Ronin (ShijÃ»shichinin no shikaku)',621,5,'284261175-6','1973-03-06',2),
	 ('Renaissance Man',602,8,'040677078-6','2000-04-13',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Torch Song Trilogy',1246,3,'381315728-8','1920-12-22',9),
	 ('Plastic Paradise: The Great Pacific Garbage Patch',887,9,'869774324-9','1931-04-02',4),
	 ('Jet Li''s Fearless (Huo Yuan Jia)',666,8,'513113812-4','1911-11-26',10),
	 ('Erasing David',506,4,'386104535-4','1936-03-03',5),
	 ('Every Other Weekend (Un week-end sur deux)',1281,7,'952173383-7','1916-10-03',7),
	 ('Days of Thunder',815,5,'146509359-1','1998-01-18',7),
	 ('Woman Thou Art Loosed',414,4,'931354974-3','1938-04-30',3),
	 ('Kogel mogel',1316,7,'205685961-0','1956-11-12',9),
	 ('Angel Eyes',1384,7,'997369692-1','1983-07-11',1),
	 ('Highlander: The Source',1180,5,'740368831-7','1963-11-02',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Broken Windows',651,5,'616914774-1','1914-01-21',4),
	 ('This Is the End',1475,1,'001362241-2','1905-04-17',5),
	 ('Knights of the Round Table',303,2,'562741361-1','1969-05-02',10),
	 ('London After Midnight',687,1,'691723810-4','1919-12-04',6),
	 ('Foreign Affair, A (2 Brothers & a Bride)',870,10,'246448024-X','1993-08-20',4),
	 ('J. Gang Meets Dynamite Harry, The (JÃ¶nssonligan & DynamitHarry)',1283,8,'891753848-7','1983-02-19',5),
	 ('S.O.B.',928,6,'849491009-4','2022-01-24',4),
	 ('Sisters',475,3,'746591650-X','1943-10-03',3),
	 ('El Lobo',438,10,'929344960-9','1957-02-10',1),
	 ('Executioners (Xian dai hao xia zhuan)',449,10,'811467424-5','2019-02-24',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('3 Little Ninjas and the Lost Treasure',501,8,'435616842-9','1955-07-12',10),
	 ('Perils of Pauline, The',926,2,'729793686-3','2018-05-12',5),
	 ('Dorm Daze (National Lampoon Presents Dorm Daze)',1393,9,'785033277-6','1942-08-02',9),
	 ('Can''t Hardly Wait',1313,9,'213873796-9','1932-05-18',9),
	 ('Jack Frost',457,1,'013951167-9','1908-08-30',2),
	 ('Green Wave, The',1361,5,'580400556-1','2002-04-30',5),
	 ('Radio Flyer',311,4,'580129386-8','1963-04-25',8),
	 ('Yu-Gi-Oh!: Bonds Beyond Time (Gekijouban Yuugiou: Chouyuugou! Jikuu o koeta kizuna)',525,8,'406878084-6','1969-12-05',10),
	 ('The Salt of the Earth',1194,2,'284978462-1','1918-09-20',6),
	 ('Village of the Damned',399,6,'264074020-2','1930-03-15',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('W Delta Z (a.k.a. The Killing Gene)',331,10,'427335693-7','1975-07-30',8),
	 ('Titanic Town',1007,3,'072956491-6','1947-09-28',6),
	 ('Nim''s Island',1497,1,'525997339-9','2019-04-16',7),
	 ('Hot Rock, The',514,10,'890826870-7','2008-12-23',2),
	 ('Clifford''s Really Big Movie',826,1,'700697623-5','1940-02-23',8),
	 ('Baboona',284,5,'184242122-0','1956-12-12',4),
	 ('Shake Hands with the Devil',325,7,'993728458-9','1908-06-21',2),
	 ('Infinity',600,3,'268468678-5','1935-12-15',1),
	 ('Hedd Wyn',453,1,'631160821-9','1945-03-31',3),
	 ('Dream Boy',1156,10,'778947372-7','1924-07-22',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Blindness',1166,6,'549669441-8','1901-07-02',5),
	 ('The Sea Vultures',679,4,'549233451-4','1945-02-16',2),
	 ('Immortals',635,5,'068689113-9','2014-02-28',10),
	 ('Rat Race',226,6,'839146192-0','2011-12-21',5),
	 ('Twentynine Palms',1268,7,'199475261-0','1921-08-31',3),
	 ('Corruptor, The',385,6,'962652472-3','1963-10-26',10),
	 ('Shoppen ',884,1,'762133065-1','2008-05-08',5),
	 ('Boxing Gym',860,9,'933488427-4','1912-05-20',9),
	 ('Martha',980,10,'617686794-0','1927-10-14',3),
	 ('Stooge, The',990,2,'078526275-X','1994-07-13',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Edison Force (a.k.a. Edison)',1158,9,'421021134-6','2007-03-09',9),
	 ('Hobson''s Choice',369,1,'054501992-3','2003-01-04',4),
	 ('Quest for Camelot',1439,9,'548177200-0','1960-08-10',3),
	 ('Lost for Life',389,2,'792301225-3','1905-09-13',2),
	 ('Minuscule: Valley of the Lost Ants (Minuscule - La vallÃ©e des fourmis perdues)',895,6,'044042692-8','1923-02-28',2),
	 ('Cocaine Cowboys',175,8,'486337017-2','1918-04-30',6),
	 ('Bachelor Party Vegas',381,9,'388405557-7','1991-05-02',9),
	 ('Sex Drive',1168,8,'416096392-7','1959-06-22',2),
	 ('The DUFF',533,3,'665463085-8','1956-08-09',5),
	 ('Last Casino, The',1056,10,'786698363-1','1999-02-02',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Beyond the Forest',1150,10,'940069289-7','2013-12-11',6),
	 ('Princess Aurora (Orora gongju)',1333,4,'905924441-9','1941-02-19',3),
	 ('Tomie: Unlimited',493,7,'037843691-0','1942-08-24',5),
	 ('Firefox',964,4,'375721131-6','1996-05-29',7),
	 ('Very Good Girls',873,9,'048606144-2','1994-09-18',6),
	 ('Time and Tide (Seunlau Ngaklau)',197,9,'735823823-0','2003-02-12',3),
	 ('Good Ol'' Freda',528,2,'932411495-6','1934-05-02',3),
	 ('Father Sergius (Otets Sergiy)',573,6,'486858377-8','1908-03-30',8),
	 ('She''s the One',521,5,'266096070-4','1988-04-16',9),
	 ('Mugabe and the White African',657,7,'431211693-8','1989-10-21',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Stationmaster Is on Fire - The Movie, That Is!, The (Stinsen brinner... filmen alltsÃ¥)',1274,10,'818732096-6','1962-12-23',6),
	 ('Vault of Horror, The',871,1,'987370169-9','1955-11-24',5),
	 ('SpaceCamp',1355,9,'598602654-3','1970-03-11',8),
	 ('Never Weaken',437,10,'795707485-5','2017-02-18',10),
	 ('King of Kings',281,8,'457508462-X','1912-02-20',3),
	 ('There''s No Business Like Show Business',1347,6,'696734324-6','1923-09-15',3),
	 ('Radio Days',728,8,'355159112-1','1906-01-30',7),
	 ('1001 Nights',904,5,'951710446-4','2013-09-08',4),
	 ('North by Northwest',569,10,'443214008-9','2013-09-30',6),
	 ('China Blue',333,3,'872189305-5','2009-07-30',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('112 Weddings',203,9,'255922121-7','2013-07-09',6),
	 ('Switch',453,2,'604561646-4','2021-04-27',8),
	 ('Fubar II (Fubar: Balls to the Wall)',1147,8,'282742277-8','1935-10-20',3),
	 ('That Night''s Wife',1411,3,'877854466-1','1998-12-30',6),
	 ('Star Trek III: The Search for Spock',392,4,'865095139-2','1922-04-14',1),
	 ('The Facility',865,4,'564588801-4','1987-08-19',10),
	 ('Guardian, The',711,5,'303531631-7','1932-02-05',6),
	 ('Sweeney Todd: The Demon Barber of Fleet Street',146,7,'733246255-9','1998-05-07',8),
	 ('Sliver',1057,7,'628121556-7','1943-10-22',4),
	 ('Halloween II',838,6,'971325989-0','1911-12-05',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('State Witness, The (Swiadek koronny)',967,4,'934111855-7','1979-07-19',5),
	 ('Blues in the Night',1361,2,'741492681-8','1912-07-19',1),
	 ('Man You Had in Mind, The',398,4,'433573226-0','1982-02-07',2),
	 ('Unbelievers, The',735,2,'791041228-2','2013-01-21',6),
	 ('Innocence',400,2,'374195342-3','1919-08-26',3),
	 ('Were the World Mine',1041,10,'970122448-5','1948-02-21',9),
	 ('Why Not? (Eijanaika)',999,9,'603150088-4','2006-05-25',6),
	 ('Cold Storage',971,4,'564242594-3','1967-03-16',7),
	 ('God''s Sandbox (Tahara)',537,5,'998825807-0','1951-01-02',1),
	 ('Borrower, The',123,1,'367830109-6','2009-12-30',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('I Know Where I''m Going!',236,10,'051294636-1','1935-06-06',2),
	 ('The Land Before Time VI: The Secret of Saurus Rock',220,4,'334707800-4','1987-02-19',1),
	 ('Marked for Death',517,8,'585986917-7','1945-03-28',10),
	 ('Guest House Paradiso',601,6,'858827437-X','1900-03-06',9),
	 ('Ricky Gervais Live 3: Fame',759,3,'652434127-9','1932-05-08',3),
	 ('Gay Bed and Breakfast of Terror, The',160,6,'167749103-5','2009-01-21',2),
	 ('Supermarket Woman (SÃ»pÃ¢ no onna)',998,2,'171607855-5','1949-06-11',9),
	 ('Song of Ceylon, The',1408,1,'687307597-3','1921-11-24',2),
	 ('Liz & Dick ',1201,3,'498477150-X','1978-01-24',3),
	 ('Katy Perry: Part of Me',621,3,'359450022-5','1983-03-19',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Xanadu',1068,8,'160321360-0','2010-04-07',9),
	 ('Beauty #2',1249,5,'686402211-0','1943-12-30',2),
	 ('Undisputed',591,10,'598299221-6','1958-02-02',9),
	 ('Independencia',615,3,'905848382-7','1910-06-10',9),
	 ('Too Shy to Try (Je suis timide... mais je me soigne)',913,6,'182145605-X','1909-12-28',10),
	 ('Cimarron',749,5,'743076115-1','2019-04-14',10),
	 ('Local Color',569,9,'683401984-7','1985-04-24',8),
	 ('Cool Air',1359,6,'403051641-6','2017-02-07',8),
	 ('Terror Train',1260,10,'735888602-X','1992-12-26',10),
	 ('Wesley Willis: The Daddy of Rock ''n'' Roll',1437,7,'508101723-X','1997-08-02',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Stuff and Dough (Marfa si banii)',550,1,'882285889-1','2006-04-12',8),
	 ('Flodder',1182,7,'434131767-9','2007-03-09',4),
	 ('Noises Off...',498,9,'439825203-7','2002-10-10',4),
	 ('Girl with the Red Scarf, The (Selvi boylum, al yazmalim)',295,3,'508482988-X','1975-12-03',5),
	 ('High and the Mighty, The',236,10,'748611454-2','1951-06-17',4),
	 ('The Great Kidnapping',932,5,'571677207-2','1911-04-22',3),
	 ('Tenderness (Hellyys)',993,9,'732874871-0','1917-06-02',2),
	 ('Story Written with Water, A (Mizu de kakareta monogatari)',209,7,'958688724-3','1926-08-02',7),
	 ('Bug''s Life, A',364,5,'504322459-2','2005-12-15',6),
	 ('City of No Limits, The (la ciudad sin lÃ­mites, En)',408,7,'359247401-4','1966-10-30',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Murphy''s Law',699,5,'268481495-3','1990-07-28',8),
	 ('Blackmailed',672,10,'230160268-0','2023-01-25',2),
	 ('Vengeance Valley',983,5,'716772835-7','1912-08-29',6),
	 ('West Side Story',1379,3,'816827235-8','2021-04-14',5),
	 ('Heathcliff: The Movie',994,1,'441045136-7','1959-10-17',6),
	 ('Of Unknown Origin',1422,7,'487292468-1','2001-10-19',7),
	 ('Heart of Midnight',248,3,'220217417-6','1924-03-13',10),
	 ('London to Brighton',728,5,'941853976-4','1919-09-25',3),
	 ('Problem Child',561,3,'712591392-X','1964-04-19',6),
	 ('City of Pirates (La ville des pirates) ',1081,9,'843241659-2','1997-04-02',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Flight of the Phoenix, The',222,1,'594205063-5','1954-09-13',7),
	 ('Roman Polanski: Wanted and Desired',1364,10,'506976826-3','1949-12-11',5),
	 ('Things Are Tough All Over',1133,9,'640488908-0','1986-06-17',7),
	 ('The Expedition to the End of the World',400,2,'796217265-7','1929-01-23',9),
	 ('Sound of Insects, The',471,6,'813980546-7','2005-03-19',8),
	 ('Wallace & Gromit: The Wrong Trousers',673,7,'611508555-1','1955-12-03',7),
	 ('Survival Island (Three)',1180,8,'367207671-6','2003-01-02',7),
	 ('Colony, The',1031,1,'600169735-3','1920-01-14',7),
	 ('Eddie Murphy Delirious',333,3,'087384286-3','1956-03-28',1),
	 ('Summer Place, A',591,8,'865230364-9','1906-12-05',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Twentynine Palms',870,3,'530318672-5','1990-11-14',6),
	 ('What? (Che?)',906,3,'927984651-5','1951-11-27',7),
	 ('Ape, The (Apan)',707,10,'444041709-4','1959-10-30',2),
	 ('Lethal Weapon 3',1322,9,'630631185-8','1917-01-15',5),
	 ('Nothing But the Night',181,5,'457613979-7','1966-11-19',1),
	 ('Marie and Bruce',652,5,'874158037-0','1965-04-14',10),
	 ('Sitcom',745,1,'791598737-2','2003-10-07',9),
	 ('Deathsport',603,3,'737870427-X','1990-05-02',6),
	 ('Jiro Dreams of Sushi',757,8,'658930989-2','1960-12-25',1),
	 ('Mask of Fu Manchu, The',953,7,'142798385-2','1981-10-12',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Hell Is for Heroes',289,4,'916228418-5','1904-10-27',5),
	 ('Ball of Fire',721,5,'715836402-X','2006-05-27',10),
	 ('Arrapaho',292,8,'104329810-X','2010-02-16',2),
	 ('Method, The (MÃ©todo, El)',1057,2,'866334315-9','1910-11-05',10),
	 ('Cider House Rules, The',1151,5,'910425246-2','1909-12-02',4),
	 ('Great Bank Hoax, The',369,4,'872602390-3','1959-09-02',8),
	 ('Bulldog Drummond Escapes',945,10,'254816080-7','1934-01-13',1),
	 ('Insidious: Chapter 2',1172,6,'546488972-8','1985-02-12',4),
	 ('We Won''t Grow Old Together (Nous ne vieillirons pas ensemble)',938,6,'942147206-3','1937-12-29',8),
	 ('In Their Skin',659,8,'360190265-6','1995-04-25',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Dunwich Horror, The',525,2,'678432060-3','1925-03-19',5),
	 ('Roadie',539,6,'977217888-5','1911-08-10',10),
	 ('Red Psalm (MÃ©g kÃ©r a nÃ©p)',1226,8,'247004039-6','1966-04-03',5),
	 ('Inside the Twin Towers',1402,6,'794352588-4','1969-11-01',10),
	 ('Bar Girls',473,6,'289533388-2','1954-09-08',6),
	 ('Mr. Toad''s Wild Ride (a.k.a. The Wind in the Willows)',844,10,'326895771-4','1988-03-03',6),
	 ('Swing Vote',936,4,'398027827-1','1909-06-18',10),
	 ('When Pigs Have Wings',970,8,'362659055-0','1976-02-14',9),
	 ('Wedding in Blood (Noces rouges, Les)',1058,5,'245556613-7','1937-10-05',8),
	 ('Wayne''s World',682,9,'340475965-6','1960-02-09',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Sundown',1330,5,'554566582-X','1995-09-07',5),
	 ('Dive! (Dive!: Living off America''s Waste)',427,5,'353818417-8','1953-01-27',3),
	 ('League of Gentlemen, The',1322,7,'249909408-7','1921-09-15',6),
	 ('Birdman of Alcatraz',348,9,'048508653-0','1973-01-17',2),
	 ('Kickin It Old Skool',688,5,'375331448-X','2006-12-28',8),
	 ('Night of the Living Dead 3D',737,3,'878758539-1','1970-12-24',5),
	 ('Foreign Student',1400,6,'941303720-5','2015-03-01',9),
	 ('5 Against the House',1189,8,'509774753-4','1951-06-26',5),
	 ('Brutal Beauty: Tales of the Rose City Rollers',787,1,'206603521-1','1937-08-05',7),
	 ('Cat''s Eye',392,10,'565595065-0','1938-08-08',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Berkeley in the ''60s',977,6,'461007104-5','1933-11-06',3),
	 ('Looker',1441,9,'891622317-2','1944-04-26',6),
	 ('Celebration, The (Festen)',186,3,'130104885-2','1903-05-30',6),
	 ('China 9, Liberty 37 (Amore, piombo e furore)',1481,2,'157070205-5','1984-02-14',8),
	 ('One Life',1478,9,'818668288-0','2017-07-30',8),
	 ('Mystery Science Theater 3000: The Movie',1450,1,'171241672-3','2021-09-03',6),
	 ('Parenthood',527,9,'697627714-5','1980-09-09',4),
	 ('Kid Brother, The',537,6,'216990023-3','1994-09-03',8),
	 ('Puss in Boots: The Three Diablos',167,5,'998618302-2','2018-10-01',10),
	 ('Wild Things',1213,1,'820904790-6','1997-08-20',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Signs',1188,3,'138447537-0','1983-03-05',3),
	 ('Ariel',1451,7,'468522177-X','2017-06-12',4),
	 ('Legend of the Lost',441,8,'236110251-X','1907-08-28',7),
	 ('Grindhouse',518,1,'634406835-3','1952-07-10',6),
	 ('Blow Dry (a.k.a. Never Better)',724,8,'858288987-9','1936-02-25',8),
	 ('Picking Up the Pieces',632,1,'810277666-8','1926-03-17',1),
	 ('Not Easily Broken',1152,5,'235948132-0','1990-06-13',7),
	 ('19th Wife, The',1351,8,'881087713-6','1954-05-12',5),
	 ('Young Black Stallion, The',1007,7,'298060200-0','1978-05-29',1),
	 ('Unraveled',733,9,'669283995-5','1992-10-19',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Cabin in the Sky',341,5,'394572821-5','1902-01-18',5),
	 ('Century of the Self, The',1048,2,'388946432-7','1915-01-12',6),
	 ('Stonehearst Asylum',208,4,'238283767-5','1901-03-16',8),
	 ('Alcan Highway (Alaska Highway)',325,3,'536681769-2','1963-04-19',4),
	 ('Dragon Ball Z: Dead Zone (Doragon bÃ´ru Z 1: Ora no Gohan wo kaese)',932,7,'023167036-2','1920-04-26',1),
	 ('Garfield''s Pet Force',634,1,'989782744-7','1902-04-21',7),
	 ('Three O''Clock High',1402,8,'383688704-5','1918-01-01',6),
	 ('The Expelled',441,9,'109610806-2','1929-01-01',3),
	 ('X, Y and Zee (Zee and Co.)',841,2,'724072967-2','1966-06-28',8),
	 ('Witchfinder General (Conquerer Worm, The)',403,5,'531145158-0','1965-03-31',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Jeepers Creepers',1019,1,'697465083-3','2019-10-13',1),
	 ('Loser',474,6,'803901322-4','2017-02-16',6),
	 ('Monster in the Closet',349,10,'884620264-3','1961-01-19',8),
	 ('Ironclads',346,1,'240794670-7','1909-09-02',7),
	 ('Rachel Getting Married',162,2,'250673344-2','1956-06-08',2),
	 ('Zombie Island Massacre',445,7,'209574826-3','1953-07-26',10),
	 ('Noel',424,7,'787248782-9','1972-12-29',10),
	 ('Brotherhood of Death',461,8,'247489370-9','1915-05-06',3),
	 ('Vares: The Kiss of Evil (Vares - Pahan suudelma)',1031,6,'741642908-0','1900-02-19',6),
	 ('Killer Force',353,6,'973481637-3','1967-05-31',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Virgin Suicides, The',784,1,'494728056-5','1971-05-11',2),
	 ('Hotel Very Welcome',1282,2,'887331375-2','1963-04-10',1),
	 ('Love Me Tonight',926,3,'260166029-5','2000-05-10',8),
	 ('Alla Ã¤lskar Alice',1166,5,'847960546-4','1942-02-14',4),
	 ('Devil at 4 O''Clock, The',524,4,'215182590-6','1984-01-19',1),
	 ('Tales from the Crypt Presents: Bordello of Blood',447,1,'753143905-0','1974-04-06',9),
	 ('Sunset Strip',721,7,'215505741-5','1913-04-04',4),
	 ('Maltese Falcon, The (a.k.a. Dangerous Female)',389,10,'174452719-9','1914-12-08',1),
	 ('Silja - nuorena nukkunut',587,1,'905536993-4','1921-10-05',3),
	 ('6th Man, The (Sixth Man, The)',433,7,'897459919-8','1964-04-28',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('The Slap',1171,10,'611563850-X','1950-05-11',6),
	 ('Les hautes solitudes',395,4,'485252902-7','1931-07-29',5),
	 ('Captain January',1344,1,'254686693-1','2019-12-01',6),
	 ('Southern Comfort',1259,6,'765215397-2','1901-07-07',2),
	 ('September',490,8,'419410764-0','1953-04-19',4),
	 ('January Man, The',1444,4,'714686157-0','1921-07-08',4),
	 ('Three Times (Zui hao de shi guang)',246,7,'134766904-3','2006-01-10',2),
	 ('Sexmission (Seksmisja)',200,5,'359678115-9','1961-12-14',10),
	 ('Tekken',103,7,'651193114-5','1956-05-19',4),
	 ('The Man Who Played God',1267,10,'003817688-2','1913-06-03',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Is the Man Who Is Tall Happy?',127,1,'374751292-5','1933-05-01',7),
	 ('The Second Best Exotic Marigold Hotel',1494,6,'071595006-1','1919-02-24',6),
	 ('Dick Tracy',385,10,'592647773-5','1955-03-25',3),
	 ('Under the Sand',929,5,'135053608-3','1976-10-02',8),
	 ('Day After Trinity, The',491,8,'845805010-2','1951-05-04',8),
	 ('Goon',415,4,'130637381-6','1986-11-07',5),
	 ('Pandora''s Box (Pandora''nin kutusu)',1151,1,'283329588-X','1900-06-06',9),
	 ('Journey Into Fear',421,1,'509623553-X','1955-05-18',9),
	 ('Puss in Boots (Nagagutsu o haita neko)',1397,7,'035115696-8','1902-02-21',5),
	 ('X: The Man with the X-Ray Eyes',873,2,'112719962-5','1999-01-04',5);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Broken Wings (Knafayim Shvurot)',555,10,'563489004-7','1964-12-27',2),
	 ('Boy Culture',897,7,'979776993-3','1951-10-16',1),
	 ('Leslie, My Name is Evil (Manson, My Name is Evil)',722,4,'427434007-4','1947-02-13',9),
	 ('Berlin Alexanderplatz',691,8,'528272601-7','1970-10-28',8),
	 ('Duck, You Sucker (a.k.a. Fistful of Dynamite, A) (GiÃ¹ la testa)',701,7,'777249385-1','1972-11-01',9),
	 ('Let Him Have It',1203,4,'798904426-9','1949-05-18',2),
	 ('If You Only Knew',1347,7,'548408004-5','1987-07-21',6),
	 ('MatinÃ©e',1114,10,'784866356-6','1990-01-05',2),
	 ('Ghetto (Vilniaus Getas)',952,6,'949765044-2','1914-05-14',2),
	 ('Days Of Darkness',1166,10,'733725681-7','2007-06-09',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Toute la mÃ©moire du monde',292,5,'449576693-7','2010-01-01',5),
	 ('They Won''t Forget',1116,3,'907824380-5','1916-12-04',1),
	 ('Bad Luck Love',185,10,'938393425-5','1900-07-08',9),
	 ('Swindle, The (Bidone, Il)',1467,5,'798573533-X','1928-05-23',6),
	 ('G.I. Joe: A Real American Hero (G.I. Joe: The MASS Device)',1491,9,'074095315-X','1978-12-27',2),
	 ('Perfect Holiday, The',972,3,'269027240-7','1923-03-21',4),
	 ('Hollywood Canteen',514,5,'074461601-8','1950-06-23',10),
	 ('Age of Dinosaurs',1291,7,'573581717-5','2014-10-27',2),
	 ('Little Italy',300,5,'544804624-X','1970-09-08',4),
	 ('Invisible Woman, The',382,6,'451982055-3','2017-12-13',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Rookie, The',1340,4,'793588101-4','1966-06-16',6),
	 ('Reckoning, The',1193,2,'343871220-2','1916-05-14',10),
	 ('Little Ashes',721,9,'697143921-X','1982-07-16',4),
	 ('Clifford',1146,10,'232870155-8','1944-09-27',8),
	 ('Deux mondes, Les',1073,8,'799292636-6','2003-08-27',2),
	 ('Decameron, The (Decameron, Il)',328,3,'610400214-5','1969-06-28',8),
	 ('Barbary Coast',838,7,'199765611-6','1981-08-19',7),
	 ('Underworld',1499,10,'372049228-1','1967-11-01',8),
	 ('Action in the North Atlantic',749,3,'922063601-8','1924-07-30',3),
	 ('Puncture',143,10,'886901703-6','1908-10-28',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Fandry',1324,4,'566454466-X','1971-12-11',4),
	 ('Front of the Class',223,1,'867918554-X','1908-09-03',6),
	 ('Rovaniemen markkinoilla',1477,4,'307066037-1','2016-03-04',10),
	 ('Roxie Hart',296,7,'878537403-2','1996-09-04',3),
	 ('My Rainy Days',1473,2,'652295715-9','1972-10-29',10),
	 ('Hidden (a.k.a. Cache) (CachÃ©)',931,10,'421831580-9','1969-10-18',1),
	 ('My Bodyguard',165,8,'306407560-8','1928-04-12',2),
	 ('Thing, The',692,7,'441287453-2','1926-07-28',5),
	 ('Aspen Extreme',790,4,'216237826-4','1903-08-24',1),
	 ('Herbie Goes Bananas',445,1,'771821815-5','1912-04-17',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Same River Twice, The',1384,9,'750146074-4','1977-04-24',6),
	 ('While the City Sleeps',718,1,'809689837-X','2010-02-14',3),
	 ('Boot Camp',1143,5,'351928983-0','1949-11-10',1),
	 ('Let the Right One In (LÃ¥t den rÃ¤tte komma in)',929,9,'866644981-0','1967-03-18',10),
	 ('Tibet: Cry of the Snow Lion',1290,4,'894034154-6','1999-10-28',2),
	 ('Trance',186,1,'791614308-9','1965-01-04',10),
	 ('Solomon Kane',484,9,'336049633-7','1935-10-27',7),
	 ('Last Days of Pompeii, The (Gli ultimi giorni di Pompeii)',1262,4,'098947040-7','1955-08-26',4),
	 ('Yes, Madam (a.k.a. Police Assassins) (a.k.a. In the Line of Duty 2) (Huang gu shi jie)',1486,4,'920366166-2','2007-08-11',4),
	 ('Maps to the Stars',616,8,'181005474-5','1992-03-04',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('May 6th (06/05)',913,2,'833683027-8','1966-07-16',10),
	 ('Agatha',345,4,'841906168-9','1902-10-24',10),
	 ('Man with the Screaming Brain',596,2,'556014218-2','1966-01-21',9),
	 ('Black Coffee',957,2,'662737080-8','1966-03-06',5),
	 ('John Garfield Story, The',938,1,'154051351-3','1981-02-14',10),
	 ('Vares: The Kiss of Evil (Vares - Pahan suudelma)',1232,10,'477266382-7','1993-01-24',9),
	 ('Dragonfly',1492,4,'788921589-4','2010-12-02',10),
	 ('Dead Again',727,6,'066726466-3','1906-05-30',8),
	 ('You Can Count on Me',637,8,'728342747-3','1927-01-18',1),
	 ('Jim Jefferies: I Swear to God',1452,7,'747180382-7','1985-01-23',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Kolberg',164,4,'125535799-1','1987-03-06',9),
	 ('Watch, The',1221,4,'649063625-5','1902-10-25',3),
	 ('Kvarteret Skatan reser till Laholm',1251,7,'224336069-1','1988-03-16',3),
	 ('Interstella 5555: The 5tory of the 5ecret 5tar 5ystem',1019,2,'836377947-4','2020-11-22',8),
	 ('Guinevere',1330,9,'670988512-7','1912-12-31',3),
	 ('War at Home, The',1140,8,'645717092-7','1979-10-22',7),
	 ('Fire Within, The (Feu follet, Le)',811,10,'976783648-9','1943-03-25',10),
	 ('Another Gay Movie',479,3,'306977190-4','1932-10-05',1),
	 ('Flipped',1439,9,'109586863-2','1969-06-07',4),
	 ('Taming of the Shrew, The',834,1,'535307515-3','1937-08-09',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('The Anomaly',774,7,'228053671-4','1904-08-12',6),
	 ('Archangel',1322,2,'161733155-4','1922-11-17',8),
	 ('Fistful of Fingers, A',1375,8,'227501530-2','1992-05-26',5),
	 ('Elite Squad (Tropa de Elite)',850,3,'153673067-X','1994-11-28',10),
	 ('A Viking Saga: The Darkest Day',1158,2,'577211179-5','1952-09-06',10),
	 ('Roberto Succo',587,9,'405215788-5','1921-01-22',4),
	 ('De Dana Dan',752,5,'946891702-9','1920-10-24',9),
	 ('Boat, The',465,3,'528352273-3','2008-01-25',8),
	 ('Jubilee',340,3,'132571337-6','2020-01-25',4),
	 ('At the Devil''s Door',614,3,'956441249-8','2006-10-09',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Not One Less (Yi ge dou bu neng shao)',271,9,'518871998-3','1937-05-31',9),
	 ('Part of the Weekend Never Dies',906,1,'480693534-4','1945-09-17',5),
	 ('Pure Country',1398,2,'967956683-8','2012-08-12',4),
	 ('Four Heads Are Better Than One (Un homme de tÃªte)',712,4,'814463759-3','1911-02-14',2),
	 ('Place Called Chiapas, A',1074,8,'516280411-8','1996-04-21',6),
	 ('Sisterhood of the Traveling Pants 2, The',601,10,'683166152-1','1945-05-31',4),
	 ('Front of the Class',1485,10,'976557930-6','1920-08-14',5),
	 ('Ciao Manhattan (Ciao! Manhattan)',162,4,'878818487-0','1965-08-11',7),
	 ('Meilleur espoir fÃ©minin',1114,6,'697775980-1','1971-02-19',5),
	 ('Corbeau, Le (Raven, The)',1450,6,'285591257-1','1934-08-05',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Other Woman, The',250,9,'277970364-4','1902-01-03',9),
	 ('Normal',1291,9,'367680286-1','1973-11-17',1),
	 ('Pi',972,7,'633521368-0','1995-09-16',4),
	 ('Dorian Blues',1373,1,'030755292-6','1996-11-01',2),
	 ('Invisible Agent',529,1,'373517578-3','1997-07-24',4),
	 ('Crime Wave',989,3,'058470765-7','2011-03-31',5),
	 ('Dangerous Liaisons',1078,9,'856936335-4','1928-04-16',8),
	 ('Red Salute',992,1,'194440619-0','1976-02-24',5),
	 ('No Rest for the Brave (Pas de repos pour les braves)',558,5,'619354689-8','2015-03-28',8),
	 ('Cider House Rules, The',1436,6,'298294974-1','1938-07-11',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Stardust',1243,3,'103282334-8','1922-10-07',10),
	 ('Attack of the Crab Monsters',723,9,'737765254-3','1968-07-13',10),
	 ('Manual of Love 2 (Manuale d''amore (capitoli successivi))',342,7,'981024664-1','1996-08-09',10),
	 ('Talent for the Game',1369,7,'600751602-4','2003-12-11',8),
	 ('Contraband',1393,1,'488865384-4','1961-12-23',3),
	 ('Little Accidents',1132,10,'642934796-6','1999-08-27',9),
	 ('Ultimate Accessory,The (100% cachemire)',247,7,'805600486-6','1964-08-28',1),
	 ('Kill Me Again',1227,4,'105381551-4','1927-11-10',8),
	 ('Along Came Jones',817,6,'763273279-9','1923-05-14',1),
	 ('Honeymoon Killers, The',414,4,'382509747-1','1920-09-21',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Quicksilver',1270,7,'035756102-3','1968-08-22',8),
	 ('Mumblecore',1396,5,'867843305-1','2001-03-26',1),
	 ('Counsellor at Law',685,8,'647598481-7','1900-11-19',4),
	 ('Tokyo Trial (Tokyo saiban)',1080,4,'797395945-9','1974-10-28',1),
	 ('Floating',111,9,'310521488-7','2018-01-22',3),
	 ('Time Tracers',987,8,'029757603-8','1986-07-25',6),
	 ('Two Thousand Maniacs!',1230,1,'964219492-9','1924-06-23',10),
	 ('Countess, The',414,10,'769330864-4','1949-06-14',5),
	 ('Sorority House Massacre',147,8,'314266839-X','2014-01-26',6),
	 ('3 Ninjas',482,2,'307987858-2','1955-09-12',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Wood & Stock: Sexo, OrÃ©gano e Rock''n''Roll',535,6,'936713229-8','2013-01-25',6),
	 ('Duets',831,4,'175540272-4','1921-01-09',9),
	 ('Quest for a Heart (RÃ¶llin sydÃ¤n)',1051,2,'397521524-0','1991-12-17',10),
	 ('Alphabet',1389,2,'653524642-6','2018-01-24',9),
	 ('Oyster Farmer',855,1,'227377261-0','1942-09-04',9),
	 ('Music Man, The',502,10,'467732129-9','1954-10-26',7),
	 ('Toy Soldiers',1378,2,'568559289-2','1902-10-21',1),
	 ('Line King: The Al Hirschfeld Story, The',661,2,'176110314-8','1951-09-23',2),
	 ('Human Lanterns (Ren pi deng long)',713,6,'367212393-5','2004-07-19',3),
	 ('Sharkwater',213,4,'630562083-0','1930-09-21',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Bambi 2',497,8,'151062755-3','1963-11-30',2),
	 ('Xanadu',1000,9,'478304717-0','2023-01-17',7),
	 ('Jonestown: The Life and Death of Peoples Temple',678,9,'025148566-8','1957-09-25',1),
	 ('Not Suitable for Children',1363,9,'453242819-X','1911-05-20',1),
	 ('Butterfield 8',1335,8,'588484145-0','2020-07-27',10),
	 ('R-Point (Arpointeu)',1414,2,'390943993-4','1941-09-15',3),
	 ('My Kingdom',878,6,'522500075-4','1911-08-11',9),
	 ('Cops and Robbersons',276,1,'205336921-3','1930-05-25',4),
	 ('Red Baron, The (Der rote Baron)',1214,10,'080371596-X','1983-03-24',9),
	 ('Top Secret!',481,6,'912899894-4','1901-05-21',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Where the Trail Ends',296,4,'505756607-5','1943-08-21',4),
	 ('Europa Report',400,5,'286661634-0','1979-02-23',7),
	 ('The Kingdom of Dreams and Madness',1179,3,'827286435-5','1924-06-06',8),
	 ('Believe Me',615,4,'455844986-0','2005-09-25',8),
	 ('Amore (L''Amore)',662,3,'015135973-3','1965-08-07',10),
	 ('Anything for Her (Pour elle)',1096,7,'488901875-1','1963-06-08',9),
	 ('Mifune''s Last Song (Mifunes sidste sang)',269,7,'770602793-7','1985-01-30',4),
	 ('Tobruk',1061,1,'914441743-8','1904-02-08',1),
	 ('March of the Penguins (Marche de l''empereur, La)',309,1,'700113001-X','1991-12-03',8),
	 ('Life Partners',884,8,'191176084-X','1949-02-09',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Mansfield Park',1247,10,'602887378-0','1941-12-18',3),
	 ('Magnificent Warriors (Zhong hua zhan shi)',836,8,'904648269-3','2001-01-06',7),
	 ('Mike Bassett: England Manager',1355,7,'532079028-7','1992-06-19',6),
	 ('Widow of St. Pierre, The (Veuve de Saint-Pierre, La)',1297,9,'983631645-0','1978-03-13',7),
	 ('Storytelling',577,6,'339483281-X','1919-11-02',6),
	 ('Exorcist II: The Heretic',568,3,'346827712-1','1992-12-01',3),
	 ('Twilight',1408,2,'547243084-4','1993-07-15',8),
	 ('Me Two (Personne aux deux personnes, La)',1228,8,'887547488-5','1937-04-01',8),
	 ('When Worlds Collide',1321,6,'354224662-X','1929-05-27',9),
	 ('Ideal Husband, An',994,8,'813135327-3','1906-09-07',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Theory of Everything, The',898,8,'409029203-4','1969-10-25',9),
	 ('Sukiyaki Western Django',1247,1,'046947079-8','1919-09-04',1),
	 ('Pianomania',537,4,'198338522-0','1927-10-13',5),
	 ('Alibi',515,3,'340626673-8','1953-09-16',1),
	 ('Observe and Report',1123,2,'122763514-1','1947-03-26',2),
	 ('I, Frankenstein',1142,1,'739959872-X','1964-02-02',2),
	 ('2LDK',1424,3,'926099084-X','1995-01-09',5),
	 ('Tora! Tora! Tora!',1232,3,'213798363-X','1997-09-12',10),
	 ('Pusher',521,3,'140897833-4','1922-07-21',8),
	 ('Harmagedon',671,6,'435969096-7','1950-03-04',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Husbands and Wives',1337,5,'001327528-3','1966-11-26',5),
	 ('Marathon Family, The (Maratonci Trce Pocasni Krug)',1323,10,'068064644-2','1950-06-09',4),
	 ('Nativity 2: Danger in the Manger!',304,4,'914777113-5','1919-02-09',1),
	 ('Turner & Hooch',629,1,'677702669-X','1955-05-09',3),
	 ('Return of the Living Dead: Rave to the Grave',575,5,'775132569-0','1992-03-20',2),
	 ('Together Again',222,4,'078910482-2','1927-04-02',5),
	 ('Last Tycoon, The',1467,6,'720391539-5','1950-02-08',2),
	 ('Dark Alibi',1175,9,'461011899-8','1987-03-22',4),
	 ('Other Son, The (Fils de l''autre, Le)',519,5,'868961410-9','2019-05-06',2),
	 ('Wall Street',147,2,'150435293-9','1928-11-10',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Star Is Born, A',1480,7,'895450649-6','1953-03-27',5),
	 ('Cadillac Man',791,6,'243145187-9','1999-09-30',8),
	 ('Randy Rides Alone',226,9,'732125566-2','1911-12-15',4),
	 ('How I Ended This Summer (Kak ya provyol etim letom)',1303,5,'701218911-8','1984-08-22',5),
	 ('187 (One Eight Seven)',1319,2,'447232585-3','1907-01-05',2),
	 ('Gloria',960,10,'881937704-7','1911-06-04',5),
	 ('Wendigo',510,6,'079981753-8','1938-04-05',5),
	 ('Brighton Beach Memoirs',1256,9,'757500006-2','1964-11-29',1),
	 ('Beloved',415,3,'387574247-8','1909-01-16',7),
	 ('My Neighbors the Yamadas (HÃ´hokekyo tonari no Yamada-kun)',190,3,'599530785-1','1962-04-05',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Falcon and the Snowman, The',466,8,'616285684-4','2008-08-14',3),
	 ('Love and Other Drugs',1421,6,'889003311-8','1955-05-07',4),
	 ('Measuring the World (Die Vermessung der Welt)',279,10,'848428814-5','2009-10-18',8),
	 ('Mamma Roma',1440,3,'481820872-8','2004-02-05',9),
	 ('King of Texas',799,3,'534657187-6','1908-06-04',7),
	 ('Marshland (Isla mÃ­nima, La)',1437,8,'866120978-1','2001-05-16',3),
	 ('From the Hip',1024,3,'194506163-4','1998-01-12',10),
	 ('The Butter Battle Book',240,8,'196108264-0','1961-07-25',9),
	 ('Centurion',143,4,'981235386-0','1944-08-16',8),
	 ('Ruins',464,4,'710354618-5','1921-02-13',6);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('The Possession of Michael King',617,1,'175317266-7','1938-11-07',7),
	 ('Battles Without Honor & Humanity (Jingi naki tatakai)',626,4,'589246317-6','1966-06-08',5),
	 ('Baby-Sitters Club, The',403,10,'170462949-7','1997-03-22',10),
	 ('Ten Minutes Older: The Trumpet',1195,6,'420062630-6','1939-01-09',7),
	 ('Welcome to Sherwood! The Story of ''The Adventures of Robin Hood''',796,6,'642017768-5','1900-04-18',5),
	 ('Super Capers',1357,7,'603220240-2','2019-10-21',3),
	 ('Caesar Must Die (Cesare deve morire)',869,3,'631320174-4','2007-11-23',2),
	 ('Claymation Comedy of Horrors',801,7,'452959711-3','1928-03-12',7),
	 ('X-Men: Days of Future Past',1033,5,'980458795-5','2000-05-20',8),
	 ('Boogie Man: The Lee Atwater Story',456,10,'530745599-2','1926-03-21',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Arsenic and Old Lace',639,6,'870862068-7','1956-09-29',5),
	 ('Prime Suspect 2',1030,4,'385912963-5','1940-06-06',1),
	 ('Let It Snow',765,4,'918243244-9','1931-11-30',7),
	 ('Ticker',773,3,'508990577-0','1913-12-06',10),
	 ('The Blood of Fu Manchu',649,3,'015776683-7','1946-01-04',4),
	 ('Kevin Smith: Burn in Hell',1433,4,'541052562-0','2000-11-13',3),
	 ('Monster in the Closet',631,4,'575823127-4','1918-07-28',4),
	 ('Our Hospitality',1420,8,'938441940-0','1912-10-07',9),
	 ('Book of Eli, The',1122,4,'314141811-X','1975-10-22',8),
	 ('Back to the Beach',192,2,'851896090-8','1967-01-21',7);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Beneath Hill 60',1069,8,'456631220-8','2016-10-01',7),
	 ('Rings on Her Fingers',406,4,'921036966-1','1993-08-14',9),
	 ('Swamp Shark',427,5,'499100298-2','1945-06-27',7),
	 ('Return to Sender',804,1,'519422060-X','1910-08-25',3),
	 ('GoldenEye',707,10,'172331123-5','1940-03-01',7),
	 ('Reindeer Games',704,7,'996018616-4','1936-12-12',3),
	 ('Mega Python vs. Gatoroid',345,1,'105787438-8','1919-04-22',9),
	 ('Menace II Society',632,4,'827119922-6','1940-01-19',1),
	 ('Robin and the 7 Hoods',1086,5,'366371699-6','1935-09-18',6),
	 ('Street Angel',455,4,'207303029-7','1955-06-25',2);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Meteor',711,3,'105672989-9','1966-05-09',5),
	 ('Varg Veum - Bitter Flowers (Varg Veum - Bitre Blomster)',113,7,'484449753-7','1923-01-07',7),
	 ('Neurons to Nirvana',513,1,'558397271-8','1933-06-14',4),
	 ('Illustrious Corpses (Cadaveri eccellenti)',1323,8,'555932319-5','1907-10-31',8),
	 ('The War at Home',408,6,'554633944-6','1931-05-19',3),
	 ('Swarm, The',711,6,'207600534-X','1926-07-16',8),
	 ('Look Back in Anger',736,3,'884137614-7','2013-11-17',6),
	 ('Horror Hotel (a.k.a. City of the Dead, The)',516,9,'698536456-X','1930-05-28',2),
	 ('Two Tars',1144,1,'960025831-7','1901-12-06',5),
	 ('Mohabbatein',1490,7,'942194630-8','1953-10-07',8);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Box, The',705,9,'423594113-5','1986-04-02',10),
	 ('Joe Somebody',1170,1,'337179144-0','1944-05-20',4),
	 ('On the Beach',1113,1,'386614778-3','1929-07-25',7),
	 ('Heartbreak Kid, The',1230,6,'920561507-2','1918-07-18',6),
	 ('Love Me or Leave Me',875,9,'224220060-7','1927-02-23',10),
	 ('Fast Lane',1275,8,'494221070-4','1949-08-30',9),
	 ('Pepe',1470,7,'626074993-7','1951-12-05',7),
	 ('Cousins, The (Cousins, Les)',1169,2,'776445637-3','1914-01-09',9),
	 ('Brandon Teena Story, The',1286,3,'263752778-1','2018-06-05',6),
	 ('Lair of the White Worm, The',552,5,'348854371-4','1987-07-30',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Demonic Toys',1235,8,'416319860-1','1983-03-12',4),
	 ('Possession',903,3,'481819167-1','1989-05-25',3),
	 ('Dylan Moran Live: What It Is',473,4,'007889843-9','1974-11-16',8),
	 ('Liberty Heights',1405,7,'647910123-5','2020-02-12',4),
	 ('God Help the Girl',1236,10,'833508745-8','1986-06-14',8),
	 ('City by the Sea',645,9,'331519755-5','1919-06-06',8),
	 ('Lady for a Day',1106,2,'626333414-2','1943-05-20',3),
	 ('Das Leben ist nichts fÃ¼r Feiglinge',457,9,'002318129-X','1927-03-21',10),
	 ('Adventures of Tarzan',1207,4,'487930527-8','1991-04-06',3),
	 ('Raw Deal',1005,6,'838189359-3','1954-03-16',3);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Superdad',1307,10,'904721910-4','1944-10-02',6),
	 ('Visitors, The (Visiteurs, Les)',984,8,'681703915-0','1930-04-12',8),
	 ('Substitute, The',1192,9,'690323524-8','2012-01-03',7),
	 ('Habana Blues',179,2,'194925855-6','1945-11-05',3),
	 ('Hocus Pocus',182,1,'964219376-0','2021-02-28',8),
	 ('Absence of Malice',426,6,'526755654-8','1919-11-22',8),
	 ('Hiding Place, The',1057,4,'330201306-X','1940-01-11',2),
	 ('Countdown to Looking Glass',1435,10,'488637744-0','1925-01-03',10),
	 ('Tyler Perry''s Diary of a Mad Black Woman',693,1,'288425596-6','1991-05-04',3),
	 ('Sick Girl',1392,7,'065677769-9','1975-05-13',4);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Vares: The Kiss of Evil (Vares - Pahan suudelma)',472,1,'718607423-5','1952-08-22',3),
	 ('Railway Children, The',301,8,'781924965-X','1907-12-16',3),
	 ('6th Day, The',386,5,'627495588-7','1961-02-23',8),
	 ('A.K.',1318,6,'724318665-3','2004-12-28',9),
	 ('8MM',451,1,'032242407-0','1913-02-07',6),
	 ('Man Bites Dog (C''est arrivÃ© prÃ¨s de chez vous)',688,8,'569105490-2','1918-05-04',1),
	 ('Scream',684,10,'829876762-4','1988-11-26',3),
	 ('Mission, The',1405,7,'363096323-4','1977-01-14',4),
	 ('I.O.U.S.A. (a.k.a. IOUSA)',1010,6,'423691049-7','1998-02-14',3),
	 ('As Luck Would Have It (Chispa de la vida, La)',739,5,'902443653-2','1952-04-04',10);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Father Goose',949,6,'133928959-8','1929-09-04',9),
	 ('Mr. Jealousy',1022,10,'630101169-4','1909-01-27',9),
	 ('Miss Bala',1495,1,'725848792-1','1966-07-04',7),
	 ('Bright Days Ahead',432,5,'876024367-8','2010-04-26',8),
	 ('Vanishing, The',634,9,'123531322-0','1985-10-25',10),
	 ('Walk on the Moon, A',293,7,'877861611-5','1984-09-30',1),
	 ('Kingdom of the Spiders',819,6,'896854196-5','1944-01-01',7),
	 ('Eye of Vichy, The (Oeil de Vichy, L'')',968,3,'987438697-5','1948-07-02',7),
	 ('Silent Night, Deadly Night Part 2',363,8,'623435393-2','1968-12-09',1),
	 ('Szamanka',320,5,'534259513-4','1998-07-05',9);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Female Agents (Les femmes de l''ombre)',499,4,'581748452-8','1959-07-01',8),
	 ('Boys Love',1194,1,'951228207-0','1940-09-16',1),
	 ('Shadow of Angels (Schatten der Engel)',1206,9,'843269218-2','2016-06-23',8),
	 ('Map of the World, A',1143,10,'771085126-6','1999-02-21',3),
	 ('Old Man Drinking a Glass of Beer',567,9,'510603737-9','1946-02-27',4),
	 ('Prayer for the Dying, A',1228,9,'959357162-0','1942-12-05',7),
	 ('Dear Frankie',843,7,'955697989-1','1983-12-04',7),
	 ('Slacker',1001,8,'773471351-3','1978-10-14',4),
	 ('Amityville 3-D',1403,6,'529913266-2','1934-02-18',8),
	 ('Making Plans for Lena (Non ma fille, tu n''iras pas danser)',1288,6,'063311283-6','1912-09-23',1);
INSERT INTO books.books (title,total_pages,rating,isbn,published_date,publisher_id) VALUES
	 ('Standing Up',1295,3,'446739802-3','2006-09-19',6),
	 ('Gainsbourg (Vie HÃ©roÃ¯que)',1162,5,'852457543-3','2008-10-30',6),
	 ('Parking (Ting che)',202,10,'582580934-1','2007-05-15',5),
	 ('Death King, The (Der Todesking)',768,1,'778263333-8','1951-03-22',4),
	 ('Dancer Upstairs, The',861,4,'255124562-1','1959-04-13',9),
	 ('Hellraiser: Revelations',915,6,'425199625-9','1961-02-27',9),
	 ('Say It Isn''t So',1148,8,'110507558-3','1972-06-30',3),
	 ('Getting Any? (MinnÃ¢-yatteruka!)',1225,8,'491247135-6','2002-12-03',3),
	 ('Americanization of Emily, The',293,2,'394123025-5','2013-11-10',1),
	 ('Typhoon (Tae-poong)',320,10,'582364101-X','1929-07-29',5);

INSERT INTO books.genres ("name") VALUES
	 ('Mystery'),
	 ('Romance'),
	 ('Science Fiction'),
	 ('Fantasy'),
	 ('Thriller'),
	 ('Horror'),
	 ('Historical Fiction'),
	 ('Young Adult'),
	 ('Memoir'),
	 ('Biography');

INSERT INTO books.publishers ("name") VALUES
	 ('Quatz'),
	 ('Zooxo'),
	 ('Chatterpoint'),
	 ('Jaxspan'),
	 ('Mymm'),
	 ('Mycat'),
	 ('Quire'),
	 ('Eire'),
	 ('Gabtype'),
	 ('Buzzdog');
