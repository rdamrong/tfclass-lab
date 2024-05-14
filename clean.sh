#!/bin/sh

for i in  tf*; do echo $i; cd $i; rm -rf ".terraform" >/dev/null; rm -f ".terraform.lock.hcl"; rm -f "terraform.tfstate*"; rm -Rf "plan.out"; cd ..;  done

