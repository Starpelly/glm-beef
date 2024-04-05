using System;
namespace glm
{
    
    /// A vector of type long with 2 components.
    [Union]
    public struct long2 : IHashable
    {

        //#region Fields
        
        /// component data
        public long[2] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_long2 swizzle;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(long x, long y)
        {
            values = .(x,y);
        }
        
        /// all-same-value constructor
        public this(long v)
        {
            values = .(v,v);
        }
        
        /// from-vector constructor
        public this(long2 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(long3 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(long4 v)
        {
            values = .(v.x,v.y);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(long[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? 0 : v[0],(c < 1) ? 0 : v[1]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(long[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? 0 : v[0 + startIndex],(c + startIndex < 1) ? 0 : v[1 + startIndex]);
        }

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(long2 v) =>  int2((int)v.x, (int)v.y);
        
        /// Explicitly converts this to a int3. (Higher components are zeroed)
        public static explicit operator int3(long2 v) =>  int3((int)v.x, (int)v.y, 0);
        
        /// Explicitly converts this to a int4. (Higher components are zeroed)
        public static explicit operator int4(long2 v) =>  int4((int)v.x, (int)v.y, 0, 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(long2 v) =>  uint2((uint)v.x, (uint)v.y);
        
        /// Explicitly converts this to a uint3. (Higher components are zeroed)
        public static explicit operator uint3(long2 v) =>  uint3((uint)v.x, (uint)v.y, 0u);
        
        /// Explicitly converts this to a uint4. (Higher components are zeroed)
        public static explicit operator uint4(long2 v) =>  uint4((uint)v.x, (uint)v.y, 0u, 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(long2 v) =>  float2((float)v.x, (float)v.y);
        
        /// Explicitly converts this to a float3. (Higher components are zeroed)
        public static explicit operator float3(long2 v) =>  float3((float)v.x, (float)v.y, 0f);
        
        /// Explicitly converts this to a float4. (Higher components are zeroed)
        public static explicit operator float4(long2 v) =>  float4((float)v.x, (float)v.y, 0f, 0f);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(long2 v) =>  double2((double)v.x, (double)v.y);
        
        /// Explicitly converts this to a double3. (Higher components are zeroed)
        public static explicit operator double3(long2 v) =>  double3((double)v.x, (double)v.y, 0.0);
        
        /// Explicitly converts this to a double4. (Higher components are zeroed)
        public static explicit operator double4(long2 v) =>  double4((double)v.x, (double)v.y, 0.0, 0.0);
        
        /// Explicitly converts this to a long3. (Higher components are zeroed)
        public static explicit operator long3(long2 v) =>  long3((long)v.x, (long)v.y, 0);
        
        /// Explicitly converts this to a long4. (Higher components are zeroed)
        public static explicit operator long4(long2 v) =>  long4((long)v.x, (long)v.y, 0, 0);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(long2 v) =>  bool2(v.x != 0, v.y != 0);
        
        /// Explicitly converts this to a bool3. (Higher components are zeroed)
        public static explicit operator bool3(long2 v) =>  bool3(v.x != 0, v.y != 0, false);
        
        /// Explicitly converts this to a bool4. (Higher components are zeroed)
        public static explicit operator bool4(long2 v) =>  bool4(v.x != 0, v.y != 0, false, false);

        //#endregion


        //#region Properties
        
        /// x-component
        public long x
        {
            [Inline]get
            {
                return values[0];
            }
            [Inline]set mut
            {
                values[0] = value;
            }
        }
        
        /// y-component
        public long y
        {
            [Inline]get
            {
                return values[1];
            }
            [Inline]set mut
            {
                values[1] = value;
            }
        }
        
        /// 0-component
        public long width
        {
            [Inline]get
            {
                return values[0];
            }
            [Inline]set mut
            {
                values[0] = value;
            }
        }
        
        /// 1-component
        public long height
        {
            [Inline]get
            {
                return values[1];
            }
            [Inline]set mut
            {
                values[1] = value;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public long2 xy
        {
            [Inline]get
            {
                return  long2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public long2 rg
        {
            [Inline]get
            {
                return  long2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public long r
        {
            [Inline]get
            {
                return x;
            }
            [Inline]set mut
            {
                x = value;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public long g
        {
            [Inline]get
            {
                return y;
            }
            [Inline]set mut
            {
                y = value;
            }
        }
        
        /// Returns the number of components (2).
        public int Count => 2;
        
        /// Returns the minimal component of this vector.
        public long MinElement => System.Math.Min(x, y);
        
        /// Returns the maximal component of this vector.
        public long MaxElement => System.Math.Max(x, y);
        
        /// Returns the euclidean length of this vector.
        public double Length => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the squared euclidean length of this vector.
        public double LengthSqr => (x*x + y*y);
        
        /// Returns the sum of all components.
        public long Sum => (x + y);
        
        /// Returns the euclidean norm of this vector.
        public double Norm => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the one-norm of this vector.
        public double Norm1 => (System.Math.Abs(x) + System.Math.Abs(y));
        
        /// Returns the two-norm (euclidean length) of this vector.
        public double Norm2 => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the max-norm of this vector.
        public double NormMax => System.Math.Max(System.Math.Abs(x), System.Math.Abs(y));
        
        /// Returns a perpendicular vector.
        public long2 Perpendicular => long2(y, -x);

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero vector
        readonly public static long2 Zero  =  long2(0, 0);
        
        /// Predefined all-ones vector
        readonly public static long2 Ones  =  long2(1, 1);
        
        /// Predefined unit-X vector
        readonly public static long2 UnitX  =  long2(1, 0);
        
        /// Predefined unit-X vector
        readonly public static long2 NegativeUnitX  =  long2(-1, 0);
        
        /// Predefined unit-Y vector
        readonly public static long2 UnitY  =  long2(0, 1);
        
        /// Predefined unit-Y vector
        readonly public static long2 NegativeUnitY  =  long2(0, -1);
        
        /// Predefined all-MaxValue vector
        readonly public static long2 MaxValue  =  long2(long.MaxValue, long.MaxValue);
        
        /// Predefined all-MinValue vector
        readonly public static long2 MinValue  =  long2(long.MinValue, long.MinValue);

        //#endregion


        //#region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(long2 lhs, long2 rhs) => (lhs.x == rhs.x && lhs.y == rhs.y);
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(long2 lhs, long2 rhs) => !(lhs.x == rhs.x && lhs.y == rhs.y);

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public long[] ToArray() => new .[] ( x, y );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
             stringBuffer.Join(sep, _x,_y );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((x.GetHashCode()) * 397) ^ y.GetHashCode();
            }
        }
        
        /// Returns the p-norm of this vector.
        public double NormP(double p) => System.Math.Pow((System.Math.Pow((double)System.Math.Abs(x), p) + System.Math.Pow((double)System.Math.Abs(y), p)), 1 / p);

        //#endregion


        //#region Static Functions
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static long2x2 OuterProduct(long2 c, long2 r) =>  long2x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static long2x3 OuterProduct(long3 c, long2 r) =>  long2x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static long3x2 OuterProduct(long2 c, long3 r) =>  long3x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static long2x4 OuterProduct(long4 c, long2 r) =>  long2x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static long4x2 OuterProduct(long2 c, long4 r) =>  long4x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z, c.x * r.w, c.y * r.w);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        public static long Dot(long2 lhs, long2 rhs) => (lhs.x * rhs.x + lhs.y * rhs.y);
        
        /// Returns the euclidean distance between the two vectors.
        public static double Distance(long2 lhs, long2 rhs) => (lhs - rhs).Length;
        
        /// Returns the squared euclidean distance between the two vectors.
        public static double DistanceSqr(long2 lhs, long2 rhs) => (lhs - rhs).LengthSqr;
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        public static long2 Reflect(long2 I, long2 N) => I - 2 * Dot(N, I) * N;
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        public static long2 Refract(long2 I, long2 N, long eta)
        {
            let dNI = Dot(N, I);
            let k = 1 - eta * eta * (1 - dNI * dNI);
            if (k < 0) return Zero;
            return eta * I - (eta * dNI + (long)System.Math.Sqrt(k)) * N;
        }
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        public static long2 FaceForward(long2 N, long2 I, long2 Nref) => Dot(Nref, I) < 0 ? N : -N;
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        public static long Cross(long2 l, long2 r) => l.x * r.y - l.y * r.x;
        
        /// Returns a long2 with independent and identically distributed uniform integer values between 0 (inclusive) and int.MaxValue (exclusive).
        public static long2 Random(Random random) =>  long2((long)random.Next(int64.MaxValue), (long)random.Next(int64.MaxValue));

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(long2 lhs, long2 rhs) => bool2(lhs.x == rhs.x, lhs.y == rhs.y);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(long2 lhs, long rhs) => bool2(lhs.x == rhs, lhs.y == rhs);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(long lhs, long2 rhs) => bool2(lhs == rhs.x, lhs == rhs.y);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool2 Equal(long lhs, long rhs) => bool2(lhs == rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(long2 lhs, long2 rhs) => bool2(lhs.x != rhs.x, lhs.y != rhs.y);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(long2 lhs, long rhs) => bool2(lhs.x != rhs, lhs.y != rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(long lhs, long2 rhs) => bool2(lhs != rhs.x, lhs != rhs.y);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(long lhs, long rhs) => bool2(lhs != rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(long2 lhs, long2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(long2 lhs, long rhs) => bool2(lhs.x > rhs, lhs.y > rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(long lhs, long2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(long lhs, long rhs) => bool2(lhs > rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(long2 lhs, long2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(long2 lhs, long rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(long lhs, long2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(long lhs, long rhs) => bool2(lhs >= rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(long2 lhs, long2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(long2 lhs, long rhs) => bool2(lhs.x < rhs, lhs.y < rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(long lhs, long2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(long lhs, long rhs) => bool2(lhs < rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(long2 lhs, long2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(long2 lhs, long rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(long lhs, long2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(long lhs, long rhs) => bool2(lhs <= rhs);
        
        /// Returns a long2 from component-wise application of Abs (System.Math.Abs(v)).
        public static long2 Abs(long2 v) => long2(System.Math.Abs(v.x), System.Math.Abs(v.y));
        
        /// Returns a long from the application of Abs (System.Math.Abs(v)).
        public static long2 Abs(long v) => long2(System.Math.Abs(v));
        
        /// Returns a long2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static long2 HermiteInterpolationOrder3(long2 v) => long2((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y);
        
        /// Returns a long from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static long2 HermiteInterpolationOrder3(long v) => long2((3 - 2 * v) * v * v);
        
        /// Returns a long2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static long2 HermiteInterpolationOrder5(long2 v) => long2(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y);
        
        /// Returns a long from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static long2 HermiteInterpolationOrder5(long v) => long2(((6 * v - 15) * v + 10) * v * v * v);
        
        /// Returns a long2 from component-wise application of Sqr (v * v).
        public static long2 Sqr(long2 v) => long2(v.x * v.x, v.y * v.y);
        
        /// Returns a long from the application of Sqr (v * v).
        public static long2 Sqr(long v) => long2(v * v);
        
        /// Returns a long2 from component-wise application of Pow2 (v * v).
        public static long2 Pow2(long2 v) => long2(v.x * v.x, v.y * v.y);
        
        /// Returns a long from the application of Pow2 (v * v).
        public static long2 Pow2(long v) => long2(v * v);
        
        /// Returns a long2 from component-wise application of Pow3 (v * v * v).
        public static long2 Pow3(long2 v) => long2(v.x * v.x * v.x, v.y * v.y * v.y);
        
        /// Returns a long from the application of Pow3 (v * v * v).
        public static long2 Pow3(long v) => long2(v * v * v);
        
        /// Returns a long2 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
        public static long2 Step(long2 v) => long2(v.x >= 0 ? 1 : 0, v.y >= 0 ? 1 : 0);
        
        /// Returns a long from the application of Step (v &gt;= 0 ? 1 : 0).
        public static long2 Step(long v) => long2(v >= 0 ? 1 : 0);
        
        /// Returns a long2 from component-wise application of Sqrt ((long)System.Math.Sqrt((double)v)).
        public static long2 Sqrt(long2 v) => long2((long)System.Math.Sqrt((double)v.x), (long)System.Math.Sqrt((double)v.y));
        
        /// Returns a long from the application of Sqrt ((long)System.Math.Sqrt((double)v)).
        public static long2 Sqrt(long v) => long2((long)System.Math.Sqrt((double)v));
        
        /// Returns a long2 from component-wise application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        public static long2 InverseSqrt(long2 v) => long2((long)(1.0 / System.Math.Sqrt((double)v.x)), (long)(1.0 / System.Math.Sqrt((double)v.y)));
        
        /// Returns a long from the application of InverseSqrt ((long)(1.0 / System.Math.Sqrt((double)v))).
        public static long2 InverseSqrt(long v) => long2((long)(1.0 / System.Math.Sqrt((double)v)));
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        public static int2 Sign(long2 v) => int2(System.Math.Sign(v.x), System.Math.Sign(v.y));
        
        /// Returns a int from the application of Sign (System.Math.Sign(v)).
        public static int2 Sign(long v) => int2(System.Math.Sign(v));
        
        /// Returns a long2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static long2 Max(long2 lhs, long2 rhs) => long2(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y));
        
        /// Returns a long2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static long2 Max(long2 lhs, long rhs) => long2(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs));
        
        /// Returns a long2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static long2 Max(long lhs, long2 rhs) => long2(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y));
        
        /// Returns a long from the application of Max (System.Math.Max(lhs, rhs)).
        public static long2 Max(long lhs, long rhs) => long2(System.Math.Max(lhs, rhs));
        
        /// Returns a long2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static long2 Min(long2 lhs, long2 rhs) => long2(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y));
        
        /// Returns a long2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static long2 Min(long2 lhs, long rhs) => long2(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs));
        
        /// Returns a long2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static long2 Min(long lhs, long2 rhs) => long2(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y));
        
        /// Returns a long from the application of Min (System.Math.Min(lhs, rhs)).
        public static long2 Min(long lhs, long rhs) => long2(System.Math.Min(lhs, rhs));
        
        /// Returns a long2 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        public static long2 Pow(long2 lhs, long2 rhs) => long2((long)System.Math.Pow((double)lhs.x, (double)rhs.x), (long)System.Math.Pow((double)lhs.y, (double)rhs.y));
        
        /// Returns a long2 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        public static long2 Pow(long2 lhs, long rhs) => long2((long)System.Math.Pow((double)lhs.x, (double)rhs), (long)System.Math.Pow((double)lhs.y, (double)rhs));
        
        /// Returns a long2 from component-wise application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        public static long2 Pow(long lhs, long2 rhs) => long2((long)System.Math.Pow((double)lhs, (double)rhs.x), (long)System.Math.Pow((double)lhs, (double)rhs.y));
        
        /// Returns a long from the application of Pow ((long)System.Math.Pow((double)lhs, (double)rhs)).
        public static long2 Pow(long lhs, long rhs) => long2((long)System.Math.Pow((double)lhs, (double)rhs));
        
        /// Returns a long2 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        public static long2 Log(long2 lhs, long2 rhs) => long2((long)System.Math.Log((double)lhs.x, (double)rhs.x), (long)System.Math.Log((double)lhs.y, (double)rhs.y));
        
        /// Returns a long2 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        public static long2 Log(long2 lhs, long rhs) => long2((long)System.Math.Log((double)lhs.x, (double)rhs), (long)System.Math.Log((double)lhs.y, (double)rhs));
        
        /// Returns a long2 from component-wise application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        public static long2 Log(long lhs, long2 rhs) => long2((long)System.Math.Log((double)lhs, (double)rhs.x), (long)System.Math.Log((double)lhs, (double)rhs.y));
        
        /// Returns a long from the application of Log ((long)System.Math.Log((double)lhs, (double)rhs)).
        public static long2 Log(long lhs, long rhs) => long2((long)System.Math.Log((double)lhs, (double)rhs));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long2 v, long2 min, long2 max) => long2(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long2 v, long2 min, long max) => long2(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long2 v, long min, long2 max) => long2(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long2 v, long min, long max) => long2(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long v, long2 min, long2 max) => long2(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long v, long2 min, long max) => long2(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max));
        
        /// Returns a long2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long v, long min, long2 max) => long2(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y));
        
        /// Returns a long from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static long2 Clamp(long v, long min, long max) => long2(System.Math.Min(System.Math.Max(v, min), max));
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long2 min, long2 max, long2 a) => long2(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long2 min, long2 max, long a) => long2(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long2 min, long max, long2 a) => long2(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long2 min, long max, long a) => long2(min.x * (1-a) + max * a, min.y * (1-a) + max * a);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long min, long2 max, long2 a) => long2(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long min, long2 max, long a) => long2(min * (1-a) + max.x * a, min * (1-a) + max.y * a);
        
        /// Returns a long2 from component-wise application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long min, long max, long2 a) => long2(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y);
        
        /// Returns a long from the application of Mix (min * (1-a) + max * a).
        public static long2 Mix(long min, long max, long a) => long2(min * (1-a) + max * a);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long2 min, long2 max, long2 a) => long2(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long2 min, long2 max, long a) => long2(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long2 min, long max, long2 a) => long2(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long2 min, long max, long a) => long2(min.x * (1-a) + max * a, min.y * (1-a) + max * a);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long min, long2 max, long2 a) => long2(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long min, long2 max, long a) => long2(min * (1-a) + max.x * a, min * (1-a) + max.y * a);
        
        /// Returns a long2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long min, long max, long2 a) => long2(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y);
        
        /// Returns a long from the application of Lerp (min * (1-a) + max * a).
        public static long2 Lerp(long min, long max, long a) => long2(min * (1-a) + max * a);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long2 a, long2 b, long2 c) => long2(a.x * b.x + c.x, a.y * b.y + c.y);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long2 a, long2 b, long c) => long2(a.x * b.x + c, a.y * b.y + c);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long2 a, long b, long2 c) => long2(a.x * b + c.x, a.y * b + c.y);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long2 a, long b, long c) => long2(a.x * b + c, a.y * b + c);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long a, long2 b, long2 c) => long2(a * b.x + c.x, a * b.y + c.y);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long a, long2 b, long c) => long2(a * b.x + c, a * b.y + c);
        
        /// Returns a long2 from component-wise application of Fma (a * b + c).
        public static long2 Fma(long a, long b, long2 c) => long2(a * b + c.x, a * b + c.y);
        
        /// Returns a long from the application of Fma (a * b + c).
        public static long2 Fma(long a, long b, long c) => long2(a * b + c);
        
        /// Returns a long2 from component-wise application of Add (lhs + rhs).
        public static long2 Add(long2 lhs, long2 rhs) => long2(lhs.x + rhs.x, lhs.y + rhs.y);
        
        /// Returns a long2 from component-wise application of Add (lhs + rhs).
        public static long2 Add(long2 lhs, long rhs) => long2(lhs.x + rhs, lhs.y + rhs);
        
        /// Returns a long2 from component-wise application of Add (lhs + rhs).
        public static long2 Add(long lhs, long2 rhs) => long2(lhs + rhs.x, lhs + rhs.y);
        
        /// Returns a long from the application of Add (lhs + rhs).
        public static long2 Add(long lhs, long rhs) => long2(lhs + rhs);
        
        /// Returns a long2 from component-wise application of Sub (lhs - rhs).
        public static long2 Sub(long2 lhs, long2 rhs) => long2(lhs.x - rhs.x, lhs.y - rhs.y);
        
        /// Returns a long2 from component-wise application of Sub (lhs - rhs).
        public static long2 Sub(long2 lhs, long rhs) => long2(lhs.x - rhs, lhs.y - rhs);
        
        /// Returns a long2 from component-wise application of Sub (lhs - rhs).
        public static long2 Sub(long lhs, long2 rhs) => long2(lhs - rhs.x, lhs - rhs.y);
        
        /// Returns a long from the application of Sub (lhs - rhs).
        public static long2 Sub(long lhs, long rhs) => long2(lhs - rhs);
        
        /// Returns a long2 from component-wise application of Mul (lhs * rhs).
        public static long2 Mul(long2 lhs, long2 rhs) => long2(lhs.x * rhs.x, lhs.y * rhs.y);
        
        /// Returns a long2 from component-wise application of Mul (lhs * rhs).
        public static long2 Mul(long2 lhs, long rhs) => long2(lhs.x * rhs, lhs.y * rhs);
        
        /// Returns a long2 from component-wise application of Mul (lhs * rhs).
        public static long2 Mul(long lhs, long2 rhs) => long2(lhs * rhs.x, lhs * rhs.y);
        
        /// Returns a long from the application of Mul (lhs * rhs).
        public static long2 Mul(long lhs, long rhs) => long2(lhs * rhs);
        
        /// Returns a long2 from component-wise application of Div (lhs / rhs).
        public static long2 Div(long2 lhs, long2 rhs) => long2(lhs.x / rhs.x, lhs.y / rhs.y);
        
        /// Returns a long2 from component-wise application of Div (lhs / rhs).
        public static long2 Div(long2 lhs, long rhs) => long2(lhs.x / rhs, lhs.y / rhs);
        
        /// Returns a long2 from component-wise application of Div (lhs / rhs).
        public static long2 Div(long lhs, long2 rhs) => long2(lhs / rhs.x, lhs / rhs.y);
        
        /// Returns a long from the application of Div (lhs / rhs).
        public static long2 Div(long lhs, long rhs) => long2(lhs / rhs);
        
        /// Returns a long2 from component-wise application of Xor (lhs ^ rhs).
        public static long2 Xor(long2 lhs, long2 rhs) => long2(lhs.x ^ rhs.x, lhs.y ^ rhs.y);
        
        /// Returns a long2 from component-wise application of Xor (lhs ^ rhs).
        public static long2 Xor(long2 lhs, long rhs) => long2(lhs.x ^ rhs, lhs.y ^ rhs);
        
        /// Returns a long2 from component-wise application of Xor (lhs ^ rhs).
        public static long2 Xor(long lhs, long2 rhs) => long2(lhs ^ rhs.x, lhs ^ rhs.y);
        
        /// Returns a long from the application of Xor (lhs ^ rhs).
        public static long2 Xor(long lhs, long rhs) => long2(lhs ^ rhs);
        
        /// Returns a long2 from component-wise application of BitwiseOr (lhs | rhs).
        public static long2 BitwiseOr(long2 lhs, long2 rhs) => long2(lhs.x | rhs.x, lhs.y | rhs.y);
        
        /// Returns a long2 from component-wise application of BitwiseOr (lhs | rhs).
        public static long2 BitwiseOr(long2 lhs, long rhs) => long2(lhs.x | rhs, lhs.y | rhs);
        
        /// Returns a long2 from component-wise application of BitwiseOr (lhs | rhs).
        public static long2 BitwiseOr(long lhs, long2 rhs) => long2(lhs | rhs.x, lhs | rhs.y);
        
        /// Returns a long from the application of BitwiseOr (lhs | rhs).
        public static long2 BitwiseOr(long lhs, long rhs) => long2(lhs | rhs);
        
        /// Returns a long2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static long2 BitwiseAnd(long2 lhs, long2 rhs) => long2(lhs.x & rhs.x, lhs.y & rhs.y);
        
        /// Returns a long2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static long2 BitwiseAnd(long2 lhs, long rhs) => long2(lhs.x & rhs, lhs.y & rhs);
        
        /// Returns a long2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static long2 BitwiseAnd(long lhs, long2 rhs) => long2(lhs & rhs.x, lhs & rhs.y);
        
        /// Returns a long from the application of BitwiseAnd (lhs &amp; rhs).
        public static long2 BitwiseAnd(long lhs, long rhs) => long2(lhs & rhs);
        
        /// Returns a long2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static long2 LeftShift(long2 lhs, int2 rhs) => long2(lhs.x << rhs.x, lhs.y << rhs.y);
        
        /// Returns a long2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static long2 LeftShift(long2 lhs, int rhs) => long2(lhs.x << rhs, lhs.y << rhs);
        
        /// Returns a long2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static long2 LeftShift(long lhs, int2 rhs) => long2(lhs << rhs.x, lhs << rhs.y);
        
        /// Returns a long from the application of LeftShift (lhs &lt;&lt; rhs).
        public static long2 LeftShift(long lhs, int rhs) => long2(lhs << rhs);
        
        /// Returns a long2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static long2 RightShift(long2 lhs, int2 rhs) => long2(lhs.x >> rhs.x, lhs.y >> rhs.y);
        
        /// Returns a long2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static long2 RightShift(long2 lhs, int rhs) => long2(lhs.x >> rhs, lhs.y >> rhs);
        
        /// Returns a long2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static long2 RightShift(long lhs, int2 rhs) => long2(lhs >> rhs.x, lhs >> rhs.y);
        
        /// Returns a long from the application of RightShift (lhs &gt;&gt; rhs).
        public static long2 RightShift(long lhs, int rhs) => long2(lhs >> rhs);
        
        /// Returns a long2 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static long2 Random(Random random, long2 maxValue) => long2((long)random.Next((int)maxValue.x), (long)random.Next((int)maxValue.y));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static long2 Random(Random random, long maxValue) => long2((long)random.Next((int)maxValue));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 Random(Random random, long2 minValue, long2 maxValue) => long2((long)random.Next((int)minValue.x, (int)maxValue.x), (long)random.Next((int)minValue.y, (int)maxValue.y));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 Random(Random random, long2 minValue, long maxValue) => long2((long)random.Next((int)minValue.x, (int)maxValue), (long)random.Next((int)minValue.y, (int)maxValue));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 Random(Random random, long minValue, long2 maxValue) => long2((long)random.Next((int)minValue, (int)maxValue.x), (long)random.Next((int)minValue, (int)maxValue.y));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 Random(Random random, long minValue, long maxValue) => long2((long)random.Next((int)minValue, (int)maxValue));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 RandomUniform(Random random, long2 minValue, long2 maxValue) => long2((long)random.Next((int)minValue.x, (int)maxValue.x), (long)random.Next((int)minValue.y, (int)maxValue.y));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 RandomUniform(Random random, long2 minValue, long maxValue) => long2((long)random.Next((int)minValue.x, (int)maxValue), (long)random.Next((int)minValue.y, (int)maxValue));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 RandomUniform(Random random, long minValue, long2 maxValue) => long2((long)random.Next((int)minValue, (int)maxValue.x), (long)random.Next((int)minValue, (int)maxValue.y));
        
        /// Returns a long2 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static long2 RandomUniform(Random random, long minValue, long maxValue) => long2((long)random.Next((int)minValue, (int)maxValue));

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(long2 lhs, long2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(long2 lhs, long rhs) => bool2(lhs.x < rhs, lhs.y < rhs);
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(long lhs, long2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(long2 lhs, long2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(long2 lhs, long rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(long lhs, long2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(long2 lhs, long2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(long2 lhs, long rhs) => bool2(lhs.x > rhs, lhs.y > rhs);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(long lhs, long2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(long2 lhs, long2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(long2 lhs, long rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(long lhs, long2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);
        
        /// Returns a long2 from component-wise application of operator+ (lhs + rhs).
        public static long2 operator+(long2 lhs, long2 rhs) => long2(lhs.x + rhs.x, lhs.y + rhs.y);
        
        /// Returns a long2 from component-wise application of operator+ (lhs + rhs).
        public static long2 operator+(long2 lhs, long rhs) => long2(lhs.x + rhs, lhs.y + rhs);
        
        /// Returns a long2 from component-wise application of operator+ (lhs + rhs).
        public static long2 operator+(long lhs, long2 rhs) => long2(lhs + rhs.x, lhs + rhs.y);
        
        /// Returns a long2 from component-wise application of operator- (lhs - rhs).
        public static long2 operator-(long2 lhs, long2 rhs) => long2(lhs.x - rhs.x, lhs.y - rhs.y);
        
        /// Returns a long2 from component-wise application of operator- (lhs - rhs).
        public static long2 operator-(long2 lhs, long rhs) => long2(lhs.x - rhs, lhs.y - rhs);
        
        /// Returns a long2 from component-wise application of operator- (lhs - rhs).
        public static long2 operator-(long lhs, long2 rhs) => long2(lhs - rhs.x, lhs - rhs.y);
        
        /// Returns a long2 from component-wise application of operator* (lhs * rhs).
        public static long2 operator*(long2 lhs, long2 rhs) => long2(lhs.x * rhs.x, lhs.y * rhs.y);
        
        /// Returns a long2 from component-wise application of operator* (lhs * rhs).
        public static long2 operator*(long2 lhs, long rhs) => long2(lhs.x * rhs, lhs.y * rhs);
        
        /// Returns a long2 from component-wise application of operator* (lhs * rhs).
        public static long2 operator*(long lhs, long2 rhs) => long2(lhs * rhs.x, lhs * rhs.y);
        
        /// Returns a long2 from component-wise application of operator/ (lhs / rhs).
        public static long2 operator/(long2 lhs, long2 rhs) => long2(lhs.x / rhs.x, lhs.y / rhs.y);
        
        /// Returns a long2 from component-wise application of operator/ (lhs / rhs).
        public static long2 operator/(long2 lhs, long rhs) => long2(lhs.x / rhs, lhs.y / rhs);
        
        /// Returns a long2 from component-wise application of operator/ (lhs / rhs).
        public static long2 operator/(long lhs, long2 rhs) => long2(lhs / rhs.x, lhs / rhs.y);
        
        /// Returns a long2 from component-wise application of operator- (-v).
        public static long2 operator-(long2 v) => long2(-v.x, -v.y);
        
        /// Returns a long2 from component-wise application of operator~ (~v).
        public static long2 operator~(long2 v) => long2(~v.x, ~v.y);
        
        /// Returns a long2 from component-wise application of operator^ (lhs ^ rhs).
        public static long2 operator^(long2 lhs, long2 rhs) => long2(lhs.x ^ rhs.x, lhs.y ^ rhs.y);
        
        /// Returns a long2 from component-wise application of operator^ (lhs ^ rhs).
        public static long2 operator^(long2 lhs, long rhs) => long2(lhs.x ^ rhs, lhs.y ^ rhs);
        
        /// Returns a long2 from component-wise application of operator^ (lhs ^ rhs).
        public static long2 operator^(long lhs, long2 rhs) => long2(lhs ^ rhs.x, lhs ^ rhs.y);
        
        /// Returns a long2 from component-wise application of operator| (lhs | rhs).
        public static long2 operator|(long2 lhs, long2 rhs) => long2(lhs.x | rhs.x, lhs.y | rhs.y);
        
        /// Returns a long2 from component-wise application of operator| (lhs | rhs).
        public static long2 operator|(long2 lhs, long rhs) => long2(lhs.x | rhs, lhs.y | rhs);
        
        /// Returns a long2 from component-wise application of operator| (lhs | rhs).
        public static long2 operator|(long lhs, long2 rhs) => long2(lhs | rhs.x, lhs | rhs.y);
        
        /// Returns a long2 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static long2 operator&(long2 lhs, long2 rhs) => long2(lhs.x & rhs.x, lhs.y & rhs.y);
        
        /// Returns a long2 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static long2 operator&(long2 lhs, long rhs) => long2(lhs.x & rhs, lhs.y & rhs);
        
        /// Returns a long2 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static long2 operator&(long lhs, long2 rhs) => long2(lhs & rhs.x, lhs & rhs.y);
        
        /// Returns a long2 from component-wise application of operator&lt;&lt; (lhs &lt;&lt; rhs).
        public static long2 operator<<(long2 lhs, int rhs) => long2(lhs.x << rhs, lhs.y << rhs);
        
        /// Returns a long2 from component-wise application of operator&gt;&gt; (lhs &gt;&gt; rhs).
        public static long2 operator>>(long2 lhs, int rhs) => long2(lhs.x >> rhs, lhs.y >> rhs);

        //#endregion

    }
}
