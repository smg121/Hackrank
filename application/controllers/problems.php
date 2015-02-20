<?php 

class Problems extends CI_Controller
{
	public function index()
	{
		$this->load->view('users/user_header');
		$this->load->view('users/user_body');
	}
	public function problem1()
	{
		// load problem 1 view in users
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem1');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}

	public function valp1()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->form_validation->set_rules('keyword','keyword','required|xss_clean|trim');
			$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px">', '</div>');
			if($this->form_validation->run())
			{

				if(strtolower($this->input->post('keyword')) == 'abhijeth')
				{
					$this->session->set_userdata('prob1',10);
					redirect('/problems/show');
				}
				else
				{
					$this->index();
					$data['p1'] = 'Wrong answer ! Try again';
					$this->load->view('/users/problems/problem1',$data);
					//$this->form_validation->set_message('keyword','Worng answer');
					//$this->load->view('/users/problems/problem1e');
				}
			}
			else
			{
				$this->index();
				$this->load->view('/users/problems/problem1');
			}

		}
		else
		{
			redirect('/home');// if not loggedin
		}

	}

	public function success()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('user_header');
			$this->load->view('user_body');
			$this->load->view('/problems/show');
		}
		else
		{
			redirect('/home');
		}
	}


	public function problem2()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem2');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}

	public function valp2()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->form_validation->set_rules('secret','Input','required|xss_clean|trim');
			$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px">', '</div>');
			if($this->form_validation->run())
			{

				if($this->input->post('secret') == md5('lalith'))
				{
					$this->session->set_userdata('prob2',20);
					redirect('/problems/show');
				}
				else
				{
					$this->form_validation->set_message('secret','Worng answer');
					$this->index();
					$this->load->view('/users/problems/problem2');
				}
			}
			else
			{
				$this->load->index();
				$this->load->view('/users/problems/problem2');
			}

		}
		else
		{
			redirect('/home');// if not loggedin
		}

	}

	public function problem3()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem3');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}

	public function valp3()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->form_validation->set_rules('image','keyword','required|xss_clean|trim');
			$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px">', '</div>');
			if($this->form_validation->run())
			{

				if($this->input->post('image') == 'Sourcenxt')
				{
					$this->session->set_userdata('prob3',30);
					redirect('/problems/show');
				}
				else
				{
					$this->form_validation->set_message('secret','Worng answer');
					redirect('/problems/problem3');
				}
			}
			else
			{
				$this->index();
				$this->load->view('/users/problems/problem3');
			}

		}
		else
		{
			redirect('/home');// if not loggedin
		}

	}
	public function problem4()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem4');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}

	public function valp4()
	{
		$this->form_validation->set_rules('username','Username','required|trim|xss_clean');
		$this->form_validation->set_rules('password','Password','required|trim|xss_clean');
		$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px"','</div>');
	
		if($this->form_validation->run())
		{
			$username = $this->input->post('username');
			$password = $this->input->post('password');
			if( $username == 'admin' && $password == 'admin')
			{
				// success
				$this->session->set_userdata('prob4','50');
				redirect('/problems/show');
			}
			else
			{
				redirect('/problems/problem4');
			}
		}
		else
		{
			$this->index();
			$this->load->view('users/problems/problem4');
		}
	}

	public function problem5()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem5');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}
	

	public function valp5()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->form_validation->set_rules('mobile','Mobile','required|xss_clean|trim|is_email');
			$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px">', '</div>');
			if($this->form_validation->run())
			{

				if($this->input->post('mobile') == "sourcenxt@gmail.com")
				{
					$this->session->set_userdata('prob5',70);
					redirect('/problems/show');
				}
				else
				{
					$this->form_validation->set_message('secret','Worng answer');
					redirect('/problems/problem5');
				}
			}
			else
			{
				$this->index();
				$this->load->view('/users/problems/problem5');
			}

		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}
	// scoreboard function
	public function show()
	{
		$this->index();
		$cdata = array
		(
			'prob1'		=> $this->session->userdata('prob1'),
			'prob2' 	=> $this->session->userdata('prob2'),
			'prob3' 	=> $this->session->userdata('prob3'),
			'prob4' 	=> $this->session->userdata('prob4'),
			'prob5' 	=> $this->session->userdata('prob5'),
			'prob6' 	=> $this->session->userdata('prob6'),

		);
		$this->load->view('users/problems/score',$cdata);
	}


	public function problem6()
	{
		if($this->session->userdata('is_loggedin'))
		{
			$this->load->view('/users/user_header');
			$this->load->view('/users/user_body');
			$this->load->view('/users/problems/problem6');
		}
		else
		{
			redirect('/home');// if not loggedin
		}
	}


	public function valp6()
	{
		$this->form_validation->set_rules('keyword','Keyword','required|trim|xss_clean');
		//$this->form_validation->set_rules('password','Password','required|trim|xss_clean');
		$this->form_validation->set_error_delimiters('<div class="alert alert-success" style="font-size:15px"','</div>');
	
		if($this->form_validation->run())
		{
			$username = $this->input->post('keyword');
			$new = 'nangiv';
			$new1 = 'vignan';
			//$password = $this->input->post('password');
			if( $new == $username)
			{
				// success
				$this->session->set_userdata('prob6','100');
				redirect('/problems/show');
			}
			else
			{
				redirect('/problems/problem6');
			}
		}
		else
		{
			$this->index();
			$this->load->view('users/problems/problem6');
		}
	}

}