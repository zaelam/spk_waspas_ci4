<?php 
    $session = session();
?>
<nav class="navbar navbar-expand-md navbar-dark bg-info fixed-top">
    <a class="navbar-brand ml-5" href="#">SPK</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarsExampleDefault">
    <?php if($session->get('isLoggedIn')): ?>
    <ul class="navbar-nav mr-auto">
        <li class="nav-item">
            <a class="nav-link <?php if($page == 'home'){ echo 'active'; } ?>" href="<?= site_url('home/index') ?>">Home</span></a>
        </li>
        
        <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle <?php if($page == 'respon'){ echo 'active'; } ?>" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup= "true" aria-expanded="false">Respon</a>
            <div class="dropdown-menu" aria-labelledby="dropdown01">
              <a class="dropdown-item" href="<?= site_url('respon/list') ?>">List Respon</a>
              
              <a class="dropdown-item" href="<?= site_url('respon/tambah') ?>">Tambah Respon</a>
              
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link <?php if($page == 'proses'){ echo 'active'; } ?>" href="<?= site_url('spk/fuzzyfikasi') ?>">Proses</a>
        </li>
        <?php if(session()->get('role') == 0): ?>
        <li class="nav-item">
            <a class="nav-link <?php if($page == 'user'){ echo 'active'; } ?>" href="<?= site_url('user/index') ?>">User</a>
        </li>
        <?php endif ?>
        <li class="nav-item">
            <a class="nav-link <?php if($page == 'hasil'){ echo 'active'; } ?>" href="<?= site_url('spk/hasil') ?>">Hasil</a>
        </li>
        
        
    </ul>
    <?php endif ?>
    <!-- <div class="form-inline my-2 my-lg-0"> -->
        <ul class="navbar-nav ml-auto">
            <?php if($session->get('isLoggedIn')): ?>
            <li class="nav-item">
                <a href="<?= site_url('auth/logout') ?>" class="btn btn-info">Logout</a>
            </li>
            <?php else: ?>
            <li class="nav-item">
                <a href="<?= site_url('auth/login') ?>" class="btn btn-info">Login</a>
            </li>
            <li class="nav-item">
                <a href="<?= site_url('auth/register') ?>" class="btn btn-info">Register</a>
            </li>
            <?php endif ?>
        </ul>
    </div>
    <!-- </div> -->
</nav>