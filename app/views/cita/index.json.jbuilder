json.array! @cita, partial: 'cita/citum', as: :citum

json.array!(@cita) do |cita|
  json.extract! cita, :id, :servicio, :empleado, :
  json.start cita.fecha
  #json.end event.end_date
  json.url cita_url(citum, format: :html)
end
json.start event.start_date   
json.end event.end_date

json.url cita_url(citum, format: :html)
