<?php
class M_registrasi extends CI_Model
{

    function get_sukses_registrasi()
    {
        $hsl = $this->db->query("SELECT * FROM tb_peserta");
        return $hsl;
    }
    public function inputpeserta($data)
    {
        $this->db->insert('tb_panitia', $data);
    }
    function cekemail($email)
    {
        $hasil = $this->db->query("SELECT * FROM tb_panitia WHERE email_panitia='$email'");
        return $hasil; //return $result->result();
    }
}
