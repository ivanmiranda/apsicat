<?php

	// Remember to do something with your uploads!

	$f = $_FILES["file"];
	$file = $f["name"];

	$error = false;

	$uploads_dir = '/var/www/dominios/apsicat.com/sitio/html/images/blog';
	if ($f["error"] == 0) {
		$tmp_name = $f["tmp_name"];
		$name = $f["name"];
		move_uploaded_file($tmp_name, "$uploads_dir/$name");
		exec("convert -resize 293x222! {$uploads_dir}/{$name} {$uploads_dir}/prev_{$name}");
		exec("convert -resize 146x111! {$uploads_dir}/{$name} {$uploads_dir}/min_{$name}");
		exec("mogrify -resize 586x444! {$uploads_dir}/{$name}");
		exec("composite -gravity SouthEast -compose Over /var/www/dominios/apsicat.com/drop/apsicat_logo.png {$uploads_dir}/{$name} {$uploads_dir}/{$name}");
	}
	else {
		$error = "NO SE PUDO";
	}

	if ($error) {
		die("ERROR: " . $error);
	} else {
		die($file);
	}

?>
