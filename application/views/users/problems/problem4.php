		<div class="col-sm-9" >
			<h3>Problem 4</h3>
			<hr>
			<h4>Q4) Bypass Login Details and Login as admin </h4>
			<form class="form-horizontal" action="<?php echo base_url(); ?>index.php/problems/valp4" method="POST" >
				<hr style="border-width:0px" >
				
				<hr style="border-width:0px">
				<div class="form-group" >
					<label for="username" class="col-md-2" >Username: </label>
					<div class="col-md-3">
						<input type="text" placeholder="Enter username" name="username" class="form-control">
					</div>
				</div>
				<?php echo form_error('username'); ?>
				<div class="form-group" >
					<label for="password" class="col-md-2" >Password: </label>
				<div class="col-md-3" >
					<input type="password" name="password" placeholder="Enter password" class="form-control" >
				</div>
				</div>
				<?php echo form_error('password'); ?>
				<hr style="border-width:0px" >
				<div class="form-group" >
					<div class="col-md-5 col-md-offset-3" >
					<button type="submit" class="btn btn-info" value="Submit" >Login</button>
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