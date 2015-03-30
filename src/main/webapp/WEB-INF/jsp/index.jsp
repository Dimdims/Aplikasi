
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Daftar Pasien</title>
            
            <style type="text/css">
                h1{
                    font-family: sans-serif;
                    border-bottom: 3px solid #abcae8;
                    color: #4d7ba7;
                }
                
                #table{
                    border-collapse: collapse;
                    color: #4d7ba7;
                    font-family: arial;
                }
                
                #table th{
                    padding: 10px;
                    border-bottom: 2px solid #4d7ba7;
                    text-transform: uppercase;
                    font-weight: bold;
                }
                
                #table td{
                    padding: 10px;
                    border-bottom: 1px solid #4d7ba7;
                    padding-right: 25px
                }
                
                #table a{
                    text-decoration: none;
                    color: #4d7ba7;
                }
                
                #buttonTambah{
                    margin-bottom: 10px;
                }
                
                #buttonTambah a{
                    text-decoration: none;
                    color: #ffffff;
                    font-family: arial;
                    background: #abcae8;
                    border: 1px solid antiquewhite;
                    padding: 5px;
                    border-radius: 8px;
                }
            </style>
	</head>
	
	<body>
		<h1>Daftar Identitas Pasien</h1>
                <div id="buttonTambah">
                    <a href="tambah.jsp">Tambah</a>
                </div>
                
                <table id="table">
                    <thead>
                        <tr>
                            <th>id</th>        
                            <th>No. RM</th>
                            <th>Nama Pasien</th>
                            <th>Tempat Lahir</th>
                            <th>Tanggal Lahir</th>
                            <th>Jenis Kelamin</th>
                            <th>Gol. Darah</th>
                            <th>Usia</th>
                            <th>No. KTP</th>
                            <th>Alamat</th>
                            <th>Status Menikah</th>
                            <th>Pekerjaan</th>
                            <th>Agama</th>
                            <th>No. Telp/HP</th>
                            <th>Keluarga</th>
                            <th>Nama Keluarga</th>
                            <th>Pendidikan</th>
                            <th>Opsi</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                        <c:forEach items="${idPasien}" var="identitasPasien">
                            <tr>
                                <td><c:out value="${identitasPasien.id}"/></td>
                                <td><c:out value="${identitasPasien.noRM}"/></td>
                                <td><c:out value="${identitasPasien.nmPasien}"/></td>
                                <td><c:out value="${identitasPasien.tmpLahir}"/></td>
                                <td><c:out value="${identitasPasien.tglLahir}"/></td>
                                <td><c:out value="${identitasPasien.jk}"/></td>
                                <td><c:out value="${identitasPasien.goldar}"/></td>
                                <td><c:out value="${identitasPasien.usia}"/></td>
                                <td><c:out value="${identitasPasien.noKTP}"/></td>
                                <td><c:out value="${identitasPasien.alamat}"/></td>
                                <td><c:out value="${identitasPasien.pekerjaan}"/></td>
                                <td><c:out value="${identitasPasien.sttsNikah}"/></td>
                                <td><c:out value="${identitasPasien.agama}"/></td>
                                <td><c:out value="${identitasPasien.noTelp}"/></td>
                                <td><c:out value="${identitasPasien.keluarga}"/></td>
                                <td><c:out value="${identitasPasien.nmKeluarga}"/></td>
                                <td><c:out value="${identitasPasien.pnd}"/></td>
                                <td><a href="${pageContext.request.contextPath}/edit/${identitasPasien.id}">Edit</a> | 
                                    <a href="${pageContext.request.contextPath}/delete/${identitasPasien.id}">Delete</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
	</body>
</html>
