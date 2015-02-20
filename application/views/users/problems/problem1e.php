		<div class="col-sm-9" >
			<h3>Problem 1</h3>
			<hr>
			<h4>Q1) I'm the source,I'm the destiny,I'm the 8 letter word ?</h4>
			<form class="form-horizontal" action="<?php echo base_url(); ?>index.php/problems/valp1" method="POST" >
				<hr style="border-width:0px" >
				<div class="form-group" >
				<div class="col-md-5" >
					<input type="text" name="keyword" placeholder="Enter Keyword" class="form-control" >
				</div>
				</div>
				<?php echo form_error('keyword'); ?>
				<?php
					if(isset($p1e))
						echo $p1e ;
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
    <script src="http://localhost/coderank/js/bootstrap.js" ></script>
</body>
</html>