          <div class="content mt-4">
            <?php if(isset($_SESSION['sessData'])):
                    if(!empty($_SESSION['sessData'])):
                      $sssData=array();
                      $sssData=$_SESSION['sessData'];
                      if($sssData['status']['type']=='success'):
            ?>
                                  <div class=" mb-1">
                                      <div class="alert  alert-success alert-dismissible fade show" role="alert">
                                          <span class="badge badge-pill badge-success">Notification</span> <?php echo $sssData['status']['msg'];?>
                                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                              <span aria-hidden="true">&times;</span>
                                          </button>
                                      </div>
                                  </div>
            <?php     else: ?>
                                <div class=" mb-1">
                                    <div class="alert  alert-danger alert-dismissible fade show" role="alert">
                                        <span class="badge badge-pill badge-danger">Notification</span> <?php echo $sssData['status']['msg'];?>
                                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>
            <?php     endif; ?>
            <?php endif; endif; ?>
            <button type="button" class="btn btn-secondary mb-1  fa fa-plus" data-toggle="modal" data-target="#register"> Register New Member</button>
            <div class="animated fadeIn">
                <div class="row">
<?php $all = $db->getRows('members', array('order_by'=>'id desc'));
      if(!empty($all)): $count=0;
        foreach($all as $row): $count++;
?>
                    <div class="col-md-4">
                        <aside class="profile-nav alt">
                            <section class="card">
                                <div class="card-header user-header alt bg-dark">
                                    <div class="media">
                                        <a href="#">
                                            <img class="align-self-center rounded-circle mr-3" style="width:85px; height:85px;" alt="" src="images/user.png">
                                        </a>
                                        <div class="media-body">
                                            <h2 class="text-light display-6"><?= $row['fname'].' '.$row['lname'] ?></h2>
                                            <p>Member</p>
                                        </div>
                                    </div>
                                </div>

                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item">
                                        <a href="#"> <i class="fa fa-envelope-o"></i> Email <span class="badge badge-default pull-right"><?= $row['email'] ?></span></a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href="#"> <i class="fa fa-tasks"></i> Telephone <span class="badge badge-default pull-right"><?= $row['phone'] ?></span></a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href="#"> <i class="fa fa-map-marker"> </i> Address <span class="badge badge-default pull-right"><?= $row['address'] ?></span></a>
                                    </li>
                                    <li class="list-group-item">
                                        <a href="#"> <i class="fa fa-bell-o"></i> Status <span class="badge badge-default pull-right"><?php if($row['status']==1) echo 'Activated'; else echo 'Desactivated';?></span></a>
                                    </li>
                                    <li class="list-group-item">
                                      <button type="button" class="btn btn-secondary mb-1 pull-right fa fa-pencil" data-toggle="modal" data-target="#edit<?= $row['id']?>ezpk"> Edit</button>
                                      <button type="button" class="btn btn-danger mb-1 pull-left fa fa-trash" data-toggle="modal" data-target="#delete<?= $row['id'] ?>ezpk"> Delete</button>
                                    </li>
                                </ul>

                            </section>
                        </aside>
                    </div>

                    <!-- Modals -->
                    <div class="modal fade" id="delete<?= $row['id'] ?>ezpk" tabindex="-1" style="margin-top: 80px;" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content" >
                                <div class="modal-header">
                                    <h5 class="modal-title" id="mediumModalLabel">Solglobal ~ MMMS <span class="text-muted"> | Member</span> </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                              <form  class="form-horizontal" action="class/memberController.php" method="post">
                                <div class="modal-body">
                                    <center>
                                        Do you want to delete this Member : <B> <?= $row['fname'].' '.$row['lname'] ?> </B> ?
                                    </center>
                                </div>
                                <div class="modal-footer">
                                    <input type="hidden" name="ID" value="<?= $row['id'] ?>">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" name="delete" class="btn btn-primary">Delete</button>
                                </div>
                              </form>
                            </div>
                        </div>
                    </div>
                    <div class="modal fade" id="edit<?= $row['id']?>ezpk" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                        <div class="modal-dialog modal-lg" role="document">
                            <div class="modal-content">
                              <form  class="form-horizontal" action="class/memberController.php" method="post">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="mediumModalLabel">Solglobal ~ MMMS <span class="text-muted"> | Member</span> </h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-email" class=" form-control-label">First Name : </label></div>
                                      <div class="col-12 col-md-10"><input type="text" id="hf-email" name="fname" value="<?= $row['fname'] ?>" class="form-control"></div>
                                  </div>
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-password" class=" form-control-label">Last Name : </label></div>
                                      <div class="col-12 col-md-10"><input type="text" id="hf-password" name="lname" value="<?= $row['lname'] ?>" class="form-control"></div>
                                  </div>
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Email : </label></div>
                                      <div class="col-12 col-md-10"><input type="text" id="hf-email" name="email" value="<?= $row['email'] ?>" class="form-control"></div>
                                  </div>
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-password" class=" form-control-label">Telephone : </label></div>
                                      <div class="col-12 col-md-10"><input type="text" id="hf-password" name="phone" value="<?= $row['phone'] ?>" class="form-control"></div>
                                  </div>
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Address : </label></div>
                                      <div class="col-12 col-md-10"><input type="text" id="hf-email" name="address" value="<?= $row['address'] ?>" class="form-control"></div>
                                  </div>
                                  <div class="row form-group">
                                      <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Status : </label></div>
                                      <div class="col-12 col-md-10">
                                        <select  id="hf-email" name="status"  class="form-control">
                                          <option value="<?= $row['status'] ?>" hidden><?php if($row['status']==1) echo 'Activated'; else echo 'Desactivated';?></option>
                                          <option value="1">Activate</option>
                                          <option value="0">Desactivate</option>
                                       </select>
                                     </div>
                                  </div>
                                </div>
                                <div class="modal-footer">
                                    <input type="hidden" name="ID" value="<?= $row['id'] ?>">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                    <button type="submit" name="update" class="btn btn-primary">Save Modification</button>
                                </div>
                              </form>
                            </div>
                        </div>
                    </div>
                    <!-- Ends Modals -->
<?php endforeach; endif; ?>
                </div><!-- .row -->
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->
    <!-- Right Panel -->

    <div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg"  role="document">
            <div class="modal-content" >
              <form  class="form-horizontal" action="class/memberController.php" method="post">
                <div class="modal-header">
                    <h5 class="modal-title" id="mediumModalLabel">Solglobal ~ MMMS <span class="text-muted"> | Member</span> </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-email" class=" form-control-label">First Name : </label></div>
                        <div class="col-12 col-md-10"><input type="text" id="hf-email" name="fname" placeholder="First Name..." class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-password" class=" form-control-label">Last Name : </label></div>
                        <div class="col-12 col-md-10"><input type="text" id="hf-password" name="lname" placeholder="Enter First Name..." class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Email : </label></div>
                        <div class="col-12 col-md-10"><input type="text" id="hf-email" name="email" placeholder="Enter Email..." class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-password" class=" form-control-label">Telephone : </label></div>
                        <div class="col-12 col-md-10"><input type="text" id="hf-password" name="phone" placeholder="Enter Telephone..." class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Address : </label></div>
                        <div class="col-12 col-md-10"><input type="text" id="hf-email" name="address" placeholder="Enter Address..." class="form-control"></div>
                    </div>
                    <div class="row form-group">
                        <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Status : </label></div>
                        <div class="col-12 col-md-10">
                          <select  id="hf-email" name="status"  class="form-control">
                            <option value="" hidden>Select Status</option>
                            <option value="1">Activate</option>
                            <option value="0">Desactivate</option>
                         </select>
                       </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="submit" name="register" class="btn btn-primary">Register Member</button>
                </div>
             </form>
            </div>
        </div>
    </div>
