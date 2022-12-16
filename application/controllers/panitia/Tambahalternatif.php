<?php
class Tambahalternatif extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_tambahalternatif');
		$this->load->library('upload');
	}


	function index()
	{
		//$x['data']=$this->m_panitiapenerimalalu->get_panitia_status();
		$x['data'] = $this->m_tambahalternatif->get_kasus();
		$this->load->view('panitia/v_tambahalternatif', $x);
		//$this->load->view('panitia/v_tambahalternatif');
	}

	function simpan_data()
	{

		$id_kasus = strip_tags($this->input->post('id_kasus'));
		$kd_alternatif = strip_tags($this->input->post('kd_alternatif'));
		$nm_alternatif = strip_tags($this->input->post('nm_alternatif'));

		$this->m_tambahalternatif->simpan_data($id_kasus, $kd_alternatif, $nm_alternatif);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('panitia/alternatif');
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
