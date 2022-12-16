<?php
$id_panitia = $this->session->userdata('id_panitia');
$q = $this->db->query("SELECT * FROM tb_panitia WHERE id_panitia='$id_panitia'");
$c = $q->row_array();
$op = $c['nama_panitia'];
?>
<aside class="main-sidebar">
  <!-- sidebar: style can be found in sidebar.less -->
  <section class="sidebar">

    <!-- /.search form -->
    <!-- sidebar menu: : style can be found in sidebar.less -->
    <ul class="sidebar-menu">
      <li class="header">Menu Utama</li>
      <li class="active">
        <a href="<?php echo base_url() . 'panitia/dashboard' ?>">
          <i class="fa fa-home"></i> <span>Dashboard</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>



      <li>
        <a href="<?php echo base_url() . 'panitia/kasus' ?>">
          <i class="fa fa-users"></i> <span>Kasus</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>
      <li>
        <a href="<?php echo base_url() . 'panitia/alternatif' ?>">
          <i class="fa fa-users"></i> <span>Alternatif</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>

      <li>
        <a href="<?php echo base_url() . 'panitia/kreteria' ?>">
          <i class="fa fa-users"></i> <span>Kreteria </span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>
      <li>
        <a href="<?php echo base_url() . 'panitia/atribut' ?>">
          <i class="fa fa-users"></i> <span>Atribut</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>
      <li>
        <a href="<?php echo base_url() . 'panitia/hasilsaw' ?>">
          <i class="fa fa-users"></i> <span>Hasil Metode SAW</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>
      <li>
        <a href="<?php echo base_url() . 'panitia/hasilwp' ?>">
          <i class="fa fa-users"></i> <span>Hasil Metode WP</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>
      <li>
        <a href="http://localhost/tugas-spk2/ahp/">
          <i class="fa fa-users"></i> <span>Hasil Metode AHP</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>




      <li>
        <a href="<?php echo base_url() . 'panitia/login/logout' ?>">
          <i class="fa fa-sign-out"></i> <span>Keluar</span>
          <span class="pull-right-container">
            <small class="label pull-right"></small>
          </span>
        </a>
      </li>


    </ul>
  </section>
  <!-- /.sidebar -->
</aside>