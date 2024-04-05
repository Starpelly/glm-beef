using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static float[] ToArray(float4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(float4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(float4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(float4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(float4 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(float4 lhs, float4 rhs, float eps = 0.1f) => float4.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(float4 lhs, float4 rhs) => float4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(float4 lhs, float4 rhs) => float4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(float4 lhs, float4 rhs) => float4.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(float4 lhs, float4 rhs) => float4.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(float4 lhs, float4 rhs) => float4.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(float4 lhs, float4 rhs) => float4.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool4 IsInfinity(float4 v) => float4.IsInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsFinite (v.IsFinite).
        [Inline]
        public static bool4 IsFinite(float4 v) => float4.IsFinite(v);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool4 IsNaN(float4 v) => float4.IsNaN(v);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool4 IsNegativeInfinity(float4 v) => float4.IsNegativeInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool4 IsPositiveInfinity(float4 v) => float4.IsPositiveInfinity(v);
        
        /// Returns a float4 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static float4 Abs(float4 v) => float4.Abs(v);
        
        /// Returns a float4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static float4 HermiteInterpolationOrder3(float4 v) => float4.HermiteInterpolationOrder3(v);
        
        /// Returns a float4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static float4 HermiteInterpolationOrder5(float4 v) => float4.HermiteInterpolationOrder5(v);
        
        /// Returns a float4 from component-wise application of Sqr (v * v).
        [Inline]
        public static float4 Sqr(float4 v) => float4.Sqr(v);
        
        /// Returns a float4 from component-wise application of Pow2 (v * v).
        [Inline]
        public static float4 Pow2(float4 v) => float4.Pow2(v);
        
        /// Returns a float4 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static float4 Pow3(float4 v) => float4.Pow3(v);
        
        /// Returns a float4 from component-wise application of Step (v &gt;= 0f ? 1f : 0f).
        [Inline]
        public static float4 Step(float4 v) => float4.Step(v);
        
        /// Returns a float4 from component-wise application of Sqrt ((float)System.Math.Sqrt((double)v)).
        [Inline]
        public static float4 Sqrt(float4 v) => float4.Sqrt(v);
        
        /// Returns a float4 from component-wise application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static float4 InverseSqrt(float4 v) => float4.InverseSqrt(v);
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int4 Sign(float4 v) => float4.Sign(v);
        
        /// Returns a float4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static float4 Max(float4 lhs, float4 rhs) => float4.Max(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static float4 Min(float4 lhs, float4 rhs) => float4.Min(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static float4 Pow(float4 lhs, float4 rhs) => float4.Pow(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static float4 Log(float4 lhs, float4 rhs) => float4.Log(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static float4 Clamp(float4 v, float4 min, float4 max) => float4.Clamp(v, min, max);
        
        /// Returns a float4 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static float4 Mix(float4 min, float4 max, float4 a) => float4.Mix(min, max, a);
        
        /// Returns a float4 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static float4 Lerp(float4 min, float4 max, float4 a) => float4.Lerp(min, max, a);
        
        /// Returns a float4 from component-wise application of Fma (a * b + c).
        [Inline]
        public static float4 Fma(float4 a, float4 b, float4 c) => float4.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float2x4 OuterProduct(float4 c, float2 r) => float4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float3x4 OuterProduct(float4 c, float3 r) => float4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float4x4 OuterProduct(float4 c, float4 r) => float4.OuterProduct(c, r);
        
        /// Returns a float4 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static float4 Add(float4 lhs, float4 rhs) => float4.Add(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static float4 Sub(float4 lhs, float4 rhs) => float4.Sub(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static float4 Mul(float4 lhs, float4 rhs) => float4.Mul(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static float4 Div(float4 lhs, float4 rhs) => float4.Div(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static float4 Modulo(float4 lhs, float4 rhs) => float4.Modulo(lhs, rhs);
        
        /// Returns a float4 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static float4 Degrees(float4 v) => float4.Degrees(v);
        
        /// Returns a float4 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static float4 Radians(float4 v) => float4.Radians(v);
        
        /// Returns a float4 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static float4 Acos(float4 v) => float4.Acos(v);
        
        /// Returns a float4 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static float4 Asin(float4 v) => float4.Asin(v);
        
        /// Returns a float4 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static float4 Atan(float4 v) => float4.Atan(v);
        
        /// Returns a float4 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static float4 Cos(float4 v) => float4.Cos(v);
        
        /// Returns a float4 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static float4 Cosh(float4 v) => float4.Cosh(v);
        
        /// Returns a float4 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static float4 Exp(float4 v) => float4.Exp(v);
        
        /// Returns a float4 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static float4 Log(float4 v) => float4.Log(v);
        
        /// Returns a float4 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static float4 Log2(float4 v) => float4.Log2(v);
        
        /// Returns a float4 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static float4 Log10(float4 v) => float4.Log10(v);
        
        /// Returns a float4 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static float4 Floor(float4 v) => float4.Floor(v);
        
        /// Returns a float4 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static float4 Ceiling(float4 v) => float4.Ceiling(v);
        
        /// Returns a float4 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static float4 Round(float4 v) => float4.Round(v);
        
        /// Returns a float4 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static float4 Sin(float4 v) => float4.Sin(v);
        
        /// Returns a float4 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static float4 Sinh(float4 v) => float4.Sinh(v);
        
        /// Returns a float4 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static float4 Tan(float4 v) => float4.Tan(v);
        
        /// Returns a float4 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static float4 Tanh(float4 v) => float4.Tanh(v);
        
        /// Returns a float4 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static float4 Truncate(float4 v) => float4.Truncate(v);
        
        /// Returns a float4 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static float4 Fract(float4 v) => float4.Fract(v);
        
        /// Returns a float4 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static float4 TruncateFast(float4 v) => float4.TruncateFast(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static float MinElement(float4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static float MaxElement(float4 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(float4 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(float4 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static float Sum(float4 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(float4 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(float4 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(float4 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(float4 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(float4 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static float4 Normalized(float4 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static float4 NormalizedSafe(float4 v) => v.NormalizedSafe;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static float Dot(float4 lhs, float4 rhs) => float4.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(float4 lhs, float4 rhs) => float4.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(float4 lhs, float4 rhs) => float4.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static float4 Reflect(float4 I, float4 N) => float4.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static float4 Refract(float4 I, float4 N, float eta) => float4.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static float4 FaceForward(float4 N, float4 I, float4 Nref) => float4.FaceForward(N, I, Nref);
        
        /// Returns a float4 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float4 Random(Random random, float4 minValue, float4 maxValue) => float4.Random(random, minValue, maxValue);
        
        /// Returns a float4 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float4 RandomUniform(Random random, float4 minValue, float4 maxValue) => float4.RandomUniform(random, minValue, maxValue);
        
        /// Returns a float4 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float4 RandomNormal(Random random, float4 mean, float4 variance) => float4.RandomNormal(random, mean, variance);
        
        /// Returns a float4 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float4 RandomGaussian(Random random, float4 mean, float4 variance) => float4.RandomGaussian(random, mean, variance);

    }
}
