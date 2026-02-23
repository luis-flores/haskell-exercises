module Main where

import Sum (sumTwo)
import System.Process (readProcess)
import Test.Hspec

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

  describe "Integración (sum-exe)" $ do
    it "el programa completo suma correctamente" $ do
      salida <- readProcess "cabal" ["run", "sum-exe", "--", "-v0"] "5\n7\n"
      salida `shouldContain` "La suma es: 12"
