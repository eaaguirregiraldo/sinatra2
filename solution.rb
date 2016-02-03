require 'sinatra'

get '/makers/:nombre' do
 unless params[:nombre]
  <<-HTML
    <h1>Hola desconocido!</h1>
  HTML
 else
   @greeting_name = params[:nombre]

   <<-HTML
     <h1>Hola #{@greeting_name.capitalize}!</h1>
   HTML
   
 end
end