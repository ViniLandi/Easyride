package beans;

public class VeiculoBean {
	
	//Atributos
	private String placaVeiculo;
	private String fabricanteVeiculo;
	private String modeloVeiculo;
	private int anoVeiculo;
	private String categoriaVeiculo;
	private String cpfFuncionario;
	
	//Construtor
	public VeiculoBean(String placaVeiculo, String fabricanteVeiculo, String modeloVeiculo, int anoVeiculo, String categoriaVeiculo, String cpfFuncionario) {
		this.placaVeiculo = placaVeiculo;
		this.fabricanteVeiculo = fabricanteVeiculo;
		this.modeloVeiculo= modeloVeiculo;
		this. anoVeiculo=  anoVeiculo;
		this.categoriaVeiculo= categoriaVeiculo;
		this.cpfFuncionario = cpfFuncionario;
	}
	
	public String getPlacaVeiculo() {
		return placaVeiculo;
	}
	public void setPlacaVeiculo(String placaVeiculo) {
		this.placaVeiculo = placaVeiculo;
	}
	public String getFabricanteVeiculo() {
		return fabricanteVeiculo;
	}
	public void setFabricanteVeiculo(String fabricanteVeciulo) {
		this.fabricanteVeiculo = fabricanteVeciulo;
	}
	public String getModeloVeiculo() {
		return modeloVeiculo;
	}
	public void setModeloVeiculo(String modeloVeiculo) {
		this.modeloVeiculo = modeloVeiculo;
	}
	public int getAnoVeiculo() {
		return anoVeiculo;
	}
	public void setAnoVeiculo(int anoVeiculo) {
		this.anoVeiculo = anoVeiculo;
	}
	public String getCategoriaVeiculo() {
		return categoriaVeiculo;
	}
	public void setCategoriaVeiculo(String categoriaVeiculo) {
		this.categoriaVeiculo = categoriaVeiculo;
	}

	public String getCpfFuncionario() {
		return cpfFuncionario;
	}

	public void setCpfFuncionario(String cpfFuncionario) {
		this.cpfFuncionario = cpfFuncionario;
	}

	
}
