using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static float[] ToArray(float3 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(float3 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(float3 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (3).
        [Inline]
        public static int Count(float3 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(float3 v) => v.GetHashCode();
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        [Inline]
        public static bool ApproxEqual(float3 lhs, float3 rhs, float eps = 0.1f) => float3.ApproxEqual(lhs, rhs, eps);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool3 Equal(float3 lhs, float3 rhs) => float3.Equal(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool Equal(float lhs, float rhs) => lhs == rhs;
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool3 NotEqual(float3 lhs, float3 rhs) => float3.NotEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool NotEqual(float lhs, float rhs) => lhs != rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool3 GreaterThan(float3 lhs, float3 rhs) => float3.GreaterThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool GreaterThan(float lhs, float rhs) => lhs > rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool3 GreaterThanEqual(float3 lhs, float3 rhs) => float3.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool GreaterThanEqual(float lhs, float rhs) => lhs >= rhs;
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool3 LesserThan(float3 lhs, float3 rhs) => float3.LesserThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool LesserThan(float lhs, float rhs) => lhs < rhs;
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool3 LesserThanEqual(float3 lhs, float3 rhs) => float3.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool LesserThanEqual(float lhs, float rhs) => lhs <= rhs;
        
        /// Returns a bool3 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool3 IsInfinity(float3 v) => float3.IsInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool IsInfinity(float v) => v.IsInfinity;
        
        /// Returns a bool3 from component-wise application of IsFinite (v.IsFinite).
        [Inline]
        public static bool3 IsFinite(float3 v) => float3.IsFinite(v);
        
        /// Returns a bool3 from component-wise application of IsFinite (v.IsFinite).
        [Inline]
        public static bool IsFinite(float v) => v.IsFinite;
        
        /// Returns a bool3 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool3 IsNaN(float3 v) => float3.IsNaN(v);
        
        /// Returns a bool3 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool IsNaN(float v) => v.IsNaN;
        
        /// Returns a bool3 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool3 IsNegativeInfinity(float3 v) => float3.IsNegativeInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool IsNegativeInfinity(float v) => v.IsNegativeInfinity;
        
        /// Returns a bool3 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool3 IsPositiveInfinity(float3 v) => float3.IsPositiveInfinity(v);
        
        /// Returns a bool3 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool IsPositiveInfinity(float v) => v.IsPositiveInfinity;
        
        /// Returns a float3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static float3 Abs(float3 v) => float3.Abs(v);
        
        /// Returns a float3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static float Abs(float v) => System.Math.Abs(v);
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static float3 HermiteInterpolationOrder3(float3 v) => float3.HermiteInterpolationOrder3(v);
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static float HermiteInterpolationOrder3(float v) => (3 - 2 * v) * v * v;
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static float3 HermiteInterpolationOrder5(float3 v) => float3.HermiteInterpolationOrder5(v);
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static float HermiteInterpolationOrder5(float v) => ((6 * v - 15) * v + 10) * v * v * v;
        
        /// Returns a float3 from component-wise application of Sqr (v * v).
        [Inline]
        public static float3 Sqr(float3 v) => float3.Sqr(v);
        
        /// Returns a float3 from component-wise application of Sqr (v * v).
        [Inline]
        public static float Sqr(float v) => v * v;
        
        /// Returns a float3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static float3 Pow2(float3 v) => float3.Pow2(v);
        
        /// Returns a float3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static float Pow2(float v) => v * v;
        
        /// Returns a float3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static float3 Pow3(float3 v) => float3.Pow3(v);
        
        /// Returns a float3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static float Pow3(float v) => v * v * v;
        
        /// Returns a float3 from component-wise application of Step (v &gt;= 0f ? 1f : 0f).
        [Inline]
        public static float3 Step(float3 v) => float3.Step(v);
        
        /// Returns a float3 from component-wise application of Step (v &gt;= 0f ? 1f : 0f).
        [Inline]
        public static float Step(float v) => v >= 0f ? 1f : 0f;
        
        /// Returns a float3 from component-wise application of Sqrt ((float)System.Math.Sqrt((double)v)).
        [Inline]
        public static float3 Sqrt(float3 v) => float3.Sqrt(v);
        
        /// Returns a float3 from component-wise application of Sqrt ((float)System.Math.Sqrt((double)v)).
        [Inline]
        public static float Sqrt(float v) => (float)System.Math.Sqrt((double)v);
        
        /// Returns a float3 from component-wise application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static float3 InverseSqrt(float3 v) => float3.InverseSqrt(v);
        
        /// Returns a float3 from component-wise application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static float InverseSqrt(float v) => (float)(1.0 / System.Math.Sqrt((double)v));
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int3 Sign(float3 v) => float3.Sign(v);
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int Sign(float v) => System.Math.Sign(v);
        
        /// Returns a float3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static float3 Max(float3 lhs, float3 rhs) => float3.Max(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static float Max(float lhs, float rhs) => System.Math.Max(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static float3 Min(float3 lhs, float3 rhs) => float3.Min(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static float Min(float lhs, float rhs) => System.Math.Min(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static float3 Pow(float3 lhs, float3 rhs) => float3.Pow(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static float Pow(float lhs, float rhs) => (float)System.Math.Pow((double)lhs, (double)rhs);
        
        /// Returns a float3 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static float3 Log(float3 lhs, float3 rhs) => float3.Log(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static float Log(float lhs, float rhs) => (float)System.Math.Log((double)lhs, (double)rhs);
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static float3 Clamp(float3 v, float3 min, float3 max) => float3.Clamp(v, min, max);
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static float Clamp(float v, float min, float max) => System.Math.Min(System.Math.Max(v, min), max);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static float3 Mix(float3 min, float3 max, float3 a) => float3.Mix(min, max, a);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static float Mix(float min, float max, float a) => min * (1-a) + max * a;
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static float3 Lerp(float3 min, float3 max, float3 a) => float3.Lerp(min, max, a);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static float Lerp(float min, float max, float a) => min * (1-a) + max * a;
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static float3 Fma(float3 a, float3 b, float3 c) => float3.Fma(a, b, c);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static float Fma(float a, float b, float c) => a * b + c;
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float2x3 OuterProduct(float3 c, float2 r) => float3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float3x3 OuterProduct(float3 c, float3 r) => float3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static float4x3 OuterProduct(float3 c, float4 r) => float3.OuterProduct(c, r);
        
        /// Returns a float3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static float3 Add(float3 lhs, float3 rhs) => float3.Add(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static float Add(float lhs, float rhs) => lhs + rhs;
        
        /// Returns a float3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static float3 Sub(float3 lhs, float3 rhs) => float3.Sub(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static float Sub(float lhs, float rhs) => lhs - rhs;
        
        /// Returns a float3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static float3 Mul(float3 lhs, float3 rhs) => float3.Mul(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static float Mul(float lhs, float rhs) => lhs * rhs;
        
        /// Returns a float3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static float3 Div(float3 lhs, float3 rhs) => float3.Div(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static float Div(float lhs, float rhs) => lhs / rhs;
        
        /// Returns a float3 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static float3 Modulo(float3 lhs, float3 rhs) => float3.Modulo(lhs, rhs);
        
        /// Returns a float3 from component-wise application of Modulo (lhs % rhs).
        [Inline]
        public static float Modulo(float lhs, float rhs) => lhs % rhs;
        
        /// Returns a float3 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static float3 Degrees(float3 v) => float3.Degrees(v);
        
        /// Returns a float3 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        [Inline]
        public static float Degrees(float v) => (float)(v * 57.295779513082320876798154814105170332405472466564321f);
        
        /// Returns a float3 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static float3 Radians(float3 v) => float3.Radians(v);
        
        /// Returns a float3 from component-wise application of Radians (Degrees-To-Radians Conversion).
        [Inline]
        public static float Radians(float v) => (float)(v * 0.0174532925199432957692369076848861271344287188854172f);
        
        /// Returns a float3 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static float3 Acos(float3 v) => float3.Acos(v);
        
        /// Returns a float3 from component-wise application of Acos (System.Math.Acos(v)).
        [Inline]
        public static float Acos(float v) => System.Math.Acos(v);
        
        /// Returns a float3 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static float3 Asin(float3 v) => float3.Asin(v);
        
        /// Returns a float3 from component-wise application of Asin (System.Math.Asin(v)).
        [Inline]
        public static float Asin(float v) => System.Math.Asin(v);
        
        /// Returns a float3 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static float3 Atan(float3 v) => float3.Atan(v);
        
        /// Returns a float3 from component-wise application of Atan (System.Math.Atan(v)).
        [Inline]
        public static float Atan(float v) => System.Math.Atan(v);
        
        /// Returns a float3 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static float3 Cos(float3 v) => float3.Cos(v);
        
        /// Returns a float3 from component-wise application of Cos (System.Math.Cos(v)).
        [Inline]
        public static float Cos(float v) => System.Math.Cos(v);
        
        /// Returns a float3 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static float3 Cosh(float3 v) => float3.Cosh(v);
        
        /// Returns a float3 from component-wise application of Cosh (System.Math.Cosh(v)).
        [Inline]
        public static float Cosh(float v) => System.Math.Cosh(v);
        
        /// Returns a float3 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static float3 Exp(float3 v) => float3.Exp(v);
        
        /// Returns a float3 from component-wise application of Exp (System.Math.Exp(v)).
        [Inline]
        public static float Exp(float v) => System.Math.Exp(v);
        
        /// Returns a float3 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static float3 Log(float3 v) => float3.Log(v);
        
        /// Returns a float3 from component-wise application of Log (System.Math.Log(v)).
        [Inline]
        public static float Log(float v) => System.Math.Log(v);
        
        /// Returns a float3 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static float3 Log2(float3 v) => float3.Log2(v);
        
        /// Returns a float3 from component-wise application of Log2 (System.Math.Log(v, 2)).
        [Inline]
        public static float Log2(float v) => System.Math.Log(v, 2);
        
        /// Returns a float3 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static float3 Log10(float3 v) => float3.Log10(v);
        
        /// Returns a float3 from component-wise application of Log10 (System.Math.Log10(v)).
        [Inline]
        public static float Log10(float v) => System.Math.Log10(v);
        
        /// Returns a float3 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static float3 Floor(float3 v) => float3.Floor(v);
        
        /// Returns a float3 from component-wise application of Floor (System.Math.Floor(v)).
        [Inline]
        public static float Floor(float v) => System.Math.Floor(v);
        
        /// Returns a float3 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static float3 Ceiling(float3 v) => float3.Ceiling(v);
        
        /// Returns a float3 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        [Inline]
        public static float Ceiling(float v) => System.Math.Ceiling(v);
        
        /// Returns a float3 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static float3 Round(float3 v) => float3.Round(v);
        
        /// Returns a float3 from component-wise application of Round (System.Math.Round(v)).
        [Inline]
        public static float Round(float v) => System.Math.Round(v);
        
        /// Returns a float3 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static float3 Sin(float3 v) => float3.Sin(v);
        
        /// Returns a float3 from component-wise application of Sin (System.Math.Sin(v)).
        [Inline]
        public static float Sin(float v) => System.Math.Sin(v);
        
        /// Returns a float3 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static float3 Sinh(float3 v) => float3.Sinh(v);
        
        /// Returns a float3 from component-wise application of Sinh (System.Math.Sinh(v)).
        [Inline]
        public static float Sinh(float v) => System.Math.Sinh(v);
        
        /// Returns a float3 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static float3 Tan(float3 v) => float3.Tan(v);
        
        /// Returns a float3 from component-wise application of Tan (System.Math.Tan(v)).
        [Inline]
        public static float Tan(float v) => System.Math.Tan(v);
        
        /// Returns a float3 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static float3 Tanh(float3 v) => float3.Tanh(v);
        
        /// Returns a float3 from component-wise application of Tanh (System.Math.Tanh(v)).
        [Inline]
        public static float Tanh(float v) => System.Math.Tanh(v);
        
        /// Returns a float3 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static float3 Truncate(float3 v) => float3.Truncate(v);
        
        /// Returns a float3 from component-wise application of Truncate (System.Math.Truncate(v)).
        [Inline]
        public static float Truncate(float v) => System.Math.Truncate(v);
        
        /// Returns a float3 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static float3 Fract(float3 v) => float3.Fract(v);
        
        /// Returns a float3 from component-wise application of Fract ((v - System.Math.Floor(v))).
        [Inline]
        public static float Fract(float v) => (v - System.Math.Floor(v));
        
        /// Returns a float3 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static float3 TruncateFast(float3 v) => float3.TruncateFast(v);
        
        /// Returns a float3 from component-wise application of TruncateFast ((int64)(v)).
        [Inline]
        public static float TruncateFast(float v) => (int64)(v);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static float MinElement(float3 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static float MaxElement(float3 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(float3 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(float3 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static float Sum(float3 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(float3 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(float3 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(float3 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(float3 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(float3 v, double p) => v.NormP(p);
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        [Inline]
        public static float3 Normalized(float3 v) => v.Normalized;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        [Inline]
        public static float3 NormalizedSafe(float3 v) => v.NormalizedSafe;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static float Dot(float3 lhs, float3 rhs) => float3.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(float3 lhs, float3 rhs) => float3.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(float3 lhs, float3 rhs) => float3.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static float3 Reflect(float3 I, float3 N) => float3.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static float3 Refract(float3 I, float3 N, float eta) => float3.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static float3 FaceForward(float3 N, float3 I, float3 Nref) => float3.FaceForward(N, I, Nref);
        
        /// Returns the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static float3 Cross(float3 l, float3 r) => float3.Cross(l, r);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float3 Random(Random random, float3 minValue, float3 maxValue) => float3.Random(random, minValue, maxValue);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float Random(Random random, float minValue, float maxValue) => (float)random.NextDouble() * (maxValue - minValue) + minValue;
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float3 RandomUniform(Random random, float3 minValue, float3 maxValue) => float3.RandomUniform(random, minValue, maxValue);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        [Inline]
        public static float RandomUniform(Random random, float minValue, float maxValue) => (float)random.NextDouble() * (maxValue - minValue) + minValue;
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float3 RandomNormal(Random random, float3 mean, float3 variance) => float3.RandomNormal(random, mean, variance);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float RandomNormal(Random random, float mean, float variance) => (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean;
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float3 RandomGaussian(Random random, float3 mean, float3 variance) => float3.RandomGaussian(random, mean, variance);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        [Inline]
        public static float RandomGaussian(Random random, float mean, float variance) => (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean;

    }
}
