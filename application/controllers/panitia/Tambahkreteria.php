<?php
class Tambahkreteria extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_tambahkreteria');
		$this->load->library('upload');
	}


	function index()
	{
		//$x['data']=$this->m_panitiapenerimalalu->get_panitia_status();
		$x['data'] = $this->m_tambahkreteria->get_kasus();
		$this->load->view('panitia/v_tambahkreteria', $x);
		//$this->load->view('panitia/v_tambahalternatif');
	}

	function simpan_data()
	{


		$kd_kreteria = strip_tags($this->input->post('kd_kreteria'));
		$nm_kreteria = strip_tags($this->input->post('nm_kreteria'));
		$bobot = strip_tags($this->input->post('bobot'));
		$jns_kreteria = strip_tags($this->input->post('jns_kreteria'));

		$this->m_tambahkreteria->simpan_data($kd_kreteria, $nm_kreteria, $bobot, $jns_kreteria);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('panitia/kreteria');
	}


	function hapus_media()
	{
		//	$kode=$this->input->post('kode');
		//	$album=$this->input->post('album');
		//	$gambar=$this->input->post('gambar');
		//	$path='./assets/images/'.$gambar;
		//	unlink($path);
		$id_view = $this->input->get('id_view');
		$this->m_panitiastatus->hapus_media($id_view);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('panitia/pesertakeseluruhan');
	}
}
