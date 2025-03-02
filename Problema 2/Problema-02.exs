defmodule Problema2 do
  def main do
    nombre_libro = "Ingrese el título del libro: "
    |> Util.ingresar(:texto)

    cantidad_unidades_disponibles = "Ingrese la cantidad de unidades disponibles: "
    |> Util.ingresar(:entero)

    precio_unidad = "Ingrese el precio por unidad: "
    |> Util.ingresar(:real)

    calcular_total_inventario(cantidad_unidades_disponibles, precio_unidad)
    |> generar_mensaje(nombre_libro, cantidad_unidades_disponibles)
    |> Util.mostrar_mensaje()
  end

  defp calcular_total_inventario(cantidad, precio_unidad) do
    cantidad * precio_unidad
  end

  defp generar_mensaje(valor_total_inventario, nombre, unidades) do
    valor_total_inventario = :erlang.float_to_binary(valor_total_inventario, [decimals: 1])
    "El libro #{nombre} tiene #{unidades} unidades, con un valor total de $#{valor_total_inventario} pesos"
  end
end

Problema2.main()
