<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');


class Compete extends CI_Controller
{
	public function index()
	{
		$this->load->view('users/user_body');
		$this->load->view('users/test');
		
	}
}