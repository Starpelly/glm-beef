using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static long[] ToArray(long3 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(long3 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(long3 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (3).
        [Inline]
        public static int Count(long3 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(long3 v) => v.GetHashCode();
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool3 Equal(long3 lhs, long3 rhs) => long3.Equal(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool Equal(long lhs, long rhs) => lhs == rhs;
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool3 NotEqual(long3 lhs, long3 rhs) => long3.NotEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool NotEqual(long lhs, long rhs) => lhs != rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool3 GreaterThan(long3 lhs, long3 rhs) => long3.GreaterThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool GreaterThan(long lhs, long rhs) => lhs > rhs;
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool3 GreaterThanEqual(long3 lhs, long3 rhs) => long3.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool GreaterThanEqual(long lhs, long rhs) => lhs >= rhs;
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool3 LesserThan(long3 lhs, long3 rhs) => long3.LesserThan(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool LesserThan(long lhs, long rhs) => lhs < rhs;
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool3 LesserThanEqual(long3 lhs, long3 rhs) => long3.LesserThanEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool LesserThanEqual(long lhs, long rhs) => lhs <= rhs;
        
        /// Returns a long3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static long3 Abs(long3 v) => long3.Abs(v);
        
        /// Returns a long3 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static long Abs(long v) => System.Math.Abs(v);
        
        /// Returns a long3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static long3 HermiteInterpolationOrder3(long3 v) => long3.HermiteInterpolationOrder3(v);
        
        /// Returns a long3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static long HermiteInterpolationOrder3(long v) => (3 - 2 * v) * v * v;
        
        /// Returns a long3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static long3 HermiteInterpolationOrder5(long3 v) => long3.HermiteInterpolationOrder5(v);
        
        /// Returns a long3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static long HermiteInterpolationOrder5(long v) => ((6 * v - 15) * v + 10) * v * v * v;
        
        /// Returns a long3 from component-wise application of Sqr (v * v).
        [Inline]
        public static long3 Sqr(long3 v) => long3.Sqr(v);
        
        /// Returns a long3 from component-wise application of Sqr (v * v).
        [Inline]
        public static long Sqr(long v) => v * v;
        
        /// Returns a long3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static long3 Pow2(long3 v) => long3.Pow2(v);
        
        /// Returns a long3 from component-wise application of Pow2 (v * v).
        [Inline]
        public static long Pow2(long v) => v * v;
        
        /// Returns a long3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static long3 Pow3(long3 v) => long3.Pow3(v);
        
        /// Returns a long3 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static long Pow3(long v) => v * v * v;
        
        /// Returns a long3 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static long3 Step(long3 v) => long3.Step(v);
        
        /// Returns a long3 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static long Step(long v) => v >= 0 ? 1 : 0;
        
        /// Returns a long3 from component-wise application of Sqrt ((long)System.Math.Sqrt((double)v)).
        [Inline]
        public static long3 Sqrt(long3 v) => long3.Sqrt(v);
        
        /// Returns a long3 from component-wise application of Sqrt ((long)System.Math.Sqrt((double)v)).
        [Inline]
        public static long Sqrt(long v) => (long)System.Math.Sqrt((double)v);
        
        /// Returns a long3 from component-wise application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static long3 InverseSqrt(long3 v) => long3.InverseSqrt(v);
        
        /// Returns a long3 from component-wise application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static long InverseSqrt(long v) => (long)(1.0 / System.Math.Sqrt((double)v));
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int3 Sign(long3 v) => long3.Sign(v);
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int Sign(long v) => System.Math.Sign(v);
        
        /// Returns a long3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static long3 Max(long3 lhs, long3 rhs) => long3.Max(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static long Max(long lhs, long rhs) => System.Math.Max(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static long3 Min(long3 lhs, long3 rhs) => long3.Min(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static long Min(long lhs, long rhs) => System.Math.Min(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static long3 Pow(long3 lhs, long3 rhs) => long3.Pow(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static long Pow(long lhs, long rhs) => (long)System.Math.Pow((double)lhs, (double)rhs);
        
        /// Returns a long3 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static long3 Log(long3 lhs, long3 rhs) => long3.Log(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static long Log(long lhs, long rhs) => (long)System.Math.Log((double)lhs, (double)rhs);
        
        /// Returns a long3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static long3 Clamp(long3 v, long3 min, long3 max) => long3.Clamp(v, min, max);
        
        /// Returns a long3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static long Clamp(long v, long min, long max) => System.Math.Min(System.Math.Max(v, min), max);
        
        /// Returns a long3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static long3 Mix(long3 min, long3 max, long3 a) => long3.Mix(min, max, a);
        
        /// Returns a long3 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static long Mix(long min, long max, long a) => min * (1-a) + max * a;
        
        /// Returns a long3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static long3 Lerp(long3 min, long3 max, long3 a) => long3.Lerp(min, max, a);
        
        /// Returns a long3 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static long Lerp(long min, long max, long a) => min * (1-a) + max * a;
        
        /// Returns a long3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static long3 Fma(long3 a, long3 b, long3 c) => long3.Fma(a, b, c);
        
        /// Returns a long3 from component-wise application of Fma (a * b + c).
        [Inline]
        public static long Fma(long a, long b, long c) => a * b + c;
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long2x3 OuterProduct(long3 c, long2 r) => long3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long3x3 OuterProduct(long3 c, long3 r) => long3.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long4x3 OuterProduct(long3 c, long4 r) => long3.OuterProduct(c, r);
        
        /// Returns a long3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static long3 Add(long3 lhs, long3 rhs) => long3.Add(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static long Add(long lhs, long rhs) => lhs + rhs;
        
        /// Returns a long3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static long3 Sub(long3 lhs, long3 rhs) => long3.Sub(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static long Sub(long lhs, long rhs) => lhs - rhs;
        
        /// Returns a long3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static long3 Mul(long3 lhs, long3 rhs) => long3.Mul(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static long Mul(long lhs, long rhs) => lhs * rhs;
        
        /// Returns a long3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static long3 Div(long3 lhs, long3 rhs) => long3.Div(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static long Div(long lhs, long rhs) => lhs / rhs;
        
        /// Returns a long3 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static long3 Xor(long3 lhs, long3 rhs) => long3.Xor(lhs, rhs);
        
        /// Returns a long3 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static long Xor(long lhs, long rhs) => lhs ^ rhs;
        
        /// Returns a long3 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static long3 BitwiseOr(long3 lhs, long3 rhs) => long3.BitwiseOr(lhs, rhs);
        
        /// Returns a long3 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static long BitwiseOr(long lhs, long rhs) => lhs | rhs;
        
        /// Returns a long3 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static long3 BitwiseAnd(long3 lhs, long3 rhs) => long3.BitwiseAnd(lhs, rhs);
        
        /// Returns a long3 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static long BitwiseAnd(long lhs, long rhs) => lhs & rhs;
        
        /// Returns a long3 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static long3 LeftShift(long3 lhs, int3 rhs) => long3.LeftShift(lhs, rhs);
        
        /// Returns a long3 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static long LeftShift(long lhs, int rhs) => lhs << rhs;
        
        /// Returns a long3 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static long3 RightShift(long3 lhs, int3 rhs) => long3.RightShift(lhs, rhs);
        
        /// Returns a long3 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static long RightShift(long lhs, int rhs) => lhs >> rhs;
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static long MinElement(long3 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static long MaxElement(long3 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(long3 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(long3 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static long Sum(long3 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(long3 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(long3 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(long3 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(long3 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(long3 v, double p) => v.NormP(p);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static long Dot(long3 lhs, long3 rhs) => long3.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(long3 lhs, long3 rhs) => long3.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(long3 lhs, long3 rhs) => long3.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static long3 Reflect(long3 I, long3 N) => long3.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static long3 Refract(long3 I, long3 N, long eta) => long3.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static long3 FaceForward(long3 N, long3 I, long3 Nref) => long3.FaceForward(N, I, Nref);
        
        /// Returns the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static long3 Cross(long3 l, long3 r) => long3.Cross(l, r);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static long3 Random(Random random, long3 maxValue) => long3.Random(random, maxValue);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static long Random(Random random, long maxValue) => (long)random.Next((int)maxValue);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long3 Random(Random random, long3 minValue, long3 maxValue) => long3.Random(random, minValue, maxValue);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long Random(Random random, long minValue, long maxValue) => (long)random.Next((int)minValue, (int)maxValue);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long3 RandomUniform(Random random, long3 minValue, long3 maxValue) => long3.RandomUniform(random, minValue, maxValue);
        
        /// Returns a long3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long RandomUniform(Random random, long minValue, long maxValue) => (long)random.Next((int)minValue, (int)maxValue);

    }
}
