$(window).ready ->

  # set password value
  firstName = $('#customer_first_name')
  lastName = $('#customer_last_name')

  firstName.change -> setPass()
  lastName.change -> setPass()

  setPass = ->
    console.log(passwordVal)
    password = $('#customer_password')
    passwordConfirm = $('#customer_password_confirmation')
    passwordVal = firstName.val() + lastName.val()
    password.val(passwordVal)
    passwordConfirm.val(passwordVal)