<?php
class M_cetaksaw extends CI_Model
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

	function get_kreteria()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT  tb_kreteria.*,tb_kasus.* FROM tb_kreteria,tb_kasus WHERE  
		tb_kreteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
	function get_normaliasi_atribut()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		//$id_peserta=$this->session->userdata('id_peserta');

		//$hsl = $this->db->query("SELECT  COUNT(*) as nilai_normal FROM tb_nomalisasi_artribut ");
		//return $hsl;
	}
	function get_atribut()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_kreteria.*,tb_kasus.*,tb_alternatif.*,tb_atribut.* FROM 
		tb_kreteria,tb_kasus,tb_alternatif, tb_atribut WHERE tb_alternatif.id_kasus=tb_kasus.id_kasus and 
		tb_kreteria.id_kasus=tb_kasus.id_kasus and tb_atribut.id_kreteria=tb_kreteria.id_kreteria 
		and tb_alternatif.id_alternatif=tb_atribut.id_alternatif and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
	function get_pembagi()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_kreteria.id_kreteria,tb_kreteria.nm_kreteria, if(tb_kreteria.jns_kreteria='benefit',
		MAX(tb_atribut.nilai_atribut),MIN(tb_atribut.nilai_atribut)) as pembagi FROM tb_kasus,tb_kreteria,tb_atribut 
		WHERE tb_atribut.id_kreteria=tb_kreteria.id_kreteria and tb_kreteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus' GROUP BY tb_atribut.id_kreteria");
		return $hsl;
	}
	function get_hitungsaw()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_normalisasi_bobot.nilainorbobot, tb_nomalisasi_artribut.nilainormalisasi, tb_normalisasi_bobot.id_kreteria,tb_nomalisasi_artribut.id_alternatif,tb_nomalisasi_artribut.nilainormalisasi*tb_normalisasi_bobot.nilainorbobot 
		AS NILAI FROM tb_nomalisasi_artribut,tb_normalisasi_bobot,tb_alternatif WHERE 
		tb_alternatif.id_alternatif = tb_nomalisasi_artribut.id_alternatif and tb_normalisasi_bobot.id_kreteria=tb_nomalisasi_artribut.id_kreteria and tb_alternatif.id_kasus='$id_kasus' ORDER BY tb_normalisasi_bobot.id_kreteria ");
		return $hsl;
	}
	function get_hasilsaw()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_alternatif.nm_alternatif, SUM(tb_hitungsaw.nilai_hitung)
		AS HITUNG FROM tb_hitungsaw,tb_alternatif WHERE tb_hitungsaw.id_alternatif=tb_alternatif.id_alternatif and tb_alternatif.id_kasus='$id_kasus' GROUP BY tb_hitungsaw.id_alternatif ORDER BY `HITUNG` DESC  ");
		return $hsl;
	}
	function get_total()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT sum(tb_kreteria.bobot) as totalbobot FROM tb_kreteria,tb_kasus WHERE  
		tb_kreteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
}
