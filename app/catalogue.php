<!DOCTYPE html>
<html lang="en">


<?php

// On connecte la Bdd
include "data/configuration.php";

// Préparer une instruction SQL
$sql = "SELECT * FROM ordinateurs 
ORDER BY prix DESC";

// Lancer la requête 
$requete = $pdo->prepare($sql);
$requete->execute();

// Recuperer le nombre de lignes
$nblignes = $requete->rowCount();

// Recuperer les données ramenés du serveur
$donnees = $requete->fetchALL();

?>
<?php include "includes/head.php" ?>



<body>
    <div class="container-fluid">
        <!-- Menu (Navbar Bootstrap) -->
        <?php include "includes/navigation.php" ?>





        <div class="p-3 mb-2 bg-light text-secondary-emphasis  ">
            <h1 class=" p-3 text-center"> Ordinateurs portables  </i></h1>
        </div>
<div class ="container">
        <table class="table table-striped table-hover">

<thead>
  <tr>
    <th>Photo</th>
    <th>Marque</th>
    <th>Modèle</th>
    <th>Processeur</th>
    <th>Mémoire</th>
    <th>Disque</th>
    <th>Prix</th>
  </tr>
</thead>

<tbody>
  <?php foreach ($donnees as $ligne) : ?>
    <tr>
      <td><img src="images/<?= $ligne['id'] ?>.png"  width="100px"> </td> 
    
      <td><?= $ligne['marque'] ?></td>
      <td><a href="/<?= $ligne['id'] ?>.php"><?= $ligne['modele'] ?></a></td>
      <td><?= $ligne['processeur'] ?></td>
      <td><?= $ligne['memoire'] ?></td>
      <td><?= $ligne['disque'] ?></td>
      <td><span class="badge text-bg-success"><?= $ligne['prix'] ?> €</span></td>
      
    </tr>
  <?php endforeach ?>

  

</tbody>
</table>

<p>
    <b>Nombre de modèles </b><button type="button" class="btn btn-primary text-white"><?= $nblignes ?></button> 
  </p>
</div>
        </div>
        </div>


</body>

<?php include "includes/footer.php" ?>

</html>