<?php
class M_tambahatribut extends CI_Model
{

	function get_kasus()
	{
		$id_kasus = $this->session->userdata('id_kasus');

		$hsl = $this->db->query("SELECT * FROM tb_kasus WHERE id_kasus='$id_kasus' ");
		return $hsl;
	}
	function get_alternatif()
	{
		$id_kasus = $this->session->userdata('id_kasus');
		$hasil = $this->db->query("SELECT * FROM alternatif WHERE alternatif.id_kasus='$id_kasus' ");
		return $hasil;
	}

	function get_kreteria()
	{
		$id_kasus = $this->session->userdata('id_kasus');
		$hasil = $this->db->query("SELECT * FROM kriteria WHERE kriteria.id_kasus='$id_kasus' ");
		return $hasil;
	}
	function cekatribut($id_kreteria, $id_alternatif)
	{
		$hasil = $this->db->query("SELECT * FROM tb_atribut WHERE tb_atribut.id_kreteria='$id_kreteria' and tb_atribut.id_alternatif='$id_alternatif'");
		return $hasil; //return $result->result();
	}

	function simpan_data($id_kreteria, $id_alternatif, $nilai, $satuan)
	{
		///$id_panitia = $this->session->userdata('id_panitia');
		$hsl = $this->db->query("INSERT INTO tb_atribut(id_kreteria,id_alternatif,nilai_atribut,satuan) 
		VALUES ('$id_kreteria','$id_alternatif','$nilai','$satuan')");
		return $hsl;
	}
}
