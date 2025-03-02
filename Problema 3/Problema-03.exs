defmodule Problema3 do
  def main do
    nombre_usuario = "Ingrese su nombre: "
    |> Util.ingresar(:texto)

    temperatura_celsius = "Ingresar la temperatura en °C: "
    |> Util.ingresar(:real)

    temperatura_fahrenheit = convertir_a_fahrenheit(temperatura_celsius)
    temperatura_kelvin = convertir_a_kelvin(temperatura_celsius)

    generar_mensaje(nombre_usuario, temperatura_fahrenheit, temperatura_kelvin)
    |> Util.mostrar_mensaje()
  end

  defp convertir_a_fahrenheit(celsius) do
    (celsius * 9/5) + 32
  end

  defp convertir_a_kelvin(celsius) do
    celsius + 273.15
  end

  defp generar_mensaje(nombre, fahrenheit, kelvin) do
    fahrenheit = :erlang.float_to_binary(fahrenheit, [decimals: 1])
    kelvin = :erlang.float_to_binary(kelvin, [decimals: 1])
    "#{nombre}, la temperatura es:\n - #{fahrenheit} °F\n - #{kelvin} K"
  end
end

Problema3.main()
