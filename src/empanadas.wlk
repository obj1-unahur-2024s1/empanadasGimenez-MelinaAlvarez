object gimenez{
	var fondoSueldos = 3000000
	
	method pagarA(empleado){
		fondoSueldos = 0.max(fondoSueldos-empleado.sueldo())
		empleado.cobrarSueldo()
	}
}

object galvan{
	var sueldo = 150000
	var sueldoAcumulado = 0
	var deuda = 0
	
	method sueldo() = sueldo
	
	method cobrarSueldo(){
		sueldoAcumulado = sueldoAcumulado + sueldo
	}
	
	method gastar(monto){deuda = (deuda+monto).abs()}
	
	method totalDeuda(){
		deuda = 0.max(deuda-sueldoAcumulado)
		return deuda
	}
	
	method totalDinero() = 0.max(sueldoAcumulado-deuda)
}

object baigorria{
	var cantDeEmpanadas = 0
	const precioEmpanada = 15
	var sueldoAcumulado = 0
		
	method sueldo() = cantDeEmpanadas*precioEmpanada
	method cobrarSueldo(){sueldoAcumulado += self.sueldo()}
	method totalCobrado(){return self.sueldo()}
}

