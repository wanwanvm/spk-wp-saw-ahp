<?php
class M_tambahalternatif extends CI_Model
{

	function get_kasus()
	{
		$id_kasus = $this->session->userdata('id_kasus');
		$id_panitia = $this->session->userdata('id_panitia');
		$hsl = $this->db->query("SELECT * FROM tb_kasus where tb_kasus.id_kasus = '$id_kasus' and tb_kasus.id_panitia='$id_panitia'");
		return $hsl;
	}

	function simpan_data($kd_alternatif, $nm_alternatif)
	{
		$id_kasus = $this->session->userdata('id_kasus');
		//$id_kasus = strip_tags($this->input->post('id_kasus'));
		$hsl = $this->db->query("INSERT INTO alternatif(id_kasus,kd_alternatif,nm_alternatif) VALUES ('$id_kasus','$kd_alternatif','$nm_alternatif')");
		return $hsl;
	}
}
