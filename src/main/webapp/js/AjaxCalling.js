  	$(document).ready(function(){
  		
  		//registeration button
  		$('#registerbutton').click(function(){
  			if(validate==1){
  			alert(validate);	
  			var user_name=$('#user_name').val();
  			var email=$('#email').val();
  			var confirm_password=$('#confirm_password').val();
  			var password=$('#password').val();
  			var mobile_no=$('#mobile_no').val();
  			var address=$('#address').val();
  			if(confirm_password==password){
  				alert("correct password");
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					user_name:user_name,
  					email:email,
  					password:password,
  					confirm_password:confirm_password,
  					mobile_no:mobile_no,
  					address:address,
  					action:'register'
  				},
  				async:false,
  				success:function(msg){
  					alert(msg);
  					window.location.replace("Register.jsp")
  				},
  				error:function(e){
  					alert("try again later");
  				}
  				
  			});
  			}
  			else{
  				alert("password doesn't match");
  			}
  		}
  			else
  				alert("enter valid captcha");
  		});
  		
  		//login user
  		$('#loginbtn').click(function(){
  			//alert("in jquery");
  			var email=$('#email').val();
  			var password=$('#password').val();
  		//	alert(email+password);
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					email:email,
  					password:password,
  					action:'login'
  				},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						if(msg == 3){
  						window.location.replace("Welcome.jsp"); 
  							//alert(msg);
  						}
  						else if(msg == 2){
  							alert("enter the username and password");
  						}
  						else if(msg == 1){
  							alert("username and password doesn't match");
  						}

  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  		//admin login
  		$('#adminLogin').click(function(){
  			alert("in jquery");
  			var email=$('#email').val();
  			var password=$('#password').val();
  			//alert(email+password);
  			$.ajax({
  				type:"Post",
  				url:"../callmainjs",
  				data:{
  					email:email,
  					password:password,
  					action:'adminLogin'
  				},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						if(msg == 3){
  						window.location.replace("index.jsp"); 
  						}
  						else if(msg == 2){
  							alert("enter the username and password");
  						}
  						else if(msg == 1){
  							alert("username and password doesn't match");
  						}

  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  		//adding the doctor
  		
  		/*$('#addDoctorBtn').click(function(){
  			alert("in jquery");
  			//var form = $('#fileUploadForm')[0];
  			 //var data = new FormData(form);
  			 alert(data);
  			var name=$('#d_name').val();
  			var spec=$('#doctor_spec').val();
  			var experience=$('#experience').val();
  			var mobile=$('#d_mobile').val();
  			var address=$('#d_address').val();
  			var email=$('#d_email').val();
  			var depart=$('#doctor_dep').val();
  			var path=$('#path').val();
  			$.ajax({
  				type:"Post",
  				url:"../callmainjs",
  			   //enctype: 'multipart/form-data',
  			 //data: data,
             //processData: false,
             //contentType: false,
  	          
  				data:{
  					name:name,
  					spec:spec,
  					experience:experience,
  					mobile:mobile,
  					address:address,
  					email:email,
  					depart:depart,
  					path:path,
  					action:'addDoctor'
  						},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						if(msg == 1){
  						alert("Sucessfully Added");
  						window.location.replace("AddDoctor.jsp"); 
  							
  						}
  						else if(msg == 2){
  							alert("enter the whole Information");
  						}
  						else if(msg == 0){
  							alert("try agin later");
  						}

  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});*/
  		
  		//add department
  		
  		$('#addDepartment').click(function(){
  			alert("in jquery");
  			var name=$('#d_name').val();
  			var disc=$('#d_disc').val();
  			$.ajax({
  				type:"Post",
  				url:"../callmainjs",
  				data:{
  					name:name,
  					disc:disc,
  					action:'addDepartment'
  				},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						if(msg == 1){
  							alert("Sucessfully Added");
  							window.location.replace("AddDepartment.jsp"); 	
  						}
  						else if(msg == 2){
  							alert("enter the whole Information");
  						}
  						else if(msg == 0){
  							alert("try agin later");
  						}

  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		}); 		
  		
  		
  		
  		//for appointment booking
  		$('#appointmentBook').click(function(){
  			//alert(validate);
  			if(validate==1){
  			//alert("in Jquery");
  			var name=$('#appointment_name').val();
  			var email=$('#appointment_email').val();
  			var mobile=$('#appointment_mobile').val();
  			var appDate=$('#appointment_date1').val();
  			var appTime=$('#appointment_time1').val();
  			var doctorId=$('#doctor_id').val();
  			//alert(appTime);
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					name:name,
  					email:email,
  					mobile:mobile,
  					appDate:appDate,
  					appTime:appTime,
  					doctorId:doctorId,
  					action:'appointment'
  				},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						if(msg == 1){
  							alert("Appointment Booked");
  							window.location.replace("Welcome.jsp"); 	
  						}
  						else if(msg == 0){
  							alert("try agin later");
  						}

  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  			}
  			else{
  				alert("enter validate captcha");
  			}
  		});
  		
  		//change Password
  		$('#changePassword').click(function(){
  			alert("in Jquery");
  			var email=$('#email').val();
  			var old_password=$('#old_password').val();
  			var new_password=$('#new_password').val();
  			alert(email);
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					email:email,
  					old_password:old_password,
  					new_password:new_password,
  					action:'changePassword'
  				},
  				async:false,
  				success:function(msg){
  						alert(msg);
  						window.location.replace("Login.jsp"); 
  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  		//forget password button
  		$('#forgetbtn').click(function(){
  			alert("in Jquery");
  			var email=$('#email').val();
  			alert(email);
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					email:email,
  					action:'forgetPassword'
  				},
  				async:false,
  				success:function(msg){
  						alert(msg);
  						window.location.replace("Login.jsp"); 
  				},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  		//update doctor details
  		$('#updateDoctorBtn').click(function(){
  			alert("in jqueyr");
  			var id=$('#d_id').val();
  			var name=$('#d_name').val();
  			var spec=$('#doctor_spec').val();
  			var experience=$('#experience').val();
  			var mobile=$('#d_mobile').val();
  			var address=$('#d_address').val();
  			var email=$('#d_email').val();
  			$.ajax({
  				type:"Post",
  				url:"../callmainjs",
  				data:{
  					id:id,
  					name:name,
  					spec:spec,
  					experience:experience,
  					mobile:mobile,
  					address:address,
  					email:email,
  					action:'updateDoctor'
  						},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						alert(msg);
  						window.location.replace("DoctorDetail.jsp"); 
  					},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  	//update user details
  		$('#updateUserProfileBtn').click(function(){
  			alert("in jqueyr");
  			var id=$('#d_id').val();
  			var name=$('#d_name').val();
  			var mobile=$('#d_mobile').val();
  			var address=$('#d_address').val();
  			var email=$('#d_email').val();
  			$.ajax({
  				type:"Post",
  				url:"callmainjs",
  				data:{
  					id:id,
  					name:name,
  					mobile:mobile,
  					address:address,
  					email:email,
  					action:'updateUser'
  						},
  				async:false,
  				success:function(msg){
  						//alert(msg);
  						alert(msg);
  						window.location.replace("Welcome.jsp"); 
  					},
  				error:function(e){
  					alert("try again later");
  				}
  			});
  		});
  		
  	});