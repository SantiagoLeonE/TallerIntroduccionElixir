defmodule Problema1 do
  def main do
    nombre_conductor = "Ingrese su nombre: "
    |> Util.ingresar(:texto)

    distancia_recorrida = "Ingrese la distancia recorrida en km: "
    |> Util.ingresar(:real)

    cantidad_combustible = "Ingrese la cantidad de combustible: "
    |> Util.ingresar(:real)

    calcular_rendimiento(distancia_recorrida, cantidad_combustible)
    |> generar_mensaje(nombre_conductor)
    |> Util.mostrar_mensaje()
  end

  defp calcular_rendimiento(distancia_recorrida, cantidad_combustible) do
    distancia_recorrida / cantidad_combustible
  end

  defp generar_mensaje(rendimiento, nombre) do
    rendimiento = :erlang.float_to_binary(rendimiento, [decimals: 2])
    "El rendimiento del vehículo de #{nombre} es de #{rendimiento} km/L"
  end
end

Problema1.main()
