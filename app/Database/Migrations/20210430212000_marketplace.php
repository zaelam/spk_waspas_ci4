<?php namespace App\Database\Migrations;

class Marketplace extends \CodeIgniter\Database\Migration{

    public function up(){
        $this->forge->addField([
            'id_marketplace' =>[
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ],
            'nama' =>[
                'type' => 'TEXT',
            ]
        ]);

        $this->forge->addKey('id_marketplace', TRUE);
        $this->forge->createTable('marketplace');
    }

    public function down(){
        $this->forge->dropTable('marketplace');
    }
}

?>