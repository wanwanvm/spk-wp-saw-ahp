<?php
class M_alternatif extends CI_Model
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

	function get_alternatif()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$hsl = $this->db->query("SELECT tb_alternatif.*,tb_kasus.* FROM tb_alternatif,tb_kasus WHERE  tb_alternatif.id_kasus=tb_kasus.id_kasus");
		return $hsl;
	}
	function hapus_alternatif($id_alternatif)
	{
		$hsl = $this->db->query("DELETE FROM tb_alternatif WHERE id_alternatif='$id_alternatif'");
		return $hsl;
	}
}
