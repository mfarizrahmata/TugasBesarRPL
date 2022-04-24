<?php

namespace App\Controllers;

class Koki extends BaseController
{
    protected $db, $builder;

    public function __construct()
    {
        $this->db = \Config\Database::connect();
        $this->builder = $this->db->table('users');
    }

    public function index()
    {
        $data = ['title' => 'Page Koki'];
        $this->builder->select('users.id as userid, username, email, fullname, name');
        $this->builder->join('auth_groups_users', 'auth_groups_users.user_id = users.id');
        $this->builder->join('auth_groups', 'auth_groups.id = auth_groups_users.group_id');
        return view('koki/index.php', $data);
    }
}
