
package Modelo;

public class Usuario {
    private int idusuario;
    private String nombres;
    private String apellidos;
    private String telefono;
    private String numeroDocumento;
    private String tipoDocumento;
    private String cargo;
    private String direcResidencia;
    
    public Usuario() {
    }

    public Usuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public Usuario(String nombres) {
        this.nombres = nombres;
    }

    public Usuario(int idusuario, String nombres, String apellidos, String telefono, String numeroDocumento, String tipoDocumento, String cargo, String direcResidencia) {
        this.idusuario = idusuario;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.telefono = telefono;
        this.numeroDocumento = numeroDocumento;
        this.tipoDocumento = tipoDocumento;
        this.cargo = cargo;
        this.direcResidencia = direcResidencia;
    }

    public int getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(int idusuario) {
        this.idusuario = idusuario;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getNumeroDocumento() {
        return numeroDocumento;
    }

    public void setNumeroDocumento(String numeroDocumento) {
        this.numeroDocumento = numeroDocumento;
    }

    public String getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(String tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getDirecResidencia() {
        return direcResidencia;
    }

    public void setDirecResidencia(String direcResidencia) {
        this.direcResidencia = direcResidencia;
    }

    @Override
    public String toString() {
        return "Usuario{" + "idusuario=" + idusuario + ", nombres=" + nombres + ", apellidos=" + apellidos + ", telefono=" + telefono + ", numeroDocumento=" + numeroDocumento + ", tipoDocumento=" + tipoDocumento + ", cargo=" + cargo + ", direcResidencia=" + direcResidencia + '}';
    }
    
}
