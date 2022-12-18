<?php
class M_tambahkasus extends CI_Model
{

	function get_cabor()
	{
		$hsl = $this->db->query("SELECT * FROM tb_cabor ");
		return $hsl;
	}

	function simpan_data($nm_kasus)
	{
		$id_panitia = $this->session->userdata('id_panitia');
		///$id_panitia = $this->session->userdata('id_panitia');
		$hsl = $this->db->query("INSERT INTO tb_kasus(nm_kasus,id_panitia) VALUES ('$nm_kasus','$id_panitia')");
		return $hsl;
	}
}
