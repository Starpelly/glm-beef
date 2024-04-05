using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static long[] ToArray(long4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(long4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(long4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(long4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(long4 v) => v.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(long4 lhs, long4 rhs) => long4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(long4 lhs, long4 rhs) => long4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(long4 lhs, long4 rhs) => long4.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(long4 lhs, long4 rhs) => long4.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(long4 lhs, long4 rhs) => long4.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(long4 lhs, long4 rhs) => long4.LesserThanEqual(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static long4 Abs(long4 v) => long4.Abs(v);
        
        /// Returns a long4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static long4 HermiteInterpolationOrder3(long4 v) => long4.HermiteInterpolationOrder3(v);
        
        /// Returns a long4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static long4 HermiteInterpolationOrder5(long4 v) => long4.HermiteInterpolationOrder5(v);
        
        /// Returns a long4 from component-wise application of Sqr (v * v).
        [Inline]
        public static long4 Sqr(long4 v) => long4.Sqr(v);
        
        /// Returns a long4 from component-wise application of Pow2 (v * v).
        [Inline]
        public static long4 Pow2(long4 v) => long4.Pow2(v);
        
        /// Returns a long4 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static long4 Pow3(long4 v) => long4.Pow3(v);
        
        /// Returns a long4 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static long4 Step(long4 v) => long4.Step(v);
        
        /// Returns a long4 from component-wise application of Sqrt ((long)System.Math.Sqrt((double)v)).
        [Inline]
        public static long4 Sqrt(long4 v) => long4.Sqrt(v);
        
        /// Returns a long4 from component-wise application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static long4 InverseSqrt(long4 v) => long4.InverseSqrt(v);
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int4 Sign(long4 v) => long4.Sign(v);
        
        /// Returns a long4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static long4 Max(long4 lhs, long4 rhs) => long4.Max(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static long4 Min(long4 lhs, long4 rhs) => long4.Min(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static long4 Pow(long4 lhs, long4 rhs) => long4.Pow(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static long4 Log(long4 lhs, long4 rhs) => long4.Log(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static long4 Clamp(long4 v, long4 min, long4 max) => long4.Clamp(v, min, max);
        
        /// Returns a long4 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static long4 Mix(long4 min, long4 max, long4 a) => long4.Mix(min, max, a);
        
        /// Returns a long4 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static long4 Lerp(long4 min, long4 max, long4 a) => long4.Lerp(min, max, a);
        
        /// Returns a long4 from component-wise application of Fma (a * b + c).
        [Inline]
        public static long4 Fma(long4 a, long4 b, long4 c) => long4.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long2x4 OuterProduct(long4 c, long2 r) => long4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long3x4 OuterProduct(long4 c, long3 r) => long4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long4x4 OuterProduct(long4 c, long4 r) => long4.OuterProduct(c, r);
        
        /// Returns a long4 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static long4 Add(long4 lhs, long4 rhs) => long4.Add(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static long4 Sub(long4 lhs, long4 rhs) => long4.Sub(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static long4 Mul(long4 lhs, long4 rhs) => long4.Mul(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static long4 Div(long4 lhs, long4 rhs) => long4.Div(lhs, rhs);
        
        /// Returns a long4 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static long4 Xor(long4 lhs, long4 rhs) => long4.Xor(lhs, rhs);
        
        /// Returns a long4 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static long4 BitwiseOr(long4 lhs, long4 rhs) => long4.BitwiseOr(lhs, rhs);
        
        /// Returns a long4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static long4 BitwiseAnd(long4 lhs, long4 rhs) => long4.BitwiseAnd(lhs, rhs);
        
        /// Returns a long4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static long4 LeftShift(long4 lhs, int4 rhs) => long4.LeftShift(lhs, rhs);
        
        /// Returns a long4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static long4 RightShift(long4 lhs, int4 rhs) => long4.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static long MinElement(long4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static long MaxElement(long4 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(long4 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(long4 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static long Sum(long4 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(long4 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(long4 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(long4 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(long4 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(long4 v, double p) => v.NormP(p);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static long Dot(long4 lhs, long4 rhs) => long4.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(long4 lhs, long4 rhs) => long4.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(long4 lhs, long4 rhs) => long4.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static long4 Reflect(long4 I, long4 N) => long4.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static long4 Refract(long4 I, long4 N, long eta) => long4.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static long4 FaceForward(long4 N, long4 I, long4 Nref) => long4.FaceForward(N, I, Nref);
        
        /// Returns a long4 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static long4 Random(Random random, long4 maxValue) => long4.Random(random, maxValue);
        
        /// Returns a long4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long4 Random(Random random, long4 minValue, long4 maxValue) => long4.Random(random, minValue, maxValue);
        
        /// Returns a long4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long4 RandomUniform(Random random, long4 minValue, long4 maxValue) => long4.RandomUniform(random, minValue, maxValue);

    }
}
