# vim: sts=2:ts=2:sw=2:et:tw=0
import nibsv
import strutils
import unittest

suite "nibsv":
  test "foo":
    let
      s = "T[chr1_KI270709v1_random:461["
    var bnd = parse_sv_allele(s)
    check bnd.pos == 461
    check bnd.chrom == "chr1_KI270709v1_random"
    check bnd.pre_bases == "T"
