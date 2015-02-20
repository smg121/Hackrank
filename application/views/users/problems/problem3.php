		<div class="col-sm-9" >
			<h3>Problem 3</h3>
			<hr>
			<h4>Q3) Find what's behind the image ?</h4>
			<form class="form-horizontal" action="<?php echo base_url(); ?>index.php/problems/valp3" method="POST" >
				<hr style="border-width:0px" >
				Download Image from
					<a href="<?php echo base_url(); ?>prob3.bmp" download="prob3.bmp" class="btn btn-danger" >Download</a>
				<hr style="border-width:0px">
				<div class="form-group" >
				<div class="col-md-5" >
					<input type="text" name="image" placeholder="Enter Keyword" class="form-control" >
				</div>
				</div>
				<?php echo form_error('image'); ?>
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