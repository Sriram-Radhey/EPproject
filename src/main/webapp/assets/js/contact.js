$(document).ready(function () {
    $("#contactForm").submit(function (e) {
      e.preventDefault();
      var $ = jQuery;
      var postData = $(this).serializeArray();
      var formURL = $(this).attr("action");
      var $cfResponse = $('#contactFormResponse');
      var $cfsubmit = $("#cfsubmit");
      var cfsubmitText = $cfsubmit.text();
  
      $cfsubmit.text("Sending...");
  
      $.ajax({
        url: formURL,
        type: "POST",
        data: postData,
        success: function (data) {
          $cfResponse.html(data);
          $cfsubmit.text(cfsubmitText);
  
          // Send email using a server-side script
          $.ajax({
            url: "send_email.php", // Replace with the actual URL of your server-side script
            type: "POST",
            data: postData,
            success: function (response) {
              // Handle success message or further actions
              console.log("Email sent successfully!");
            },
            error: function (response) {
              // Handle error message or further actions
              console.log("Error sending email");
            }
          });
        },
        error: function (data) {
          alert("Error occurred! Please try again.");
        }
      });
  
      return false;
    });
  });
  