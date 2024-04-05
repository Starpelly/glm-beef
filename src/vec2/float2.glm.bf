using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static float[] ToArray(float2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(float2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(float2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(float2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(float2 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(float2 lhs, float2 rhs, float eps = 0.1f) => float2.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(float2 lhs, float2 rhs) => float2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(float2 lhs, float2 rhs) => float2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool2 GreaterThan(float2 lhs, float2 rhs) => float2.GreaterThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool2 GreaterThanEqual(float2 lhs, float2 rhs) => float2.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool2 LesserThan(float2 lhs, float2 rhs) => float2.LesserThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool2 LesserThanEqual(float2 lhs, float2 rhs) => float2.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool2 IsInfinity(float2 v) => float2.IsInfinity(v);
        
        /// Returns a bool2 from component-wise application of IsFinite (v.IsFinite).
        [Inline]
        public static bool2 IsFinite(float2 v) => float2.IsFinite(v);
        
        /// Returns a bool2 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool2 IsNaN(float2 v) => float2.IsNaN(v);
        
        /// Returns a bool2 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool2 IsNegativeInfinity(float2 v) => float2.IsNegativeInfinity(v);
        
        /// Returns a bool2 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool2 IsPositiveInfinity(float2 v) => float2.IsPositiveInfinity(v);
        
        /// Returns a float2 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static float2 Abs(float2 v) => float2.Abs(v);
        
        /// Returns a float2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static float2 HermiteInterpolationOrder3(float2 v) => float2.HermiteInterpolationOrder3(v);
        
        /// Returns a float2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static float2 HermiteInterpolationOrder5(float2 v) => float2.HermiteInterpolationOrder5(v);
        
        /// Returns a float2 from component-wise application of Sqr (v * v).
        [Inline]
        public static float2 Sqr(float2 v) => float2.Sqr(v);
        
        /// Returns a float2 from component-wise application of Pow2 (v * v).
        [Inline]
        public static float2 Pow2(float2 v) => float2.Pow2(v);
        
        /// Returns a float2 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static float2 Pow3(float2 v) => float2.Pow3(v);
        
        /// Returns a float2 from component-wise application of Step (v &gt;= 0f ? 1f : 0f).
        [Inline]
        public static float2 Step(float2 v) => float2.Step(v);
        
        /// Returns a float2 from component-wise application of Sqrt ((float)System.Math.Sqrt((double)v)).
        [Inline]
        public static float2 Sqrt(float2 v) => float2.Sqrt(v);
        
        /// Returns a float2 from component-wise application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static float2 InverseSqrt(float2 v) => float2.InverseSqrt(v);
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int2 Sign(float2 v) => float2.Sign(v);
        
        /// Returns a float2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static float2 Max(float2 lhs, float2 rhs) => float2.Max(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static float2 Min(float2 lhs, float2 rhs) => float2.Min(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static float2 Pow(float2 lhs, float2 rhs) => float2.Pow(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static float2 Log(float2 lhs, float2 rhs) => float2.Log(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static float2 Clamp(float2 v, float2 min, float2 max) => float2.Clamp(v, min, max);
        
        /// Returns a float2 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static float2 Mix(float2 min, float2 max, float2 a) => float2.Mix(min, max, a);
        
        /// Returns a float2 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static float2 Lerp(float2 min, float2 max, float2 a) => float2.Lerp(min, max, a);
        
        /// Returns a float2 from component-wise application of Fma (a * b + c).
        [Inline]
        public static float2 Fma(float2 a, float2 b, float2 c) => float2.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float2x2 OuterProduct(float2 c, float2 r) => float2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float3x2 OuterProduct(float2 c, float3 r) => float2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float4x2 OuterProduct(float2 c, float4 r) => float2.OuterProduct(c, r);
        
        /// Returns a float2 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static float2 Add(float2 lhs, float2 rhs) => float2.Add(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static float2 Sub(float2 lhs, float2 rhs) => float2.Sub(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static float2 Mul(float2 lhs, float2 rhs) => float2.Mul(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static float2 Div(float2 lhs, float2 rhs) => float2.Div(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static float2 Modulo(float2 lhs, float2 rhs) => float2.Modulo(lhs, rhs);
        
        /// Returns a float2 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static float2 Degrees(float2 v) => float2.Degrees(v);
        
        /// Returns a float2 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static float2 Radians(float2 v) => float2.Radians(v);
        
        /// Returns a float2 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static float2 Acos(float2 v) => float2.Acos(v);
        
        /// Returns a float2 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static float2 Asin(float2 v) => float2.Asin(v);
        
        /// Returns a float2 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static float2 Atan(float2 v) => float2.Atan(v);
        
        /// Returns a float2 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static float2 Cos(float2 v) => float2.Cos(v);
        
        /// Returns a float2 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static float2 Cosh(float2 v) => float2.Cosh(v);
        
        /// Returns a float2 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static float2 Exp(float2 v) => float2.Exp(v);
        
        /// Returns a float2 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static float2 Log(float2 v) => float2.Log(v);
        
        /// Returns a float2 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static float2 Log2(float2 v) => float2.Log2(v);
        
        /// Returns a float2 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static float2 Log10(float2 v) => float2.Log10(v);
        
        /// Returns a float2 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static float2 Floor(float2 v) => float2.Floor(v);
        
        /// Returns a float2 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static float2 Ceiling(float2 v) => float2.Ceiling(v);
        
        /// Returns a float2 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static float2 Round(float2 v) => float2.Round(v);
        
        /// Returns a float2 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static float2 Sin(float2 v) => float2.Sin(v);
        
        /// Returns a float2 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static float2 Sinh(float2 v) => float2.Sinh(v);
        
        /// Returns a float2 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static float2 Tan(float2 v) => float2.Tan(v);
        
        /// Returns a float2 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static float2 Tanh(float2 v) => float2.Tanh(v);
        
        /// Returns a float2 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static float2 Truncate(float2 v) => float2.Truncate(v);
        
        /// Returns a float2 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static float2 Fract(float2 v) => float2.Fract(v);
        
        /// Returns a float2 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static float2 TruncateFast(float2 v) => float2.TruncateFast(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static float MinElement(float2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static float MaxElement(float2 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(float2 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(float2 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static float Sum(float2 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(float2 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(float2 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(float2 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(float2 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(float2 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static float2 Normalized(float2 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static float2 NormalizedSafe(float2 v) => v.NormalizedSafe;
        
        /// Returns the vector angle (atan2(y, x)) in radians.
        [Inline]
        public static double Angle(float2 v) => v.Angle;
        
        /// Returns a 2D vector that was rotated by a given angle in radians (CAUTION: result is casted and may be truncated).
        [Inline]
        public static float2 Rotated(float2 v, double angleInRad) => v.Rotated(angleInRad);
        
        /// Returns a perpendicular vector.
        [Inline]
        public static float2 Perpendicular(float2 v) => v.Perpendicular;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static float Dot(float2 lhs, float2 rhs) => float2.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(float2 lhs, float2 rhs) => float2.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(float2 lhs, float2 rhs) => float2.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static float2 Reflect(float2 I, float2 N) => float2.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static float2 Refract(float2 I, float2 N, float eta) => float2.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static float2 FaceForward(float2 N, float2 I, float2 Nref) => float2.FaceForward(N, I, Nref);
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static float Cross(float2 l, float2 r) => float2.Cross(l, r);
        
        /// Returns a float2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float2 Random(Random random, float2 minValue, float2 maxValue) => float2.Random(random, minValue, maxValue);
        
        /// Returns a float2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float2 RandomUniform(Random random, float2 minValue, float2 maxValue) => float2.RandomUniform(random, minValue, maxValue);
        
        /// Returns a float2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float2 RandomNormal(Random random, float2 mean, float2 variance) => float2.RandomNormal(random, mean, variance);
        
        /// Returns a float2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float2 RandomGaussian(Random random, float2 mean, float2 variance) => float2.RandomGaussian(random, mean, variance);

    }
}
