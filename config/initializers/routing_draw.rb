class ActionDispatch::Routing::Mapper

  def draw(routes_name)
    draw_route(route_path("config/routes/#{routes_name}.rb"))
  end

  def route_path(routes_name)
    Rails.root.join(routes_name)
  end

  def draw_route(path)
    if File.exist?(path)
      instance_eval(File.read(path))
    else
      msg_error = "Se esta intentando cargar el archivo de rutas #{path.to_s.gsub(/.*\/+/, '')}, pero no existe!!"
      Rails.logger.fatal msg_error
    end
  end

end
