<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Campeones.aspx.cs" Inherits="LolChampionsWeb.Campeones" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container-fluid">
                <a class="navbar-brand" href="Default.aspx">Lol Champions</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-link active" aria-current="page" href="Default.aspx">Home</a>
                        <a class="nav-link" href="Campeones.aspx">Campeones</a>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <main class="container-fluid">
        <form id="form1" runat="server">
            <div class="row">
                <%
                    String[] campeones = { "Lux", "Teemo", "Yi", "Katarina", "Ekko" };
                    String[] imagenes = {"https://www.esportmaniacos.com/wp-content/uploads/2021/01/lux-parche-10.8-portada-1.jpg"
                    ,"https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Teemo_0.jpg"
                    ,"https://static.wikia.nocookie.net/leagueoflegends/images/7/77/Maestro_Yi_OriginalCentered.jpg/revision/latest?cb=20201102231407&path-prefix=es"
                    ,"https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Katarina_0.jpg"
                    ,"https://ddragon.leagueoflegends.com/cdn/img/champion/splash/Ekko_19.jpg"};
                    for (int i=0; i < campeones.Length; ++i){
                        %>
                        <div class="col-12 col-md-4">

                            <div class="card mb-3">
                                <div class="card-header">
                                    <h5><%=campeones[i] %></h5>
                                </div>
                                <div class="card-body">
                                    <img src="<%=imagenes[i] %>" class="img-fluid"/>
                                </div>
                            </div>


                        </div>

                <%
                    }

                    %>
            </div>

        </form>
    </main>
    <footer class="bg-dark text-white mt-5 pt-5 pb-5 container-fluid">
        <div class="row">
            <div class="col-12">
                <h5>Ante cualquier duda contactarse con: <a href="mailto://niñorata@gmail.com">Niño Rata</a></h5>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
</body>
</html>
