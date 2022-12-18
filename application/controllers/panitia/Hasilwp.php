<?php
class Hasilwp extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_kasus');
		//	$this->load->model('m_pengguna');
		//$this->load->model('m_cabor');
		//$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_kasus->get_kasus();

		$this->load->view('panitia/v_hasilwp', $x);
	}
}
