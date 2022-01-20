<?php

// phpinfo();
include('connection.php');
include('header.php');

?>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">PHP CRUD using MySQLi Database</a>
        </div>

        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active">
                    <a href="index.php"><i class="fa fa-fw fa-dashboard"></i> Dashboard</a>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">

        <div class="container-fluid">

            <!-- Page Heading -->
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">
                        PHP CRUD With Datatables Using Twitter Bootstrap
                    </h1>

                </div>
            </div>
            <!-- /.row -->


            <div class="col-lg-12">
                <h2>List of Records</h2> <a href="add.php?action=add" type="button" class="btn btn-xs btn-info">Add
                    New</a>

                <div class="table-responsive">
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                        <tr>
                            <th>Bestel_id</th>
                            <th>Res_id</th>
                            <th>Tafe;</th>
                            <th>Datum</th>
                            <th>Tijd</th>
                            <th>Menu/drank</th>
                            <th>Aantal</th>
                            <th>prijs</th>
                            <th>regel totaal</th>
                            <th>Options</th>
                        </tr>
                        </thead>
                        <tbody>

                        <?php
                        $query = 'SELECT * FROM peopledb.bestelling as b join peopledb.menuitem as m on m.menuitemcode=b.menuitemcode where b.reservering_id=10';
                        /*                    $result = mysqli_query($db, $query) or die (mysqli_error($db));

                                                while ($row = mysqli_fetch_assoc($result)) {*/
                        $result = $conn->prepare($query);
                        $result->execute();
                        $totaal = 0;
                        while ($row = $result->fetch(pdo::FETCH_ASSOC)) {

                            echo '<tr>';
                            echo '<td>' . $row['bestelling_id'] . '</td>';
                            echo '<td>' . $row['reservering_id'] . '</td>';
                            echo '<td>' . $row['tafel'] . '</td>';
                            echo '<td>' . $row['datum'] . '</td>';
                            echo '<td>' . $row['tijd'] . '</td>';
                            echo '<td>' . $row['menuitemnaam'] . '</td>';  // deze komt uit andere tabel.
                            echo '<td>' . $row['aantal'] . '</td>';
                            echo '<td>' . $row['prijs'] . '</td>';
                            echo '<td>' . ($row['aantal']*$row['prijs']) .'</td>';
                            $totaal += ($row['aantal']*$row['prijs']);
                            echo '<td> <a type="button" class="btn btn-xs btn-info" href="searchfrm.php?action=edit & id=' . $row['people_id'] . '" > SEARCH </a> ';
                            echo ' <a  type="button" class="btn btn-xs btn-warning" href="edit.php?action=edit & id=' . $row['people_id'] . '"> EDIT </a> ';
                            echo ' <a  type="button" class="btn btn-xs btn-danger" href="del.php?type=people&delete & id=' . $row['people_id'] . '">DELETE </a> </td>';
                            echo '</tr> ';
                        }

                        echo '
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Totale</td>
                            <td>Schade</td>
                            <td><?php echo $totaal; ?></td>';
                        ?>
                            <td> TIKKIE????</td>
                        </tr>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="js/plugins/morris/raphael.min.js"></script>
<script src="js/plugins/morris/morris.min.js"></script>
<script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
