					<div class="main-content">
						<div class="main-page left">
							<div class="double-block">
								<div class="content-block main left">
									<div class="block">
										<div class="block-title">
											<a href="<?php echo base_url(); ?>" class="right">Kembali ke halaman utama</a>
											<h2><?php echo $title; ?></h2>
										</div>
										<div class="block-content">
											<?php
											  foreach ($berita->result_array() as $r1) {	
											  		$tglr = tgl_indo($r1['tanggal']);
												  $baca = $r1['dibaca']+1;	
												  $isi_berita =(strip_tags($r1['isi_berita'])); 
												  $isi = substr($isi_berita,0,220); 
												  $isi = substr($isi_berita,0,strrpos($isi," ")); 
												  $judul = $r1['judul'];
												  $total_komentar = $this->model_utama->view_where('komentar',array('id_berita' => $r1['id_berita']))->num_rows();
												  echo "<div class='wide-article'>
														<div class='article-photo'>";
															if ($r1['gambar'] ==''){
																echo "<a class='hover-effect' href='".base_url()."berita/detail/$r1[judul_seo]'><img class='img-content' src='".base_url()."asset/foto_berita/small_no-image.jpg' alt='' /></a>";
															}else{
																echo "<a class='hover-effect' href='".base_url()."berita/detail/$r1[judul_seo]'><img class='img-content' src='".base_url()."asset/foto_berita/$r1[gambar]' alt='' /></a>";
															}
													echo "</div>
													
														<div class='article-content'>
															<h2 style='font-size:16px'><a href='".base_url()."berita/detail/$r1[judul_seo]'>$r1[judul]</a></h2>
															<span class='meta'>
																<a href='".base_url()."berita/detail/$r1[judul_seo]'><span class='icon-text'>&#128340;</span>$r1[jam], $tglr - Oleh : $r1[nama_lengkap]</a>
															</span>
															<p>$isi . . . <a href='".base_url()."berita/detail/$r1[judul_seo]' class='h-comment'>$total_komentar</a></p>
														</div>
													</div>";
											  }
										?>
											<div class="pagination">
												<?php echo $this->pagination->create_links(); ?>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="main-sidebar right" style='width: 320px;'>
							<?php include "sidebar_kanan.php"; ?>
						</div>
						<div class="clear-float"></div>
					</div>
