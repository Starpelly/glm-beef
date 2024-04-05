using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static uint[] ToArray(uint2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(uint2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(uint2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(uint2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(uint2 v) => v.GetHashCode();
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(uint2 lhs, uint2 rhs) => uint2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(uint2 lhs, uint2 rhs) => uint2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool2 GreaterThan(uint2 lhs, uint2 rhs) => uint2.GreaterThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool2 GreaterThanEqual(uint2 lhs, uint2 rhs) => uint2.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool2 LesserThan(uint2 lhs, uint2 rhs) => uint2.LesserThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool2 LesserThanEqual(uint2 lhs, uint2 rhs) => uint2.LesserThanEqual(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Abs (v).
        [Inline]
        public static uint2 Abs(uint2 v) => uint2.Abs(v);
        
        /// Returns a uint2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static uint2 HermiteInterpolationOrder3(uint2 v) => uint2.HermiteInterpolationOrder3(v);
        
        /// Returns a uint2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static uint2 HermiteInterpolationOrder5(uint2 v) => uint2.HermiteInterpolationOrder5(v);
        
        /// Returns a uint2 from component-wise application of Sqr (v * v).
        [Inline]
        public static uint2 Sqr(uint2 v) => uint2.Sqr(v);
        
        /// Returns a uint2 from component-wise application of Pow2 (v * v).
        [Inline]
        public static uint2 Pow2(uint2 v) => uint2.Pow2(v);
        
        /// Returns a uint2 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static uint2 Pow3(uint2 v) => uint2.Pow3(v);
        
        /// Returns a uint2 from component-wise application of Step (v &gt;= 0u ? 1u : 0u).
        [Inline]
        public static uint2 Step(uint2 v) => uint2.Step(v);
        
        /// Returns a uint2 from component-wise application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        [Inline]
        public static uint2 Sqrt(uint2 v) => uint2.Sqrt(v);
        
        /// Returns a uint2 from component-wise application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static uint2 InverseSqrt(uint2 v) => uint2.InverseSqrt(v);
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int2 Sign(uint2 v) => uint2.Sign(v);
        
        /// Returns a uint2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static uint2 Max(uint2 lhs, uint2 rhs) => uint2.Max(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static uint2 Min(uint2 lhs, uint2 rhs) => uint2.Min(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static uint2 Pow(uint2 lhs, uint2 rhs) => uint2.Pow(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static uint2 Log(uint2 lhs, uint2 rhs) => uint2.Log(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static uint2 Clamp(uint2 v, uint2 min, uint2 max) => uint2.Clamp(v, min, max);
        
        /// Returns a uint2 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static uint2 Mix(uint2 min, uint2 max, uint2 a) => uint2.Mix(min, max, a);
        
        /// Returns a uint2 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static uint2 Lerp(uint2 min, uint2 max, uint2 a) => uint2.Lerp(min, max, a);
        
        /// Returns a uint2 from component-wise application of Fma (a * b + c).
        [Inline]
        public static uint2 Fma(uint2 a, uint2 b, uint2 c) => uint2.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint2x2 OuterProduct(uint2 c, uint2 r) => uint2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint3x2 OuterProduct(uint2 c, uint3 r) => uint2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static uint4x2 OuterProduct(uint2 c, uint4 r) => uint2.OuterProduct(c, r);
        
        /// Returns a uint2 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static uint2 Add(uint2 lhs, uint2 rhs) => uint2.Add(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static uint2 Sub(uint2 lhs, uint2 rhs) => uint2.Sub(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static uint2 Mul(uint2 lhs, uint2 rhs) => uint2.Mul(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static uint2 Div(uint2 lhs, uint2 rhs) => uint2.Div(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static uint2 Xor(uint2 lhs, uint2 rhs) => uint2.Xor(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static uint2 BitwiseOr(uint2 lhs, uint2 rhs) => uint2.BitwiseOr(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static uint2 BitwiseAnd(uint2 lhs, uint2 rhs) => uint2.BitwiseAnd(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static uint2 LeftShift(uint2 lhs, int2 rhs) => uint2.LeftShift(lhs, rhs);
        
        /// Returns a uint2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static uint2 RightShift(uint2 lhs, int2 rhs) => uint2.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static uint MinElement(uint2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static uint MaxElement(uint2 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(uint2 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(uint2 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static uint Sum(uint2 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(uint2 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(uint2 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(uint2 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(uint2 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(uint2 v, double p) => v.NormP(p);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static uint Dot(uint2 lhs, uint2 rhs) => uint2.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(uint2 lhs, uint2 rhs) => uint2.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(uint2 lhs, uint2 rhs) => uint2.DistanceSqr(lhs, rhs);
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static uint Cross(uint2 l, uint2 r) => uint2.Cross(l, r);
        
        /// Returns a uint2 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static uint2 Random(Random random, uint2 maxValue) => uint2.Random(random, maxValue);
        
        /// Returns a uint2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static uint2 Random(Random random, uint2 minValue, uint2 maxValue) => uint2.Random(random, minValue, maxValue);
        
        /// Returns a uint2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static uint2 RandomUniform(Random random, uint2 minValue, uint2 maxValue) => uint2.RandomUniform(random, minValue, maxValue);

    }
}
