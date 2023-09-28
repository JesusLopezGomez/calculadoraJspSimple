package utility;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Setter
@Getter
public class Calculadora {	
	
	public static int calcular(int numero1, int numero2, String operador) {		
	
		return operador.toLowerCase().equals("suma") ? numero1+numero2 : numero1-numero2;
	}
	
	
}
