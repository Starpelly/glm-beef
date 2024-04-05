using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static double[] ToArray(double3 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(double3 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(double3 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (3).
        [Inline]
        public static int Count(double3 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(double3 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(double3 lhs, double3 rhs, double eps = 0.1d) => double3.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool3 Equal(double3 lhs, double3 rhs) => double3.Equal(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool Equal(double lhs, double rhs) => lhs == rhs;
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool3 NotEqual(double3 lhs, double3 rhs) => double3.NotEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool NotEqual(double lhs, double rhs) => lhs != rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool3 GreaterThan(double3 lhs, double3 rhs) => double3.GreaterThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool GreaterThan(double lhs, double rhs) => lhs > rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool3 GreaterThanEqual(double3 lhs, double3 rhs) => double3.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool GreaterThanEqual(double lhs, double rhs) => lhs >= rhs;
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool3 LesserThan(double3 lhs, double3 rhs) => double3.LesserThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool LesserThan(double lhs, double rhs) => lhs < rhs;
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool3 LesserThanEqual(double3 lhs, double3 rhs) => double3.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool LesserThanEqual(double lhs, double rhs) => lhs <= rhs;
        
        /// Returns a bool3 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool3 IsInfinity(double3 v) => double3.IsInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool IsInfinity(double v) => v.IsInfinity;
        
        /// Returns a bool3 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool3 IsNaN(double3 v) => double3.IsNaN(v);
        
        /// Returns a bool3 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool IsNaN(double v) => v.IsNaN;
        
        /// Returns a bool3 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool3 IsNegativeInfinity(double3 v) => double3.IsNegativeInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool IsNegativeInfinity(double v) => v.IsNegativeInfinity;
        
        /// Returns a bool3 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool3 IsPositiveInfinity(double3 v) => double3.IsPositiveInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool IsPositiveInfinity(double v) => v.IsPositiveInfinity;
        
        /// Returns a double3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static double3 Abs(double3 v) => double3.Abs(v);
        
        /// Returns a double3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static double Abs(double v) => System.Math.Abs(v);
        
        /// Returns a double3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static double3 HermiteInterpolationOrder3(double3 v) => double3.HermiteInterpolationOrder3(v);
        
        /// Returns a double3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static double HermiteInterpolationOrder3(double v) => (3 - 2 * v) * v * v;
        
        /// Returns a double3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static double3 HermiteInterpolationOrder5(double3 v) => double3.HermiteInterpolationOrder5(v);
        
        /// Returns a double3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static double HermiteInterpolationOrder5(double v) => ((6 * v - 15) * v + 10) * v * v * v;
        
        /// Returns a double3 from component-wise application of Sqr (v * v).
        [Inline]
        public static double3 Sqr(double3 v) => double3.Sqr(v);
        
        /// Returns a double3 from component-wise application of Sqr (v * v).
        [Inline]
        public static double Sqr(double v) => v * v;
        
        /// Returns a double3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static double3 Pow2(double3 v) => double3.Pow2(v);
        
        /// Returns a double3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static double Pow2(double v) => v * v;
        
        /// Returns a double3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static double3 Pow3(double3 v) => double3.Pow3(v);
        
        /// Returns a double3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static double Pow3(double v) => v * v * v;
        
        /// Returns a double3 from component-wise application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        [Inline]
        public static double3 Step(double3 v) => double3.Step(v);
        
        /// Returns a double3 from component-wise application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        [Inline]
        public static double Step(double v) => v >= 0.0 ? 1.0 : 0.0;
        
        /// Returns a double3 from component-wise application of Sqrt ((double)System.Math.Sqrt((double)v)).
        [Inline]
        public static double3 Sqrt(double3 v) => double3.Sqrt(v);
        
        /// Returns a double3 from component-wise application of Sqrt ((double)System.Math.Sqrt((double)v)).
        [Inline]
        public static double Sqrt(double v) => (double)System.Math.Sqrt((double)v);
        
        /// Returns a double3 from component-wise application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static double3 InverseSqrt(double3 v) => double3.InverseSqrt(v);
        
        /// Returns a double3 from component-wise application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static double InverseSqrt(double v) => (double)(1.0 / System.Math.Sqrt((double)v));
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int3 Sign(double3 v) => double3.Sign(v);
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int Sign(double v) => System.Math.Sign(v);
        
        /// Returns a double3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static double3 Max(double3 lhs, double3 rhs) => double3.Max(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static double Max(double lhs, double rhs) => System.Math.Max(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static double3 Min(double3 lhs, double3 rhs) => double3.Min(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static double Min(double lhs, double rhs) => System.Math.Min(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static double3 Pow(double3 lhs, double3 rhs) => double3.Pow(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static double Pow(double lhs, double rhs) => (double)System.Math.Pow((double)lhs, (double)rhs);
        
        /// Returns a double3 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static double3 Log(double3 lhs, double3 rhs) => double3.Log(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static double Log(double lhs, double rhs) => (double)System.Math.Log((double)lhs, (double)rhs);
        
        /// Returns a double3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static double3 Clamp(double3 v, double3 min, double3 max) => double3.Clamp(v, min, max);
        
        /// Returns a double3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static double Clamp(double v, double min, double max) => System.Math.Min(System.Math.Max(v, min), max);
        
        /// Returns a double3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static double3 Mix(double3 min, double3 max, double3 a) => double3.Mix(min, max, a);
        
        /// Returns a double3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static double Mix(double min, double max, double a) => min * (1-a) + max * a;
        
        /// Returns a double3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static double3 Lerp(double3 min, double3 max, double3 a) => double3.Lerp(min, max, a);
        
        /// Returns a double3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static double Lerp(double min, double max, double a) => min * (1-a) + max * a;
        
        /// Returns a double3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static double3 Fma(double3 a, double3 b, double3 c) => double3.Fma(a, b, c);
        
        /// Returns a double3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static double Fma(double a, double b, double c) => a * b + c;
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double2x3 OuterProduct(double3 c, double2 r) => double3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double3x3 OuterProduct(double3 c, double3 r) => double3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double4x3 OuterProduct(double3 c, double4 r) => double3.OuterProduct(c, r);
        
        /// Returns a double3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static double3 Add(double3 lhs, double3 rhs) => double3.Add(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static double Add(double lhs, double rhs) => lhs + rhs;
        
        /// Returns a double3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static double3 Sub(double3 lhs, double3 rhs) => double3.Sub(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static double Sub(double lhs, double rhs) => lhs - rhs;
        
        /// Returns a double3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static double3 Mul(double3 lhs, double3 rhs) => double3.Mul(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static double Mul(double lhs, double rhs) => lhs * rhs;
        
        /// Returns a double3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static double3 Div(double3 lhs, double3 rhs) => double3.Div(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static double Div(double lhs, double rhs) => lhs / rhs;
        
        /// Returns a double3 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static double3 Modulo(double3 lhs, double3 rhs) => double3.Modulo(lhs, rhs);
        
        /// Returns a double3 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static double Modulo(double lhs, double rhs) => lhs % rhs;
        
        /// Returns a double3 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static double3 Degrees(double3 v) => double3.Degrees(v);
        
        /// Returns a double3 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static double Degrees(double v) => (double)(v * 57.295779513082320876798154814105170332405472466564321d);
        
        /// Returns a double3 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static double3 Radians(double3 v) => double3.Radians(v);
        
        /// Returns a double3 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static double Radians(double v) => (double)(v * 0.0174532925199432957692369076848861271344287188854172d);
        
        /// Returns a double3 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static double3 Acos(double3 v) => double3.Acos(v);
        
        /// Returns a double3 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static double Acos(double v) => System.Math.Acos(v);
        
        /// Returns a double3 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static double3 Asin(double3 v) => double3.Asin(v);
        
        /// Returns a double3 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static double Asin(double v) => System.Math.Asin(v);
        
        /// Returns a double3 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static double3 Atan(double3 v) => double3.Atan(v);
        
        /// Returns a double3 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static double Atan(double v) => System.Math.Atan(v);
        
        /// Returns a double3 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static double3 Cos(double3 v) => double3.Cos(v);
        
        /// Returns a double3 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static double Cos(double v) => System.Math.Cos(v);
        
        /// Returns a double3 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static double3 Cosh(double3 v) => double3.Cosh(v);
        
        /// Returns a double3 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static double Cosh(double v) => System.Math.Cosh(v);
        
        /// Returns a double3 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static double3 Exp(double3 v) => double3.Exp(v);
        
        /// Returns a double3 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static double Exp(double v) => System.Math.Exp(v);
        
        /// Returns a double3 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static double3 Log(double3 v) => double3.Log(v);
        
        /// Returns a double3 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static double Log(double v) => System.Math.Log(v);
        
        /// Returns a double3 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static double3 Log2(double3 v) => double3.Log2(v);
        
        /// Returns a double3 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static double Log2(double v) => System.Math.Log(v, 2);
        
        /// Returns a double3 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static double3 Log10(double3 v) => double3.Log10(v);
        
        /// Returns a double3 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static double Log10(double v) => System.Math.Log10(v);
        
        /// Returns a double3 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static double3 Floor(double3 v) => double3.Floor(v);
        
        /// Returns a double3 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static double Floor(double v) => System.Math.Floor(v);
        
        /// Returns a double3 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static double3 Ceiling(double3 v) => double3.Ceiling(v);
        
        /// Returns a double3 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static double Ceiling(double v) => System.Math.Ceiling(v);
        
        /// Returns a double3 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static double3 Round(double3 v) => double3.Round(v);
        
        /// Returns a double3 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static double Round(double v) => System.Math.Round(v);
        
        /// Returns a double3 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static double3 Sin(double3 v) => double3.Sin(v);
        
        /// Returns a double3 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static double Sin(double v) => System.Math.Sin(v);
        
        /// Returns a double3 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static double3 Sinh(double3 v) => double3.Sinh(v);
        
        /// Returns a double3 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static double Sinh(double v) => System.Math.Sinh(v);
        
        /// Returns a double3 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static double3 Tan(double3 v) => double3.Tan(v);
        
        /// Returns a double3 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static double Tan(double v) => System.Math.Tan(v);
        
        /// Returns a double3 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static double3 Tanh(double3 v) => double3.Tanh(v);
        
        /// Returns a double3 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static double Tanh(double v) => System.Math.Tanh(v);
        
        /// Returns a double3 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static double3 Truncate(double3 v) => double3.Truncate(v);
        
        /// Returns a double3 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static double Truncate(double v) => System.Math.Truncate(v);
        
        /// Returns a double3 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static double3 Fract(double3 v) => double3.Fract(v);
        
        /// Returns a double3 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static double Fract(double v) => (v - System.Math.Floor(v));
        
        /// Returns a double3 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static double3 TruncateFast(double3 v) => double3.TruncateFast(v);
        
        /// Returns a double3 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static double TruncateFast(double v) => (int64)(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static double MinElement(double3 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static double MaxElement(double3 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(double3 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(double3 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static double Sum(double3 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(double3 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(double3 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(double3 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(double3 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(double3 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static double3 Normalized(double3 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static double3 NormalizedSafe(double3 v) => v.NormalizedSafe;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static double Dot(double3 lhs, double3 rhs) => double3.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(double3 lhs, double3 rhs) => double3.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(double3 lhs, double3 rhs) => double3.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static double3 Reflect(double3 I, double3 N) => double3.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static double3 Refract(double3 I, double3 N, double eta) => double3.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static double3 FaceForward(double3 N, double3 I, double3 Nref) => double3.FaceForward(N, I, Nref);
        
        /// Returns the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static double3 Cross(double3 l, double3 r) => double3.Cross(l, r);
        
        /// Returns a double3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double3 Random(Random random, double3 minValue, double3 maxValue) => double3.Random(random, minValue, maxValue);
        
        /// Returns a double3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double Random(Random random, double minValue, double maxValue) => (double)random.NextDouble() * (maxValue - minValue) + minValue;
        
        /// Returns a double3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double3 RandomUniform(Random random, double3 minValue, double3 maxValue) => double3.RandomUniform(random, minValue, maxValue);
        
        /// Returns a double3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double RandomUniform(Random random, double minValue, double maxValue) => (double)random.NextDouble() * (maxValue - minValue) + minValue;
        
        /// Returns a double3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double3 RandomNormal(Random random, double3 mean, double3 variance) => double3.RandomNormal(random, mean, variance);
        
        /// Returns a double3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double RandomNormal(Random random, double mean, double variance) => (double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean;
        
        /// Returns a double3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double3 RandomGaussian(Random random, double3 mean, double3 variance) => double3.RandomGaussian(random, mean, variance);
        
        /// Returns a double3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double RandomGaussian(Random random, double mean, double variance) => (double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean;

    }
}
