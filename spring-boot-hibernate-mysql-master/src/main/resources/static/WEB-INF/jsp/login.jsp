<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V5</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="179550612993-v74ibfb67m6f198g6qc67jngj2j8out2.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>

</head>
<body>
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form class="login100-form validate-form flex-sb flex-w">
					<span class="login100-form-title p-b-53">
						Sign In With
					</span>


          
           <div class="g-signin2" data-width="455" data-height="50" data-longtitle="true" data-onsuccess="onSignIn" data-theme="dark"></div>
					
					<div class="p-t-31 p-b-9">
						<span class="txt1">
							Username
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="username" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>

						<a href="#" class="txt2 bo1 m-l-5">
							Forgot?
						</a>
					</div>
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="pass" >
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn m-t-17">
						<button class="login100-form-btn">
							Sign In
						</button>
					</div>

<!-- 					<div class="w-full text-center p-t-55">
						<span class="txt2">
							Not a member?
						</span> -->

<!-- 						<a href="#" class="txt2 bo1">
							Sign up now
						</a> -->
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
  
   <script>
      function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        var profile = googleUser.getBasicProfile();
        console.log("ID: " + profile.getId()); // Don't send this directly to your server!
        console.log('Full Name: ' + profile.getName());
        console.log('Given Name: ' + profile.getGivenName());
        console.log('Family Name: ' + profile.getFamilyName());
        console.log("Image URL: " + profile.getImageUrl());
        console.log("Email: " + profile.getEmail());
        
        localStorage.setItem("id", profile.getId());
        localStorage.setItem("fullName", profile.getName());
        localStorage.setItem("familyName", profile.getFamilyName());
        localStorage.setItem("givenName", profile.getGivenName());
        localStorage.setItem("image", profile.getImageUrl());
        localStorage.setItem("email", profile.getEmail());
        localStorage.setItem("names", "xyz");
        
        
                //         <--------------------------COOKIES---------------------------------->
                //         function createCookie(key,value)
                //         {
                //           let cookie = escape(key) + "=" + escape(value) + ";";
                //           document.cookie = cookie;
                //           console.log(cookie);
                //           console.log("creating cookie with key : "+ key + "value : " +value);
                //         }

                //         createCookie("givenName" , profile.getGivenName());
                //         createCookie("imageUrl" , profile.getImageUrl());
                //         createCookie("email" , profile.getEmail());
                //           <--------------------------COOKIES---------------------------------->

        // The ID token you need to pass to your backend:
        var id_token = googleUser.getAuthResponse().id_token;
        console.log("ID Token: " + id_token);
        
        if (profile.getName() !=null) {
          if(profile.getName()=="Eshwar Pilli")
            {
              window.location.replace("http://pillieshwar.me/NiceAdmin/index.jsp");
            }
          else
           {
              window.location.replace("http://pillieshwar.me/dataCollection/index.html");
           }
        
} 
//         var x = profile.getImageUrl();
//         document.getElementById("demo").src = x;
        
      }
    </script>

</body>
</html>