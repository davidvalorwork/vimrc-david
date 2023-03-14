import gTTS from 'gtts'
import VLC from 'vlc-simple-player'
import * as fs from 'fs'


async function speak(text) {
  return new Promise((resolve, reject) => {
    var gtts = new gTTS(text, 'en');
    gtts
    gtts.save('Voice.mp3', function (err, result) {
      var player = new VLC('Voice.mp3', {
        arguments: ['--no-fullscreen', '--no-loop', '--intf=dummy', '--rate=1.2', '--gain=120']
      });
      player.on('statuschange', (error, status) => {
        if (status.state == 'stopped') {
          // try { player.quit() } catch (e) { console.log(e) }
          fs.unlink('Voice.mp3', function (err) { })
          resolve()
        }
      })
    });
  })
}
export default speak;