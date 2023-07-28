<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <jsp:include page="../../layouts/head.jsp"/>
</head>
<body>
<jsp:include page="../../layouts/navbar.jsp"/>
<%-- chingadera de crear foro --%>
<div class="modal fade" id="crearForo" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
     aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <div>
                    <div class="row">
                        <h3>¿A quienes quieres unir hoy?</h3>
                    </div>

                </div>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="row">
                    <h5 class="modal-title" id="datos">Crea tu foro!</h5>
                </div>
                <form id="registrer" action="/api/auth" class="needs-validation"
                      novalidate method="post">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" name="nombre" id="nombre"
                               placeholder="Foro para platicar sobre los ejemplos ^^ " required>
                        <label for="nombre">Nombre del foro</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                    </div>
                    <div class="form-floating mb-1">
                        <input type="text" name="categoria" class="form-control" id="categoria"
                               placeholder="En que lo puedes asociar?" required>
                        <label for="categoria">Ingresa la categoria</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                    <div class="form-floating mb-1">
                        <input type="text" name="descripcion" class="form-control" id="descripcion"
                               placeholder="De que tratará tu foro?" required>
                        <label for="descripcion">Ingresa la descripcion</label>
                        <div class="invalid-feedback text-start">
                            Campo obligatorio
                        </div>
                        <div class="form-group mb-3">
                        </div>
                    </div>

                </form>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary">Solicitar la creación del foro</button>
            </div>
        </div>
    </div>
</div>




<jsp:include page="../../layouts/footer.jsp"/>
    <script>
        const agregarB = document.getElementById("agregar");
        const form = document.getElementById("pokemon-form");
        (function () {
            agregarB.addEventListener("click",function (event){
                console.log(form.checkValidity());

                if(!form.checkValidity()){
                    event.preventDefault();
                    event.stopPropagation();
                }
                form.classList.add("was-validated")
            }, false);

        })();
    </script>

</body>
</html>