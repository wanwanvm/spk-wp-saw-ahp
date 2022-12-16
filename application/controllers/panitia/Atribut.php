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
		//	$this->load->model('m_pengguna');
		//$this->load->model('m_cabor');
		//$this->load->library('upload');
	}


	function index()
	{
		$x['data'] = $this->m_atribut->get_atribut();

		$this->load->view('panitia/v_atribut', $x);
	}

	function simpan_pelatih()
	{
		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 300;
				$config['height'] = 300;
				$config['new_image'] = './assets/images/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();

				$photo = $gbr['file_name'];
				$nik = strip_tags($this->input->post('xnik'));
				$email = strip_tags($this->input->post('xemail'));
				$hp = strip_tags($this->input->post('xhp'));
				$nama = strip_tags($this->input->post('xnama'));
				$alamat = strip_tags($this->input->post('xalamat'));
				$cabor = strip_tags($this->input->post('xcabor'));
				$jenkel = strip_tags($this->input->post('xjenkel'));
				$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
				$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));


				$this->m_pelatih->simpan_pelatih($nik, $hp, $email, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $cabor, $photo, $alamat);
				echo $this->session->set_flashdata('msg', 'success');
				redirect('admin/pelatih');
			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/pelatih');
			}
		} else {
			$email = strip_tags($this->input->post('xemail'));
			$hp = strip_tags($this->input->post('xhp'));
			$cabor = strip_tags($this->input->post('xcabor'));
			$nik = strip_tags($this->input->post('xnik'));
			$nama = strip_tags($this->input->post('xnama'));
			$alamat = strip_tags($this->input->post('xalamat'));
			$jenkel = strip_tags($this->input->post('xjenkel'));
			$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
			$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));


			$this->m_pelatih->simpan_pelatih_tanpa_img($nik, $hp, $email, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $cabor, $alamat);
			echo $this->session->set_flashdata('msg', 'success');
			redirect('admin/pelatih');
		}
	}

	function update_pelatih()
	{

		$config['upload_path'] = './assets/images/'; //path folder
		$config['allowed_types'] = 'gif|jpg|png|jpeg|bmp'; //type yang dapat diakses bisa anda sesuaikan
		$config['encrypt_name'] = TRUE; //nama yang terupload nantinya

		$this->upload->initialize($config);
		if (!empty($_FILES['filefoto']['name'])) {
			if ($this->upload->do_upload('filefoto')) {
				$gbr = $this->upload->data();
				//Compress Image
				$config['image_library'] = 'gd2';
				$config['source_image'] = './assets/images/' . $gbr['file_name'];
				$config['create_thumb'] = FALSE;
				$config['maintain_ratio'] = FALSE;
				$config['quality'] = '60%';
				$config['width'] = 300;
				$config['height'] = 300;
				$config['new_image'] = './assets/images/' . $gbr['file_name'];
				$this->load->library('image_lib', $config);
				$this->image_lib->resize();
				$gambar = $this->input->post('gambar');
				$path = './assets/images/' . $gambar;
				//unlink($path);

				$photo = $gbr['file_name'];
				$kode = $this->input->post('kode');
				$nik = strip_tags($this->input->post('xnik'));
				$email = strip_tags($this->input->post('xemail'));
				$hp = strip_tags($this->input->post('xhp'));
				$alamat = strip_tags($this->input->post('xalamat'));
				$nama = strip_tags($this->input->post('xnama'));
				$jenkel = strip_tags($this->input->post('xjenkel'));
				$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
				$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
				$cabor = strip_tags($this->input->post('xcabor'));

				$this->m_pelatih->update_pelatih($kode, $nik, $hp, $email, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $cabor, $photo, $alamat);
				echo $this->session->set_flashdata('msg', 'info');
				redirect('admin/pelatih');
			} else {
				echo $this->session->set_flashdata('msg', 'warning');
				redirect('admin/pelatih');
			}
		} else {
			$kode = $this->input->post('kode');
			$nik = strip_tags($this->input->post('xnik'));
			$hp = strip_tags($this->input->post('xhp'));
			$email = strip_tags($this->input->post('xemail'));
			$alamat = strip_tags($this->input->post('xalamat'));
			$nama = strip_tags($this->input->post('xnama'));
			$jenkel = strip_tags($this->input->post('xjenkel'));
			$tmp_lahir = strip_tags($this->input->post('xtmp_lahir'));
			$tgl_lahir = strip_tags($this->input->post('xtgl_lahir'));
			$cabor = strip_tags($this->input->post('xcabor'));
			$this->m_pelatih->update_pelatih_tanpa_img($kode, $nik, $hp, $email, $nama, $jenkel, $tmp_lahir, $tgl_lahir, $cabor, $alamat);
			echo $this->session->set_flashdata('msg', 'info');
			redirect('admin/pelatih');
		}
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
