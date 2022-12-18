<?php
class M_kreteria extends CI_Model
{

	function get_peserta_login($kode)
	{
		$hsl = $this->db->query("SELECT * FROM tb_peserta where id_peserta='$kode'");
		return $hsl;
	}
	function hapus_penerima($id_penerima)
	{
		$hsl = $this->db->query("DELETE FROM tb_penerima WHERE id_penerima='$id_penerima'");
		return $hsl;
	}
	function get_all_pengguna()
	{
		$hsl = $this->db->query("SELECT tbl_pengguna.*,IF(pengguna_jenkel='L','Laki-Laki','Perempuan') AS jenkel FROM tbl_pengguna");
		return $hsl;
	}

	function get_kreteria()
	{
		$id_panitia = $this->session->userdata('id_panitia');
		//$id_kasus = $this->input->get('id_kasus');
		$id_kasus = $this->session->userdata('id_kasus');

		$hsl = $this->db->query("SELECT kriteria.*,tb_kasus.* FROM kriteria,tb_kasus WHERE  
		tb_kasus.id_kasus='$id_kasus' and kriteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_panitia='$id_panitia'");
		return $hsl;
	}
	function hapus_kreteria($id_kreteria)
	{
		$hsl = $this->db->query("DELETE FROM kriteria WHERE id_kreteria='$id_kreteria'");
		return $hsl;
	}
}
