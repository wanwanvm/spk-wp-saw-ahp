<?php
class Tambahkasus extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_tambahkasus');
		$this->load->library('upload');
	}


	function index()
	{
		//$x['data']=$this->m_panitiapenerimalalu->get_panitia_status();
		//$x['data'] = $this->m_tambahkasus->get_cabor();
		//$this->load->view('panitia/v_penerimalalu', $x);
		$this->load->view('panitia/v_tambahkasus');
	}

	function simpan_data()
	{

		$nm_kasus = strip_tags($this->input->post('nm_kasus'));

		$this->m_tambahkasus->simpan_data($nm_kasus);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('panitia/kasus');
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
