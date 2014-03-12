vagrant_share_centos
====================
Check for vagrant share using vagrant of cents

Vagrant Shareに登録した後、動作の確認をするためだけのVagrantfile。
Vagrantfileはv1, v2の共存が可能であるから、既存のv1のHTTPが動作するVagrantfileに
```
Vagrant.configure("2") do |config|
   config.vm.network :forwarded_port, guest: 80, host: 8080 
end
```
を加えるだけで、動作確認可能。

PreRequirement
-----
$ vagrant box add base64 CentOS-6.3-x86_64-v20130101.box  
$ vagrant up  
$ vagrant login  
$ vagrant share  

License and Authors
-------------------
Authors: Hiroharu Tanaka

