<?php
class Cetaksaw extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_cetaksaw');
		//	$this->load->model('m_pengguna');
		//$this->load->model('m_cabor');
		//$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_cetaksaw->get_kreteria();
		$x['data_atribut'] = $this->m_cetaksaw->get_atribut();
		$x['data_pembagi'] = $this->m_cetaksaw->get_pembagi();
		$x['data_normalisasi'] = $this->m_cetaksaw->get_normaliasi_atribut();
		$x['data_hitungsaw'] = $this->m_cetaksaw->get_hitungsaw();
		$x['data_hasilsaw'] = $this->m_cetaksaw->get_hasilsaw();

		$x['totbobot'] = $this->m_cetaksaw->get_total();



		$this->load->view('panitia/v_cetaksaw', $x);
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
