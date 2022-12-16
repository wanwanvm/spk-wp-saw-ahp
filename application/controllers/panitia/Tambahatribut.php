<?php
class Tambahatribut extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_tambahatribut');
		$this->load->library('upload');
	}


	function index()
	{
		//$x['data']=$this->m_panitiapenerimalalu->get_panitia_status();
		$x['data'] = $this->m_tambahatribut->get_kasus();
		$this->load->view('panitia/v_tambahatribut', $x);
		//$this->load->view('panitia/v_tambahalternatif');
	}
	function get_alternatif()
	{
		$id_kasus = $this->input->post('id_kasus');
		$data = $this->m_tambahatribut->get_alternatif($id_kasus);
		echo json_encode($data);
	}
	function get_kreteria()
	{
		$id_kasus = $this->input->post('id_kasus');
		$data = $this->m_tambahatribut->get_kreteria($id_kasus);
		echo json_encode($data);
	}
	function simpan_data()
	{


		$id_kreteria = strip_tags($this->input->post('id_kreteria'));

		$id_alternatif = strip_tags($this->input->post('id_alternatif'));
		$nilai = strip_tags($this->input->post('nilai'));
		$satuan = strip_tags($this->input->post('satuan'));

		$this->m_tambahatribut->simpan_data($id_kreteria, $id_alternatif, $nilai, $satuan);
		echo $this->session->set_flashdata('msg', 'success');
		redirect('panitia/atribut');
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
