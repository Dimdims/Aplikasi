

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Tambah</title>
        <style type="text/css">
            h1{
               font-family: sans-serif;
               border-bottom: 3px solid #abcae8;
               color:#4d7ba7;
            }
            
            table{
                border:2px solid #4d7ba7;
                color: #4d7ba7;
                font-family: arial;
                padding: 5px;
            }
            
            table td{
                padding: 5px;
                padding-bottom: 10px;
            }
            
            table input{
                border:1px solid #4d7ba7;
                padding: 3px;
            }
        </style>
    </head>
    <body>
        <h1>Input Identitas Pasien</h1>
        <form:form modelAttribute="identitasPasien" action="${pageContext.request.contextPath}/tambah" method="post">
            <table>
                <tr>
                    <td>No. RM</td>
                    <td>:</td>
                    <td><form:input path="noRM" /></td>
                </tr>
                <tr>
                    <td>Nama Pasien</td>
                    <td>:</td>
                    <td><form:input path="nmPasien" /></td>
                </tr>
                <tr>
                    <td>Tempat Lahir</td>
                    <td>:</td>
                    <td><form:input path="tmpLahir" /></td>
                </tr>
                <tr>
                    <td>Tanggal Lahir</td>
                    <td>:</td>
                    <td><form:input path="tglLahir" /></td>
                </tr>
                <tr>
                    <td>Jenis Kelamin</td>
                    <td>:</td>
                    <td><form:input path="jk" /></td>
                </tr>
                <tr>
                    <td>Gol. Darah</td>
                    <td>:</td>
                    <td><form:input path="goldar" /></td>
                </tr>
                <tr>
                    <td>Usia</td>
                    <td>:</td>
                    <td><form:input path="usia" /></td>
                </tr>
                <tr>
                    <td>No. KTP</td>
                    <td>:</td>
                    <td><form:input path="noKTP" /></td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td><form:input path="alamat" /></td>
                </tr>
                <tr>
                    <td>Status Menikaha</td>
                    <td>:</td>
                    <td><form:input path="sttsNikah" /></td>
                </tr>
                <tr>
                    <td>Pekerjaan</td>
                    <td>:</td>
                    <td><form:input path="pekerjaan" /></td>
                </tr>
                <tr>
                    <td>Agama</td>
                    <td>:</td>
                    <td><form:input path="agama" /></td>
                </tr>
                <tr>
                    <td>No. Telp/HP</td>
                    <td>:</td>
                    <td><form:input path="noTelp" /></td>
                </tr>
                <tr>
                    <td>Keluarga</td>
                    <td>:</td>
                    <td><form:input path="keluarga" /></td>
                </tr>
                <tr>
                    <td>Nama Keluarga</td>
                    <td>:</td>
                    <td><form:input path="nmKeluarga" /></td>
                </tr>
                <tr>
                    <td>Pendidikan</td>
                    <td>:</td>
                    <td><form:input path="pnd" /></td>
                </tr>
                
                <tr>
                    <td><input type="submit" value="Simpan" /></td>
                </tr>
            </table>
    </form:form>
    </body>
</html>
