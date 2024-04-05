using System;
namespace glm
{
    
    /// A vector of type uint with 3 components.
    [Union]
    public struct uint3 : IHashable
    {

        //#region Fields
        
        /// component data
        public uint[3] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_uint3 swizzle;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(uint x, uint y, uint z)
        {
            values = .(x,y,z);
        }
        
        /// all-same-value constructor
        public this(uint v)
        {
            values = .(v,v,v);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(uint2 v)
        {
            values = .(v.x,v.y,0u);
        }
        
        /// from-vector-and-value constructor
        public this(uint2 v, uint z)
        {
            values = .(v.x,v.y,z);
        }
        
        /// from-vector constructor
        public this(uint3 v)
        {
            values = .(v.x,v.y,v.z);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(uint4 v)
        {
            values = .(v.x,v.y,v.z);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(uint[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? 0u : v[0],(c < 1) ? 0u : v[1],(c < 2) ? 0u : v[2]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(uint[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? 0u : v[0 + startIndex],(c + startIndex < 1) ? 0u : v[1 + startIndex],(c + startIndex < 2) ? 0u : v[2 + startIndex]);
        }

        //#endregion


        //#region Implicit Operators
        
        /// Implicitly converts this to a long3.
        public static implicit operator long3(uint3 v) =>  long3((long)v.x, (long)v.y, (long)v.z);
        
        /// Implicitly converts this to a float3.
        public static implicit operator float3(uint3 v) =>  float3((float)v.x, (float)v.y, (float)v.z);
        
        /// Implicitly converts this to a double3.
        public static implicit operator double3(uint3 v) =>  double3((double)v.x, (double)v.y, (double)v.z);

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(uint3 v) =>  int2((int)v.x, (int)v.y);
        
        /// Explicitly converts this to a int3.
        public static explicit operator int3(uint3 v) =>  int3((int)v.x, (int)v.y, (int)v.z);
        
        /// Explicitly converts this to a int4. (Higher components are zeroed)
        public static explicit operator int4(uint3 v) =>  int4((int)v.x, (int)v.y, (int)v.z, 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(uint3 v) =>  uint2((uint)v.x, (uint)v.y);
        
        /// Explicitly converts this to a uint4. (Higher components are zeroed)
        public static explicit operator uint4(uint3 v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(uint3 v) =>  float2((float)v.x, (float)v.y);
        
        /// Explicitly converts this to a float4. (Higher components are zeroed)
        public static explicit operator float4(uint3 v) =>  float4((float)v.x, (float)v.y, (float)v.z, 0f);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(uint3 v) =>  double2((double)v.x, (double)v.y);
        
        /// Explicitly converts this to a double4. (Higher components are zeroed)
        public static explicit operator double4(uint3 v) =>  double4((double)v.x, (double)v.y, (double)v.z, 0.0);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(uint3 v) =>  long2((long)v.x, (long)v.y);
        
        /// Explicitly converts this to a long4. (Higher components are zeroed)
        public static explicit operator long4(uint3 v) =>  long4((long)v.x, (long)v.y, (long)v.z, 0);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(uint3 v) =>  bool2(v.x != 0u, v.y != 0u);
        
        /// Explicitly converts this to a bool3.
        public static explicit operator bool3(uint3 v) =>  bool3(v.x != 0u, v.y != 0u, v.z != 0u);
        
        /// Explicitly converts this to a bool4. (Higher components are zeroed)
        public static explicit operator bool4(uint3 v) =>  bool4(v.x != 0u, v.y != 0u, v.z != 0u, false);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public uint this[int index]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 3, "index out of range");
                unchecked { return values[index]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 3, "index out of range");
                unchecked { values[index] = value;}
            }
        }

        //#endregion


        //#region Properties
        
        /// x-component
        public uint x
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
        public uint y
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
        
        /// z-component
        public uint z
        {
            [Inline]get
            {
                return values[2];
            }
            [Inline]set mut
            {
                values[2] = value;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 xy
        {
            [Inline]get
            {
                return  uint2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 xz
        {
            [Inline]get
            {
                return  uint2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 yz
        {
            [Inline]get
            {
                return  uint2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 xyz
        {
            [Inline]get
            {
                return  uint3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 rg
        {
            [Inline]get
            {
                return  uint2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 rb
        {
            [Inline]get
            {
                return  uint2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 gb
        {
            [Inline]get
            {
                return  uint2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 rgb
        {
            [Inline]get
            {
                return  uint3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint r
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
        public uint g
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
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint b
        {
            [Inline]get
            {
                return z;
            }
            [Inline]set mut
            {
                z = value;
            }
        }
        
        /// Returns the number of components (3).
        public int Count => 3;
        
        /// Returns the minimal component of this vector.
        public uint MinElement => System.Math.Min(System.Math.Min(x, y), z);
        
        /// Returns the maximal component of this vector.
        public uint MaxElement => System.Math.Max(System.Math.Max(x, y), z);
        
        /// Returns the euclidean length of this vector.
        public float Length => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the squared euclidean length of this vector.
        public float LengthSqr => ((x*x + y*y) + z*z);
        
        /// Returns the sum of all components.
        public uint Sum => ((x + y) + z);
        
        /// Returns the euclidean norm of this vector.
        public float Norm => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the one-norm of this vector.
        public float Norm1 => ((x + y) + z);
        
        /// Returns the two-norm (euclidean length) of this vector.
        public float Norm2 => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the max-norm of this vector.
        public float NormMax => System.Math.Max(System.Math.Max(x, y), z);

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero vector
        readonly public static uint3 Zero  =  uint3(0u, 0u, 0u);
        
        /// Predefined all-ones vector
        readonly public static uint3 Ones  =  uint3(1u, 1u, 1u);
        
        /// Predefined unit-X vector
        readonly public static uint3 UnitX  =  uint3(1u, 0u, 0u);
        
        /// Predefined unit-Y vector
        readonly public static uint3 UnitY  =  uint3(0u, 1u, 0u);
        
        /// Predefined unit-Z vector
        readonly public static uint3 UnitZ  =  uint3(0u, 0u, 1u);
        
        /// Predefined all-MaxValue vector
        readonly public static uint3 MaxValue  =  uint3(uint.MaxValue, uint.MaxValue, uint.MaxValue);
        
        /// Predefined all-MinValue vector
        readonly public static uint3 MinValue  =  uint3(uint.MinValue, uint.MinValue, uint.MinValue);

        //#endregion


        //#region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(uint3 lhs, uint3 rhs) => ((lhs.x == rhs.x && lhs.y == rhs.y) && lhs.z == rhs.z);
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(uint3 lhs, uint3 rhs) => !((lhs.x == rhs.x && lhs.y == rhs.y) && lhs.z == rhs.z);

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public uint[] ToArray() => new .[] ( x, y, z );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
            let _z = scope String(); values[2].ToString(_z);
             stringBuffer.Join(sep, _x,_y,_z );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((x.GetHashCode()) * 397) ^ y.GetHashCode()) * 397) ^ z.GetHashCode();
            }
        }
        
        /// Returns the p-norm of this vector.
        public double NormP(double p) => System.Math.Pow(((System.Math.Pow((double)x, p) + System.Math.Pow((double)y, p)) + System.Math.Pow((double)z, p)), 1 / p);

        //#endregion


        //#region Static Functions
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint3x2 OuterProduct(uint2 c, uint3 r) =>  uint3x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint2x3 OuterProduct(uint3 c, uint2 r) =>  uint2x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint3x3 OuterProduct(uint3 c, uint3 r) =>  uint3x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.x * r.z, c.y * r.z, c.z * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint3x4 OuterProduct(uint4 c, uint3 r) =>  uint3x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.w * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint4x3 OuterProduct(uint3 c, uint4 r) =>  uint4x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.x * r.w, c.y * r.w, c.z * r.w);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        public static uint Dot(uint3 lhs, uint3 rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + lhs.z * rhs.z);
        
        /// Returns the euclidean distance between the two vectors.
        public static float Distance(uint3 lhs, uint3 rhs) => (lhs - rhs).Length;
        
        /// Returns the squared euclidean distance between the two vectors.
        public static float DistanceSqr(uint3 lhs, uint3 rhs) => (lhs - rhs).LengthSqr;
        
        /// Returns the outer product (cross product, vector product) of the two vectors.
        public static uint3 Cross(uint3 l, uint3 r) =>  uint3(l.y * r.z - l.z * r.y, l.z * r.x - l.x * r.z, l.x * r.y - l.y * r.x);
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between 0 (inclusive) and int.MaxValue (exclusive).
        public static uint3 Random(Random random) =>  uint3((uint)random.Next(int64.MaxValue), (uint)random.Next(int64.MaxValue), (uint)random.Next(int64.MaxValue));

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(uint3 lhs, uint3 rhs) => bool3(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(uint3 lhs, uint rhs) => bool3(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(uint lhs, uint3 rhs) => bool3(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool3 Equal(uint lhs, uint rhs) => bool3(lhs == rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(uint3 lhs, uint3 rhs) => bool3(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(uint3 lhs, uint rhs) => bool3(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(uint lhs, uint3 rhs) => bool3(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(uint lhs, uint rhs) => bool3(lhs != rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(uint3 lhs, uint3 rhs) => bool3(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(uint3 lhs, uint rhs) => bool3(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(uint lhs, uint3 rhs) => bool3(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(uint lhs, uint rhs) => bool3(lhs > rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(uint3 lhs, uint3 rhs) => bool3(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(uint3 lhs, uint rhs) => bool3(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(uint lhs, uint3 rhs) => bool3(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(uint lhs, uint rhs) => bool3(lhs >= rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(uint3 lhs, uint3 rhs) => bool3(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(uint3 lhs, uint rhs) => bool3(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(uint lhs, uint3 rhs) => bool3(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(uint lhs, uint rhs) => bool3(lhs < rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(uint3 lhs, uint3 rhs) => bool3(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(uint3 lhs, uint rhs) => bool3(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(uint lhs, uint3 rhs) => bool3(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(uint lhs, uint rhs) => bool3(lhs <= rhs);
        
        /// Returns a uint3 from component-wise application of Abs (v).
        public static uint3 Abs(uint3 v) => uint3(v.x, v.y, v.z);
        
        /// Returns a uint from the application of Abs (v).
        public static uint3 Abs(uint v) => uint3(v);
        
        /// Returns a uint3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static uint3 HermiteInterpolationOrder3(uint3 v) => uint3((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y, (3 - 2 * v.z) * v.z * v.z);
        
        /// Returns a uint from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static uint3 HermiteInterpolationOrder3(uint v) => uint3((3 - 2 * v) * v * v);
        
        /// Returns a uint3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static uint3 HermiteInterpolationOrder5(uint3 v) => uint3(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y, ((6 * v.z - 15) * v.z + 10) * v.z * v.z * v.z);
        
        /// Returns a uint from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static uint3 HermiteInterpolationOrder5(uint v) => uint3(((6 * v - 15) * v + 10) * v * v * v);
        
        /// Returns a uint3 from component-wise application of Sqr (v * v).
        public static uint3 Sqr(uint3 v) => uint3(v.x * v.x, v.y * v.y, v.z * v.z);
        
        /// Returns a uint from the application of Sqr (v * v).
        public static uint3 Sqr(uint v) => uint3(v * v);
        
        /// Returns a uint3 from component-wise application of Pow2 (v * v).
        public static uint3 Pow2(uint3 v) => uint3(v.x * v.x, v.y * v.y, v.z * v.z);
        
        /// Returns a uint from the application of Pow2 (v * v).
        public static uint3 Pow2(uint v) => uint3(v * v);
        
        /// Returns a uint3 from component-wise application of Pow3 (v * v * v).
        public static uint3 Pow3(uint3 v) => uint3(v.x * v.x * v.x, v.y * v.y * v.y, v.z * v.z * v.z);
        
        /// Returns a uint from the application of Pow3 (v * v * v).
        public static uint3 Pow3(uint v) => uint3(v * v * v);
        
        /// Returns a uint3 from component-wise application of Step (v &gt;= 0u ? 1u : 0u).
        public static uint3 Step(uint3 v) => uint3(v.x >= 0u ? 1u : 0u, v.y >= 0u ? 1u : 0u, v.z >= 0u ? 1u : 0u);
        
        /// Returns a uint from the application of Step (v &gt;= 0u ? 1u : 0u).
        public static uint3 Step(uint v) => uint3(v >= 0u ? 1u : 0u);
        
        /// Returns a uint3 from component-wise application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        public static uint3 Sqrt(uint3 v) => uint3((uint)System.Math.Sqrt((double)v.x), (uint)System.Math.Sqrt((double)v.y), (uint)System.Math.Sqrt((double)v.z));
        
        /// Returns a uint from the application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        public static uint3 Sqrt(uint v) => uint3((uint)System.Math.Sqrt((double)v));
        
        /// Returns a uint3 from component-wise application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        public static uint3 InverseSqrt(uint3 v) => uint3((uint)(1.0 / System.Math.Sqrt((double)v.x)), (uint)(1.0 / System.Math.Sqrt((double)v.y)), (uint)(1.0 / System.Math.Sqrt((double)v.z)));
        
        /// Returns a uint from the application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        public static uint3 InverseSqrt(uint v) => uint3((uint)(1.0 / System.Math.Sqrt((double)v)));
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        public static int3 Sign(uint3 v) => int3(System.Math.Sign(v.x), System.Math.Sign(v.y), System.Math.Sign(v.z));
        
        /// Returns a int from the application of Sign (System.Math.Sign(v)).
        public static int3 Sign(uint v) => int3(System.Math.Sign(v));
        
        /// Returns a uint3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint3 Max(uint3 lhs, uint3 rhs) => uint3(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y), System.Math.Max(lhs.z, rhs.z));
        
        /// Returns a uint3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint3 Max(uint3 lhs, uint rhs) => uint3(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs), System.Math.Max(lhs.z, rhs));
        
        /// Returns a uint3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint3 Max(uint lhs, uint3 rhs) => uint3(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y), System.Math.Max(lhs, rhs.z));
        
        /// Returns a uint from the application of Max (System.Math.Max(lhs, rhs)).
        public static uint3 Max(uint lhs, uint rhs) => uint3(System.Math.Max(lhs, rhs));
        
        /// Returns a uint3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint3 Min(uint3 lhs, uint3 rhs) => uint3(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y), System.Math.Min(lhs.z, rhs.z));
        
        /// Returns a uint3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint3 Min(uint3 lhs, uint rhs) => uint3(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs), System.Math.Min(lhs.z, rhs));
        
        /// Returns a uint3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint3 Min(uint lhs, uint3 rhs) => uint3(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y), System.Math.Min(lhs, rhs.z));
        
        /// Returns a uint from the application of Min (System.Math.Min(lhs, rhs)).
        public static uint3 Min(uint lhs, uint rhs) => uint3(System.Math.Min(lhs, rhs));
        
        /// Returns a uint3 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint3 Pow(uint3 lhs, uint3 rhs) => uint3((uint)System.Math.Pow((double)lhs.x, (double)rhs.x), (uint)System.Math.Pow((double)lhs.y, (double)rhs.y), (uint)System.Math.Pow((double)lhs.z, (double)rhs.z));
        
        /// Returns a uint3 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint3 Pow(uint3 lhs, uint rhs) => uint3((uint)System.Math.Pow((double)lhs.x, (double)rhs), (uint)System.Math.Pow((double)lhs.y, (double)rhs), (uint)System.Math.Pow((double)lhs.z, (double)rhs));
        
        /// Returns a uint3 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint3 Pow(uint lhs, uint3 rhs) => uint3((uint)System.Math.Pow((double)lhs, (double)rhs.x), (uint)System.Math.Pow((double)lhs, (double)rhs.y), (uint)System.Math.Pow((double)lhs, (double)rhs.z));
        
        /// Returns a uint from the application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint3 Pow(uint lhs, uint rhs) => uint3((uint)System.Math.Pow((double)lhs, (double)rhs));
        
        /// Returns a uint3 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint3 Log(uint3 lhs, uint3 rhs) => uint3((uint)System.Math.Log((double)lhs.x, (double)rhs.x), (uint)System.Math.Log((double)lhs.y, (double)rhs.y), (uint)System.Math.Log((double)lhs.z, (double)rhs.z));
        
        /// Returns a uint3 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint3 Log(uint3 lhs, uint rhs) => uint3((uint)System.Math.Log((double)lhs.x, (double)rhs), (uint)System.Math.Log((double)lhs.y, (double)rhs), (uint)System.Math.Log((double)lhs.z, (double)rhs));
        
        /// Returns a uint3 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint3 Log(uint lhs, uint3 rhs) => uint3((uint)System.Math.Log((double)lhs, (double)rhs.x), (uint)System.Math.Log((double)lhs, (double)rhs.y), (uint)System.Math.Log((double)lhs, (double)rhs.z));
        
        /// Returns a uint from the application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint3 Log(uint lhs, uint rhs) => uint3((uint)System.Math.Log((double)lhs, (double)rhs));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint3 v, uint3 min, uint3 max) => uint3(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y), System.Math.Min(System.Math.Max(v.z, min.z), max.z));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint3 v, uint3 min, uint max) => uint3(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max), System.Math.Min(System.Math.Max(v.z, min.z), max));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint3 v, uint min, uint3 max) => uint3(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y), System.Math.Min(System.Math.Max(v.z, min), max.z));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint3 v, uint min, uint max) => uint3(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max), System.Math.Min(System.Math.Max(v.z, min), max));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint v, uint3 min, uint3 max) => uint3(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y), System.Math.Min(System.Math.Max(v, min.z), max.z));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint v, uint3 min, uint max) => uint3(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max), System.Math.Min(System.Math.Max(v, min.z), max));
        
        /// Returns a uint3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint v, uint min, uint3 max) => uint3(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y), System.Math.Min(System.Math.Max(v, min), max.z));
        
        /// Returns a uint from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint3 Clamp(uint v, uint min, uint max) => uint3(System.Math.Min(System.Math.Max(v, min), max));
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint3 min, uint3 max, uint3 a) => uint3(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint3 min, uint3 max, uint a) => uint3(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint3 min, uint max, uint3 a) => uint3(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint3 min, uint max, uint a) => uint3(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint min, uint3 max, uint3 a) => uint3(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint min, uint3 max, uint a) => uint3(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a);
        
        /// Returns a uint3 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint min, uint max, uint3 a) => uint3(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z);
        
        /// Returns a uint from the application of Mix (min * (1-a) + max * a).
        public static uint3 Mix(uint min, uint max, uint a) => uint3(min * (1-a) + max * a);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint3 min, uint3 max, uint3 a) => uint3(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint3 min, uint3 max, uint a) => uint3(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint3 min, uint max, uint3 a) => uint3(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint3 min, uint max, uint a) => uint3(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint min, uint3 max, uint3 a) => uint3(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint min, uint3 max, uint a) => uint3(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a);
        
        /// Returns a uint3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint min, uint max, uint3 a) => uint3(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z);
        
        /// Returns a uint from the application of Lerp (min * (1-a) + max * a).
        public static uint3 Lerp(uint min, uint max, uint a) => uint3(min * (1-a) + max * a);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint3 a, uint3 b, uint3 c) => uint3(a.x * b.x + c.x, a.y * b.y + c.y, a.z * b.z + c.z);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint3 a, uint3 b, uint c) => uint3(a.x * b.x + c, a.y * b.y + c, a.z * b.z + c);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint3 a, uint b, uint3 c) => uint3(a.x * b + c.x, a.y * b + c.y, a.z * b + c.z);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint3 a, uint b, uint c) => uint3(a.x * b + c, a.y * b + c, a.z * b + c);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint a, uint3 b, uint3 c) => uint3(a * b.x + c.x, a * b.y + c.y, a * b.z + c.z);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint a, uint3 b, uint c) => uint3(a * b.x + c, a * b.y + c, a * b.z + c);
        
        /// Returns a uint3 from component-wise application of Fma (a * b + c).
        public static uint3 Fma(uint a, uint b, uint3 c) => uint3(a * b + c.x, a * b + c.y, a * b + c.z);
        
        /// Returns a uint from the application of Fma (a * b + c).
        public static uint3 Fma(uint a, uint b, uint c) => uint3(a * b + c);
        
        /// Returns a uint3 from component-wise application of Add (lhs + rhs).
        public static uint3 Add(uint3 lhs, uint3 rhs) => uint3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z);
        
        /// Returns a uint3 from component-wise application of Add (lhs + rhs).
        public static uint3 Add(uint3 lhs, uint rhs) => uint3(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs);
        
        /// Returns a uint3 from component-wise application of Add (lhs + rhs).
        public static uint3 Add(uint lhs, uint3 rhs) => uint3(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z);
        
        /// Returns a uint from the application of Add (lhs + rhs).
        public static uint3 Add(uint lhs, uint rhs) => uint3(lhs + rhs);
        
        /// Returns a uint3 from component-wise application of Sub (lhs - rhs).
        public static uint3 Sub(uint3 lhs, uint3 rhs) => uint3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z);
        
        /// Returns a uint3 from component-wise application of Sub (lhs - rhs).
        public static uint3 Sub(uint3 lhs, uint rhs) => uint3(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs);
        
        /// Returns a uint3 from component-wise application of Sub (lhs - rhs).
        public static uint3 Sub(uint lhs, uint3 rhs) => uint3(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z);
        
        /// Returns a uint from the application of Sub (lhs - rhs).
        public static uint3 Sub(uint lhs, uint rhs) => uint3(lhs - rhs);
        
        /// Returns a uint3 from component-wise application of Mul (lhs * rhs).
        public static uint3 Mul(uint3 lhs, uint3 rhs) => uint3(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z);
        
        /// Returns a uint3 from component-wise application of Mul (lhs * rhs).
        public static uint3 Mul(uint3 lhs, uint rhs) => uint3(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs);
        
        /// Returns a uint3 from component-wise application of Mul (lhs * rhs).
        public static uint3 Mul(uint lhs, uint3 rhs) => uint3(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z);
        
        /// Returns a uint from the application of Mul (lhs * rhs).
        public static uint3 Mul(uint lhs, uint rhs) => uint3(lhs * rhs);
        
        /// Returns a uint3 from component-wise application of Div (lhs / rhs).
        public static uint3 Div(uint3 lhs, uint3 rhs) => uint3(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z);
        
        /// Returns a uint3 from component-wise application of Div (lhs / rhs).
        public static uint3 Div(uint3 lhs, uint rhs) => uint3(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs);
        
        /// Returns a uint3 from component-wise application of Div (lhs / rhs).
        public static uint3 Div(uint lhs, uint3 rhs) => uint3(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z);
        
        /// Returns a uint from the application of Div (lhs / rhs).
        public static uint3 Div(uint lhs, uint rhs) => uint3(lhs / rhs);
        
        /// Returns a uint3 from component-wise application of Xor (lhs ^ rhs).
        public static uint3 Xor(uint3 lhs, uint3 rhs) => uint3(lhs.x ^ rhs.x, lhs.y ^ rhs.y, lhs.z ^ rhs.z);
        
        /// Returns a uint3 from component-wise application of Xor (lhs ^ rhs).
        public static uint3 Xor(uint3 lhs, uint rhs) => uint3(lhs.x ^ rhs, lhs.y ^ rhs, lhs.z ^ rhs);
        
        /// Returns a uint3 from component-wise application of Xor (lhs ^ rhs).
        public static uint3 Xor(uint lhs, uint3 rhs) => uint3(lhs ^ rhs.x, lhs ^ rhs.y, lhs ^ rhs.z);
        
        /// Returns a uint from the application of Xor (lhs ^ rhs).
        public static uint3 Xor(uint lhs, uint rhs) => uint3(lhs ^ rhs);
        
        /// Returns a uint3 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint3 BitwiseOr(uint3 lhs, uint3 rhs) => uint3(lhs.x | rhs.x, lhs.y | rhs.y, lhs.z | rhs.z);
        
        /// Returns a uint3 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint3 BitwiseOr(uint3 lhs, uint rhs) => uint3(lhs.x | rhs, lhs.y | rhs, lhs.z | rhs);
        
        /// Returns a uint3 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint3 BitwiseOr(uint lhs, uint3 rhs) => uint3(lhs | rhs.x, lhs | rhs.y, lhs | rhs.z);
        
        /// Returns a uint from the application of BitwiseOr (lhs | rhs).
        public static uint3 BitwiseOr(uint lhs, uint rhs) => uint3(lhs | rhs);
        
        /// Returns a uint3 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint3 BitwiseAnd(uint3 lhs, uint3 rhs) => uint3(lhs.x & rhs.x, lhs.y & rhs.y, lhs.z & rhs.z);
        
        /// Returns a uint3 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint3 BitwiseAnd(uint3 lhs, uint rhs) => uint3(lhs.x & rhs, lhs.y & rhs, lhs.z & rhs);
        
        /// Returns a uint3 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint3 BitwiseAnd(uint lhs, uint3 rhs) => uint3(lhs & rhs.x, lhs & rhs.y, lhs & rhs.z);
        
        /// Returns a uint from the application of BitwiseAnd (lhs &amp; rhs).
        public static uint3 BitwiseAnd(uint lhs, uint rhs) => uint3(lhs & rhs);
        
        /// Returns a uint3 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint3 LeftShift(uint3 lhs, int3 rhs) => uint3(lhs.x << rhs.x, lhs.y << rhs.y, lhs.z << rhs.z);
        
        /// Returns a uint3 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint3 LeftShift(uint3 lhs, int rhs) => uint3(lhs.x << rhs, lhs.y << rhs, lhs.z << rhs);
        
        /// Returns a uint3 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint3 LeftShift(uint lhs, int3 rhs) => uint3(lhs << rhs.x, lhs << rhs.y, lhs << rhs.z);
        
        /// Returns a uint from the application of LeftShift (lhs &lt;&lt; rhs).
        public static uint3 LeftShift(uint lhs, int rhs) => uint3(lhs << rhs);
        
        /// Returns a uint3 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint3 RightShift(uint3 lhs, int3 rhs) => uint3(lhs.x >> rhs.x, lhs.y >> rhs.y, lhs.z >> rhs.z);
        
        /// Returns a uint3 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint3 RightShift(uint3 lhs, int rhs) => uint3(lhs.x >> rhs, lhs.y >> rhs, lhs.z >> rhs);
        
        /// Returns a uint3 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint3 RightShift(uint lhs, int3 rhs) => uint3(lhs >> rhs.x, lhs >> rhs.y, lhs >> rhs.z);
        
        /// Returns a uint from the application of RightShift (lhs &gt;&gt; rhs).
        public static uint3 RightShift(uint lhs, int rhs) => uint3(lhs >> rhs);
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static uint3 Random(Random random, uint3 maxValue) => uint3((uint)random.Next((int)maxValue.x), (uint)random.Next((int)maxValue.y), (uint)random.Next((int)maxValue.z));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static uint3 Random(Random random, uint maxValue) => uint3((uint)random.Next((int)maxValue));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 Random(Random random, uint3 minValue, uint3 maxValue) => uint3((uint)random.Next((int)minValue.x, (int)maxValue.x), (uint)random.Next((int)minValue.y, (int)maxValue.y), (uint)random.Next((int)minValue.z, (int)maxValue.z));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 Random(Random random, uint3 minValue, uint maxValue) => uint3((uint)random.Next((int)minValue.x, (int)maxValue), (uint)random.Next((int)minValue.y, (int)maxValue), (uint)random.Next((int)minValue.z, (int)maxValue));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 Random(Random random, uint minValue, uint3 maxValue) => uint3((uint)random.Next((int)minValue, (int)maxValue.x), (uint)random.Next((int)minValue, (int)maxValue.y), (uint)random.Next((int)minValue, (int)maxValue.z));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 Random(Random random, uint minValue, uint maxValue) => uint3((uint)random.Next((int)minValue, (int)maxValue));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 RandomUniform(Random random, uint3 minValue, uint3 maxValue) => uint3((uint)random.Next((int)minValue.x, (int)maxValue.x), (uint)random.Next((int)minValue.y, (int)maxValue.y), (uint)random.Next((int)minValue.z, (int)maxValue.z));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 RandomUniform(Random random, uint3 minValue, uint maxValue) => uint3((uint)random.Next((int)minValue.x, (int)maxValue), (uint)random.Next((int)minValue.y, (int)maxValue), (uint)random.Next((int)minValue.z, (int)maxValue));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 RandomUniform(Random random, uint minValue, uint3 maxValue) => uint3((uint)random.Next((int)minValue, (int)maxValue.x), (uint)random.Next((int)minValue, (int)maxValue.y), (uint)random.Next((int)minValue, (int)maxValue.z));
        
        /// Returns a uint3 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint3 RandomUniform(Random random, uint minValue, uint maxValue) => uint3((uint)random.Next((int)minValue, (int)maxValue));

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(uint3 lhs, uint3 rhs) => bool3(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(uint3 lhs, uint rhs) => bool3(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs);
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(uint lhs, uint3 rhs) => bool3(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(uint3 lhs, uint3 rhs) => bool3(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(uint3 lhs, uint rhs) => bool3(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(uint lhs, uint3 rhs) => bool3(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(uint3 lhs, uint3 rhs) => bool3(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(uint3 lhs, uint rhs) => bool3(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(uint lhs, uint3 rhs) => bool3(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(uint3 lhs, uint3 rhs) => bool3(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(uint3 lhs, uint rhs) => bool3(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(uint lhs, uint3 rhs) => bool3(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z);
        
        /// Returns a uint3 from component-wise application of operator+ (lhs + rhs).
        public static uint3 operator+(uint3 lhs, uint3 rhs) => uint3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z);
        
        /// Returns a uint3 from component-wise application of operator+ (lhs + rhs).
        public static uint3 operator+(uint3 lhs, uint rhs) => uint3(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs);
        
        /// Returns a uint3 from component-wise application of operator+ (lhs + rhs).
        public static uint3 operator+(uint lhs, uint3 rhs) => uint3(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z);
        
        /// Returns a uint3 from component-wise application of operator- (lhs - rhs).
        public static uint3 operator-(uint3 lhs, uint3 rhs) => uint3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z);
        
        /// Returns a uint3 from component-wise application of operator- (lhs - rhs).
        public static uint3 operator-(uint3 lhs, uint rhs) => uint3(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs);
        
        /// Returns a uint3 from component-wise application of operator- (lhs - rhs).
        public static uint3 operator-(uint lhs, uint3 rhs) => uint3(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z);
        
        /// Returns a uint3 from component-wise application of operator* (lhs * rhs).
        public static uint3 operator*(uint3 lhs, uint3 rhs) => uint3(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z);
        
        /// Returns a uint3 from component-wise application of operator* (lhs * rhs).
        public static uint3 operator*(uint3 lhs, uint rhs) => uint3(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs);
        
        /// Returns a uint3 from component-wise application of operator* (lhs * rhs).
        public static uint3 operator*(uint lhs, uint3 rhs) => uint3(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z);
        
        /// Returns a uint3 from component-wise application of operator/ (lhs / rhs).
        public static uint3 operator/(uint3 lhs, uint3 rhs) => uint3(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z);
        
        /// Returns a uint3 from component-wise application of operator/ (lhs / rhs).
        public static uint3 operator/(uint3 lhs, uint rhs) => uint3(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs);
        
        /// Returns a uint3 from component-wise application of operator/ (lhs / rhs).
        public static uint3 operator/(uint lhs, uint3 rhs) => uint3(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z);
        
        /// Returns a uint3 from component-wise application of operator~ (~v).
        public static uint3 operator~(uint3 v) => uint3(~v.x, ~v.y, ~v.z);
        
        /// Returns a uint3 from component-wise application of operator^ (lhs ^ rhs).
        public static uint3 operator^(uint3 lhs, uint3 rhs) => uint3(lhs.x ^ rhs.x, lhs.y ^ rhs.y, lhs.z ^ rhs.z);
        
        /// Returns a uint3 from component-wise application of operator^ (lhs ^ rhs).
        public static uint3 operator^(uint3 lhs, uint rhs) => uint3(lhs.x ^ rhs, lhs.y ^ rhs, lhs.z ^ rhs);
        
        /// Returns a uint3 from component-wise application of operator^ (lhs ^ rhs).
        public static uint3 operator^(uint lhs, uint3 rhs) => uint3(lhs ^ rhs.x, lhs ^ rhs.y, lhs ^ rhs.z);
        
        /// Returns a uint3 from component-wise application of operator| (lhs | rhs).
        public static uint3 operator|(uint3 lhs, uint3 rhs) => uint3(lhs.x | rhs.x, lhs.y | rhs.y, lhs.z | rhs.z);
        
        /// Returns a uint3 from component-wise application of operator| (lhs | rhs).
        public static uint3 operator|(uint3 lhs, uint rhs) => uint3(lhs.x | rhs, lhs.y | rhs, lhs.z | rhs);
        
        /// Returns a uint3 from component-wise application of operator| (lhs | rhs).
        public static uint3 operator|(uint lhs, uint3 rhs) => uint3(lhs | rhs.x, lhs | rhs.y, lhs | rhs.z);
        
        /// Returns a uint3 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint3 operator&(uint3 lhs, uint3 rhs) => uint3(lhs.x & rhs.x, lhs.y & rhs.y, lhs.z & rhs.z);
        
        /// Returns a uint3 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint3 operator&(uint3 lhs, uint rhs) => uint3(lhs.x & rhs, lhs.y & rhs, lhs.z & rhs);
        
        /// Returns a uint3 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint3 operator&(uint lhs, uint3 rhs) => uint3(lhs & rhs.x, lhs & rhs.y, lhs & rhs.z);
        
        /// Returns a uint3 from component-wise application of operator&lt;&lt; (lhs &lt;&lt; rhs).
        public static uint3 operator<<(uint3 lhs, int rhs) => uint3(lhs.x << rhs, lhs.y << rhs, lhs.z << rhs);
        
        /// Returns a uint3 from component-wise application of operator&gt;&gt; (lhs &gt;&gt; rhs).
        public static uint3 operator>>(uint3 lhs, int rhs) => uint3(lhs.x >> rhs, lhs.y >> rhs, lhs.z >> rhs);

        //#endregion

    }
}
