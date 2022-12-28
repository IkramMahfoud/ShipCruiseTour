<?php
    include_once APPROOT.'/views/includes/header.php';
    include_once APPROOT.'/views/includes/navbar.php';
?>
<div class="container-fluid vh-100 pt-md-5 d-md-flex flex-column justify-content-between" style="background-image: url(http://localhost/my_php_project/shipCruise/img/b1.jpg);
    background-size: cover;
    background-position: center;">
    <div class="row px-md-5 py-md-5 mt-md-5">
        <div class="col-md-10 text-md-start text-center px-5 ms-md-5 text-box">
            <h1 class="pt-5 fw-bold" style="font-size: 50px;">Book your cruise</h1>
            <p class="fw-normal p-header">
                Lorem ipsum dolor, sit amet consectetur adipisicing elit. <br>
                Similique enim ducimus unde accusamus laudantium quasi labore animi sed! <br>
                Eveniet doloremque accusamus reprehenderit,<br>
                amet id consequuntur explicabo repellat minima debitis enim.
            </p>
            <button type="button" class="btn btn-primary">Learn more</button>
        </div>
    </div>
    <div class="row mb-md-5">
        <div class="col-8 mx-auto bg-light py-md-4 px-md-4 bg-opacity-25 d-flex flex-md-row flex-column align-items-center justify-content-md-evenly">
            <div>
                <p class="fw-bold pr">Where</p>
                <select class="form-select selct" aria-label="Default select example">
                    <option selected>Select a destination</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                </select>
            </div>
            <div>
                <p class="fw-bold par">When</p>
                <select class="form-select slect" aria-label="Default select example">
                    <option selected>Select a date</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                </select>
            </div>
            <div>
                <p class="fw-bold pra">Room</p>
                <select class="form-select slct" aria-label="Default select example">
                    <option selected>Select a cruise line</option>
                    <option value="1">One</option>
                    <option value="2">Two</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                    <option value="3">Three</option>
                </select>
            </div>
            <button class="btn btn-primary align-self-end mb-md-2">Submit</button>
        </div>
    </div>
</div>

<?php
    include_once APPROOT.'/views/includes/footer.php';
?>