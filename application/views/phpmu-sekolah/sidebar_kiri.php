

<br>

<div class="widget">

	<h3>Informasi Sekolah</h3>

	<ul style="padding:0px 15px 0px 15px" class="article-block">

		<?php 

			$sekilas = $this->model_utama->view_ordering_limit('sekilasinfo','id_sekilas','DESC',0,3);

			foreach ($sekilas->result_array() as $row) {	

			$tgl = tgl_indo($row['tgl_posting']);

			echo "<li>

					<div class='article-list'>

						<span class='meta'>

							<a href='#'><span class='icon-text'>🕔</span>$tgl</a>

						</span>

						<h4><a style='color:#000' href='#'>$row[info]</a></h4>

					</div>

				  </li>";

			}

		?>							

	</ul>

</div>

<div class="widget">

	<h3>Profile Sekolah</h3>

	<ul style="padding:0px 15px 0px 15px" class="article-list">

		<?php 

			$sekolah1 = $this->model_app->view_where_ordering('halamanstatis',array('kelompok'=>'1'),'urutan','ASC');

			foreach ($sekolah1 as $s) {

				echo "<li><a href='".base_url()."halaman/detail/$s[judul_seo]'>$s[judul]</a></li>";

			}

		?>								

	</ul>

</div>



<div class="widget">

	<h3>Sarana Prasarana</h3>

	<ul style="padding:0px 15px 0px 15px" class="article-list">

		<?php 

			$sekolah2 = $this->model_app->view_where_ordering('halamanstatis',array('kelompok'=>'2'),'urutan','ASC');

			foreach ($sekolah2 as $s) {

				echo "<li><a href='".base_url()."halaman/detail/$s[judul_seo]'>$s[judul]</a></li>";

			}

		?>										

	</ul>

</div>

<div class="widget">

	<h3>Link Terkait</h3>

	<ul style="padding:0px 15px 0px 15px" class="article-list">

		<?php 

			$link_terkait = $this->model_utama->view_ordering_limit('link_terkait','id_link','DESC',0,50);

			foreach ($link_terkait->result_array() as $row) {	

			echo "<li><a target='BLANK' href='$row[url]'>$row[judul]</a></li>";

			}

		?>

	</ul>

</div>
