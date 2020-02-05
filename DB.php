<?php

class Database {
	private $link;
	

	//конструктор БД, выполняется при каждом создании обхекта класса 	
	public function __construct () {
		$this -> connect ();
	}
	
	//соединение с БД
	/**
	 * @return $this
	 */
	private function connect () {
		$config = require_once 'config.php';
		
		$dsn = 'mysql:host='.$config['host'].';dbname='.$config['db_name'].';charset='.$config['charset'];
		
		$this -> link = new PDO ($dsn, $config['username'], $config['password'], $config['option']);
		
		return $this;
	}
	
	//запрос на изменение БД
	/**
	 * @param $sql
	 *
	 * @return mixed
	 */
	public function execute ($sql) {
		$sth = $this -> link -> prepare ($sql);
		
		return $sth -> execute ();
	}
	
	//запрос на получение данных с БД
	/**
	 * @param $sql
	 *
	 * @return array
	 */
	public function query ($sql) {
		$sth = $this -> link -> prepare ($sql);
		
		$sth -> execute ();
		
		$result = $sth -> fetchAll (PDO::FETCH_ASSOC);
		
		if ($result === false) {
			return [];
		}
		
		return $result;
	}
	
	public static function getById ($id) {
		$config = require 'config.php';
		$dsn = 'mysql:host='.$config['host'].';dbname='.$config['db_name'].';charset='.$config['charset'];
		$conn = new PDO ($dsn, $config['username'], $config['password'], $config['option']);
		
		$sql = "SELECT * FROM `articles`,`content` WHERE `articles`.`ID`=`content`.`articleID` AND `content`.`articleID` = :id";
		$st = $conn -> prepare ($sql);
		$st -> bindValue (":id", $id, PDO::PARAM_INT);
		$st -> execute ();
		$row = $st -> fetch ();
		$conn = null;
		
		return $row;
	}
}

$db = new Database(); //создание объекта класса

$articles = $db -> query ("SELECT * FROM `articles`");
$categories = $db -> query ("SELECT * FROM `categories`");
$messages = $db -> query ("SELECT * FROM `messages`");
$messagesArchive = $db -> query ("SELECT * FROM `messagesArchive`");
?>