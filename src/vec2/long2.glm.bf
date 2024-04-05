using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static long[] ToArray(long2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(long2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(long2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(long2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(long2 v) => v.GetHashCode();
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(long2 lhs, long2 rhs) => long2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(long2 lhs, long2 rhs) => long2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool2 GreaterThan(long2 lhs, long2 rhs) => long2.GreaterThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool2 GreaterThanEqual(long2 lhs, long2 rhs) => long2.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool2 LesserThan(long2 lhs, long2 rhs) => long2.LesserThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool2 LesserThanEqual(long2 lhs, long2 rhs) => long2.LesserThanEqual(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static long2 Abs(long2 v) => long2.Abs(v);
        
        /// Returns a long2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static long2 HermiteInterpolationOrder3(long2 v) => long2.HermiteInterpolationOrder3(v);
        
        /// Returns a long2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static long2 HermiteInterpolationOrder5(long2 v) => long2.HermiteInterpolationOrder5(v);
        
        /// Returns a long2 from component-wise application of Sqr (v * v).
        [Inline]
        public static long2 Sqr(long2 v) => long2.Sqr(v);
        
        /// Returns a long2 from component-wise application of Pow2 (v * v).
        [Inline]
        public static long2 Pow2(long2 v) => long2.Pow2(v);
        
        /// Returns a long2 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static long2 Pow3(long2 v) => long2.Pow3(v);
        
        /// Returns a long2 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static long2 Step(long2 v) => long2.Step(v);
        
        /// Returns a long2 from component-wise application of Sqrt ((long)System.Math.Sqrt((double)v)).
        [Inline]
        public static long2 Sqrt(long2 v) => long2.Sqrt(v);
        
        /// Returns a long2 from component-wise application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static long2 InverseSqrt(long2 v) => long2.InverseSqrt(v);
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int2 Sign(long2 v) => long2.Sign(v);
        
        /// Returns a long2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static long2 Max(long2 lhs, long2 rhs) => long2.Max(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static long2 Min(long2 lhs, long2 rhs) => long2.Min(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static long2 Pow(long2 lhs, long2 rhs) => long2.Pow(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static long2 Log(long2 lhs, long2 rhs) => long2.Log(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static long2 Clamp(long2 v, long2 min, long2 max) => long2.Clamp(v, min, max);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static long2 Mix(long2 min, long2 max, long2 a) => long2.Mix(min, max, a);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static long2 Lerp(long2 min, long2 max, long2 a) => long2.Lerp(min, max, a);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        [Inline]
        public static long2 Fma(long2 a, long2 b, long2 c) => long2.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long2x2 OuterProduct(long2 c, long2 r) => long2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long3x2 OuterProduct(long2 c, long3 r) => long2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static long4x2 OuterProduct(long2 c, long4 r) => long2.OuterProduct(c, r);
        
        /// Returns a long2 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static long2 Add(long2 lhs, long2 rhs) => long2.Add(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static long2 Sub(long2 lhs, long2 rhs) => long2.Sub(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static long2 Mul(long2 lhs, long2 rhs) => long2.Mul(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static long2 Div(long2 lhs, long2 rhs) => long2.Div(lhs, rhs);
        
        /// Returns a long2 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static long2 Xor(long2 lhs, long2 rhs) => long2.Xor(lhs, rhs);
        
        /// Returns a long2 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static long2 BitwiseOr(long2 lhs, long2 rhs) => long2.BitwiseOr(lhs, rhs);
        
        /// Returns a long2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static long2 BitwiseAnd(long2 lhs, long2 rhs) => long2.BitwiseAnd(lhs, rhs);
        
        /// Returns a long2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static long2 LeftShift(long2 lhs, int2 rhs) => long2.LeftShift(lhs, rhs);
        
        /// Returns a long2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static long2 RightShift(long2 lhs, int2 rhs) => long2.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static long MinElement(long2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static long MaxElement(long2 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static double Length(long2 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static double LengthSqr(long2 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static long Sum(long2 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static double Norm(long2 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static double Norm1(long2 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static double Norm2(long2 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static double NormMax(long2 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(long2 v, double p) => v.NormP(p);
        
        /// Returns a perpendicular vector.
        [Inline]
        public static long2 Perpendicular(long2 v) => v.Perpendicular;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static long Dot(long2 lhs, long2 rhs) => long2.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static double Distance(long2 lhs, long2 rhs) => long2.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static double DistanceSqr(long2 lhs, long2 rhs) => long2.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static long2 Reflect(long2 I, long2 N) => long2.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static long2 Refract(long2 I, long2 N, long eta) => long2.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static long2 FaceForward(long2 N, long2 I, long2 Nref) => long2.FaceForward(N, I, Nref);
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static long Cross(long2 l, long2 r) => long2.Cross(l, r);
        
        /// Returns a long2 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static long2 Random(Random random, long2 maxValue) => long2.Random(random, maxValue);
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long2 Random(Random random, long2 minValue, long2 maxValue) => long2.Random(random, minValue, maxValue);
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static long2 RandomUniform(Random random, long2 minValue, long2 maxValue) => long2.RandomUniform(random, minValue, maxValue);

    }
}
