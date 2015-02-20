		<div class="col-sm-9" >
			<h3>Problem 2</h3>
			<hr>
			<h4>Q2) Remember what I taught ? Decrypt the encrypt !</h4>
			<form class="form-horizontal" action="<?php echo base_url(); ?>index.php/problems/valp2" method="POST" >
				<hr style="border-width:0px" >
				<div class="form-group" >
				<div class="col-md-5" >
					<input type="text" name="secret" placeholder="Enter Keyword" class="form-control" >
				</div>
				</div>
				<?php echo form_error('secret'); ?>
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