<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<title>Data Design Conceptual Model</title>
	</head>
	<body>
		<h1>Conceptual Model</h1>
		<h2>Entities and Attributes</h2>
				<strong>User</strong>
				<ul>
				<li>userId (primary key)</li>
				<li>userCollege</li>
				<li>userCollegeYear</li>
				<li>userEmail</li>
				<li>userFirstName</li>
				<li>userGender</li>
				<li>userLastName</li>
				<li>userZipCode</li>
				<li>userWebsite</li>
			</ul>
			<strong>Listing</strong>
			<ul>
				<li>listingId (primary key)</li>
				<li>listingCategoryId (foreign key)</li>
				<li>listingUserId (foreign key)</li>
				<li>listingBrand</li>
				<li>listingDescription</li>
				<li>listingName</li>
				<li>listingPhotoUrl</li>
				<li>listingPrice</li>
			</ul>
			<strong>Category</strong>
			<ul>
				<li>categoryId (primary key)</li>
				<li>categoryName</li>
				<li>categoryPhotoUrl</li>
			</ul>
		<h2>Relationships</h2>
		One user can have many listings (1 to n)
		<br>
		Many categories can have many listings (m to n)
		<br>
		Many listings can have many categories (m to n)
		<br>
		<h2>ERD</h2>
		<img src="erdplus-diagram.png" alt="erd" style= width="30%";height="auto;">
	</body>
</html>