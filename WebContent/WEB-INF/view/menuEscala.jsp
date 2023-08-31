
<%@page contentType="text/html"%>
<%@page pageEncoding="iso-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://unpkg.com/feather-icons"></script>
</head>



	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
    
    </div>
  </html>  

