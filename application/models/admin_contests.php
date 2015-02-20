<?php 

class Admin_contests extends CI_Model
{
	public function getcontestcount()
	{
		$query = "SELECT * from contest";
		$count = $this->db->query($query);
		return $count->num_rows();
		
	}
	public function getrecords($count)
	{
		$query = $this->db->get('contest',$count,$this->uri->segment(3));
		return $query->result();
	}
	public function addcontest($data)
	{
		$query = $this->db->insert('contest',$data);
		return $query;
	}
	public function getcontest($id)
	{
		$query = $this->db->query('SELECT * FROM contest WHERE id='.$this->db->escape($id));
		return $query->row_array();
	}
	public function update($data,$id)
	{
		
		
		$query = $this->db->where('id',$id);
		$query = $this->db->update('contest',$data);
		if($query)
		{
			return TRUE;
		}
		return FALSE;
		
	}

	public function is_codeexist($code,$cid)
	{
		$query = $this->db->query('SELECT * FROM contest WHERE code='.$this->db->escape($code).' AND id!='.$this->db->escape($cid));
		if($query->num_rows()>0)
		{
			return TRUE;// if code exists
		}
		return FALSE;
	}
	public function is_nameexist($code,$cid)
	{
		$query = $this->db->query('SELECT * FROM contest WHERE name='.$this->db->escape($code).' AND id!='.$this->db->escape($cid));
		if($query->num_rows()>0)
		{
			return TRUE;// if name exists
		}
		return FALSE;
	}

	public function is_cid($id)
	{
		
		$query = $this->db->where('id',$id);
		$query = $this->db->get('contest');

		if($query->result())
		{
			return TRUE;
		}
		
		return FALSE;
	}
}