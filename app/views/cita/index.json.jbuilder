json.array! @cita, partial: 'cita/citum', as: :citum

json.array!(@cita) do |event|   
  json.extract! event, :id, :servicio, :empleado, :   
  json.start event.fecha   
  #json.end event.end_date   
  json.url event_url(event, format: :html) 
end
json.start event.start_date   
json.end event.end_date

json.url cita_url(event, format: :html)