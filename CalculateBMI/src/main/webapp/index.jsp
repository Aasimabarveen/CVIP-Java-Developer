<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BMI Calculator</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body class="bg-secondary">
	<div class="main shadow p-3 m-5 bg-body-tertiary rounded">	
		<div class="container">
			<div class="row">
				<div class="col">
					<h3 class="text-primary">BMI Calculator</h3>
					<p><span class="ffw-bold">
					BMI (Body Mass Index)</span> is a measurement of body fat based on height and weight that applies to both men and women between the ages of 18 and 65 years.</p>
					<p>BMI can be used to indicate if you are overweight, obese, underweight or normal. A healthy BMI score is between 20 and 25. A score below 20 indicates that you may be underweight; a value above 25 indicates that you may be overweight.</p>
					<p>You can calculate your BMI by using our BMI Calculator below.</p>	
				</div>			
			</div>		
		</div><hr/>
		
		<div class="container">
			
			<div class="row">
			<idv class="row mb-3">
			<div class="col-sm-1">
				<label for="metricbtn">Change To:</label>
			</div>
			<div class="col-sm-2">
				<button type="button" name="metricbtn" id="metricbtn" class="btn active  border border-primary p-2 mb-2 border-opacity-55"" data-bs-toggle="button" aria-pressed="true" value="metric">Standard Units</button>				
			</div>
			</idv>
				<form id="input-form">
					<div class="mb-3 row">
						<label for="height1" class="col-sm-1 col-form-label">Height:</label>
						<div class="col-sm-2">
							<div class="input-group">
		 						<input type="number" class="form-control border border-primary p-2 mb-2 border-opacity-55" id="height1" name="height1" required>
		  						<span class="input-group-text border border-primary p-2 mb-2 border-opacity-55 text-secondary" id="hieghtLabel1" >meter</span>
							</div>
						</div>
						<div class="col-sm-2">
							<div class="input-group">
		 						<input type="number" class="form-control border border-primary p-2 mb-2 border-opacity-55" id="height2" name="height2" required>
		  						<span class="input-group-text border border-primary p-2 mb-2 border-opacity-55 text-secondary" id="hieghtLabel2">cm</span>
							</div>
						</div>
					</div>
	  				<div class="mb-3 row">
	    				<label for="weight" class="col-sm-1 col-form-label">Weight:</label>
	    			<div class="col-sm-2">
	      				<div class="input-group">
		 						<input type="number" class="form-control border border-primary p-2 mb-2 border-opacity-55" id="weight" name="weight" required>
		  						<span class="input-group-text border border-primary p-2 mb-2 border-opacity-55 text-secondary" id="wieghtLabel1">Kg</span>
							</div>
	    			</div>
	  				</div>
	  				<div class="mb-3 row">
	    			<div class="col-sm-2 text-center">
	      				<input type="submit" class="btn btn-primary" id="calculate" value="Calculate BMI">
	    			</div>
	    			<div class="col-sm-2 text-center">
	      				<p  class="col-form-label pr-0 text-end" style="display:none;" id="BMI">Your BMI is:</p>
	    			</div>
	    			<div class="col-sm-2 text-center">
	    			 	<p class="col-form-label text-start"  id="Rbmi" ></p>
	    			 </div>
	    			</div>
    			</form>
			</div>
			
		</div><hr/>
		<div class="container text-secondary">
			<div class="row">
				<div class="col-md-8"><h6 class="text-primary">BMI Classification</h6></div>
			</div>
			<div class="row">
				<div class="col-sm-2">18.5 or less</div><div class="col-sm-2">Underweight</div>
			</div>
			<div class="row">	
				<div class="col-sm-2">18.5 to 24.99</div><div class="col-sm-2">Normal Weight</div>
			</div>
			<div class="row">
				<div class="col-sm-2">25 to 29.99</div><div class="col-sm-2">Overweight</div>
			</div>
			<div class="row">				
				<div class="col-sm-2">30 to 34.99</div><div class="col-sm-2">Obesity (Class 1)</div>
			</div>
			<div class="row">
				<div class="col-sm-2">35 to 39.99</div><div class="col-sm-2">Obesity (Class 2)</div>
			</div>
			<div class="row">
				<div class="col-sm-2">40 or greater</div><div class="col-sm-2">	Morbid Obesity</div>
			</div>
		</div>				
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
	<script src="./JS/script.js"></script>
</body>
</html>