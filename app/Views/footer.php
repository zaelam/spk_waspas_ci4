<div class="row">
    <div class="col-12 text-center p-1 mt-5  bg-info <?php if($page == 'home' or $page == 'user' or $page == 'register' or $page == 'login'){ echo 'fixed-bottom'; }elseif($page == 'respon' && session()->get('role') != 0){ echo 'fixed-bottom'; } ?>">
        <p class="text-white">&copy; 2021 Caroko Hutomo</p>
    </div>
</div>
    
