defmodule Problema5 do
  def main do
    placa_vehículo = "Ingresar la placa del vehículo: "
    |> Util.ingresar(:texto)

    tipo_vehículo = "Ingresar el tipo de vehículo(Carro, Moto, Camión): "
    |> Util.ingresar(:texto)

    peso_vehículo = "Ingresar el peso del vehículo en toneladas: "
    |> Util.ingresar(:real)

    calcular_valor_a_pagar(tipo_vehículo, peso_vehículo)
    |> generar_mensaje(placa_vehículo, tipo_vehículo)
    |> Util.mostrar_mensaje()
  end

  defp calcular_valor_a_pagar(tipo_vehiculo, peso) do

    case tipo_vehiculo do
      "Carro" -> 10000.0
      "Moto" -> 5000.0
      "Camion" -> 20000 + (peso * 2000)
      _ -> "Tipo de vehículo incorrecto"
    end
  end

  defp generar_mensaje(valor_pagar, placa_vehiculo, tipo_vehiculo) do
    valor_pagar = :erlang.float_to_binary(valor_pagar, [decimals: 1])
    {placa, tipo, tarifa_final} = {placa_vehiculo, tipo_vehiculo, valor_pagar}
    "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa_final}"
  end
end

Problema5.main()

    """
    cond do
      "Carro" -> 10000
      "Moto" -> 5000
      "Camion" -> 20000 + (peso * 2000)
      _ -> "Tipo de vehículo incorrecto"
    end


    tupla = {tipo_vehiculo, peso}

    case tupla do
      {"Moto", _} -> 10000
      {"Carro", _} -> 5000
      {"Camion", peso} -> 20000 + (peso*2000)
      _ -> "Tipo de vehículo no definido"
    end
    """
