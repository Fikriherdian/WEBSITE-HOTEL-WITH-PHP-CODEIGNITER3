<section id="contact" class="contact">
  <div class="container aos-init aos-animate" data-aos="fade-up">
    <div class="section-title">
      <h2>Contact</h2>
    </div>
    <div class="row mt-1">
      <div class="col-lg-4">
        <div class="info">
          <div class="address">
            <i class="bi bi-geo-alt"></i>
            <h4>Alamat:</ h4>
            <p>Kota Bogor, Jawa barat, Indonesia</p>
          </div>
          <div class="email">
            <i class="bi bi-envelope"></i>
            <h4>Email:</h4>
            <p>lagustinus211@gmail.com</p>
          </div>
          <div class="phone">
            <i class="bi bi-phone"></i>
            <h4>kontak:</h4>
            <p>+62 81221723861</p>
          </div>
        </div>
      </div>
      <div class="col-lg-8 mt-5 mt-lg-0">
          <div class="row">
            <div class="col-md-12 form-group">
              <input type="text" name="name" class="form-control" id="nama" placeholder="Tuliskan namamu" required="">
            </div>
          </div>
          <div class="form-group mt-3">
            <input type="text" class="form-control" name="subject" id="subject" placeholder="Tuliskan Topik Kontak" required="">
          </div>
          <div class="form-group mt-3">
            <textarea class="form-control" name="message" id="message" rows="5" placeholder="pesan mu ..." required=""></textarea>
          </div>
          <!-- <div class="my-3"><div class="loading">Loading</div><div class="error-message"></div><div class="sent-message">pesanmu Sudah Terkirim. Terimakasih!</div></div> -->
          <div class="text-center">
            <button type="button" class="btn btn-primary" onclick="cas()">Kirim pesan</button>
          </div>
<!--           <script>
            function cas() {
              var nama = document.getElementById('nama').value
              var subject = document.getElementById('subject').value
              var message = document.getElementById('message').value
              var vas = 'https://wa.me/6281221723861/?text=' + 'halo saya ' + nama + ' hendak membahas ' + subject + ' oleh karena itu ' + message;
              window.location.replace(vas)
            }
          </script> -->
      </div>
    </div>
  </div>
</section>