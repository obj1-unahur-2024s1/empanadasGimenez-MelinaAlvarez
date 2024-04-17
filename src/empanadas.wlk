object gimenez{
	var fondoSueldos = 3000000
	
	method pagarA(empleado){
		fondoSueldos -=  empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

object galvan{
	var sueldo = 150000
	var dinero = 0
	var deuda = 0
	
	method sueldo() = sueldo
	method aumentoSueldo(nuevo){sueldo = nuevo}
	
	method cobrarSueldo(){
		dinero+=sueldo
		self.ajustarCuentas()
	}
	
	method ajustarCuentas(){
		if (deuda != 0) dinero+=(0.max(dinero= dinero-deuda))  else dinero += sueldo	
	}
	
	method gastar(monto){if (0.max(dinero-monto)==0) deuda+=monto else dinero-=monto}
	method totalDeuda() = deuda
	method totalDinero() = dinero
}

object baigorria{
	var empanadasVendidas = 0
	const precioEmpanada = 15
	var dineroCobrado = 0
	
	method venderEmpanadas(cuantas){empanadasVendidas=empanadasVendidas+cuantas}
	
	method sueldo() = empanadasVendidas*precioEmpanada
	
	method cobrarSueldo(){dineroCobrado += self.sueldo()}
	
	method totalCobrado() = dineroCobrado
}

