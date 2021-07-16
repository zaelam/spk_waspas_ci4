<?php namespace App\Database\Migrations;

class Respon extends \CodeIgniter\Database\Migration{

    public function up(){
        $this->forge->addField([
            'id_respon' =>[
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
                'auto_increment' => TRUE
            ],
            'id_user' =>[
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ],
            'id_marketplace' =>[
                'type' => 'INT',
                'constraint' => 11,
                'unsigned' => TRUE,
            ],
            'kelengkapan' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'estimasi_pengiriman' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'user_experience' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'respon_pelayanan' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'metode_pembayaran' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'kemudahan_fitur' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'kepercayaan' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'penanganan_komplain' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'cashback' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'pengiriman' =>[
                'type' => 'INT',
                'constraint' => 11,
            ],
            'created_date' =>[
                'type' => 'DATETIME',
            ],
            'updated_by' =>[
                'type'=> 'INT',
                'constraint' => 11,
                'null' => TRUE,
            ],
            'updated_date' =>[
                'type' => 'DATETIME',
                'null' => TRUE,
                
            ]
        ]);

        $this->forge->addKey('id_respon', TRUE);
        $this->forge->addForeignKey('id_user','user','id');
        $this->forge->addForeignKey('id_marketplace','marketplace','id_marketplace');
        $this->forge->createTable('respon');
    }

    public function down(){
        $this->forge->dropTable('respon');
    }
}

?>