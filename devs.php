<?php session_start();
include 'components/connections.php';

if (empty($_SESSION['id'])):
    header('Location: user-signin.php');
endif;?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="shortcut icon" href="img/svci_logo.png">
  <title>The Developers</title>

  <style>
    @import url("https://fonts.googleapis.com/css2?family=Ubuntu+Mono&display=swap");
    @import url("https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@600&display=swap");

    * {
      padding: 0;
      margin: 0;
      background-color: #dbdbdb;
      font-family: "Ubuntu Mono", monospace;
    }

    body {
      margin: 50px 0;
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      gap: 50px;
    }

    h1,
    h2,
    h3 {
      font-family: "Space Grotesk", sans-serif;
      background-color: transparent;
    }

    i,
    p {
      background-color: transparent;
    }

    p {
      position: absolute;
      bottom: 30px;
    }

    i {
      padding: 25px;
    }

    a {
      color: black;
      text-decoration: none;
    }

    main {
      display: flex;
      justify-content: center;
      gap: 50px;
      flex-wrap: wrap;
    }

    section {
      position: relative;
      width: 380px;
      height: 500px;
      padding: 5px;
      background-color: #ffffff;
      border-radius: 25px;
      border: 1px solid black;
      display: flex;
      flex-direction: column;
      align-items: center;
      transition: transform 0.3s ease;
    }

    section:hover {
      transform: translateY(-10px);
      transition: transform 0.3s ease 0s;
    }

    section:not(:hover) {
      transition: transform 0.3s ease 0.3s;
      transform: translateY(0);
    }

    section img {
      margin: 25px 0;
      width: 200px;
      height: auto;
      background-color: transparent;
    }

    footer a {
      display: flex;
      gap: 10px;
      align-items: center;
    }

    footer a img {
      width: 20px;
      height: 20px;
    }

    footer a:hover img {
      animation: move 1s infinite;
    }

    @keyframes move {
      0% {
        transform: translateX(0);
      }

      50% {
        transform: translateX(-10px);
      }

      100% {
        transform: translateX(0);
      }
    }
  </style>
  
</head>

<body>
  <h1>The Developers</h1>
  <main>
    <section>
      <img src="img/devs/Henry.png" alt="Alegrado" />
      <h2>Alegrado, Henry Hart</h2>
      <i>"Because I am handsome and loved by all. The phrase 'flowers bloom on
        sight' was created it describe me."</i>
      <p>henryhartalegrado@gmail.com</p>
    </section>
    <section>
      <img src="img/devs/Kim.png" alt="Manlangit" />
      <h2>Manlangit, Kim Gedonn</h2>
      <i>"Gentlemen, we're all educated people here that use their words
        instead of fists. Let's take our time talking, I rely on my handsome
        face to eat so please, don't hit the face or I'll go hungry."</i>
      <p>ghedonnheaven@gmail.com</p>
    </section>
    <section>
      <img src="img/devs/Kent.png" alt="Sumbilon" />
      <h2>Sumbilon, Kent</h2>
      <i>"Baby, baby, you're my sun and moon. Girl, you're everything between. A lot of pretty faces could waste my
        time. But you're my dream girl."</i>
      <p>knstsmbln1@gmail.com</p>
    </section>
  </main>
  <footer>
    <a href="index.php">
      <img src="img/devs/doublearrow.png" alt="double arrow" />
      <h3>Back to the website</h3>
    </a>
  </footer>
</body>

</html>