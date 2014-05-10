<!doctype html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Gestão de Classe</title>

        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/datepicker.css">
        <link rel="stylesheet" type="text/css" href="css/bootstrap-combobox.css">

        <style type="text/css">
            .menu {
            }

            .menu li {float: left;
                      list-style-type: none;
                      width: 200px;
            }

            .menu a {padding: 8px;
                     background-color: gray;
                     font-family: Arial;
                     font-size: 17px;
                     text-align: center;
                     text-decoration: none; 
                     color: white;
            }

            .menu a {display: block;
            }

            .menu a:hover {background-color: silver;
            }

            .clear {clear: both;
            }

            {
                margin:0px;
                padding:0px;
            }

            /*
            div{
              border:1px dashed #f00;
            }
            */

            #menu{
                height:100px;
            }
            #content {
                float:center;
                clear:none;
                width: 100%;
            }

            #divBody{
                display:table;
                margin:33px auto;
            }

            .default-title{
                margin-left:400px;
                margin-top:20px;

            }




        </style>

        <script language="javascript">

            function loadPage(pageName) {

                $("#content").load(pageName);

            }

        </script>

    </head>

    <body>

        <div id="divBody" style="width:900px">
            <div>

                <nav class="navbar navbar-default" role="navigation">
                    <div class="container-fluid">
                        <!-- Brand and toggle get grouped for better mobile display -->
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroCurso.html');">Curso</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroTurma.html');">Turma</a>
                            <a class="navbar-brand" href="disciplina.jsp">Disciplina</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroProfessor.html');">Professor</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroAluno.html');">Aluno</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroSala.html');">Sala</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroAula.html');">Aula</a>
                            <a class="navbar-brand" href="javascript:loadPage('cadastroFrequencia.html');">Frequência</a>
                        </div>
                    </div><!-- /.container-fluid -->
                </nav>
            </div>

            <div id="content"></div>
        </div>


        <script language="javascript" src="js/jquery.min.js"></script>
        <script language="javascript" src="js/bootstrap.js"></script>
        <script language="javascript" src="js/bootstrap-datepicker.js"></script>
        <script language="javascript" src="js/bootstrap-combobox.js"></script>        
        <script type="text/javascript">
            $(document).ready(function() {
                $('.combobox').combobox();
            });
        </script>
    </body>
</html>
