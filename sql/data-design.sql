ALTER DATABASE cromero278 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS listing;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS user;


CREATE TABLE user (

userId BINARY (16) NOT NULL,
userCollege VARCHAR (50),
userCollegeYear CHAR (4),
userEmail VARCHAR (128) NOT NULL,
userFirstName VARCHAR (30) NOT NULL,
userLastName VARCHAR (30) NOT NULL,
userGender VARCHAR (10),
userZipCode VARCHAR (10),
userWebsite VARCHAR (128),
UNIQUE(userId),
UNIQUE(userEmail),
PRIMARY KEY (userId)
);
CREATE TABLE category (

	categoryId BINARY (16) NOT NULL,
	categoryName VARCHAR (32) NOT NULL,
	categoryPhotoUrl VARCHAR (50) NOT NULL,
	PRIMARY KEY(categoryId)
);

CREATE TABLE listing (

listingId BINARY(16) NOT NULL,
listingCategoryId BINARY(16) NOT NULL,
listingUserId BINARY(16) NOT NULL,
listingBrand VARCHAR (32) NOT NULL,
listingDescripton VARCHAR (100) NOT NULL,
listingName VARCHAR (50) NOT NULL,
listingPhotoUrl VARCHAR (50) NOT NULL,
listingPrice VARCHAR (10) NOT NULL,
INDEX(listingUserId),
FOREIGN KEY(listingUserId) REFERENCES user(userId),
INDEX(listingCategoryId),
FOREIGN KEY(listingCategoryId) REFERENCES category(categoryId),
PRIMARY KEY(listingId)
);