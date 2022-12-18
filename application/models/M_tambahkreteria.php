<?php
class M_tambahkreteria extends CI_Model
{

	function get_kasus()
	{
		$id_kasus = $this->session->userdata('id_kasus');
		$hsl = $this->db->query("SELECT * FROM tb_kasus where tb_kasus.id_kasus='$id_kasus' ");
		return $hsl;
	}

	function simpan_data($kd_kreteria, $nm_kreteria, $bobot, $jns_kreteria)
	{
		$id_kasus = $this->session->userdata('id_kasus');

		$hsl = $this->db->query("INSERT INTO kriteria(id_kasus,kd_kreteria,nm_kreteria,bobot,jns_kreteria) 
		VALUES ('$id_kasus','$kd_kreteria','$nm_kreteria','$bobot','$jns_kreteria')");
		return $hsl;
	}
}
