<?php

class userController extends Controller
{
    public function __construct()
    {
        $this->userModel = $this->model('User');
    }
    
    public function login()
    {
        if($_SERVER['REQUEST_METHOD']=='POST')
        {
            $_POST= filter_input_array(INPUT_POST ,FILTER_SANITIZE_STRING);

            // creation array's data:
            $data=
            [
                'email'    => $_POST['Email'],
                'password' => $_POST['Password']
            ];

            $user = $this->userModel->login($data['email']);
            if($user){
                if($user->userPassword == $data['password'])
                {
                    // Set The sessions
                    $_SESSION['user_id'] = $user->id_u;
                    $_SESSION['user_email'] = $user->userEmail;

                    // Go to home:
                    header('location:'.URLROOT.'home');
                }
                }else 
                {
                    // Return login:
                    $this->view('login', []);
                }
        }else
        {
            // $data = [
            //     'email' => '',
            //     'password' => '',
            // ];
            // load the register
            // $this->view('login',$data);

            $this->view('login',[]);

        }
    }


    public function signup()
    {
        if($_SERVER['REQUEST_METHOD']=='POST')
        {
            $_POST= filter_input_array(INPUT_POST ,FILTER_SANITIZE_STRING);

            // creation array's data:
            $data=
            [
                'email'    => $_POST['Email'],
                'password' => $_POST['Password']
            ];

         
            if($this->userModel->signup($data['email'],$data['password'])){
                header('location:'.URLROOT.'userController/login');
            }else{
                $this->view('signup',[]);
            }
        }else{
            $this->view('signup',[]);
        }

        
    }
    public function logout()
    {
        $this->view('logout');
    }
}
