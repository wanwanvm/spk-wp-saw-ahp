<?php
class Kasus extends CI_Controller
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

		$this->load->view('panitia/v_kasus', $x);
	}


	function hapus_kasus()
	{
		$id_kasus = $this->input->get('id_kasus');
		//	unlink($path);
		$this->m_kasus->hapus_kasus($id_kasus);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('panitia/kasus');
	}
}
