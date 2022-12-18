<?php
$this->load->helper(array('form', 'url'));
$this->load->library('form_validation');

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,500,700&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">

    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bs-custom-file-input/dist/bs-custom-file-input.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>


    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Registrasi DBON</title>
    <link rel="shorcut icon" href="<?php echo base_url() . 'theme/images/logo-dark.png' ?>">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/bootstrap.min.css' ?>">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/font-awesome.min.css' ?>">
    <!-- Simple Line Font -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/simple-line-icons.css' ?>">
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick.css' ?>">
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/slick-theme.css' ?>">
    <link rel="stylesheet" href="<?php echo base_url() . 'theme/css/owl.carousel.min.css' ?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url() . 'theme/css/style.css' ?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/bootstrap_datepicker/css/datepicker.css'); ?>" rel="stylesheet">






    <style type="text/css">
        <!--
        .style2 {
            font-weight: bold
        }
        -->
    </style>
</head>

<body>
    <!--============================= HEADER =============================-->

    <!--//END HEADER -->
    <!--//END ABOUT IMAGE -->

    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="rounded border my-3 bg-white py-3">
                    <form action="<?php echo base_url() . 'panitia/registrasi/inputpeserta' ?>" method="post" enctype="multipart/form-data">

                        <?php echo validation_errors(); ?>
                        <?php echo $this->session->flashdata('succses'); ?>
                        <?php echo $this->session->flashdata('msg'); ?>

                        <h4 align="center" class="px-4 text-muted style1 style2 "><strong>PENDAFTARAN </strong></h4>

                        <p class="px-4 text-muted style1 style2">

                        </p>
                        <hr>

                        <div class="px-4">

                            <div class="form-row">
                                <div class="form-group col-md-12">
                                    <label for="nik">Nama Lengkap </label>
                                    <input type="text" class="form-control" id="nama" name="nama" required>
                                </div>


                            </div>



                            <div class="form-row">

                                <div class="form-group col-md-12	">
                                    <label for="nama_sekolah">Password</label>
                                    <input type="text" class="form-control" id="password1" name="password1" required>
                                </div>
                                <div class="form-group col-md-12	">
                                    <label for="nama_sekolah">Ulangi Password</label>
                                    <input type="text" class="form-control" id="password2" name="password2" required>
                                </div>
                            </div>

                            <div class="form-row">

                                <div class="form-group col-md-12">
                                    <label for="email">Email</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="contoh@gmail.com" required>
                                </div>

                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-2">

                                    <button type=" submit" class="btn btn-danger">Kirim <i class="fas fa-angle-double-down"></i></button>

                                </div>
                                <div class="form-group col-md-10">


                                    <label class="form-check-label">
                                        <input class="form-check-input" onClick="alert('periksa kembali data dengan benar sebelum anda menyimpan.')" type="checkbox" required> centang disini untuk setuju | <font color="#FF0000">periksa kembali data dengan benar sebelum anda menyimpan.</font>
                                    </label>
                                </div>

                            </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>

    <!--============================= WELCOME TITLE =============================-->
    <!--//END WELCOME TITLE -->
    <!--============================= DETAILED CHART =============================-->

    <!--//END DETAILED CHART -->

    <!--============================= FOOTER =============================-->



    <!--//END FOOTER -->
    <!-- jQuery, Bootstrap JS. -->




    <script src="<?php echo base_url() . 'theme/js/jquery.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/tether.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/bootstrap.min.js' ?>"></script>
    <!-- Plugins -->
    <script src="<?php echo base_url() . 'theme/js/slick.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/waypoints.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/counterup.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/owl.carousel.min.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/validate.js' ?>"></script>
    <script src="<?php echo base_url() . 'theme/js/tweetie.min.js' ?>"></script>
    <!-- Subscribe -->
    <script src="<?php echo base_url() . 'theme/js/subscribe.js' ?>"></script>
    <!-- Script JS -->
    <script src="<?php echo base_url() . 'theme/js/script.js' ?>"></script>
    <script src="<?php echo base_url() . 'assets/bootstrap_datepicker/js/bootstrap-datepicker.js' ?>"></script>





</body>

</html>