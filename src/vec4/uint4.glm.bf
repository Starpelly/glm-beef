using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static uint[] ToArray(uint4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(uint4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(uint4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(uint4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(uint4 v) => v.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(uint4 lhs, uint4 rhs) => uint4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(uint4 lhs, uint4 rhs) => uint4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(uint4 lhs, uint4 rhs) => uint4.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(uint4 lhs, uint4 rhs) => uint4.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(uint4 lhs, uint4 rhs) => uint4.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(uint4 lhs, uint4 rhs) => uint4.LesserThanEqual(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Abs (v).
        [Inline]
        public static uint4 Abs(uint4 v) => uint4.Abs(v);
        
        /// Returns a uint4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static uint4 HermiteInterpolationOrder3(uint4 v) => uint4.HermiteInterpolationOrder3(v);
        
        /// Returns a uint4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static uint4 HermiteInterpolationOrder5(uint4 v) => uint4.HermiteInterpolationOrder5(v);
        
        /// Returns a uint4 from component-wise application of Sqr (v * v).
        [Inline]
        public static uint4 Sqr(uint4 v) => uint4.Sqr(v);
        
        /// Returns a uint4 from component-wise application of Pow2 (v * v).
        [Inline]
        public static uint4 Pow2(uint4 v) => uint4.Pow2(v);
        
        /// Returns a uint4 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static uint4 Pow3(uint4 v) => uint4.Pow3(v);
        
        /// Returns a uint4 from component-wise application of Step (v &gt;= 0u ? 1u : 0u).
        [Inline]
        public static uint4 Step(uint4 v) => uint4.Step(v);
        
        /// Returns a uint4 from component-wise application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        [Inline]
        public static uint4 Sqrt(uint4 v) => uint4.Sqrt(v);
        
        /// Returns a uint4 from component-wise application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static uint4 InverseSqrt(uint4 v) => uint4.InverseSqrt(v);
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int4 Sign(uint4 v) => uint4.Sign(v);
        
        /// Returns a uint4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static uint4 Max(uint4 lhs, uint4 rhs) => uint4.Max(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static uint4 Min(uint4 lhs, uint4 rhs) => uint4.Min(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static uint4 Pow(uint4 lhs, uint4 rhs) => uint4.Pow(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static uint4 Log(uint4 lhs, uint4 rhs) => uint4.Log(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static uint4 Clamp(uint4 v, uint4 min, uint4 max) => uint4.Clamp(v, min, max);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static uint4 Mix(uint4 min, uint4 max, uint4 a) => uint4.Mix(min, max, a);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static uint4 Lerp(uint4 min, uint4 max, uint4 a) => uint4.Lerp(min, max, a);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        [Inline]
        public static uint4 Fma(uint4 a, uint4 b, uint4 c) => uint4.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint2x4 OuterProduct(uint4 c, uint2 r) => uint4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint3x4 OuterProduct(uint4 c, uint3 r) => uint4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint4x4 OuterProduct(uint4 c, uint4 r) => uint4.OuterProduct(c, r);
        
        /// Returns a uint4 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static uint4 Add(uint4 lhs, uint4 rhs) => uint4.Add(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static uint4 Sub(uint4 lhs, uint4 rhs) => uint4.Sub(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static uint4 Mul(uint4 lhs, uint4 rhs) => uint4.Mul(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static uint4 Div(uint4 lhs, uint4 rhs) => uint4.Div(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static uint4 Xor(uint4 lhs, uint4 rhs) => uint4.Xor(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static uint4 BitwiseOr(uint4 lhs, uint4 rhs) => uint4.BitwiseOr(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static uint4 BitwiseAnd(uint4 lhs, uint4 rhs) => uint4.BitwiseAnd(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static uint4 LeftShift(uint4 lhs, int4 rhs) => uint4.LeftShift(lhs, rhs);
        
        /// Returns a uint4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static uint4 RightShift(uint4 lhs, int4 rhs) => uint4.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static uint MinElement(uint4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static uint MaxElement(uint4 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(uint4 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(uint4 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static uint Sum(uint4 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(uint4 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(uint4 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(uint4 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(uint4 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(uint4 v, double p) => v.NormP(p);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static uint Dot(uint4 lhs, uint4 rhs) => uint4.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(uint4 lhs, uint4 rhs) => uint4.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(uint4 lhs, uint4 rhs) => uint4.DistanceSqr(lhs, rhs);
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static uint4 Random(Random random, uint4 maxValue) => uint4.Random(random, maxValue);
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static uint4 Random(Random random, uint4 minValue, uint4 maxValue) => uint4.Random(random, minValue, maxValue);
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static uint4 RandomUniform(Random random, uint4 minValue, uint4 maxValue) => uint4.RandomUniform(random, minValue, maxValue);

    }
}
