<!--Counter Inbox-->

<header class="main-header">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">

  <!-- Logo -->
  <a href="index.php" class="logo">
    <!-- mini logo for sidebar mini 50x50 pixels -->
    <span class="logo-mini">SPK</span>
    <!-- logo for regular state and mobile devices -->
    <span class="logo-lg">SPK-MTI</span>
  </a>

  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top">
    <!-- Sidebar toggle button-->
    <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
      <span class="sr-only">Toggle navigation</span>
    </a>
    <!-- Navbar Right Menu -->
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- Messages: style can be found in dropdown.less-->
        <li class="dropdown messages-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <i class="fa fa-envelope-o"></i>
            <span class="label label-success"></span>
          </a>
          <ul class="dropdown-menu">
            <li class="header">Anda memiliki pesan</li>
            <li>
              <!-- inner menu: contains the actual data -->
              <ul class="menu">

                <li>
                  <!-- start message -->
                  <a href="<?php echo base_url() . 'panitia/pengumuman' ?>">
                    <div class="pull-left">
                      <img src="<?php echo base_url() . 'assets/images/user_blank.png' ?>" class="img-circle" alt="User Image">
                    </div>
                    <h4>

                      <small><i class="fa fa-clock-o"></i> </small>
                    </h4>
                    <p></p>
                  </a>
                </li>
                <!-- end message -->

              </ul>
            </li>
            <li class="footer"><a href="<?php echo base_url() . 'panitia/pengumuman' ?>">Rekapitulasi Proposal</a></li>
          </ul>
        </li>

        <?php
        $id_panitia = $this->session->userdata('id_panitia');
        $q = $this->db->query("SELECT * FROM tb_panitia WHERE id_panitia='$id_panitia'");
        $c = $q->row_array();
        ?>
        <li class="dropdown user user-menu">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">
            <img src="<?php echo base_url() . 'assets/images/' . $c['foto_panitia']; ?>" class="user-image" alt="">
            <span class="hidden-xs"><?php echo $c['nama_panitia']; ?></span>
          </a>
          <ul class="dropdown-menu">
            <!-- User image -->
            <li class="user-header">
              <img src="<?php echo base_url() . 'assets/images/' . $c['foto_panitia']; ?>" class="img-circle" alt="">

              <p>
                <?php echo $c['nama_panitia']; ?>


              </p>
            </li>
            <!-- Menu Body -->

            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-right">
                <a href="<?php echo base_url() . 'panitia/login/logout' ?>" class="btn btn-default btn-flat">Sign out</a>
              </div>
            </li>
          </ul>
        </li>
        <!-- Control Sidebar Toggle Button -->
        <li>
          <a href="<?php echo base_url() . '' ?>" target="_blank" title="Lihat Website"><i class="fa fa-globe"></i></a>
        </li>
      </ul>
    </div>

  </nav>
</header>