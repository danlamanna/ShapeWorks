#pragma once

#include <itkPoint.h>
#include <itkVector.h>
#include <itkMatrix.h>
#include <itkSize.h>
#include <itkIndex.h>
#include <itkAffineTransform.h>

namespace shapeworks {

using Coord     = itk::Index<3>;
using Dims      = itk::Size<3>;
using Point3    = itk::Point<double, 3>;
using Vector3   = itk::Vector<double, 3>;
using Matrix44  = itk::Matrix<double, 4, 4>;
using Matrix33  = itk::Matrix<double, 3, 3>;
using Matrix    = Matrix33;
using IPoint3   = itk::Point<int, 3>;
using FPoint3   = itk::Point<float, 3>;
using Transform = itk::AffineTransform<double, 3>;

// itkVector doesn't have this handy ctor like itkPoint
Vector3 makeVector3(std::array<double, 3>&& arr);

template <typename P>
P operator+(const P &p, const P &q)
{
  P ret;
  for (unsigned i = 0; i < 3; i++)
    ret[i] = p[i] + q[i];
  return ret;
}

template <typename P>
P operator-(const P &p, const P &q)
{
  P ret;
  for (unsigned i = 0; i < 3; i++)
    ret[i] = p[i] - q[i];
  return ret;
}

template <typename P>
P operator*(const P &p, const P &q)
{
  P ret;
  for (unsigned i = 0; i < 3; i++)
    ret[i] = p[i] * q[i];
  return ret;
}

template <typename P>
P operator/(const P &p, const double x)
{
  P ret;
  for (unsigned i = 0; i < 3; i++)
    ret[i] = p[i] / x;
  return ret;
}

template <typename P>
P& operator+=(P &p, const P &q)
{
  for (unsigned i = 0; i < 3; i++)
    p[i] += q[i];
  return p;
}

template <typename P>
P& operator/=(P &p, const double x)
{
  for (unsigned i = 0; i < 3; i++)
    p[i] /= x;
  return p;
}

} // shapeworks
