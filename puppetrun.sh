#!/bin/sh

ssh -J jacob.verhoeks@13.250.59.39 jacob.verhoeks@10.40.5.241 "sudo su - -c '/opt/puppetlabs/puppet/bin/r10k deploy environment production --puppetfile'"
ssh -J jacob.verhoeks@13.250.59.39 jacob.verhoeks@10.40.7.242 "sudo su - -c '/opt/puppetlabs/puppet/bin/r10k deploy environment production --puppetfile'"
ssh -J jacob.verhoeks@13.250.59.39 jacob.verhoeks@10.40.7.242 "sudo su - -c 'mco puppet runall 5'"
ssh -J jacob.verhoeks@13.250.59.39 jacob.verhoeks@10.40.7.242 "sudo su - -c 'mco puppet runonce'"

ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.6.143 "sudo su - -c '/opt/puppetlabs/puppet/bin/r10k deploy environment staging --puppetfile'"
ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.6.143 "sudo su - -c 'mco puppet runall 5'"
ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.6.143 "sudo su - -c 'mco puppet rununce'"

ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.22.205 "sudo su - -c 'puppet agent -t'"
ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.21.231 "sudo su - -c 'puppet agent -t'"
ssh -J jacob.verhoeks@54.169.201.8 jacob.verhoeks@10.30.22.62 "sudo su - -c 'puppet agent -t'"
