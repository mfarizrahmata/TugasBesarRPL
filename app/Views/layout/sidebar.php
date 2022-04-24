<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">RESTAURANT</div>
    </a>

    <?php if (in_groups('kasir')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider text-light">

        <!-- Nav Item - My Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('kasir'); ?>">
                <i class="fas fa-user"></i>
                <span>Profile Kasir</span>
            </a>
        </li>

    <?php elseif (in_groups('pelayan')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider text-light">

        <!-- Nav Item - My Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('pelayan'); ?>">
                <i class="fas fa-user"></i>
                <span>Profile Pelayan</span>
            </a>
        </li>

    <?php elseif (in_groups('koki')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider text-light">

        <!-- Nav Item - My Profile -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('koki'); ?>">
                <i class="fas fa-user"></i>
                <span>Profile Koki</span>
            </a>
        </li>

    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider text-light">

    <!-- Heading -->
    <div class="sidebar-heading">
        User Profile
    </div>

    <!-- Nav Item - Edit Profile -->
    <li class="nav-item">
        <a class="nav-link" href="">
            <i class="fas fa-user-edit"></i>
            <span>ISI APA?</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider text-light">

    <!-- Nav Item - Logout -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt"></i>
            <span>Logout</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block text-light">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>
</ul>