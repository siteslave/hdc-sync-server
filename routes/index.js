var express = require('express');
var router = express.Router();

var path = require('path'),
  fse = require('fs-extra'),
  Random = require('random-js'),
  hdcImport = require('../libs/hdc-import');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.send({ok: true, msg: 'Welcome to hdc-sync-server'});
});

router.get('/status', function (req, res) {
  res.send({ok: true});
});

router.post('/upload', function (req, res) {
  //console.log(req.files.file);
  //console.log('You have new file: ' + colors.green(req.files.file.originalname));
  var province = req.body.province;
  //console.log(province);
  // Get files list
  var zipFile = req.files.file.path;
  // Create new extract path
  var random = new Random();
  var strRandom = random.hex(20, true);
  var destPath = path.join('./extracted', strRandom);
  // Create directory
  fse.ensureDirSync(destPath);

  var files = hdcImport.doExtract(zipFile, destPath);

  if (files.length) {

    hdcImport.doImport(req.db, files)
      .then(function () {
        fse.deleteSync(destPath);
        hdcImport.setLog(req.db, province, req.files.file.originalname)
          .then(function () {
            //success
            res.send({ok: true});
          }, function (err) {
            console.log(err);
            res.send({ok: false, msg: err});
          });
      }, function (err) {
        console.log(err);
        res.send({ok: false, msg: err});
      });

  } else {
    console.log('Text file not found.');
    res.send({ok: false, msg: 'Text file not found'});
  }

});

module.exports = router;
