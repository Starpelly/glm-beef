using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static double[] ToArray(double2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(double2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(double2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(double2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(double2 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(double2 lhs, double2 rhs, double eps = 0.1d) => double2.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(double2 lhs, double2 rhs) => double2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(double2 lhs, double2 rhs) => double2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool2 GreaterThan(double2 lhs, double2 rhs) => double2.GreaterThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool2 GreaterThanEqual(double2 lhs, double2 rhs) => double2.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool2 LesserThan(double2 lhs, double2 rhs) => double2.LesserThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool2 LesserThanEqual(double2 lhs, double2 rhs) => double2.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool2 IsInfinity(double2 v) => double2.IsInfinity(v);
        
        /// Returns a bool2 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool2 IsNaN(double2 v) => double2.IsNaN(v);
        
        /// Returns a bool2 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool2 IsNegativeInfinity(double2 v) => double2.IsNegativeInfinity(v);
        
        /// Returns a bool2 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool2 IsPositiveInfinity(double2 v) => double2.IsPositiveInfinity(v);
        
        /// Returns a double2 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static double2 Abs(double2 v) => double2.Abs(v);
        
        /// Returns a double2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static double2 HermiteInterpolationOrder3(double2 v) => double2.HermiteInterpolationOrder3(v);
        
        /// Returns a double2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static double2 HermiteInterpolationOrder5(double2 v) => double2.HermiteInterpolationOrder5(v);
        
        /// Returns a double2 from component-wise application of Sqr (v * v).
        [Inline]
        public static double2 Sqr(double2 v) => double2.Sqr(v);
        
        /// Returns a double2 from component-wise application of Pow2 (v * v).
        [Inline]
        public static double2 Pow2(double2 v) => double2.Pow2(v);
        
        /// Returns a double2 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static double2 Pow3(double2 v) => double2.Pow3(v);
        
        /// Returns a double2 from component-wise application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        [Inline]
        public static double2 Step(double2 v) => double2.Step(v);
        
        /// Returns a double2 from component-wise application of Sqrt ((double)System.Math.Sqrt((double)v)).
        [Inline]
        public static double2 Sqrt(double2 v) => double2.Sqrt(v);
        
        /// Returns a double2 from component-wise application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static double2 InverseSqrt(double2 v) => double2.InverseSqrt(v);
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int2 Sign(double2 v) => double2.Sign(v);
        
        /// Returns a double2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static double2 Max(double2 lhs, double2 rhs) => double2.Max(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static double2 Min(double2 lhs, double2 rhs) => double2.Min(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static double2 Pow(double2 lhs, double2 rhs) => double2.Pow(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static double2 Log(double2 lhs, double2 rhs) => double2.Log(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static double2 Clamp(double2 v, double2 min, double2 max) => double2.Clamp(v, min, max);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static double2 Mix(double2 min, double2 max, double2 a) => double2.Mix(min, max, a);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static double2 Lerp(double2 min, double2 max, double2 a) => double2.Lerp(min, max, a);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        [Inline]
        public static double2 Fma(double2 a, double2 b, double2 c) => double2.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double2x2 OuterProduct(double2 c, double2 r) => double2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double3x2 OuterProduct(double2 c, double3 r) => double2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double4x2 OuterProduct(double2 c, double4 r) => double2.OuterProduct(c, r);
        
        /// Returns a double2 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static double2 Add(double2 lhs, double2 rhs) => double2.Add(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static double2 Sub(double2 lhs, double2 rhs) => double2.Sub(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static double2 Mul(double2 lhs, double2 rhs) => double2.Mul(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static double2 Div(double2 lhs, double2 rhs) => double2.Div(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static double2 Modulo(double2 lhs, double2 rhs) => double2.Modulo(lhs, rhs);
        
        /// Returns a double2 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static double2 Degrees(double2 v) => double2.Degrees(v);
        
        /// Returns a double2 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static double2 Radians(double2 v) => double2.Radians(v);
        
        /// Returns a double2 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static double2 Acos(double2 v) => double2.Acos(v);
        
        /// Returns a double2 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static double2 Asin(double2 v) => double2.Asin(v);
        
        /// Returns a double2 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static double2 Atan(double2 v) => double2.Atan(v);
        
        /// Returns a double2 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static double2 Cos(double2 v) => double2.Cos(v);
        
        /// Returns a double2 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static double2 Cosh(double2 v) => double2.Cosh(v);
        
        /// Returns a double2 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static double2 Exp(double2 v) => double2.Exp(v);
        
        /// Returns a double2 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static double2 Log(double2 v) => double2.Log(v);
        
        /// Returns a double2 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static double2 Log2(double2 v) => double2.Log2(v);
        
        /// Returns a double2 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static double2 Log10(double2 v) => double2.Log10(v);
        
        /// Returns a double2 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static double2 Floor(double2 v) => double2.Floor(v);
        
        /// Returns a double2 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static double2 Ceiling(double2 v) => double2.Ceiling(v);
        
        /// Returns a double2 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static double2 Round(double2 v) => double2.Round(v);
        
        /// Returns a double2 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static double2 Sin(double2 v) => double2.Sin(v);
        
        /// Returns a double2 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static double2 Sinh(double2 v) => double2.Sinh(v);
        
        /// Returns a double2 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static double2 Tan(double2 v) => double2.Tan(v);
        
        /// Returns a double2 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static double2 Tanh(double2 v) => double2.Tanh(v);
        
        /// Returns a double2 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static double2 Truncate(double2 v) => double2.Truncate(v);
        
        /// Returns a double2 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static double2 Fract(double2 v) => double2.Fract(v);
        
        /// Returns a double2 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static double2 TruncateFast(double2 v) => double2.TruncateFast(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static double MinElement(double2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static double MaxElement(double2 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(double2 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(double2 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static double Sum(double2 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(double2 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(double2 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(double2 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(double2 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(double2 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static double2 Normalized(double2 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static double2 NormalizedSafe(double2 v) => v.NormalizedSafe;
        
        /// Returns the vector angle (atan2(y, x)) in radians.
        [Inline]
        public static double Angle(double2 v) => v.Angle;
        
        /// Returns a 2D vector that was rotated by a given angle in radians (CAUTION: result is casted and may be truncated).
        [Inline]
        public static double2 Rotated(double2 v, double angleInRad) => v.Rotated(angleInRad);
        
        /// Returns a perpendicular vector.
        [Inline]
        public static double2 Perpendicular(double2 v) => v.Perpendicular;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static double Dot(double2 lhs, double2 rhs) => double2.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(double2 lhs, double2 rhs) => double2.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(double2 lhs, double2 rhs) => double2.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static double2 Reflect(double2 I, double2 N) => double2.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static double2 Refract(double2 I, double2 N, double eta) => double2.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static double2 FaceForward(double2 N, double2 I, double2 Nref) => double2.FaceForward(N, I, Nref);
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static double Cross(double2 l, double2 r) => double2.Cross(l, r);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double2 Random(Random random, double2 minValue, double2 maxValue) => double2.Random(random, minValue, maxValue);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double2 RandomUniform(Random random, double2 minValue, double2 maxValue) => double2.RandomUniform(random, minValue, maxValue);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double2 RandomNormal(Random random, double2 mean, double2 variance) => double2.RandomNormal(random, mean, variance);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double2 RandomGaussian(Random random, double2 mean, double2 variance) => double2.RandomGaussian(random, mean, variance);

    }
}
