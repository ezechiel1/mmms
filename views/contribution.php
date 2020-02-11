        <div class="content mt-3">
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
          <button type="button" class="btn btn-secondary mb-1  fa fa-plus" data-toggle="modal" data-target="#register"> Register New Contribution</button>
            <div class="animated fadeIn">
                <div class="row">

                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Data Table</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table-export" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>#No.</th>
                                            <th>Member</th>
                                            <th>Amount</th>
                                            <th>Total Amount</th>
                                            <th>Date Payment</th>
                                            <th>Administrator</th>
                                            <th> Confirmation</th>
                                            <th>Date</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
<?php $all = $db->getRows('contributions', array('order_by'=>'id desc'));
      if(!empty($all)): $count=0;
        foreach($all as $row): $count++;
        $getM=$db->getRows('members', array('where'=>array('id'=>$row['member_id']))); if(!empty($getM)): foreach($getM as $getMember):
            $getA=$db->getRows('members', array('where'=>array('id'=>$row['admin_id']))); if(!empty($getA)): foreach($getA as $getAdmin):
?>
                                        <tr>
                                            <td><?= $count ?></td>
                                            <td><?= $getMember['fname'].' '.$getMember['lname'] ?></td>
                                            <td>$ <?= $row['amount'] ?></td>
                                            <td>$ <?= $row['total_amount'] ?></td>
                                            <td><?= $row['date_payment'] ?></td>
                                            <td><?= $getAdmin['fname'].' '.$getAdmin['lname'] ?></td>
                                            <td><?php if($row['member_confirmation']==-1) echo 'Denied'; else if($row['member_confirmation']==0) echo 'Pending'; else echo 'Confirmed'; ?></td>
                                            <td><?= $row['c_date'] ?></td>
                                            <td><?php if($row['member_id']==$_SESSION['ID']):?><button type="button" class="btn btn-secondary mb-1 pull-left fa fa-trash" data-toggle="modal" data-target="#confirm<?= $row['id'] ?>ezpk"> Confirm</button>
                                            <?php else:?><button type="button" class="btn btn-default mb-1 pull-left fa fa-trash disabled" disabled data-toggle="modal" data-target="#confirm<?= $row['id'] ?>ezpk"> Confirm</button>
                                                <?php endif; ?>
                                            </td>
                                        </tr>
                                        <!-- Modals -->
                                        <div class="modal fade" id="confirm<?= $row['id'] ?>ezpk" tabindex="-1" style="margin-top: 80px;" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                                            <div class="modal-dialog modal-lg" role="document">
                                                <div class="modal-content" >
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="mediumModalLabel">Solglobal ~ MMMS <span class="text-muted"> | Contribution Confirmation</span> </h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                  <form  class="form-horizontal" action="class/contributionController.php" method="post">
                                                    <div class="modal-body">
                                                        <center>
                                                            Do you want to confirm this Contribution : <B> $ <?= $row['amount'].' for '.$row['date_payment']. ',  done on '.$row['c_date'] ?> </B> ?
                                                        </center>
                                                    </div>
                                                    <div class="modal-footer">
                                                        <input type="hidden" name="ID" value="<?= $row['id'] ?>">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                                        <button type="submit" name="deny" class="btn btn-danger">Deny</button>
                                                        <button type="submit" name="confirm" class="btn btn-primary">Confirm</button>
                                                    </div>
                                                  </form>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- Ends Modal -->
<?php         endforeach; endif;
        endforeach; endif;
endforeach; endif; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


    </div><!-- /#right-panel -->

    <!-- Right Panel -->

        <div class="modal fade" id="register" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg"  role="document">
                <div class="modal-content" >
                  <form  class="form-horizontal" action="class/contributionController.php" method="post">
                    <div class="modal-header">
                        <h5 class="modal-title" id="mediumModalLabel">Solglobal ~ MMMS <span class="text-muted"> | Contribution</span> </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                      <div class="row form-group">
                          <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Member : </label></div>
                          <div class="col-12 col-md-10">
                            <select  id="hf-email" name="member"  class="form-control">
                              <option value="" hidden>Select Member</option>
<?php $allM=$db->getRows('members', array('order_by'=>'fname asc')); if(!empty($allM)): foreach($allM as $member): ?>
                              <option value="<?= $member['id'] ?>"><?= $member['fname'].' '.$member['lname'] ?></option>
<?php endforeach; endif; ?>
                           </select>
                         </div>
                      </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="hf-password" class=" form-control-label">Amount : </label></div>
                            <div class="col-12 col-md-10"><input type="number" id="hf-password" name="amount" placeholder="Enter Amount..." class="form-control"></div>
                        </div>
                        <div class="row form-group">
                            <div class="col col-md-2"><label for="hf-email" class=" form-control-label">Date Payment </label></div>
                            <div class="col-12 col-md-10"><input type="date" id="hf-email" name="date_payment"  class="form-control"></div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                        <button type="submit" name="register" class="btn btn-primary">Register Contribution</button>
                    </div>
                 </form>
                </div>
            </div>
        </div>
