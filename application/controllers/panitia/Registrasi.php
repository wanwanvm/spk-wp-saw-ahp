<?php
class Registrasi extends CI_Controller
{
    function __construct()
    {
        parent::__construct();

        $this->load->model('m_registrasi');
        $this->load->library('form_validation');
        $this->load->helper(array('form', 'url'));
        $this->load->library('session');
    }
    function index()
    {

        $this->load->view('panitia/v_registrasi');
    }

    function get_lokasi_tes()
    {
        $id_psb = $this->input->post('id_psb');
        $data = $this->m_registrasi->get_lokasi_tes($id_psb);
        echo json_encode($data);
    }
    function get_lokasi_sentra()
    {
        $id_psb = $this->input->post('id_psb');
        $data2 = $this->m_registrasi->get_lokasi_sentra($id_psb);
        echo json_encode($data2);
    }


    //fungsi kode otomatis
    public function inputpeserta()
    {

        $this->form_validation->set_rules('nama', 'Nama Salah', 'required');


        // $this->form_validation->set_rules('password','Password','required|min_length[5]'); // min_length[5] password tidak boleh kurang dari lima
        // $this->form_validation->set_rules('retypepassword','Retype Password','required|min_length[5]|matches[password]'); // matches[password] 
        //$this->form_validation->set_rules('konfir_email','Konfirmasi Email','required');




        //cel email
        $email = strip_tags(str_replace("'", "", $this->input->post('email')));
        $cemail = $this->m_registrasi->cekemail($email);
        //echo json_encode($cadmin);
        if ($cemail->num_rows() > 0) {
            echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button>  Email sudah ada di database </div>');
            redirect('panitia/registrasi');
        } else {
            // batas kondisi email
            // cek nisn       

            $password1 = strip_tags(str_replace("'", "", $this->input->post('password1')));
            $password2 = strip_tags(str_replace("'", "", $this->input->post('password2')));



            if (!($password1 == $password2)) {
                echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button>  Password Harus Sama </div>');
                redirect('panitia/registrasi');
            } else {


                //batas nisn

                if ($this->form_validation->run() != false) {

                    if ($_POST) {

                        $nama = $this->input->post('nama');
                        $email = $this->input->post('email');
                        $password1 = $this->input->post('password1');
                        //$sandi=md5($password);
                        $sandi = password_hash($password1, PASSWORD_DEFAULT);

                        //barcode
                        //batas barcode
                        $this->m_registrasi->inputpeserta(array(
                            'nama_panitia' => $nama,
                            'email_panitia' => $email,
                            'username' => $email,
                            'password' => $sandi
                        ));
                    }
                    //echo "Form validation oke";
                    echo $this->session->set_flashdata('msg', '<div class="alert alert-danger" role="alert"><button type="button" class="close" data-dismiss="alert"><span class="fa fa-close"></span></button>  Sukses Mendaftar</div>');
                    redirect('panitia/login');
                } else {
                    //  $x['data'] = $this->m_registrasi->get_cabor();
                    //$x['prov'] = $this->m_registrasi->get_provinsi();
                    //  $x['kode'] = $this->m_registrasi->kode();

                    $this->load->view('panitia/v_registrasi');
                }


                //batas bawah cek email
            }
        }
    }
}
