<?php
class M_cetakwp extends CI_Model
{


	function get_kreteria()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT  kriteria.*,tb_kasus.* FROM kriteria,tb_kasus WHERE  
		kriteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}

	function get_atribut()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT kriteria.*,tb_kasus.*,alternatif.*,tb_atribut.* FROM 
		kriteria,tb_kasus,alternatif, tb_atribut WHERE alternatif.id_kasus=tb_kasus.id_kasus and 
		kriteria.id_kasus=tb_kasus.id_kasus and tb_atribut.id_kreteria=kriteria.id_kreteria 
		and alternatif.id_alternatif=tb_atribut.id_alternatif and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
	function get_alternatif()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_kasus.*,alternatif.* FROM 
		tb_kasus,alternatif WHERE alternatif.id_kasus=tb_kasus.id_kasus  and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}

	function get_atributwp()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_normalisasikreteriawp.*,tb_normalisasi_atribut_wp.*,kriteria.*,tb_kasus.*,alternatif.*,tb_atribut.* FROM 
		kriteria,tb_kasus,alternatif, tb_atribut,tb_normalisasi_atribut_wp,tb_normalisasikreteriawp 
		WHERE alternatif.id_kasus=tb_kasus.id_kasus and tb_normalisasikreteriawp.id_kreteria=kriteria.id_kreteria and 
		kriteria.id_kasus=tb_kasus.id_kasus and tb_normalisasi_atribut_wp.id_atribut=tb_atribut.id_atribut and tb_atribut.id_kreteria=kriteria.id_kreteria 
		and alternatif.id_alternatif=tb_atribut.id_alternatif and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
	function get_si()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT * FROM tb_si WHERE id_kasus='$id_kasus'  ");
		return $hsl;
	}
	function get_hasilwp()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT alternatif.nm_alternatif,tb_nilaiwp.nilai_wp FROM tb_nilaiwp,alternatif WHERE tb_nilaiwp.id_alternatif=alternatif.id_alternatif and alternatif.id_kasus='$id_kasus' ORDER BY tb_nilaiwp.nilai_wp DESC ");
		return $hsl;
	}
	function get_pembagi()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT kriteria.id_kreteria,kriteria.nm_kreteria, if(kriteria.jns_kreteria='benefit',
		MAX(tb_atribut.nilai_atribut),MIN(tb_atribut.nilai_atribut)) as pembagi FROM tb_kasus,kriteria,tb_atribut 
		WHERE tb_atribut.id_kreteria=kriteria.id_kreteria and kriteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus' GROUP BY tb_atribut.id_kreteria");
		return $hsl;
	}
	function get_hitungsaw()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT tb_normalisasi_bobot.nilainorbobot, tb_nomalisasi_artribut.nilainormalisasi, tb_normalisasi_bobot.id_kreteria,tb_nomalisasi_artribut.id_alternatif,tb_nomalisasi_artribut.nilainormalisasi*tb_normalisasi_bobot.nilainorbobot 
		AS NILAI FROM tb_nomalisasi_artribut,tb_normalisasi_bobot,alternatif WHERE 
		alternatif.id_alternatif = tb_nomalisasi_artribut.id_alternatif and tb_normalisasi_bobot.id_kreteria=tb_nomalisasi_artribut.id_kreteria and alternatif.id_kasus='$id_kasus' ORDER BY tb_normalisasi_bobot.id_kreteria ");
		return $hsl;
	}
	function get_hasilsaw()
	{
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT alternatif.nm_alternatif, SUM(tb_hitungsaw.nilai_hitung)
		AS HITUNG FROM tb_hitungsaw,alternatif WHERE tb_hitungsaw.id_alternatif=alternatif.id_alternatif and alternatif.id_kasus='$id_kasus' GROUP BY tb_hitungsaw.id_alternatif ORDER BY `HITUNG` DESC  ");
		return $hsl;
	}
	function get_total()
	{
		//$id_peserta=$this->session->userdata('id_peserta');
		//$hariini = date('Y-m-d');
		$id_kasus = $this->input->get('id_kasus');
		$hsl = $this->db->query("SELECT sum(kriteria.bobot) as totalbobot FROM kriteria,tb_kasus WHERE  
		kriteria.id_kasus=tb_kasus.id_kasus and tb_kasus.id_kasus='$id_kasus'");
		return $hsl;
	}
}
