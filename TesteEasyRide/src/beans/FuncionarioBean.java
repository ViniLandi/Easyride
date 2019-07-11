package beans;

public class FuncionarioBean {
	
	//Atributos
	private String cpfFuncionario;
	private String nomeFuncionario;
	private String emailFuncionario;
	private String telefoneFuncionario;
	private String senhaFuncionario;
	private long cnhFuncionario;
	
	//Construtores
	public FuncionarioBean(String cpfFuncionario, String nomeFuncionario, String emailFuncionario, String telefoneFuncionario, long cnhFuncionario, String senhaFuncionario) {
		this.cpfFuncionario = cpfFuncionario;
		this.nomeFuncionario = nomeFuncionario;
		this.emailFuncionario = emailFuncionario;
		this.telefoneFuncionario = telefoneFuncionario;
		this.cnhFuncionario = cnhFuncionario;
		this.senhaFuncionario = senhaFuncionario;
	}
	
	public FuncionarioBean() {};
	
	public String getCpfFuncionario() {
		return cpfFuncionario;
	}
	public void setCpfFuncionario(String cpfFuncionario) {
		this.cpfFuncionario = cpfFuncionario;
	}
	public String getNomeFuncionario() {
		return nomeFuncionario;
	}
	public void setNomeFuncionario(String nomeFuncionario) {
		this.nomeFuncionario = nomeFuncionario;
	}
	public String getEmailFuncionario() {
		return emailFuncionario;
	}
	public void setEmailFuncionario(String emailFuncionario) {
		this.emailFuncionario = emailFuncionario;
	}

	public String getTelefoneFuncionario() {
		return telefoneFuncionario;
	}
	public void setTelefoneFuncionario(String telefoneFuncionario) {
		this.telefoneFuncionario = telefoneFuncionario;
	}
	public long getCnhFuncionario() {
		return cnhFuncionario;
	}
	public void setCnhFuncionario(long cnhFuncionario) {
		this.cnhFuncionario = cnhFuncionario;
	}

	public String getSenhaFuncionario() {
		return senhaFuncionario;
	}

	public void setSenhaFuncionario(String senhaFuncionario) {
		this.senhaFuncionario = senhaFuncionario;
	}

	
	
	

}
