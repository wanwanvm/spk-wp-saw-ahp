<?php
class M_atribut extends CI_Model
{


	function get_atribut()
	{
		$id_panitia = $this->session->userdata('id_panitia');
		$id_kasus = $this->session->userdata('id_kasus');
		//$hariini = date('Y-m-d');
		$hsl = $this->db->query("SELECT kriteria.*,tb_kasus.*,alternatif.*,tb_atribut.* FROM 
		kriteria,tb_kasus,alternatif, tb_atribut WHERE alternatif.id_kasus=tb_kasus.id_kasus and 
		kriteria.id_kasus=tb_kasus.id_kasus and tb_atribut.id_kreteria=kriteria.id_kreteria 
		and alternatif.id_alternatif=tb_atribut.id_alternatif and tb_kasus.id_kasus='$id_kasus' and tb_kasus.id_panitia='$id_panitia'");
		return $hsl;
	}
	function hapus_atribut($id_atribut)
	{
		$hsl = $this->db->query("DELETE FROM tb_atribut WHERE id_atribut='$id_atribut'");
		return $hsl;
	}
}
