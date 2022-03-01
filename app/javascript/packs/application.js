// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//= require jquery
//= require moment 
//= require fullcalendar

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
// import { Calendar} from "fullCalendar"
import "channels"

import "bootstrap/dist/js/bootstrap"
import "bootstrap/dist/css/bootstrap"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// function eventCalendar() {
//     return $('.calendar').fullCalendar({ });
// };
// function clearCalendar() {
//     $('.calendar').fullCalendar('delete'); 
//     $('.calendar').html('');
// };
$(document).on('turbolinks:load', function(){
    eventCalendar();  
});
$(document).on('turbolinks:before-cache', clearCalendar);