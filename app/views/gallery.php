<?php
include_once APPROOT . '/views/includes/header.php';
include_once APPROOT . '/views/includes/navbar.php';
?>

<div class="containerfluid" style="background-color: #e2eafc;">
<div class="container">
    <div class="row ">
        <?php foreach ($data['galleryrow'] as $cruise) : ?>

            <div class="col-lg-4 mt-4">
                <div class="card card-margin">
                    <div class="card-header no-border">

                        <h5 class="card-title" style="color: #f35b04;"><?= $cruise->nom_croisiere ?></h5>
                    </div>
                    <div class="card-body pt-0">
                        <div class="widget-49">
                            <div class="widget-49-title-wrapper">
                                <div class="widget-49-date-primary">
                                    <span class="imgDisplay"><img src="<?= URLROOT.'img/'.$cruise->image?>" alt=""></span>
                                </div>
                                <div class="widget-49-meeting-info">
                                    <span class="widget-49-pro-title">Start in- <?= $cruise->id_port_depart ?> | End- <?= $cruise->id_port_arrive ?>
                                        <!-- //PRO-08235 DeskOpe. Website -->
                                    </span>
                                    <span class="widget-49-meeting-time"><?= $cruise->nombr_nuit . ' Days.' ?></span>
                                </div>
                            </div>
                            <ul class="widget-49-meeting-points">
                                <li class="widget-49-meeting-item"><span><?= $cruise->description_croisire ?>.</span></li>
                            </ul>
                            <ul class="widget-49-meeting-points">
                                <li class="widget-49-meeting-item"><span>Price- <?= $cruise->prix_croisr ?> DH.</span></li>
                            </ul>
                            <div class="widget-49-meeting-action">
                                <button href="#" type="button" class="btn btn-outline-primary" class="btn text-primary btn-sm btn btn-border-primary">Reserve</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        <?php endforeach ?>
    </div>
</div>
</div>


<?php include_once APPROOT . '/views/includes/footer.php'; ?>