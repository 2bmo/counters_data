$(document).on 'turbolinks:load', ->

# set active menu link
  path = window.location.pathname
  path = path.replace(/\/$/, "")
  path = decodeURIComponent(path)

  $(".menu__link").each ->
    href = $(this).attr('href')
    if (path.substring(0, href.length) == href)
      $(this).closest('.menu__link').addClass('menu__link_active').siblings().removeClass('menu__link_active')
