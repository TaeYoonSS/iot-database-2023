CREATE TABLE stdtbl(
	stdName NVARCHAR(10) NOT NULL PRIMARY KEY,
    addr CHAR(4) NOT NULL
);

CREATE TABLE clubtbl(
	clubname NVARCHAR(10) NOT NULL PRIMARY KEY,
    roomNo NCHAR(4) NOT NULL
);

CREATE TABLE stdclubtbl(
	num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    stdName NVARCHAR(10) NOT NULL,
    clubname NVARCHAR(10) NOT NULL,
    FOREIGN KEY(stdName) REFERENCES stdtbl(stdName),
    FOREIGN KEY(clubName) REFERENCES clubtbl(clubName)
);
