CREATE EXTENSION pgcrypto;


CREATE TABLE USER_ACCOUNT (
    user_id BIGSERIAL NOT NULL PRIMARY KEY,
    email VARCHAR(45) NOT NULL UNIQUE,
    age INT,
    country VARCHAR(45),
    username VARCHAR(20) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL
);

CREATE TABLE FOLLOW (
    user_id BIGINT REFERENCES USER_ACCOUNT(user_id),
    follower_id BIGINT REFERENCES USER_ACCOUNT(user_id)    
);

CREATE TABLE PLAYLIST (
    playlist_id BIGSERIAL NOT NULL PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    date DATE NOT NULL,
    user_id BIGINT REFERENCES USER_ACCOUNT(user_id)
);

CREATE TABLE SCORE (
    score_id BIGSERIAL NOT NULL PRIMARY KEY,
    score DECIMAL(10) DEFAULT 0,


)


INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('gparlet0@cloudflare.com', 22, 'Mexico', 'plackie0', crypt('passwd', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('aattenbrow1@jigsy.com', 21, 'Ireland', 'aattenbrow1', crypt('1234', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('bburwood2@hatena.ne.jp', 32, 'China', 'bburwood2', crypt('wwwd9s', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('tperrygo3@godaddy.com', 19, 'China', 'tperrygo3', crypt('lolggkd', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('lzienkiewicz4@smugmug.com', 38, 'Portugal', 'lzienkiewicz4', crypt('moreleke', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('rbernakiewicz5@wordpress.com', 40, 'Russia', 'rbernakiewicz5', crypt('cocolwkdm', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('wcaple7@illinois.edu', 31, 'China', 'wcaple7', crypt('!gr#ow12', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('ecannam6@squarespace.com', 16, 'China', 'ecannam6', crypt('wo23ldo!', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('tyann8@imageshack.us', 52, 'Russia', 'tyann8', crypt('kro22kriels', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('wbannon9@jalbum.net', 25, 'China', 'wbannon9', crypt('wo35da!l', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('gmcgaugheya@tumblr.com', 27, 'Czech Republic', 'gmcgaugheya', crypt('polwe818prsk', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('abernardeaub@ft.com', 31, 'Indonesia', 'abernardeaub', crypt('trow#$w992ss', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('tlouisc@intel.com', 30, 'Poland', 'tlouisc', crypt('we#11lop9ls', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('asheltond@trellian.com', 29, 'Palestinian Territory', 'asheltond', crypt('jwxlo99@1lsm', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('weatheralle@dmoz.org', 23, 'Ukraine', 'weatheralle', crypt('kx996!!lsiuj', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('akopkef@issuu.com', 27, 'Cyprus', 'akopkef', crypt('ddjwolp!%', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('lshrubsallh@examiner.com', 34, 'France', 'lshrubsallh', crypt('mok#$jf981', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('dpellingtoni@telegraph.co.uk', 21, 'Portugal', 'dpellingtoni', crypt('mf1dron2dc', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('mcellerj@globo.com', 23, 'Sweden', 'mcellerj', crypt('nox98snx', gen_salt('md5')));
INSERT INTO USER_ACCOUNT(email, age, country, username, password ) 
    VALUES ('mgollyk@vimeo.com', 43, 'Czech Republic', 'mgollyk', crypt('wkoss99wws', gen_salt('md5')));







INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (1, 4);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (15, 8);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (20, 4);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (8, 2);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (5, 3);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (19, 18);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (19, 7);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (5, 1);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (8, 18);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (7, 5);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (13, 11);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (12, 20);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (13, 3);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (20, 10);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (1, 19);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (5, 6);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (10, 4);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (17, 7);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (5, 13);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (9, 2);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (18, 1);
INSERT INTO FOLLOW (user_id, follower_id) 
    VALUES (7, 20);


INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('techno', CURRENT_DATE, 2);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('patologia', CURRENT_DATE, 8);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('hard rock', CURRENT_DATE, 2);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('heavy metal', CURRENT_DATE, 1);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('ambient', CURRENT_DATE, 11);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('music for sport', CURRENT_DATE, 19);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('for my travel', CURRENT_DATE, 17);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('rock', CURRENT_DATE, 7);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('rapsy', CURRENT_DATE, 6);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('my top 5 jazz', CURRENT_DATE, 4);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('electronic', CURRENT_DATE, 12);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('club/dance', CURRENT_DATE, 9);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('dance', CURRENT_DATE, 8);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('top 5 my music', CURRENT_DATE, 2);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('swing', CURRENT_DATE, 14);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('alternative rock', CURRENT_DATE, 13);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('my rock', CURRENT_DATE, 2);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('classical', CURRENT_DATE, 3);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('to work', CURRENT_DATE, 5);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('old classical', CURRENT_DATE, 10);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('for travel', CURRENT_DATE, 10);
INSERT INTO PLAYLIST (name, date, user_id) 
    VALUES ('my music to work', CURRENT_DATE, 13);
