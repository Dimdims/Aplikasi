<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Edit Identitas Pasien</title>
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
        <h1>Edit</h1>
        <form:form modelAttribute="identitasPasien" action="${pageContext.request.contextPath}/edit" method="post">
            <table>
                <form:hidden path="id" />
                <tr>
                    <td>No. RM</td>
                    <td>:</td>
                    <td><form:input path="noRM" value="${identitasPasien.noRM}" /></td>
                </tr>
                
                <tr>
                    <td>Nama Pasien</td>
                    <td>:</td>
                    <td><form:input path="nmPasien" value="${identitasPasien.nmPasien}"/></td>
                </tr>
                
                <tr>
                    <td>Tempat Lahir</td>
                    <td>:</td>
                    <td><form:input path="tmpLahir" value="${identitasPasien.tmpLahir}"/></td>
                </tr>
                <tr>
                    <td>Tanggal Lahir</td>
                    <td>:</td>
                    <td><form:input path="tglLahir" value="${identitasPasien.tglLahir}"/></td>
                </tr>
                <tr>
                    <td>Jenis Kelamin</td>
                    <td>:</td>
                    <td><form:input path="jk" value="${identitasPasien.jk}"/></td>
                </tr>
                <tr>
                    <td>Gol. Darah</td>
                    <td>:</td>
                    <td><form:input path="goldar" value="${identitasPasien.goldar}"/></td>
                </tr>
                <tr>
                    <td>Usia</td>
                    <td>:</td>
                    <td><form:input path="usia" value="${identitasPasien.usia}"/></td>
                </tr>
                <tr>
                    <td>No. KTP</td>
                    <td>:</td>
                    <td><form:input path="noKTP" value="${identitasPasien.noKTP}"/></td>
                </tr>
                <tr>
                    <td>Alamat</td>
                    <td>:</td>
                    <td><form:input path="alamat" value="${identitasPasien.alamat}"/></td>
                </tr>
                <tr>
                    <td>Status Menikah</td>
                    <td>:</td>
                    <td><form:input path="sttsNikah" value="${identitasPasien.sttsNikah}"/></td>
                </tr>
                <tr>
                    <td>Pekerjaan</td>
                    <td>:</td>
                    <td><form:input path="pekerjaan" value="${identitasPasien.pekerjaan}"/></td>
                </tr>
                <tr>
                    <td>Agama</td>
                    <td>:</td>
                    <td><form:input path="agama" value="${identitasPasien.agama}"/></td>
                </tr>
                <tr>
                    <td>No. Telp/HP</td>
                    <td>:</td>
                    <td><form:input path="noTelp" value="${identitasPasien.noTelp}"/></td>
                </tr>
                <tr>
                    <td>Keluarga</td>
                    <td>:</td>
                    <td><form:input path="keluarga" value="${identitasPasien.keluarga}" /></td>
                </tr>
                <tr>
                    <td>Nama Keluarga</td>
                    <td>:</td>
                    <td><form:input path="nmKeluarga" value="${identitasPasien.nmKeluarga}"/></td>
                </tr>
                <tr>
                    <td>Pendidikan</td>
                    <td>:</td>
                    <td><form:input path="pnd" value="${identitasPasien.pnd}"/></td>
                </tr>
                <tr>
                    <td><input type="submit" value="Simpan" /></td>
                </tr>
            </table>
    </form:form>
    </body>
</html>