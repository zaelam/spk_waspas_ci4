<?php namespace App\Database\Migrations;

class Kriteria extends \CodeIgniter\Database\Migration{

    public function up(){
        $this->forge->addField([
            'id_kriteria' =>[
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ],
            'kriteria' =>[
                'type' => 'TEXT',
            ]
        ]);

        $this->forge->addKey('id_kriteria', TRUE);
        $this->forge->createTable('kriteria');
    }

    public function down(){
        $this->forge->dropTable('kriteria');
    }
}

?>