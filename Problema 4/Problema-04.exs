defmodule Problema4 do
  def main do
    nombre_empleado = "Ingresar el nombre del empleado: "
    |> Util.ingresar(:texto)

    salario_base = "Ingresar el salario base del empleado: "
    |> Util.ingresar(:real)

    horas_extras_trabajadas = "Ingresar la cantidad de horas extras trabajadas por el empleado: "
    |> Util.ingresar(:entero)

    valor_hora_normal = calcular_valor_hora_normal(salario_base)
    valor_horas_extras = calcular_valor_horas_extras(horas_extras_trabajadas, valor_hora_normal)
    salario_total = calcular_salario_total(salario_base, valor_horas_extras)

    generar_mensaje(nombre_empleado, salario_total)
    |> Util.mostrar_mensaje()
  end

  defp calcular_valor_hora_normal(salario_base) do
    salario_base/160 #El valor 160 son las horas trabajadas por el empleado en el mes
  end

  defp calcular_valor_horas_extras(horas_extras_trabajadas, valor_hora_normal) do
    (valor_hora_normal * 1.5) * horas_extras_trabajadas
  end

  defp calcular_salario_total(salario_base, valor_horas_extras) do
    salario_base + valor_horas_extras
  end

  defp generar_mensaje(nombre, salario) do
    "El salario total de #{nombre} es de $#{salario} pesos"
  end
end

Problema4.main()
