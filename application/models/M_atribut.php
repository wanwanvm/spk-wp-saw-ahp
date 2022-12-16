<?php
class M_atribut extends CI_Model
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

	function get_atribut()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$hsl = $this->db->query("SELECT tb_kreteria.*,tb_kasus.*,tb_alternatif.*,tb_atribut.* FROM 
		tb_kreteria,tb_kasus,tb_alternatif, tb_atribut WHERE tb_alternatif.id_kasus=tb_kasus.id_kasus and 
		tb_kreteria.id_kasus=tb_kasus.id_kasus and tb_atribut.id_kreteria=tb_kreteria.id_kreteria 
		and tb_alternatif.id_alternatif=tb_atribut.id_alternatif");
		return $hsl;
	}
	function hapus_atribut($id_atribut)
	{
		$hsl = $this->db->query("DELETE FROM tb_atribut WHERE id_atribut='$id_atribut'");
		return $hsl;
	}
}
