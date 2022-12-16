<?php
class Cetakwp extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_cetakwp');
		//	$this->load->model('m_pengguna');
		//$this->load->model('m_cabor');
		//$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_cetakwp->get_kreteria();
		$x['data_atribut'] = $this->m_cetakwp->get_atribut();
		$x['data_atributwp'] = $this->m_cetakwp->get_atributwp();
		$x['data_pembagi'] = $this->m_cetakwp->get_pembagi();
		$x['data_normalisasi'] = $this->m_cetakwp->get_normaliasi_atribut();
		$x['data_hitungsaw'] = $this->m_cetakwp->get_hitungsaw();
		$x['data_hasilwp'] = $this->m_cetakwp->get_hasilwp();
		$x['data_si'] = $this->m_cetakwp->get_si();
		$x['data_alternatif'] = $this->m_cetakwp->get_alternatif();



		$x['totbobot'] = $this->m_cetakwp->get_total();



		$this->load->view('panitia/v_cetakwp', $x);
	}


	function hapus_pelatih()
	{
		$kode = $this->input->post('kode');
		$gambar = $this->input->post('gambar');
		$path = './assets/images/' . $gambar;
		//	unlink($path);
		$this->m_pelatih->hapus_pelatih($kode);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('admin/pelatih');
	}
}
