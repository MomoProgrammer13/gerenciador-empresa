<%@page contentType="text/html"%>
<%@page pageEncoding="iso-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<c:import url="header.jsp" />
<style>
    #overlay {
        display: none;
        position: fixed;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
        background-color: rgba(0, 0, 0, 0.7);
        z-index: 9999;
    }

    #centeredDiv {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 2px 8px rgba(0, 0, 0, 0.15);
    }
</style>
</head>
<body class="bg-dark">
	<div class="content-wrapper">
		<div style="width: 680px; margin-left: auto; margin-right: auto;">

		</div>
		<div class="flex-column">
			<div class="card mb-3">
				<div class="flex-row" style="padding: 10px; gap: 5px">
					<i class="fa-solid fa-calendar-days" style="margin-top: 4px"></i>
					<h5>Lista Plant�es Telecom</h5>
				</div>
				<div class="flex-column">
					<div class="flex-column">
						<div class="flex-column" style="margin-top: 15px;">
							<form
								action="http://172.19.208.218:8080/controledeplantao/visitante/plantao_visitanteTelecom.adm"
								name="resultado" id="resultado">
								<input type="hidden" name="acao"
									value="plantao.PrepararCadastrarPlantaoAcao">
								<div class="flex-row" style="margin-left: 3%; gap: 20px">
									<div class="flex-row align-items-center" style="gap: 10px">
										<label for="mes" style="margin-top: 6px">Mes</label> <select
											class="form-control-round" name="mes" id="mes"
											onchange="mudarDataPlantao()">
											<option value="">Selecione...</option>
											<option value="1">Janeiro</option>
											<option value="2">Fevereiro</option>
											<option value="3">Mar�o</option>
											<option value="4">Abril</option>
											<option value="5">Maio</option>
											<option value="6">Junho</option>
											<option value="7">Julho</option>
											<option value="8" selected="">Agosto</option>
											<option value="9">Setembro</option>
											<option value="10">Outubro</option>
											<option value="11">Novembro</option>
											<option value="12">Dezembro</option>
										</select>
									</div>
									<div class="flex-row align-items-center" style="gap: 10px">
										<label for="ano" style="margin-top: 6px">Ano</label> <select
											class="form-control-round" name="ano" id="ano"
											onchange="mudarDataPlantao()">
											<option value="">Selecione...</option>
											<option value="2019">2019</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023" selected="">2023</option>
											<option value="2024">2024</option>
										</select>
									</div>
								</div>
							</form>
						</div>
						<div class="flex-column" style="margin-left: 3%">
							<form
								action="http://172.19.208.218:8080/controledeplantao/visitante/plantao_visitanteTelecom.adm"
								name="resultado">
								<div class="flex-row-center" style="padding: 20px; gap: 155px">
									<input type="hidden" name="acao"
										value="plantao.GerarRelatorioPlantaoExcelTelecomAcao">
									<input type="hidden" name="mes" id="mes" value="8"> <input
										type="hidden" name="ano" id="ano" value="2023">
									<div class="flex-row-center"
										style="gap: 20px; margin-right: 5%">
										<input type="submit" value="Gerar Excel" name="enviar2"
											class="btn-round btn-principal"> <a
											class="btn-round btn-secundario" title="Contatos"
											alt="Contatos"
											onclick="javascript:window.location= telefonesUteis()">Contatos</a>
									</div>
								</div>

								<div class="flex-column">
									<div class="flex-row justify-content-center">
										<h4 class="th-date" name="dataCalendario" id="dataCalendario">Agosto
											2023</h4>
									</div>
									<div class="flex-row-tbody bg-table">
										<div class="flex-calendar">
											<b>D</b>
										</div>
										<div class="flex-calendar">
											<b>S</b>
										</div>
										<div class="flex-calendar">
											<b>T</b>
										</div>
										<div class="flex-calendar">
											<b>Q</b>
										</div>
										<div class="flex-calendar">
											<b>Q</b>
										</div>
										<div class="flex-calendar">
											<b>S</b>
										</div>
										<div class="flex-calendar">
											<b>S</b>
										</div>
									</div>
									<div class="flex-column">
										<div class="flex-row-tbody" onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)" style="">
											<div class="flex-calendar"></div>
											<div class="flex-calendar"></div>
											<div class="flex-calendar"></div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													href="javascript:abrirDialog">26</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abrirDialog">27</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar()">28</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar()">29</a>
											</div>
										</div>
										<div class="flex-row-tbody bg-table"
											onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)">
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;823&quot;,&quot;dreszka&quot;)">30</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;839&quot;,&quot;josbatista&quot;)">31</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-color-clear" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;834&quot;,&quot;rkochanovecz&quot;)">01</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;824&quot;,&quot;ccesconetto&quot;)">02</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;838&quot;,&quot;dreszka&quot;)">03</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;832&quot;,&quot;josbatista&quot;)">04</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;840&quot;,&quot;ccesconetto&quot;)">05</a>
											</div>
										</div>
										<div class="flex-row-tbody" onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)">
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;829&quot;,&quot;josbatista&quot;)">06</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-color-clear" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;835&quot;,&quot;rkochanovecz&quot;)">07</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;827&quot;,&quot;ccesconetto&quot;)">08</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;841&quot;,&quot;dreszka&quot;)">09</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;848&quot;,&quot;josbatista&quot;)">10</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-color-clear" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;833&quot;,&quot;rkochanovecz&quot;)">11</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;842&quot;,&quot;ccesconetto&quot;)">12</a>
											</div>
										</div>
										<div class="flex-row-tbody bg-table"
											onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)">
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;851&quot;,&quot;josbatista&quot;)">13</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;843&quot;,&quot;dreszka&quot;)">14</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-color-clear" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;828&quot;,&quot;rkochanovecz&quot;)">15</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;825&quot;,&quot;ccesconetto&quot;)">16</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;844&quot;,&quot;dreszka&quot;)">17</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;831&quot;,&quot;josbatista&quot;)">18</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;845&quot;,&quot;ccesconetto&quot;)">19</a>
											</div>
										</div>
										<div class="flex-row-tbody" onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)">
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;830&quot;,&quot;josbatista&quot;)">20</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-color-clear" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;849&quot;,&quot;rkochanovecz&quot;)">21</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;846&quot;,&quot;ccesconetto&quot;)">22</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-pink-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;826&quot;,&quot;dreszka&quot;)">23</a>
											</div>
											<div class="flex-calendar">
												<a class="btn-alarme btn-orange" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;850&quot;,&quot;josbatista&quot;)">24</a>
											</div>
												<a class="btn-alarme btn-blue-dark" style="color: black"
													title="Editar o Plantonista Telecom"
													href="javascript:abreJanelaVisualizar(&quot;847&quot;,&quot;ccesconetto&quot;)">25</a>
											</div>
										<div class="flex-row-tbody bg-table"
											onmouseover="hoverTrMudar(this)"
											onmouseout="hoverTrVoltar(this)"></div>
									</div>
								</div>
							</form>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	
	
	<dialog id="myDialog">
    <div class="container">
        <!-- code here -->
        <div class="menu">
            <ul class="menu-list">
                <li class="menu-item"><button class="menu-button">25/08</button></li>
            </ul>
            <ul class="menu-list">
                <li class="menu-item"><button class="menu-button menu-button--black"><i data-feather="circle"></i> 00:00 as 06:00<i data-feather="chevron-right"></i></button>
                    <ul class="menu-sub-list">
                        <li class="menu-item"><button class="menu-button menu-button--orange">Gabriel Fanha</button></li>
                        <li class="menu-item"><button class="menu-button menu-button--purple">Elton</button></li>
                        <ul class="menu-list">
                            <li class="menu-item"><button class="menu-button menu-button--delete"><i data-feather="plus-circle"></i>Adicionar</button></li>
                        </ul>
                    </ul>
                </li>
                <li class="menu-item"><button class="menu-button menu-button--black"><i data-feather="circle"></i>06:00 as 12:00<i data-feather="chevron-right"></i></button>
                    <ul class="menu-sub-list">
                        <li class="menu-item"><button class="menu-button menu-button--orange">Gabriel Fanha</button></li>
                        <li class="menu-item"><button class="menu-button menu-button--purple">Elton</button></li>
                        <ul class="menu-list">
                            <li class="menu-item"><button class="menu-button menu-button--black"><i data-feather="circle"></i>06:00 as 12:00<i data-feather="chevron-right"></i></button>
                                <ul class="menu-list">
                                    <li class="menu-item"><button class="menu-button menu-button--delete"><i data-feather="plus-circle"></i>Adicionar</button></li>
                                </ul>
                            </li>
                        </ul>    
                    </ul>
                </li>
                <li class="menu-item"><button class="menu-button menu-button--black"><i data-feather="circle"></i>12:00 as 18:00<i data-feather="chevron-right"></i></button>
                    <ul class="menu-sub-list">
                        <li class="menu-item"><button class="menu-button menu-button--orange">Gabriel Fanha</button></li>
                        <li class="menu-item"><button class="menu-button menu-button--purple">Elton</button></li>
                        <ul class="menu-list">
                            <li class="menu-item"><button class="menu-button menu-button--delete"><i data-feather="plus-circle"></i>Adicionar</button></li>
                        </ul>
                    </ul>
                </li>
                <li class="menu-item"><button class="menu-button menu-button--black"><i data-feather="circle"></i> 18:00 as 24:00<i data-feather="chevron-right"></i></button>
                    <ul class="menu-sub-list">
                        <li class="menu-item"><button class="menu-button menu-button--orange">Gabriel Fanha</button></li>
                        <li class="menu-item"><button class="menu-button menu-button--purple">Elton</button></li>
                        <ul class="menu-list">
                            <li class="menu-item"><button class="menu-button menu-button--delete"><i data-feather="plus-circle"></i>Adicionar</button></li>
                        </ul>
                    </ul>    
                </li>
            
            </ul>
           
        </div>
        <script>
            feather.replace()
        </script>

    </div>
    
    </dialog>
	
	
	<script language="JavaScript" type="text/javascript">
		window.onload = controlarTela();
		
		
		function abrirDialog(){
			var showDialog = document.getElementById("myDialog");
			showDialog.showModal();
		}
		
		function alteraData() {
			var months = [ "Janeiro", "Fevereiro", "Mar�o", "Abril", "Maio",
					"Junho", "Julho", "Agosto", "Setembro", "Outubro",
					"Novembro", "Dezembro" ];
			var anoSelecionado = $('ano').value;
			var mesSelecionado = $('mes').value;
			var month1 = months[mesSelecionado - 1];
			document.getElementById("dataCalendario").innerHTML = month1 + ' '
					+ anoSeleciona
			var form = document.getElementById('resultado');
			form.submit();
		}

		function controlarTela() {
			//            dataAtual();
			alteraData();
			loadMensages();
		}

		function telefonesUteis() {
			link = 'plantao_visitanteDBA.adm?acao=plantao.TelefonesUteis';
			return (link);
		}
	</script>
</body>
</html>