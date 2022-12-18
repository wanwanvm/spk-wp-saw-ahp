<?php
class Atribut extends CI_Controller
{
	function __construct()
	{
		parent::__construct();
		if ($this->session->userdata('masukpanitia') != TRUE) {
			$url = base_url('adminpanitia');
			redirect($url);
		};
		$this->load->model('m_atribut');
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
		$x['data'] = $this->m_atribut->get_atribut();

		$this->load->view('panitia/v_atribut', $x);
	}



	function hapus_atribut()
	{
		$id_atribut = $this->input->get('id_atribut');
		//	unlink($path);
		$this->m_atribut->hapus_atribut($id_atribut);
		echo $this->session->set_flashdata('msg', 'success-hapus');
		redirect('panitia/atribut');
	}
}
