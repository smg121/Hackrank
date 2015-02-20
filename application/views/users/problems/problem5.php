		<div class="col-sm-9" >
			<h3>Problem 5</h3>
			<hr>
			<h4>Q5) Enter the Email ID ?</h4>
			<form class="form-horizontal" action="<?php echo base_url(); ?>index.php/problems/valp5" method="POST" >
				<hr style="border-width:0px" >
				<div class="form-group" >
				<div class="col-md-5" >
					<input type="text" name="mobile" placeholder="Enter Email" class="form-control" >
				</div>
				</div>
				<img src="<?php echo base_url() ?>ceo.jpg" width="45%" height="50%" alt="Mobile number" >

				<?php echo form_error('mobile'); ?>
				<?php 
					/*
						if(isset($p1))
						{
							echo "<div class='alert alert-success' style='font-size:15px'";
							echo $p1;
							echo "</div>";
							//9441867486
						}
					*/
					
				?>
				<hr style="border-width:0px" >
				<div class="form-group" >
					<div class="col-md-5 col-md-offset-3" >
					<button type="submit" class="btn btn-info" value="Submit" >Submit</button>
					</div>
				</div>
			</form>

		</div>

	</div>
</div>


<!-- Donot change Javascripts -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="<?php echo base_url(); ?>js/bootstrap.js" ></script>
</body>
</html>