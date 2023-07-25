#!/usr/bin/env bash
rm -rf charts
echo "# This manifest was generated by automation. DO NOT EDIT." >./kubelet-csr-approver.yaml
kustomize build \
    --enable-helm \
    --load-restrictor=LoadRestrictionsNone \
    . \
    >>./kubelet-csr-approver.yaml
rm -rf charts
