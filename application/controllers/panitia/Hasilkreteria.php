<?php
class Hasilkreteria extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_kasus');
	}


	function index()
	{
		$x['data'] = $this->m_kasus->get_kasus();

		$this->load->view('panitia/v_hasilkreteria', $x);
	}
}
