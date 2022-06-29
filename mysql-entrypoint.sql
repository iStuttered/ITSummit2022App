CREATE DATABASE IF NOT EXISTS itsummit2022;
USE itsummit2022;

CREATE USER IF NOT EXISTS 'ro_user' IDENTIFIED BY 'another_simple_password';
GRANT SELECT ON itsummit2022.* TO 'ro_user';

CREATE TABLE users (
    userid int primary key auto_increment,
    password varchar(100) not null,
    fullname varchar(100) not null,
    email varchar(300) not null,
    interest varchar(100)
);

INSERT INTO users VALUES (default, 'password', 'nate jennings', 'njennings@guarantysupportinc.com', 'food');
INSERT INTO users VALUES (default, 'U8oV5ABfGF', 'user0', 'email0@gmail.com', '');
INSERT INTO users VALUES (default, 'g/*tpYe*@N', 'user1', 'email1@gmail.com', '');
INSERT INTO users VALUES (default, '/g*C0ljkMc', 'user2', 'email2@gmail.com', '');
INSERT INTO users VALUES (default, 'HcC#P6LD0m', 'user3', 'email3@gmail.com', '');
INSERT INTO users VALUES (default, 'dw4WD3WIk7', 'user4', 'email4@gmail.com', '');
INSERT INTO users VALUES (default, 'GM9/kV08Rx', 'user5', 'email5@gmail.com', '');
INSERT INTO users VALUES (default, 'st-E^I#STb', 'user6', 'email6@gmail.com', '');
INSERT INTO users VALUES (default, '%fK0-#Kf77', 'user7', 'email7@gmail.com', '');
INSERT INTO users VALUES (default, 'oPz#6jE1WM', 'user8', 'email8@gmail.com', '');
INSERT INTO users VALUES (default, '71MZY^VRIp', 'user9', 'email9@gmail.com', '');
INSERT INTO users VALUES (default, 'h8/rN40A#U', 'user10', 'email10@gmail.com', '');
INSERT INTO users VALUES (default, '^/B1c#uIut', 'user11', 'email11@gmail.com', '');
INSERT INTO users VALUES (default, 'C42doxsEQk', 'user12', 'email12@gmail.com', '');
INSERT INTO users VALUES (default, '7Kty@R40c3', 'user13', 'email13@gmail.com', '');
INSERT INTO users VALUES (default, '8^UH%Ty4ap', 'user14', 'email14@gmail.com', '');
INSERT INTO users VALUES (default, 'OrO5bo!$DK', 'user15', 'email15@gmail.com', '');
INSERT INTO users VALUES (default, 'DMeM8opuZ-', 'user16', 'email16@gmail.com', '');
INSERT INTO users VALUES (default, 'q8Iq/3f-8O', 'user17', 'email17@gmail.com', '');
INSERT INTO users VALUES (default, 'UvV5mhzAY3', 'user18', 'email18@gmail.com', '');
INSERT INTO users VALUES (default, 'de9Pv1k994', 'user19', 'email19@gmail.com', '');
INSERT INTO users VALUES (default, 'wKXhsga%Tn', 'user20', 'email20@gmail.com', '');
INSERT INTO users VALUES (default, 'lS8vchH^Qu', 'user21', 'email21@gmail.com', '');
INSERT INTO users VALUES (default, '9aUgf3uT*1', 'user22', 'email22@gmail.com', '');
INSERT INTO users VALUES (default, '^JtJh84^y!', 'user23', 'email23@gmail.com', '');
INSERT INTO users VALUES (default, '#Xf09C!OfB', 'user24', 'email24@gmail.com', '');
INSERT INTO users VALUES (default, 'w@H%I6v^l8', 'user25', 'email25@gmail.com', '');
INSERT INTO users VALUES (default, '!^-PSf!6d%', 'user26', 'email26@gmail.com', '');
INSERT INTO users VALUES (default, 'Sy*ZS8KXra', 'user27', 'email27@gmail.com', '');
INSERT INTO users VALUES (default, '6Q0Rfh6P8O', 'user28', 'email28@gmail.com', '');
INSERT INTO users VALUES (default, '023r//esk9', 'user29', 'email29@gmail.com', '');
INSERT INTO users VALUES (default, 'raPE2dX20r', 'user30', 'email30@gmail.com', '');
INSERT INTO users VALUES (default, '954$Jb4wq#', 'user31', 'email31@gmail.com', '');
INSERT INTO users VALUES (default, '/aJO/U$7n*', 'user32', 'email32@gmail.com', '');
INSERT INTO users VALUES (default, '^nLI9wi@nL', 'user33', 'email33@gmail.com', '');
INSERT INTO users VALUES (default, '4a7@n3GbJb', 'user34', 'email34@gmail.com', '');
INSERT INTO users VALUES (default, 'd%LD3K031%', 'user35', 'email35@gmail.com', '');
INSERT INTO users VALUES (default, 'EX54yJzcz1', 'user36', 'email36@gmail.com', '');
INSERT INTO users VALUES (default, '@8ooPG/g3*', 'user37', 'email37@gmail.com', '');
INSERT INTO users VALUES (default, '6!P9bvdv^7', 'user38', 'email38@gmail.com', '');
INSERT INTO users VALUES (default, 'T^LOz%V3Z2', 'user39', 'email39@gmail.com', '');
INSERT INTO users VALUES (default, 'F/0ZyEo@5o', 'user40', 'email40@gmail.com', '');
INSERT INTO users VALUES (default, 'r#/O5I5iWI', 'user41', 'email41@gmail.com', '');
INSERT INTO users VALUES (default, 'xKuidod2@6', 'user42', 'email42@gmail.com', '');
INSERT INTO users VALUES (default, 'z*lB8A1zcM', 'user43', 'email43@gmail.com', '');
INSERT INTO users VALUES (default, '86Zj9^tJ83', 'user44', 'email44@gmail.com', '');
INSERT INTO users VALUES (default, 'JXkFsl@01L', 'user45', 'email45@gmail.com', '');
INSERT INTO users VALUES (default, '6Q101YTCE5', 'user46', 'email46@gmail.com', '');
INSERT INTO users VALUES (default, 'Tx@fuhV@QY', 'user47', 'email47@gmail.com', '');
INSERT INTO users VALUES (default, '9-!##nK$Lx', 'user48', 'email48@gmail.com', '');
INSERT INTO users VALUES (default, 'Gc#%L%2zU^', 'user49', 'email49@gmail.com', '');

CREATE TABLE employees (
    employeeid int primary key auto_increment,
    fullname varchar(100) not null,
    starsign varchar(20) not null
);

INSERT INTO employees VALUES (default, 'nate jennings', 'Aries');
INSERT INTO employees VALUES (default, 'user0', 'Cancer');
INSERT INTO employees VALUES (default, 'user1', 'Capricorn');
INSERT INTO employees VALUES (default, 'user2', 'Virgo');
INSERT INTO employees VALUES (default, 'user3', 'Libra');
INSERT INTO employees VALUES (default, 'user4', 'Capricorn');
INSERT INTO employees VALUES (default, 'user5', 'Libra');
INSERT INTO employees VALUES (default, 'user6', 'Virgo');
INSERT INTO employees VALUES (default, 'user7', 'Virgo');
INSERT INTO employees VALUES (default, 'user8', 'Gemini');
INSERT INTO employees VALUES (default, 'user9', 'Pisces');

CREATE TABLE secrets (
     secret_text varchar(100) not null,
     date_added datetime default now()
);

GRANT INSERT ON itsummit2022.secrets TO 'ro_user';

INSERT INTO secrets VALUES ('nate was here', default);
