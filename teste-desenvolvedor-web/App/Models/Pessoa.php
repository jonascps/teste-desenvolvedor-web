<?php

namespace App\Models;

use MF\Model\Model;

class Pessoa extends Model
{

	public function getPessoa()
	{

		$query = "SELECT * FROM pessoa
		INNER JOIN endereco ON pessoa.id_pessoa = endereco.pessoa_id_pessoa ";
		return $this->conexao->query($query)->fetchAll();
	}
}
