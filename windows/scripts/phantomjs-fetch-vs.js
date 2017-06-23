var page = require('webpage').create(),
  system = require('system'),
  t, address, component;

t = Date.now();

if (system.args.length === 1) {
  console.log('Usage: phantomjs-fetch-vs.js <component name>');
  component = "agents-for-visual-studio-2017";
}else if(system.args.length === 2) {
  component = system.args[1];
}

page.open('https://www.visualstudio.com/downloads/#build-tools-for-visual-studio-2017', function(status) {
  if (status !== 'success') {
    console.log('FAIL to load the address');
  } else {
    console.log('Loading ' + component);
    console.log('Loading time ' + Date.now() - t + ' msec');

    console.log('TODO: inspect page DOM, send click event to div[id="agents-for-visual-studio-2017"]/a[class="download-button"] and store result of GET request to disk');
  }
  phantom.exit();
});
