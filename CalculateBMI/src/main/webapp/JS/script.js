$(document).ready(function () {
   
    let isMetric = false;
    $('#metricbtn').val("metric");
    $('#metricbtn').on('click', function () {
        isMetric = !isMetric;
        $('#metricbtn').val("standard");
        $(this).text(isMetric ? 'Metric Units' : 'Standard Units');
        $('#hieghtLabel1').text(isMetric ? 'ft' : 'meter');
         $('#hieghtLabel2').text(isMetric ? 'in' : 'cm');
         $('#wieghtLabel1').text(isMetric ? 'lbs' : 'kg');
         
    });
    
     $('#input-form').submit(function (e) {
        e.preventDefault();
        var formData = $(this).serialize();
        formData += "&metricbtn=" +  $('#metricbtn').val();
        $.ajax({
            type: 'POST',
            url: 'BMICalculator',
            data: formData,
            success: function (response) {
					               
                $('#Rbmi').text(response);
                $('#BMI').show();
                modifyAnswer(response.toString().split(" ")[1]);
            },
            error: function (xhr, status, error) {
                console.error('AJAX request failed:', status, error);
    			console.log(xhr.responseText);

            }
        });
    });
    
	function toggleButton() {
	    var calculateBtn = $("#calculate");
	    if (calculateBtn.val() === "Reset") {
	        $("#height1").val("");
	        $("#height2").val("");
	        $("#weight").val("");
	        $('#BMI').hide();
	        $("#Rbmi").text("");
	        calculateBtn.val("Calculate BMI");
	        calculateBtn.removeClass("btn-secondary").addClass("btn-primary");
	    } else {
	        $("#calculate").val("Reset");
	        calculateBtn.removeClass("btn-primary").addClass("btn-secondary");
	    }
	}

	function modifyAnswer(info){
        if (info.toLowerCase().trim() === "normal") {
            $('#Rbmi').css('color', 'green');
        } else if (info.toLowerCase().trim() === "underweight") {
            $('#Rbmi').css('color', 'red');
        }else if (info.toLowerCase().trim() === "overweight") {
            $('#Rbmi').css('color', 'yellow');
        }else if (info.toLowerCase().trim() === "obesity") {
            $('#Rbmi').css('color', 'Red');
        }else if (info.toLowerCase().trim() === "morbid obesity") {
            $('#Rbmi').css('color', 'Red');
        }
	}

	$("#calculate").click(function () {
	    toggleButton();
	});
});
