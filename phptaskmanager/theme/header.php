<?php  
    if(!isset($_SESSION['user'])):
        header('Location: /login');
        exit();
    endif;//не позволява да взлиа без юзъра да се е логнал
?>

<?php
    $loggedInUser = selectSingleUser($_SESSION['user']['id']);
    $welcome = 'Welcome, '.$loggedInUser['firstName']. ' '.$loggedInUser['lastName'].' (<a href="/logout">Logout</a>)';
?>
 <?php if(isset($_SESSION['message'])): ?>
    <div class="alert alert-<?php echo $_SESSION['message']['type']; ?>" role="alert">
        <?php echo $_SESSION['message']['msg']; ?>
    </div>
    <?php unset($_SESSION['message']); ?>
    <?php endif; ?>   
<div class="card">
<div class="card-body">
<header>

    <div class="container-fluid">
        
        <div class="row">
            <div class="col">
                <img src="/images/logo.png" class="img-fluid">
            </div>
            <div class="col-md-11 text-right">
                <nav>
                    <ul>
                        <li><a href="/">Dashboard</a></li>
                        <li><a href="/create">New Employee</a></li>
                        <?php if($_SESSION['user']['level'] >= 1) : ?>
                        <li><a href="/users">Users</a></li>                 
                        <?php endif; ?>
                        <li><?php echo $welcome; ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</header>