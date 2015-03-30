
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
        <title>LIST</title>
    </head>
    <body>
        <a href="${pageContext.request.contextPath}/add">Tambah</a>
        <h1>Semua Daftar</h1>
        <div>
            <c:choose>
                <c:when test="${fn:length(listIP)>0}">
                    <table id="records">
                        <thead>
                            <tr>
                                <th>Edit</th>
                                <th>Delete</th>
                                <th>No.RM</th>
                                <th>Nama Lengkap</th>
                                <th>Tempat Lahir</th>
                                <th>Tanggal Lahir</th>
                                <th>Jenis Kelamin</th>
                                <th>Gol. Darah</th>
                                <th>Usia</th>
                                <th>No. KTP</th>
                                <th>Alamat</th>
                                <th>Pekerjaan</th>
                                <th>Status Menikah</th>
                                <th>Agama</th>
                                <th>No. Telp/HP</th>c
                                <th>Keluarga</th>
                                <th>Nama Keluarga</th>
                                <th>Pendidikan</th>
                            </tr>
                            
                            <c:forEach items="${listIP}" var="lip">
                                <tr>
                                    <td><a href="<c:url value="/edit/${lip.id}"/>">EDIT</a>
                                    <td><a href="<c:url value="/delete/${lip.id}"/>">DELETE</td>
                                    <td><c:out value="${lip.noRM}"></c:out></td>
                                    <td><c:out value="${lip.nmPasien}"></c:out></td>
                                    <td><c:out value="${lip.tmpLahir}"></c:out></td>
                                    <td><c:out value="${lip.tglLahir}"></c:out></td>
                                    <td><c:out value="${lip.jk}"></c:out></td>
                                    <td><c:out value="${lip.goldar}"></c:out></td>
                                    <td><c:out value="${lip.usia}"></c:out></td>
                                    <td><c:out value="${lip.noKTP}"></c:out></td>
                                    <td><c:out value="${lip.alamat}"></c:out></td>
                                    <td><c:out value="${lip.pekerjaan}"></c:out></td>
                                    <td><c:out value="${lip.sttsNikah}"></c:out></td>
                                    <td><c:out value="${lip.agama}"></c:out></td>
                                    <td><c:out value="${lip.noTelp}"></c:out></td>
                                    <td><c:out value="${lip.keluarga}"></c:out></td>
                                    <td><c:out value="${lip.nmKeluarga}"></c:out></td>
                                    <td><c:out value="${lip.pnd}"></c:out></td>
                                </tr>
                            </c:forEach>
                        </thead>
                    </table>
                </c:when>
                <c:otherwise>
                    <label>Sorry! No Record to Display</label>
                </c:otherwise>
            </c:choose>
        </div>
    </body>
</html>
