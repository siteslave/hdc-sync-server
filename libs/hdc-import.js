var Zip = require('adm-zip'),
  Finder = require('fs-finder'),
  path = require('path'),
  _ = require('lodash'),
  Q = require('q'),
  moment = require('moment'),
  Importor = require('./importor.js');

var HDCImportor = {};
require('q-foreach')(Q);

HDCImportor.setLog = function (db, province, file) {
  var q = Q.defer();

  db('logs')
    .insert({
      province: province,
      file_name: file,
      uploaded_at: moment().format('YYYY-MM-DD HH:mm:ss')
    })
    .then(function () {
      q.resolve();
    })
    .catch(function (err) {
      q.reject(err);
    });

  return q.promise;
};

HDCImportor.doExtract = function (zipFile, destPath) {
  var q = Q.defer();
  var zip = new Zip(zipFile);
  zip.extractAllTo(destPath, true);

  return Finder.from(destPath).findFiles('*.txt');
};

HDCImportor.doImport = function (db, files) {

  // Create file array
  var allFiles = [];
  // Get full file path
  _.forEach(files, function (file) {
    var fileName = path.basename(file).toUpperCase();

    if (fileName == 'RESULT.TXT') allFiles.result = file;
    if (fileName == 'TARGET.TXT') allFiles.target = file;
    //if (fileName == 'KPI117.TXT') allFiles.kpi117 = file;
    //if (fileName == 'KPI117.TXT') allFiles.kpi117 = file;
  });

  var q = Q.defer();

  Importor.result(db, allFiles.result)
    .then(function () {
      return Importor.target(db, allFiles.target);
    })
    .then(function () {
      q.resolve();
    }, function (err) {
      q.reject(err);
    });

  return q.promise;
};

module.exports = HDCImportor;
