// Validations
FormValidation = {
  validateForm: function () {
    jQuery.validator.addMethod("name_regex", function (value, element) {
      return this.optional(element) || /^[ a-zA-z\.\-_]{1,30}$/i.test(value);
    }, "Enter letters only.");
    jQuery.validator.addMethod("phone_regex", function (value, element) {
      return this.optional(element) || /^[0-9\.\-_]{10,30}$/i.test(value);
    }, "Phone Number with only 0-9. Minlength: 10");
    $('#my_form').validate({
      rules: {
        'employee[name]': {
          required: true,

          name_regex: true,
        },
        'employee[email]': {
          required: true,
          email: true,
        },
        'employee[phone]': {
          required: true,
          phone_regex: true
        },
        'employee[profile_attributes][position]': {
          required: true,
          name_regex: true
        },
        'employee[profile_attributes][experience]': {
          required: true,
          digits: true
        },
        'employee[profile_attributes][aadhar_number]': {
          required: true,
          digits: true,
          minlength: 12
        },
        'employee[profile_attributes][financial_attributes][bank_name]': {
          required: true,
          name_regex: true
        },
        'employee[profile_attributes][financial_attributes][ifsc]': {
          required: true,
          minlength: 11
        },
        'employee[profile_attributes][financial_attributes][micr]': {
          required: true,
          minlength: 9
        },
        'employee[profile_attributes][financial_attributes][bank_address]': {
          required: true
        }
      },
      messages: {
        'employee[name]': {
          required: 'Please, enter a reference'
        },
        'employee[email]': {
          required: 'Please, enter a reference',
          email: 'Please, enter a valid email.'
        },
        'employee[phone]': {
          required: "Please, enter a reference",
          length: "Please, enter valid phone number."
        },
        'employee[profile_attributes][position]': {
          required: "Please, enter a reference",
        },
        'employee[profile_attributes][experience]': {
          required: "Please, enter a reference",
          digits: "Enter Number only"
        },
        'employee[profile_attributes][aadhar_number]': {
          required: "Please, enter a reference",
          digits: "Enter Numbers only",
          minlength: "Enter valid Aadhar Number"
        },
        'employee[profile_attributes][financial_attributes][bank_name]': {
          required: "Please, enter a reference",
        },
        'employee[profile_attributes][financial_attributes][ifsc]': {
          required: "Please, enter a reference",
          minlength: "Enter valid IFSC code"
        },
        'employee[profile_attributes][financial_attributes][micr]': {
          required: "Please, enter a reference",
          minlength: "Enter valid MICR code"
        },
        'employee[profile_attributes][financial_attributes][bank_address]': {
          required: "Please, enter a reference"
        }
      }
    });



 $('#my_login').validate({
      rules: {
        'user[user_name]': {
          required: true,
          name_regex: true,
        },
        'user[email]': {
          required: true,
          email: true,
        },
        'employee[phone]': {
          required: true,
          phone_regex: true
        },
        'employee[profile_attributes][position]': {
          required: true,
          name_regex: true
        },
        'employee[profile_attributes][experience]': {
          required: true,
          digits: true
        },
        'employee[profile_attributes][aadhar_number]': {
          required: true,
          digits: true,
          minlength: 12
        },
        'employee[profile_attributes][financial_attributes][bank_name]': {
          required: true,
          name_regex: true
        },
        'employee[profile_attributes][financial_attributes][ifsc]': {
          required: true,
          minlength: 11
        },
        'employee[profile_attributes][financial_attributes][micr]': {
          required: true,
          minlength: 9
        },
        'employee[profile_attributes][financial_attributes][bank_address]': {
          required: true
        }
      },
      messages: {
        'employee[name]': {
          required: 'Please, enter a reference'
        },
        'employee[email]': {
          required: 'Please, enter a reference',
          email: 'Please, enter a valid email.'
        },
        'employee[phone]': {
          required: "Please, enter a reference",
          length: "Please, enter valid phone number."
        },
        'employee[profile_attributes][position]': {
          required: "Please, enter a reference",
        },
        'employee[profile_attributes][experience]': {
          required: "Please, enter a reference",
          digits: "Enter Number only"
        },
        'employee[profile_attributes][aadhar_number]': {
          required: "Please, enter a reference",
          digits: "Enter Numbers only",
          minlength: "Enter valid Aadhar Number"
        },
        'employee[profile_attributes][financial_attributes][bank_name]': {
          required: "Please, enter a reference",
        },
        'employee[profile_attributes][financial_attributes][ifsc]': {
          required: "Please, enter a reference",
          minlength: "Enter valid IFSC code"
        },
        'employee[profile_attributes][financial_attributes][micr]': {
          required: "Please, enter a reference",
          minlength: "Enter valid MICR code"
        },
        'employee[profile_attributes][financial_attributes][bank_address]': {
          required: "Please, enter a reference"
        }
      }
    });


  }
};
