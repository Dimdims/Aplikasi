<%-- 
    Document   : tambah
    Created on : Mar 26, 2015, 11:45:54 AM
    Author     : 1110100890
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page session="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah Data</title>
    </head>
    <body>
        <form:form commandName="ip" action="/save" method="post">
            <table>
                <tr>
                    <td><label>No. Rekam Medis: </label></td>
                    <td><form:hidden path="id"/> <form:input path="noRM"/></td>
                </tr>
                <tr>
                    <td><label>Nama Lengkap: </label></td>
                    <td><form:input path="nmPasien"/></td>
                </tr>
                <tr>
                    <td><label>Tempat Lahir: </label></td>
                    <td><form:input path="tmpLahir"/></td>
                </tr>
                <tr>
                    <td><label>Tanggal Lahir: </label></td>
                    <td><form:input path="tglLahir"/></td>
                </tr>
                <tr>
                    <td><label>Jenis Kelamin: </label></td>
                    <td><form:radiobutton path="jk"/></td>
                </tr>
                <tr>
                    <td><label>Gol. Darah: </label></td>
                    <td><form:radiobutton path="goldar"/></td>
                </tr>
                <tr>
                    <td><label>Usia: </label></td>
                    <td><form:input path="usia"/></td>
                </tr>
                <tr>
                    <td><label>No. KTP: </label></td>
                    <td><form:input path="noKTP"/></td>
                </tr>
                <tr>
                    <td><label>Alamat: </label></td>
                    <td><form:input path="alamat"/></td>
                </tr>
                <tr>
                    <td><label>Pekerjaan: </label></td>
                    <td><form:input path="pekerjaan"/></td>
                </tr>
                <tr>
                    <td><label>Status Menikah: </label></td>
                    <td><form:select path="tmpLahir"/></td>
                </tr>
                <tr>
                    <td><label>Agama: </label></td>
                    <td><form:input path="agama"/></td>
                </tr>
                <tr>
                    <td><label>No. Telp/HP: </label></td>
                    <td><form:input path="noTelp"/></td>
                </tr>
                <tr>
                    <td><label>Keluarga: </label></td>
                    <td><form:select path="keluarga"/></td>
                </tr>
                <tr>
                    <td><label>Nama Keluarga: </label></td>
                    <td><form:input path="nmKeluarga"/></td>
                </tr>
                <tr>
                    <td><label>Pendidikan: </label></td>
                    <td><form:select path="pnd"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="save">
                    </td>
                </tr>
            </table>
        </form:form>
    </body>
</html>
