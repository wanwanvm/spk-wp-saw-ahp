<?php
class M_kasus extends CI_Model
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

	function get_kasus()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$hsl = $this->db->query("SELECT tb_kasus.* FROM tb_kasus");
		return $hsl;
	}
	function hapus_kasus($id_kasus)
	{
		$hsl = $this->db->query("DELETE FROM tb_kasus WHERE id_kasus='$id_kasus'");
		return $hsl;
	}
}
