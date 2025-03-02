defmodule Problema6 do
  def main do
    nombre_cliente = "Ingresar el nombre del cliente: "
    |> Util.ingresar(:texto)

    peso_paquete = "Ingresar el peso del paquete en kg: "
    |> Util.ingresar(:real)

    tipo_envio = "Ingresar el tipo de envío(Económico, Express, Internacional): "
    |> Util.ingresar(:texto)

    calcular_costo_envio(peso_paquete, tipo_envio)
    |> generar_mensaje(nombre_cliente, peso_paquete, tipo_envio)
    |> Util.mostrar_mensaje()
  end

  defp calcular_costo_envio(peso, tipo) do
    case tipo do
      "Economico" -> peso * 5000
      "Express" -> peso * 8000
      "Internacional" ->
        if (peso <= 5.0) do
          peso * 15000
        else
          peso * 12000
        end
      _ -> "Tipo de envío no válido"
    end
  end

  defp generar_mensaje(costo, nombre, peso_paquete, tipo_envio) do
    costo = :erlang.float_to_binary(costo, [decimals: 1])
    {costo_total, cliente, peso, tipo} = {costo, nombre, peso_paquete, tipo_envio}
    "El cliente #{cliente} ha pedido un envío #{tipo} con un paquete de #{peso} kg, el cual vale $#{costo_total} pesos"
  end
end

Problema6.main()

"""
    cond do
      tipo == "Economico" -> peso * 5000
      tipo == "Express" -> peso * 8000
      tipo == "Internacional" && peso <= 5.0 -> peso * 15000
      tipo == "Internacional" && peso > 5.0 -> peso * 12000
      _ -> "Tipo de envío no válido"
    end
    """
