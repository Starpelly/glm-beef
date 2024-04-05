using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static int[] ToArray(int4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(int4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(int4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(int4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(int4 v) => v.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(int4 lhs, int4 rhs) => int4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(int4 lhs, int4 rhs) => int4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(int4 lhs, int4 rhs) => int4.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(int4 lhs, int4 rhs) => int4.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(int4 lhs, int4 rhs) => int4.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(int4 lhs, int4 rhs) => int4.LesserThanEqual(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static int4 Abs(int4 v) => int4.Abs(v);
        
        /// Returns a int4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static int4 HermiteInterpolationOrder3(int4 v) => int4.HermiteInterpolationOrder3(v);
        
        /// Returns a int4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static int4 HermiteInterpolationOrder5(int4 v) => int4.HermiteInterpolationOrder5(v);
        
        /// Returns a int4 from component-wise application of Sqr (v * v).
        [Inline]
        public static int4 Sqr(int4 v) => int4.Sqr(v);
        
        /// Returns a int4 from component-wise application of Pow2 (v * v).
        [Inline]
        public static int4 Pow2(int4 v) => int4.Pow2(v);
        
        /// Returns a int4 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static int4 Pow3(int4 v) => int4.Pow3(v);
        
        /// Returns a int4 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static int4 Step(int4 v) => int4.Step(v);
        
        /// Returns a int4 from component-wise application of Sqrt ((int)System.Math.Sqrt((double)v)).
        [Inline]
        public static int4 Sqrt(int4 v) => int4.Sqrt(v);
        
        /// Returns a int4 from component-wise application of InverseSqrt ((int)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static int4 InverseSqrt(int4 v) => int4.InverseSqrt(v);
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int4 Sign(int4 v) => int4.Sign(v);
        
        /// Returns a int4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static int4 Max(int4 lhs, int4 rhs) => int4.Max(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static int4 Min(int4 lhs, int4 rhs) => int4.Min(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static int4 Pow(int4 lhs, int4 rhs) => int4.Pow(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static int4 Log(int4 lhs, int4 rhs) => int4.Log(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static int4 Clamp(int4 v, int4 min, int4 max) => int4.Clamp(v, min, max);
        
        /// Returns a int4 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static int4 Mix(int4 min, int4 max, int4 a) => int4.Mix(min, max, a);
        
        /// Returns a int4 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static int4 Lerp(int4 min, int4 max, int4 a) => int4.Lerp(min, max, a);
        
        /// Returns a int4 from component-wise application of Fma (a * b + c).
        [Inline]
        public static int4 Fma(int4 a, int4 b, int4 c) => int4.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int2x4 OuterProduct(int4 c, int2 r) => int4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int3x4 OuterProduct(int4 c, int3 r) => int4.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int4x4 OuterProduct(int4 c, int4 r) => int4.OuterProduct(c, r);
        
        /// Returns a int4 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static int4 Add(int4 lhs, int4 rhs) => int4.Add(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static int4 Sub(int4 lhs, int4 rhs) => int4.Sub(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static int4 Mul(int4 lhs, int4 rhs) => int4.Mul(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static int4 Div(int4 lhs, int4 rhs) => int4.Div(lhs, rhs);
        
        /// Returns a int4 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static int4 Xor(int4 lhs, int4 rhs) => int4.Xor(lhs, rhs);
        
        /// Returns a int4 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static int4 BitwiseOr(int4 lhs, int4 rhs) => int4.BitwiseOr(lhs, rhs);
        
        /// Returns a int4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static int4 BitwiseAnd(int4 lhs, int4 rhs) => int4.BitwiseAnd(lhs, rhs);
        
        /// Returns a int4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static int4 LeftShift(int4 lhs, int4 rhs) => int4.LeftShift(lhs, rhs);
        
        /// Returns a int4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static int4 RightShift(int4 lhs, int4 rhs) => int4.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static int MinElement(int4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static int MaxElement(int4 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(int4 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(int4 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static int Sum(int4 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(int4 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(int4 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(int4 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(int4 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(int4 v, double p) => v.NormP(p);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static int Dot(int4 lhs, int4 rhs) => int4.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(int4 lhs, int4 rhs) => int4.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(int4 lhs, int4 rhs) => int4.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static int4 Reflect(int4 I, int4 N) => int4.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static int4 Refract(int4 I, int4 N, int eta) => int4.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static int4 FaceForward(int4 N, int4 I, int4 Nref) => int4.FaceForward(N, I, Nref);
        
        /// Returns a int4 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static int4 Random(Random random, int4 maxValue) => int4.Random(random, maxValue);
        
        /// Returns a int4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static int4 Random(Random random, int4 minValue, int4 maxValue) => int4.Random(random, minValue, maxValue);
        
        /// Returns a int4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static int4 RandomUniform(Random random, int4 minValue, int4 maxValue) => int4.RandomUniform(random, minValue, maxValue);

    }
}
