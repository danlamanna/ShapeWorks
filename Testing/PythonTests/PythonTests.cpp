#include "Testing.h"

//---------------------------------------------------------------------------
// only need to run pythonEnvSetup once or it continuously appends to paths
TEST(pythonTests, setup)
{
  pythonEnvSetup();
  ASSERT_TRUE(true);
}
  
//---------------------------------------------------------------------------
TEST(pythonTests, info)
{
  ASSERT_FALSE(system("python info.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, compare)
{
  ASSERT_FALSE(system("python compare.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, compareFail)
{
  ASSERT_TRUE(system("python compareFail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, antialias)
{
  ASSERT_FALSE(system("python antialias.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, antialiasFail)
{
  ASSERT_TRUE(system("python antialiasFail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, resample)
{
  ASSERT_FALSE(system("python resample.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, resize)
{
  ASSERT_FALSE(system("python resize.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, resizefail)
{
  ASSERT_TRUE(system("python resizefail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, recenter)
{
  ASSERT_FALSE(system("python recenter.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, pad)
{
  ASSERT_FALSE(system("python pad.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, padfail)
{
  ASSERT_TRUE(system("python padfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, translate)
{
  ASSERT_FALSE(system("python translate.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, translatefail)
{
  ASSERT_TRUE(system("python translatefail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, scale)
{
  ASSERT_FALSE(system("python scale.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, scalefail)
{
  ASSERT_TRUE(system("python scalefail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, rotate)
{
  ASSERT_FALSE(system("python rotate.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, rotatefail)
{
  ASSERT_TRUE(system("python rotatefail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, extractlabel)
{
  ASSERT_FALSE(system("python extractlabel.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, closeholes)
{
  ASSERT_FALSE(system("python closeholes.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, binarize)
{
  ASSERT_FALSE(system("python binarize.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, computedt)
{
  ASSERT_FALSE(system("python computedt.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, curvature)
{
  ASSERT_FALSE(system("python curvature.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, curvaturefail)
{
  ASSERT_TRUE(system("python curvaturefail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, gradient)
{
  ASSERT_FALSE(system("python gradient.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, sigmoid)
{
  ASSERT_FALSE(system("python sigmoid.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, tplevelset)
{
  ASSERT_FALSE(system("python tplevelset.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, tplevelsetfail)
{
  ASSERT_TRUE(system("python tplevelsetfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, topo)
{
  ASSERT_FALSE(system("python topo.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, topofail)
{
  ASSERT_TRUE(system("python topofail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, blur)
{
  ASSERT_FALSE(system("python blur.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, boundingbox)
{
  ASSERT_FALSE(system("python boundingbox.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, boundingboxfail)
{
  ASSERT_TRUE(system("python boundingboxfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, crop)
{
  ASSERT_FALSE(system("python crop.py"));
}

// TODO: bind transform
//---------------------------------------------------------------------------
// TEST(pythonTests, icp)
// {
//   ASSERT_FALSE(system("python icp.py"));
// }

// // TODO: bind transform
// //---------------------------------------------------------------------------
// TEST(pythonTests, icpfail)
// {
//   ASSERT_TRUE(system("python icpfail.py"));
// }

//---------------------------------------------------------------------------
TEST(pythonTests, clip)
{
  ASSERT_FALSE(system("python clip.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, clipfail)
{
  ASSERT_TRUE(system("python clipfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, reflect)
{
  ASSERT_FALSE(system("python reflect.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, reflectfail)
{
  ASSERT_TRUE(system("python reflectfail.py"));
}

// TODO: bind transform
//---------------------------------------------------------------------------
// TEST(pythonTests, warp)
// {
//   ASSERT_FALSE(system("python warp.py"));
// }

// // TODO: bind transform
// //---------------------------------------------------------------------------
// TEST(pythonTests, warpfail)
// {
//   ASSERT_TRUE(system("python warpfail.py"));
// }

//---------------------------------------------------------------------------
TEST(pythonTests, setorigin)
{
  ASSERT_FALSE(system("python setorigin.py"));
}

// TODO: bind negate
//---------------------------------------------------------------------------
// TEST(pythonTests, negate)
// {
//   ASSERT_FALSE(system("python negate.py"));
// }

//---------------------------------------------------------------------------
TEST(pythonTests, add)
{
  ASSERT_FALSE(system("python add.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, addfail)
{
  ASSERT_TRUE(system("python addfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, sub)
{
  ASSERT_FALSE(system("python sub.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, subfail)
{
  ASSERT_TRUE(system("python subfail.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, mul)
{
  ASSERT_FALSE(system("python mul.py"));
}

//---------------------------------------------------------------------------
TEST(pythonTests, div)
{
  ASSERT_FALSE(system("python div.py"));
}