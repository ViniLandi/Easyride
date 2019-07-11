package beans;

public class AgendamentoBean {
	
	//Atributos
	private String dataAgendamento;
	private String  horaAgendamento;
	private String partidaAgendamento;
	private String destinoAgendamento;
	private String categoriaAgendamento;
	private double valorAgendamento;
	private String cpfCliente;
	
	//Construtores
	public AgendamentoBean(String dataAgendamento, String horaAgendamento, String partidaAgendamento, String destinoAgendamento, String categoriaAgendamento, double valorAgendamento, String cpfCliente) {
		this.dataAgendamento = dataAgendamento;
		this.horaAgendamento = horaAgendamento;
		this.partidaAgendamento = partidaAgendamento;
		this.destinoAgendamento = destinoAgendamento;
		this.categoriaAgendamento = categoriaAgendamento;
		this.valorAgendamento = valorAgendamento;
		this.cpfCliente = cpfCliente;
	}
	
	public AgendamentoBean() {}
	
	//Metodos GET
	public String getDataAgendamento() {
		return dataAgendamento;
	}
	public String getHoraAgendamento() {
		return horaAgendamento;
	}
	public String getPartidaAgendamento() {
		return partidaAgendamento;
	}
	public String getDestinoAgendamento() {
		return destinoAgendamento;
	}
	public String getCategoriaAgendamento() {
		return categoriaAgendamento;
	}
	public double getValorAgendamento() {
		return valorAgendamento;
	}
	public String getCpfCliente() {
		return cpfCliente;
	}
	
	//Metodos  SET 
	public void setDataAgendamento(String dataAgendamento) {
		this.dataAgendamento = dataAgendamento;
	}
	public void setHoraAgendamento(String horaAgendamento) {
		this.horaAgendamento = horaAgendamento;
	}
	public void setPartidaAgendamento(String partidaAgendamento) {
		this.partidaAgendamento = partidaAgendamento;
	}
	public void setDestinoAgendamento(String destinoAgendamento) {
		this.destinoAgendamento = destinoAgendamento;
	}
	public void setCategoriaAgendamento(String categoriaAgendamento) {
		this.categoriaAgendamento = categoriaAgendamento;
	}
	public void setValorAgendamento(double valorAgendamento) {
		this.valorAgendamento = valorAgendamento;
	}
	public void setCpfCliente(String cpfCliente) {
		this.cpfCliente = cpfCliente;
	}
	
	
	
	
	
	
	
}
