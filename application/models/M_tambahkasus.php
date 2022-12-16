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
		///$id_panitia = $this->session->userdata('id_panitia');
		$hsl = $this->db->query("INSERT INTO tb_kasus(nm_kasus) VALUES ('$nm_kasus')");
		return $hsl;
	}
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
}
