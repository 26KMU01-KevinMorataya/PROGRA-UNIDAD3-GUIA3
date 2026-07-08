Algoritmo Ejemplo_CRUD
	Definir opc Como Entero
	Definir estudiantes Como Caracter
	Dimensionar estudiantes[10,3]
	
	Repetir
		Escribir "===== MENÚ PRINCIPAL ====="
		Escribir "1--Registrar"
		Escribir "2--Mostrar"
		Escribir "3--Actualizar"
		Escribir "4--Eliminar"
		Escribir "5--Salir"
		Escribir Sin Saltar "Digite una opción"
		Leer opc
		
		
		Segun opc Hacer
			1:
				Limpiar Pantalla
				Escribir "==== Registrar Estudiantes ===="
				RegistrarEstudiantes(estudiantes)
			2:
				Limpiar Pantalla
				Escribir "==== Mostrar Estudiantes ===="
				mostrarEstudiantes(estudiantes)
			3:
				Limpiar Pantalla
				Escribir "==== Actualizar Estudiantes ===="
			4:
				Limpiar Pantalla
				Escribir "==== Eliminar Estudiantes ===="
				EliminarEstudiantes(estudiantes)
			5:
				Limpiar Pantalla
				Escribir "==== Saliendo del sistema ===="
			De Otro Modo:
				Escribir "Digite una opcion valida"
		FinSegun
	Hasta Que opc==5
FinAlgoritmo


//Subproceso de registrar un estudiante

SubProceso RegistrarEstudiantes(estudiantes)
	Definir i Como Entero
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Si estudiantes[i,1]=="" Entonces
			Escribir Sin Saltar "Código: "
			Leer estudiantes[i,1]
			Escribir Sin Saltar "Nombre: "
			Leer estudiantes[i,2]
			Escribir Sin Saltar "Edad: "
			Leer estudiantes[i,3]
			Escribir "Datos almacenados con exito!!!"
		Fin Si
	Fin Para
	Escribir "Matriz llenos"
FinSubProceso

//Subproceso los datos

SubProceso mostrarEstudiantes(estudiantes)
	Definir i Como Entero
	Escribir "CODIGO     NOMBRE     EDAD"
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Si estudiantes[i,1]<>"" Entonces
			Escribir estudiantes[i,1],"     ",estudiantes[i,2], "     ",estudiantes[i,3]
		Fin Si
	Fin Para
FinSubProceso

//Subproceso un registro
SubProceso EliminarEstudiantes(estudiantes)
	Definir i Como Entero
	Definir codigo Como Caracter
	
	Escribir "Digite el codigo del estudiante"
	leer codigo
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Si estudiantes[i,1]==codigo Entonces
			estudiantes[i,1]=""
			estudiantes[i,2]=""
			estudiantes[i,3]=""
			Escribir "Registro eliminado"
		Fin Si
		
	Fin Para
	
	Escribir "Estudiante no encontrado"
	
FinSubProceso
