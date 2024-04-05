using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static double[] ToArray(double4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(double4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(double4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(double4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(double4 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(double4 lhs, double4 rhs, double eps = 0.1d) => double4.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(double4 lhs, double4 rhs) => double4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(double4 lhs, double4 rhs) => double4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(double4 lhs, double4 rhs) => double4.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(double4 lhs, double4 rhs) => double4.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(double4 lhs, double4 rhs) => double4.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(double4 lhs, double4 rhs) => double4.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool4 IsInfinity(double4 v) => double4.IsInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool4 IsNaN(double4 v) => double4.IsNaN(v);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool4 IsNegativeInfinity(double4 v) => double4.IsNegativeInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool4 IsPositiveInfinity(double4 v) => double4.IsPositiveInfinity(v);
        
        /// Returns a double4 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static double4 Abs(double4 v) => double4.Abs(v);
        
        /// Returns a double4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static double4 HermiteInterpolationOrder3(double4 v) => double4.HermiteInterpolationOrder3(v);
        
        /// Returns a double4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static double4 HermiteInterpolationOrder5(double4 v) => double4.HermiteInterpolationOrder5(v);
        
        /// Returns a double4 from component-wise application of Sqr (v * v).
        [Inline]
        public static double4 Sqr(double4 v) => double4.Sqr(v);
        
        /// Returns a double4 from component-wise application of Pow2 (v * v).
        [Inline]
        public static double4 Pow2(double4 v) => double4.Pow2(v);
        
        /// Returns a double4 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static double4 Pow3(double4 v) => double4.Pow3(v);
        
        /// Returns a double4 from component-wise application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        [Inline]
        public static double4 Step(double4 v) => double4.Step(v);
        
        /// Returns a double4 from component-wise application of Sqrt ((double)System.Math.Sqrt((double)v)).
        [Inline]
        public static double4 Sqrt(double4 v) => double4.Sqrt(v);
        
        /// Returns a double4 from component-wise application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static double4 InverseSqrt(double4 v) => double4.InverseSqrt(v);
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int4 Sign(double4 v) => double4.Sign(v);
        
        /// Returns a double4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static double4 Max(double4 lhs, double4 rhs) => double4.Max(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static double4 Min(double4 lhs, double4 rhs) => double4.Min(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static double4 Pow(double4 lhs, double4 rhs) => double4.Pow(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static double4 Log(double4 lhs, double4 rhs) => double4.Log(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static double4 Clamp(double4 v, double4 min, double4 max) => double4.Clamp(v, min, max);
        
        /// Returns a double4 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static double4 Mix(double4 min, double4 max, double4 a) => double4.Mix(min, max, a);
        
        /// Returns a double4 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static double4 Lerp(double4 min, double4 max, double4 a) => double4.Lerp(min, max, a);
        
        /// Returns a double4 from component-wise application of Fma (a * b + c).
        [Inline]
        public static double4 Fma(double4 a, double4 b, double4 c) => double4.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double2x4 OuterProduct(double4 c, double2 r) => double4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double3x4 OuterProduct(double4 c, double3 r) => double4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static double4x4 OuterProduct(double4 c, double4 r) => double4.OuterProduct(c, r);
        
        /// Returns a double4 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static double4 Add(double4 lhs, double4 rhs) => double4.Add(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static double4 Sub(double4 lhs, double4 rhs) => double4.Sub(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static double4 Mul(double4 lhs, double4 rhs) => double4.Mul(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static double4 Div(double4 lhs, double4 rhs) => double4.Div(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static double4 Modulo(double4 lhs, double4 rhs) => double4.Modulo(lhs, rhs);
        
        /// Returns a double4 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static double4 Degrees(double4 v) => double4.Degrees(v);
        
        /// Returns a double4 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static double4 Radians(double4 v) => double4.Radians(v);
        
        /// Returns a double4 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static double4 Acos(double4 v) => double4.Acos(v);
        
        /// Returns a double4 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static double4 Asin(double4 v) => double4.Asin(v);
        
        /// Returns a double4 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static double4 Atan(double4 v) => double4.Atan(v);
        
        /// Returns a double4 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static double4 Cos(double4 v) => double4.Cos(v);
        
        /// Returns a double4 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static double4 Cosh(double4 v) => double4.Cosh(v);
        
        /// Returns a double4 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static double4 Exp(double4 v) => double4.Exp(v);
        
        /// Returns a double4 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static double4 Log(double4 v) => double4.Log(v);
        
        /// Returns a double4 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static double4 Log2(double4 v) => double4.Log2(v);
        
        /// Returns a double4 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static double4 Log10(double4 v) => double4.Log10(v);
        
        /// Returns a double4 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static double4 Floor(double4 v) => double4.Floor(v);
        
        /// Returns a double4 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static double4 Ceiling(double4 v) => double4.Ceiling(v);
        
        /// Returns a double4 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static double4 Round(double4 v) => double4.Round(v);
        
        /// Returns a double4 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static double4 Sin(double4 v) => double4.Sin(v);
        
        /// Returns a double4 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static double4 Sinh(double4 v) => double4.Sinh(v);
        
        /// Returns a double4 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static double4 Tan(double4 v) => double4.Tan(v);
        
        /// Returns a double4 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static double4 Tanh(double4 v) => double4.Tanh(v);
        
        /// Returns a double4 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static double4 Truncate(double4 v) => double4.Truncate(v);
        
        /// Returns a double4 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static double4 Fract(double4 v) => double4.Fract(v);
        
        /// Returns a double4 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static double4 TruncateFast(double4 v) => double4.TruncateFast(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static double MinElement(double4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static double MaxElement(double4 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(double4 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(double4 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static double Sum(double4 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(double4 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(double4 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(double4 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(double4 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(double4 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static double4 Normalized(double4 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static double4 NormalizedSafe(double4 v) => v.NormalizedSafe;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static double Dot(double4 lhs, double4 rhs) => double4.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(double4 lhs, double4 rhs) => double4.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(double4 lhs, double4 rhs) => double4.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static double4 Reflect(double4 I, double4 N) => double4.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static double4 Refract(double4 I, double4 N, double eta) => double4.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static double4 FaceForward(double4 N, double4 I, double4 Nref) => double4.FaceForward(N, I, Nref);
        
        /// Returns a double4 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double4 Random(Random random, double4 minValue, double4 maxValue) => double4.Random(random, minValue, maxValue);
        
        /// Returns a double4 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static double4 RandomUniform(Random random, double4 minValue, double4 maxValue) => double4.RandomUniform(random, minValue, maxValue);
        
        /// Returns a double4 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double4 RandomNormal(Random random, double4 mean, double4 variance) => double4.RandomNormal(random, mean, variance);
        
        /// Returns a double4 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static double4 RandomGaussian(Random random, double4 mean, double4 variance) => double4.RandomGaussian(random, mean, variance);

    }
}
