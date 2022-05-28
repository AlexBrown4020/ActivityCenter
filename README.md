# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

<%= form_for(letter, remote: true) do |form| %>
    <%= form.check_box :accepted %>
    <%= form.submit "Submit", :class => "button primary small" %>
<% end %>

" data_letter="<%= i%>>" 

<%
=begin%>
 <%= link_to i, :remote => "true", :name => i %> 
<%
=end%>

<button  type="button" onclick=process_letter(i)>
    <%= i %>
</button> 