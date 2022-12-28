
    <!-- navbar -->
    <nav class="navbar navbar-expand-lg bg-light">
        <div class="container-fluid">
            <a class="navbar-brand " href="<?=URLROOT?>" ><b>ShipCruise</b></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="<?=URLROOT?>">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<?=URLROOT?>GalleryControl/showgallery">Gallery</a>
                    </li>
                    
                </ul>
                <form class="d-flex" role="search">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <?php if(isset($_SESSION['user_id'])): ?>
                        <li><a class="nav-link me-md-4 mb-md-0 mb-2" href="#">Reservation</a></li>
                        <li><a class="nav-link" href="#">Log out</a></li>
                        <?php else: ?>
                        <li><a class="nav-link me-md-4 mb-md-0 mb-2" href="<?=URLROOT?>usercontroller/login">Sign in</a></li>
                        <li><a class="nav-link text-primary" href="<?=URLROOT?>usercontroller/signup">Sign up</a></li>
                        <?php endif; ?>
                    </ul>
                </form>
            </div>
        </div>
    </nav>
    <!-- end navbar -->