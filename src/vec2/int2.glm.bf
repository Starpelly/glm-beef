using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static int[] ToArray(int2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(int2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(int2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(int2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(int2 v) => v.GetHashCode();
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(int2 lhs, int2 rhs) => int2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(int2 lhs, int2 rhs) => int2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool2 GreaterThan(int2 lhs, int2 rhs) => int2.GreaterThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool2 GreaterThanEqual(int2 lhs, int2 rhs) => int2.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool2 LesserThan(int2 lhs, int2 rhs) => int2.LesserThan(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool2 LesserThanEqual(int2 lhs, int2 rhs) => int2.LesserThanEqual(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Abs (System.Math.Abs(v)).
        [Inline]
        public static int2 Abs(int2 v) => int2.Abs(v);
        
        /// Returns a int2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        [Inline]
        public static int2 HermiteInterpolationOrder3(int2 v) => int2.HermiteInterpolationOrder3(v);
        
        /// Returns a int2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        [Inline]
        public static int2 HermiteInterpolationOrder5(int2 v) => int2.HermiteInterpolationOrder5(v);
        
        /// Returns a int2 from component-wise application of Sqr (v * v).
        [Inline]
        public static int2 Sqr(int2 v) => int2.Sqr(v);
        
        /// Returns a int2 from component-wise application of Pow2 (v * v).
        [Inline]
        public static int2 Pow2(int2 v) => int2.Pow2(v);
        
        /// Returns a int2 from component-wise application of Pow3 (v * v * v).
        [Inline]
        public static int2 Pow3(int2 v) => int2.Pow3(v);
        
        /// Returns a int2 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        [Inline]
        public static int2 Step(int2 v) => int2.Step(v);
        
        /// Returns a int2 from component-wise application of Sqrt ((int)System.Math.Sqrt((double)v)).
        [Inline]
        public static int2 Sqrt(int2 v) => int2.Sqrt(v);
        
        /// Returns a int2 from component-wise application of InverseSqrt ((int)(1.0 / System.Math.Sqrt((double)v))).
        [Inline]
        public static int2 InverseSqrt(int2 v) => int2.InverseSqrt(v);
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        [Inline]
        public static int2 Sign(int2 v) => int2.Sign(v);
        
        /// Returns a int2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        [Inline]
        public static int2 Max(int2 lhs, int2 rhs) => int2.Max(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        [Inline]
        public static int2 Min(int2 lhs, int2 rhs) => int2.Min(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
        [Inline]
        public static int2 Pow(int2 lhs, int2 rhs) => int2.Pow(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
        [Inline]
        public static int2 Log(int2 lhs, int2 rhs) => int2.Log(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        [Inline]
        public static int2 Clamp(int2 v, int2 min, int2 max) => int2.Clamp(v, min, max);
        
        /// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
        [Inline]
        public static int2 Mix(int2 min, int2 max, int2 a) => int2.Mix(min, max, a);
        
        /// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static int2 Lerp(int2 min, int2 max, int2 a) => int2.Lerp(min, max, a);
        
        /// Returns a int2 from component-wise application of Fma (a * b + c).
        [Inline]
        public static int2 Fma(int2 a, int2 b, int2 c) => int2.Fma(a, b, c);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int2x2 OuterProduct(int2 c, int2 r) => int2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int3x2 OuterProduct(int2 c, int3 r) => int2.OuterProduct(c, r);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        [Inline]
        public static int4x2 OuterProduct(int2 c, int4 r) => int2.OuterProduct(c, r);
        
        /// Returns a int2 from component-wise application of Add (lhs + rhs).
        [Inline]
        public static int2 Add(int2 lhs, int2 rhs) => int2.Add(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Sub (lhs - rhs).
        [Inline]
        public static int2 Sub(int2 lhs, int2 rhs) => int2.Sub(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Mul (lhs * rhs).
        [Inline]
        public static int2 Mul(int2 lhs, int2 rhs) => int2.Mul(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Div (lhs / rhs).
        [Inline]
        public static int2 Div(int2 lhs, int2 rhs) => int2.Div(lhs, rhs);
        
        /// Returns a int2 from component-wise application of Xor (lhs ^ rhs).
        [Inline]
        public static int2 Xor(int2 lhs, int2 rhs) => int2.Xor(lhs, rhs);
        
        /// Returns a int2 from component-wise application of BitwiseOr (lhs | rhs).
        [Inline]
        public static int2 BitwiseOr(int2 lhs, int2 rhs) => int2.BitwiseOr(lhs, rhs);
        
        /// Returns a int2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        [Inline]
        public static int2 BitwiseAnd(int2 lhs, int2 rhs) => int2.BitwiseAnd(lhs, rhs);
        
        /// Returns a int2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        [Inline]
        public static int2 LeftShift(int2 lhs, int2 rhs) => int2.LeftShift(lhs, rhs);
        
        /// Returns a int2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        [Inline]
        public static int2 RightShift(int2 lhs, int2 rhs) => int2.RightShift(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static int MinElement(int2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static int MaxElement(int2 v) => v.MaxElement;
        
        /// Returns the euclidean length of this vector.
        [Inline]
        public static float Length(int2 v) => v.Length;
        
        /// Returns the squared euclidean length of this vector.
        [Inline]
        public static float LengthSqr(int2 v) => v.LengthSqr;
        
        /// Returns the sum of all components.
        [Inline]
        public static int Sum(int2 v) => v.Sum;
        
        /// Returns the euclidean norm of this vector.
        [Inline]
        public static float Norm(int2 v) => v.Norm;
        
        /// Returns the one-norm of this vector.
        [Inline]
        public static float Norm1(int2 v) => v.Norm1;
        
        /// Returns the two-norm (euclidean length) of this vector.
        [Inline]
        public static float Norm2(int2 v) => v.Norm2;
        
        /// Returns the max-norm of this vector.
        [Inline]
        public static float NormMax(int2 v) => v.NormMax;
        
        /// Returns the p-norm of this vector.
        [Inline]
        public static double NormP(int2 v, double p) => v.NormP(p);
        
        /// Returns a perpendicular vector.
        [Inline]
        public static int2 Perpendicular(int2 v) => v.Perpendicular;
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        [Inline]
        public static int Dot(int2 lhs, int2 rhs) => int2.Dot(lhs, rhs);
        
        /// Returns the euclidean distance between the two vectors.
        [Inline]
        public static float Distance(int2 lhs, int2 rhs) => int2.Distance(lhs, rhs);
        
        /// Returns the squared euclidean distance between the two vectors.
        [Inline]
        public static float DistanceSqr(int2 lhs, int2 rhs) => int2.DistanceSqr(lhs, rhs);
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        [Inline]
        public static int2 Reflect(int2 I, int2 N) => int2.Reflect(I, N);
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        [Inline]
        public static int2 Refract(int2 I, int2 N, int eta) => int2.Refract(I, N, eta);
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        [Inline]
        public static int2 FaceForward(int2 N, int2 I, int2 Nref) => int2.FaceForward(N, I, Nref);
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        [Inline]
        public static int Cross(int2 l, int2 r) => int2.Cross(l, r);
        
        /// Returns a int2 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        [Inline]
        public static int2 Random(Random random, int2 maxValue) => int2.Random(random, maxValue);
        
        /// Returns a int2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static int2 Random(Random random, int2 minValue, int2 maxValue) => int2.Random(random, minValue, maxValue);
        
        /// Returns a int2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        [Inline]
        public static int2 RandomUniform(Random random, int2 minValue, int2 maxValue) => int2.RandomUniform(random, minValue, maxValue);

    }
}
