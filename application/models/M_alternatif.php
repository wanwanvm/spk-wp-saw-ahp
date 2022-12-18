<?php
class M_alternatif extends CI_Model
{



	function get_alternatif()
	{
		$id_panitia = $this->session->userdata('id_panitia');
		$id_kasus = $this->session->userdata('id_kasus');


		//$hariini = date('Y-m-d');
		$hsl = $this->db->query("SELECT alternatif.*,tb_kasus.* FROM alternatif,tb_kasus WHERE tb_kasus.id_kasus='$id_kasus' and alternatif.id_kasus=tb_kasus.id_kasus and tb_kasus.id_panitia='$id_panitia'");
		return $hsl;
	}
	function hapus_alternatif($id_alternatif)
	{
		$hsl = $this->db->query("DELETE FROM  alternatif WHERE id_alternatif='$id_alternatif'");
		return $hsl;
	}
}
