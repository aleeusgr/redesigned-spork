-- file Spec.hs
import Test.Hspec
import Control.Exception (evaluate)
import qualified Numeric


main :: IO ()
main = hspec $ do
  describe "myTests" $ do
    it "checks Numeric.readFloat" $ do
      Numeric.readFloat "1e1000000" `shouldBe` ( [(0,"")]:: [(a0,String)] )

  describe "Prelude.head" $ do
    it "returns the first element of a list" $ do
      head [23 ..] `shouldBe` (23 :: Int)

    it "throws an exception if used with an empty list" $ do
      evaluate (head []) `shouldThrow` anyException

