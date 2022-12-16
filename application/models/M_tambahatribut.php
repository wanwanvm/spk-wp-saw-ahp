<?php
class M_tambahatribut extends CI_Model
{

	function get_kasus()
	{
		$hsl = $this->db->query("SELECT * FROM tb_kasus ");
		return $hsl;
	}
	function get_alternatif($id_kasus)
	{
		$hasil = $this->db->query("SELECT * FROM tb_alternatif WHERE tb_alternatif.id_kasus='$id_kasus' ");
		return $hasil->result();
	}

	function get_kreteria($id_kasus)
	{
		$hasil = $this->db->query("SELECT * FROM tb_kreteria WHERE tb_kreteria.id_kasus='$id_kasus' ");
		return $hasil->result();
	}


	function simpan_data($id_kreteria, $id_alternatif, $nilai, $satuan)
	{
		///$id_panitia = $this->session->userdata('id_panitia');
		$hsl = $this->db->query("INSERT INTO tb_atribut(id_kreteria,id_alternatif,nilai_atribut,satuan) 
		VALUES ('$id_kreteria','$id_alternatif','$nilai','$satuan')");
		return $hsl;
	}
	/*
	function update_prestasi($nm_penerima, $nosk, $tahunsk, $kat_penghargaan, $jns_penghargaan, $id_cabor)
	{
		//$author=$this->session->userdata('nama');
		$hsl = $this->db->query("UPDATE tb_prestasi SET nama_prestasi='$nama_prestasi',juara_prestasi='$juara_prestasi',tempat_prestasi='$tempat_prestasi',tahun='$tahun' where id_prestasi='$id_prestasi'");
		return $hsl;
	}
	function hapus_prestasi($id_prestasi)
	{
		$hsl = $this->db->query("DELETE FROM tb_prestasi WHERE id_prestasi='$id_prestasi'");
		return $hsl;
	}
	*/
}
