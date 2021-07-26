Login = {
    validateForm: function(){
        $("#new_user").validate({
            rules: {
                'user[email]': {
                    required: true,
                    email: true,
                }, 
                'user[password]': {
                    required: true,
                    minlength: 6
                },
                'user[password_confirmation]': {
                    required: true,
                    equalTo: "#user_password"
                }
            },
            messages: {
                'user[email]': {
                  required: "The Email is required!",
                  email: "Please enter a valid email address!"
                }
            }
        });
      }      
    };
       
  