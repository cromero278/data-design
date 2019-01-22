
INSERT INTO user(userId, userCollege, userCollegeYear, userEmail, userFirstName, userLastName, userGender, userZipCode, userWebsite) VALUES(UNHEX("44bef377e68644629c1b28cf2ad8242a"), "University of New Mexico", "2016", "ann@ann.com", "Ann", "Smith", "Female", "87001", "none");
INSERT INTO user(userId, userCollege, userCollegeYear, userEmail, userFirstName, userLastName, userGender, userZipCode, userWebsite) VALUES(UNHEX("f5b834dc11304f63afe800f4c4ad7822"), "Arizona State University", "2001", "whoknows@whoknows.net", "Natalie", "Sanchez", "Female", "82354", "nataliedoes.net");
INSERT INTO user(userId, userCollege, userCollegeYear, userEmail, userFirstName, userLastName, userGender, userZipCode, userWebsite) VALUES(UNHEX("1402800157c14daaaa3674f08f51235b"), "None", "None", "jared@jjjj.com", "Jared", "Lala", "Male", "87102", "engineerdude.io");
INSERT INTO category(categoryId, categoryName, categoryPhotoUrl) VALUE (UNHEX("2df2730320e2453ebb9d123cbc072ffa"),"Handbags","https://poshmark.com/category/Women-Bags");

UPDATE user SET userWebsite = "igotanewebsite.org" WHERE userId = UNHEX("44bef377e68644629c1b28cf2ad8242a");

DELETE FROM user WHERE userId = UNHEX("1402800157c14daaaa3674f08f51235b");

INSERT INTO listing (listingId, listingCategoryId, listingUserId, listingBrand, listingDescripton, listingName, listingPhotoUrl, listingPrice) VALUES (UNHEX("a19c51d2fb9a402e83e2745e24a41005"), UNHEX("2df2730320e2453ebb9d123cbc072ffa"), UNHEX("44bef377e68644629c1b28cf2ad8242a"), "Frye", "New with tags brown purse", "Frye Purse", "https://poshmark.com/fryepurse/1234", "124.99");

SELECT userFirstName, userLastName, userEmail FROM user WHERE userId = UNHEX("44bef377e68644629c1b28cf2ad8242a");

SELECT listing.listingId, listing.listingDescripton, listing.listingName FROM listing INNER JOIN user
ON listing.listingUserId = user.userId WHERE listingBrand = "Frye";
