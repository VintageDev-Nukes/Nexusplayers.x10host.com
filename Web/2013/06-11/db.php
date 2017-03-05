<?php
 
//*************************************
// PHP Database Class Using MySQL
//*************************************
class database {
    private $Host;
    private $MySQLUsername;
    private $MySQLPassword;
    private $Database;
    private $Conn;
	//Esta es la función principal.
public function connect()
{

require_once(dirname(__FILE__) . '/Settings.php');
        $this->Host = $db_server;
        $this->MySQLUsername = $db_user;
        $this->MySQLPassword = $db_passwd;
        $this->Database = $db_name;
		$this->Conn = @mysql_connect($this->Host,$this->MySQLUsername,$this->MySQLPassword);
		if($this->Conn)
        {
            mysql_select_db($this->Database) OR die('Could not select DB');
        }
        else
        {
            die(mysql_error());
        }  
		unset($this->Host);
        unset($this->MySQLUsername);
        unset($this->MySQLPassword);
        unset($this->Database);
}
// Esta función hace una query a la base de datos actualmente usada
    public function Query($sql)
    {
        $result = mysql_query($sql);
 
        if(!$result)
        {
            die(mysql_error());
        }
 
        return $result;
    }
 
    public function Disconnect()
    {
        mysql_close($this->Conn);
    }
	// Esto , quita todos los caracteres malos para evitar inyecciones sql , usalo para los campos insertados por usuarios.
    public function EscapeString($badstring)
    {
        if(!get_magic_quotes_gpc())
        {
            $goodstring = addslashes($badstring);
        }
        else
        {
            $goodstring = stripslashes($badstring);
        }
 
        $goodstring = mysql_real_escape_string($badstring);
 
        return $goodstring;
    }
//Esto coje los resultado de la query y los mete en un array
public function Result_To_Array($result)
    {
        $result_array = array();
 
        for ($i=0; $row = mysql_fetch_array($result); $i++) 
        {
            $result_array[$i] = $row;
        }
 
        return $result_array;
 
    }
}
?>
