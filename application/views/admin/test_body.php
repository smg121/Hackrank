      <div class="col-md-9" >
        <h3>Contest</h3>
        <hr>
        
        <a href="/coderank/index.php/admin/add" class="btn btn-info">Add Contest</a>
        <hr style="border-width:0px">
        	<table class="table table-hover" >
        		<thead>
        			<tr>
        				<td>Code</td>
        				<td>Contest</td>
        				<td>Start Time</td>
        				<td>End Time</td>
        			</tr>
        		</thead>
        		<tbody>
        			
        			<?php
        				// code for printing table in tabular format
        				foreach($records as $row)
        				{
                            echo "<tr>";
        					echo "<td>".$row->code."</td>";
        					echo "<td><a href='#' >".$row->name."</a></td>";
        				
        					echo "<td>".$row->starttime."</td>";
        					echo "<td>".$row->endtime."</td>";
                            echo "<td><a href='".base_url()."index.php/admin/edit/".$row->id."' class='btn btn-danger' > Edit </a></td>";
                            echo "</tr>";
        				}


        			?>
        			
        		</tbody>
          	</table>
            <div class="col-md-5 col-md-offset-4" >
          	     <?php echo $links; //echo $this->table->generate($records);?>
            </div>
      </div>

    </div>
  </div>







<!-- Donot touch javascript functionalities -->
              <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
              <script src="http://localhost/coderank/js/bootstrap.js" ></script>

</body>
</html>