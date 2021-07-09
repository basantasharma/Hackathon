----------------------------------------- How to run this framework:	------------------------------

1st:)>>>>>>>>>>>>>>>>>>>>>>	INSTALL COMPOSER TO YOUR PC	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

link of composer:>>>>>>>>>> 	https://getcomposer.org/Composer-Setup.exe	<<<<<<<<<<<<<<<<<

2nd:)>>>>>>>>>>>>>>>>>>>>>>	INSTALL XAMPP INTO PC		<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

link of xampp:>>>>>>>>>>>>>	https://www.apachefriends.org/xampp-files/7.4.20/xampp-windows-x64-7.4.20-0-VC15-installer.exe	<<<<<<<<<<<<<<<<<<<<

3rd:)>>>>>>>>>>>>>>>>>>>>>>	CLONE THIS REPOSITORY TO YOUR DESIRED FOLDER	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

4th:)>>>>>>>>>>>>>>>>>>>>>>	OPEN Command Prompt AND NAVIGATE TO CLONED FOLDER	<<<<<<<<<<<<<<<<<<<<<<<<<
			>>>>>	in cmd run command	"composer update"	<<<<<<

5th:)>>>>>>>>>>>>>>>>>>>>>	CONFIGURE XAMPP APACHE config FILE i.e.-- Apache (httpd.config) --	<<<<<<<<<<<<<<<<<<<<
		
configuration looks like this>>>>>>>>>	DocumentRoot "cloned_folder_path\public"	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<

					<Directory "cloned_folder_path\public">

6th:)>>>>>>>>>>>>>>>>>>>>>	import hackathon.sql into localhost/phpmyadmin/	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
			While importing sql make sure you create a new database named "hackathon"
			import the sql file 'hackathon.sql'into the newly created database "hackathon"



>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	FINALLY WE ARE GOOD TO GO	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<


>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>	OPEN any browser type http://localhost in URL	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
URL looks like this>>>>>>>>>>>>>>>>	http://localhost	<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<





-----------------------------------	This is PHP MVC Framework	-----------------------------------
In this framework all the routing is handlled by index.php which is inside public folder of your cloned project, so
'\public' should be added to xampp's 'httpd.config' configured file in 'DocumentRoot' and 'Directory'.  