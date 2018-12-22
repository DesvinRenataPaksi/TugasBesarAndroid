<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

require APPPATH . '/libraries/REST_Controller.php';
use Restserver\Libraries\REST_Controller;

class Pembelian extends REST_Controller {
//$this->response(array("status"=>"success","result" => $get_pembeli));
//$this->response(array("status"=>"success"));
	function pembelian_get(){
		$get_tiket = $this->db->query("SELECT * FROM pembelian")->result();
		$this->response(array("status"=>"success","result" => $get_tiket));
	}

	function pembelian_post() {
		$data_pembeli = array(
			'id_tiket' => $this->post('id_tiket'),	
			'tanggal' => $this->post('tanggal'),
			'nama' => $this->post('nama'),
			'alamat_jemput' => $this->post('alamat_jemput'),
			'alamat_antar' => $this->post('alamat_antar')
		);
		$insert = $this->db->insert('pembelian',$data_pembeli);
		if ($insert){
			$this->response(array("status"=>"failed","message" => "Input Success"));
		}else{
			$this->response(array("status"=>"failed","message" => "Input Gagal"));
		}
	}
}
?>