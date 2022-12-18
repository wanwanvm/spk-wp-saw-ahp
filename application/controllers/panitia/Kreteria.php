<?php
class Kreteria extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_kreteria');
	}


	function index()
	{

		//untuk mengisi session id _kasus
		$id_kasus4 = $this->session->userdata('id_kasus');
		$id_kasus2 = $this->input->get('id_kasus');
		if (!empty($id_kasus2)) {
			$id_kasus = $id_kasus2;
		} else {
			$id_kasus = $this->session->userdata('id_kasus');
		}

		$this->session->set_userdata('id_kasus', $id_kasus);
		$x['data'] = $this->m_kreteria->get_kreteria();

		$this->load->view('panitia/v_kreteria', $x);
	}


	function hapus_kreteria()
	{
		$id_kreteria = $this->input->get('id_kreteria');
		//	unlink($path);
		$this->m_kreteria->hapus_kreteria($id_kreteria);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('panitia/kreteria');
	}
}
