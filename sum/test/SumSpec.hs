module Main where

import Test.Hspec
import Sum (sumTwo)

main :: IO ()
main = hspec $ do
  describe "Sum.sumTwo" $ do
    it "adds two positive numbers correctly" $ do
      sumTwo 1 2 `shouldBe` 3

    it "adds positive and negative numbers correctly" $ do
      sumTwo 5 (-3) `shouldBe` 2

    it "adds two negative numbers correctly" $ do
      sumTwo (-1) (-1) `shouldBe` (-2)

    it "adds zero correctly" $ do
      sumTwo 10 0 `shouldBe` 10
