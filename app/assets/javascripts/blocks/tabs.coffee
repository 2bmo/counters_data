$(document).on 'turbolinks:load', ->

# change tab on click
  $('.tabs__menu').on 'click', 'li:not(tabs__link_active)', ->
    $(this)
    .addClass('tabs__link_active').siblings().removeClass('tabs__link_active')
    .closest('div.tabs').find('div.tabs__content').removeClass('tabs__content_active').eq($(this).index()).addClass('tabs__content_active')
