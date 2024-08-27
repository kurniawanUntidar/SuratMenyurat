<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

    public function splash()
    {
        // Memuat tampilan splash screen
        $this->load->view('splash_view');
    }
}
