package beans;

public class ClienteBean {
	
	//Atributos
	private String cpfCliente;
	private String nomeCliente;
	private String emailCliente;
	private String telefoneCliente;
	private String senhaCliente;
	
	//Construtores
	public ClienteBean(String cpfCliente, String nomeCliente, String emailCliente, String telefoneCliente, String senhaCliente) {
		this.cpfCliente = cpfCliente;
		this.nomeCliente = nomeCliente;
		this.emailCliente = emailCliente;
		this.telefoneCliente = telefoneCliente;
		this.senhaCliente = senhaCliente;
	}
	
	public ClienteBean() {};
	
	//Metodos Get
	public String getCpfCliente() {
		return cpfCliente;
	}
	public String getNomeCliente() {
		return nomeCliente;
	}
	public String getEmailCliente() {
		return emailCliente;
	}
	public String getTelefoneCliente() {
		return telefoneCliente;
	}
	public String getSenhaCliente() {
		return senhaCliente;
	}
	
	//Metodos Set
	public void setCpfCliente(String cpfCliente) {
		this.cpfCliente = cpfCliente;
	}
	public void setNomeCliente(String nomeCliente) {
		this.nomeCliente = nomeCliente;
	}
	public void setEmailCliente(String emailCliente) {
		this.emailCliente = emailCliente;
	}
	public void setTelefoneCliente(String telefoneCliente) {
		this.telefoneCliente = telefoneCliente;
	}
	public void setSenhaCliente(String senhaCliente) {
		this.senhaCliente = senhaCliente;
	}
	

	
	

	
}
