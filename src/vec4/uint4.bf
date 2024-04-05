using System;
namespace glm
{
    
    /// A vector of type uint with 4 components.
    [Union]
    public struct uint4 : IHashable
    {

        #region Fields
        
        /// component data
        public uint[4] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_uint4 swizzle;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(uint x, uint y, uint z, uint w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(uint v)
        {
            values = .(v,v,v,v);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(uint2 v)
        {
            values = .(v.x,v.y,0u,0u);
        }
        
        /// from-vector-and-value constructor (empty fields are zero/false)
        public this(uint2 v, uint z)
        {
            values = .(v.x,v.y,z,0u);
        }
        
        /// from-vector-and-value constructor
        public this(uint2 v, uint z, uint w)
        {
            values = .(v.x,v.y,z,w);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(uint3 v)
        {
            values = .(v.x,v.y,v.z,0u);
        }
        
        /// from-vector-and-value constructor
        public this(uint3 v, uint w)
        {
            values = .(v.x,v.y,v.z,w);
        }
        
        /// from-vector constructor
        public this(uint4 v)
        {
            values = .(v.x,v.y,v.z,v.w);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(uint[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? 0u : v[0],(c < 1) ? 0u : v[1],(c < 2) ? 0u : v[2],(c < 3) ? 0u : v[3]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(uint[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? 0u : v[0 + startIndex],(c + startIndex < 1) ? 0u : v[1 + startIndex],(c + startIndex < 2) ? 0u : v[2 + startIndex],(c + startIndex < 3) ? 0u : v[3 + startIndex]);
        }

        #endregion


        #region Implicit Operators
        
        /// Implicitly converts this to a long4.
        public static implicit operator long4(uint4 v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Implicitly converts this to a float4.
        public static implicit operator float4(uint4 v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Implicitly converts this to a double4.
        public static implicit operator double4(uint4 v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);

        #endregion


        #region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(uint4 v) =>  int2((int)v.x, (int)v.y);
        
        /// Explicitly converts this to a int3.
        public static explicit operator int3(uint4 v) =>  int3((int)v.x, (int)v.y, (int)v.z);
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(uint4 v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(uint4 v) =>  uint2((uint)v.x, (uint)v.y);
        
        /// Explicitly converts this to a uint3.
        public static explicit operator uint3(uint4 v) =>  uint3((uint)v.x, (uint)v.y, (uint)v.z);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(uint4 v) =>  float2((float)v.x, (float)v.y);
        
        /// Explicitly converts this to a float3.
        public static explicit operator float3(uint4 v) =>  float3((float)v.x, (float)v.y, (float)v.z);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(uint4 v) =>  double2((double)v.x, (double)v.y);
        
        /// Explicitly converts this to a double3.
        public static explicit operator double3(uint4 v) =>  double3((double)v.x, (double)v.y, (double)v.z);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(uint4 v) =>  long2((long)v.x, (long)v.y);
        
        /// Explicitly converts this to a long3.
        public static explicit operator long3(uint4 v) =>  long3((long)v.x, (long)v.y, (long)v.z);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(uint4 v) =>  bool2(v.x != 0u, v.y != 0u);
        
        /// Explicitly converts this to a bool3.
        public static explicit operator bool3(uint4 v) =>  bool3(v.x != 0u, v.y != 0u, v.z != 0u);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(uint4 v) =>  bool4(v.x != 0u, v.y != 0u, v.z != 0u, v.w != 0u);

        #endregion


        #region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public uint this[int index]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 4, "index out of range");
                unchecked { return values[index]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 4, "index out of range");
                unchecked { values[index] = value;}
            }
        }

        #endregion


        #region Properties
        
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
        
        /// w-component
        public uint w
        {
            [Inline]get
            {
                return values[3];
            }
            [Inline]set mut
            {
                values[3] = value;
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
        public uint2 xw
        {
            [Inline]get
            {
                return  uint2(x, w);
            }
            [Inline]set mut
            {
                x = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 yw
        {
            [Inline]get
            {
                return  uint2(y, w);
            }
            [Inline]set mut
            {
                y = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 xyw
        {
            [Inline]get
            {
                return  uint3(x, y, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 zw
        {
            [Inline]get
            {
                return  uint2(z, w);
            }
            [Inline]set mut
            {
                z = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 xzw
        {
            [Inline]get
            {
                return  uint3(x, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 yzw
        {
            [Inline]get
            {
                return  uint3(y, z, w);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint4 xyzw
        {
            [Inline]get
            {
                return  uint4(x, y, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
                w = value.w;
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
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 ra
        {
            [Inline]get
            {
                return  uint2(x, w);
            }
            [Inline]set mut
            {
                x = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 ga
        {
            [Inline]get
            {
                return  uint2(y, w);
            }
            [Inline]set mut
            {
                y = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 rga
        {
            [Inline]get
            {
                return  uint3(x, y, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint2 ba
        {
            [Inline]get
            {
                return  uint2(z, w);
            }
            [Inline]set mut
            {
                z = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 rba
        {
            [Inline]get
            {
                return  uint3(x, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint3 gba
        {
            [Inline]get
            {
                return  uint3(y, z, w);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint4 rgba
        {
            [Inline]get
            {
                return  uint4(x, y, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
                w = value.w;
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
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public uint a
        {
            [Inline]get
            {
                return w;
            }
            [Inline]set mut
            {
                w = value;
            }
        }
        
        /// Returns the number of components (4).
        public int Count => 4;
        
        /// Returns the minimal component of this vector.
        public uint MinElement => System.Math.Min(System.Math.Min(x, y), System.Math.Min(z, w));
        
        /// Returns the maximal component of this vector.
        public uint MaxElement => System.Math.Max(System.Math.Max(x, y), System.Math.Max(z, w));
        
        /// Returns the euclidean length of this vector.
        public float Length => (float)System.Math.Sqrt(((x*x + y*y) + (z*z + w*w)));
        
        /// Returns the squared euclidean length of this vector.
        public float LengthSqr => ((x*x + y*y) + (z*z + w*w));
        
        /// Returns the sum of all components.
        public uint Sum => ((x + y) + (z + w));
        
        /// Returns the euclidean norm of this vector.
        public float Norm => (float)System.Math.Sqrt(((x*x + y*y) + (z*z + w*w)));
        
        /// Returns the one-norm of this vector.
        public float Norm1 => ((x + y) + (z + w));
        
        /// Returns the two-norm (euclidean length) of this vector.
        public float Norm2 => (float)System.Math.Sqrt(((x*x + y*y) + (z*z + w*w)));
        
        /// Returns the max-norm of this vector.
        public float NormMax => System.Math.Max(System.Math.Max(x, y), System.Math.Max(z, w));

        #endregion


        #region Static Properties
        
        /// Predefined all-zero vector
        readonly public static uint4 Zero  =  uint4(0u, 0u, 0u, 0u);
        
        /// Predefined all-ones vector
        readonly public static uint4 Ones  =  uint4(1u, 1u, 1u, 1u);
        
        /// Predefined unit-X vector
        readonly public static uint4 UnitX  =  uint4(1u, 0u, 0u, 0u);
        
        /// Predefined unit-Y vector
        readonly public static uint4 UnitY  =  uint4(0u, 1u, 0u, 0u);
        
        /// Predefined unit-Z vector
        readonly public static uint4 UnitZ  =  uint4(0u, 0u, 1u, 0u);
        
        /// Predefined unit-W vector
        readonly public static uint4 UnitW  =  uint4(0u, 0u, 0u, 1u);
        
        /// Predefined all-MaxValue vector
        readonly public static uint4 MaxValue  =  uint4(uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue);
        
        /// Predefined all-MinValue vector
        readonly public static uint4 MinValue  =  uint4(uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue);

        #endregion


        #region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(uint4 lhs, uint4 rhs) => ((lhs.x == rhs.x && lhs.y == rhs.y) && (lhs.z == rhs.z && lhs.w == rhs.w));
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(uint4 lhs, uint4 rhs) => !((lhs.x == rhs.x && lhs.y == rhs.y) && (lhs.z == rhs.z && lhs.w == rhs.w));

        #endregion


        #region Functions
        
        /// Returns an array with all values
        public uint[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
            let _z = scope String(); values[2].ToString(_z);
            let _w = scope String(); values[3].ToString(_w);
             stringBuffer.Join(sep, _x,_y,_z,_w );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 397) ^ y.GetHashCode()) * 397) ^ z.GetHashCode()) * 397) ^ w.GetHashCode();
            }
        }
        
        /// Returns the p-norm of this vector.
        public double NormP(double p) => System.Math.Pow(((System.Math.Pow((double)x, p) + System.Math.Pow((double)y, p)) + (System.Math.Pow((double)z, p) + System.Math.Pow((double)w, p))), 1 / p);

        #endregion


        #region Static Functions
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint4x2 OuterProduct(uint2 c, uint4 r) =>  uint4x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z, c.x * r.w, c.y * r.w);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint2x4 OuterProduct(uint4 c, uint2 r) =>  uint2x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint4x3 OuterProduct(uint3 c, uint4 r) =>  uint4x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.x * r.w, c.y * r.w, c.z * r.w);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint3x4 OuterProduct(uint4 c, uint3 r) =>  uint3x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.w * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static uint4x4 OuterProduct(uint4 c, uint4 r) =>  uint4x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.w * r.z, c.x * r.w, c.y * r.w, c.z * r.w, c.w * r.w);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        public static uint Dot(uint4 lhs, uint4 rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Returns the euclidean distance between the two vectors.
        public static float Distance(uint4 lhs, uint4 rhs) => (lhs - rhs).Length;
        
        /// Returns the squared euclidean distance between the two vectors.
        public static float DistanceSqr(uint4 lhs, uint4 rhs) => (lhs - rhs).LengthSqr;
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between 0 (inclusive) and int.MaxValue (exclusive).
        public static uint4 Random(Random random) =>  uint4((uint)random.Next(int64.MaxValue), (uint)random.Next(int64.MaxValue), (uint)random.Next(int64.MaxValue), (uint)random.Next(int64.MaxValue));

        #endregion


        #region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(uint4 lhs, uint4 rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(uint4 lhs, uint rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(uint lhs, uint4 rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(uint lhs, uint rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint4 lhs, uint4 rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint4 lhs, uint rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint lhs, uint4 rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint lhs, uint rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint4 lhs, uint4 rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint4 lhs, uint rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint lhs, uint4 rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint lhs, uint rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint4 lhs, uint4 rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint4 lhs, uint rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint lhs, uint4 rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint lhs, uint rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint4 lhs, uint4 rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint4 lhs, uint rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint lhs, uint4 rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint lhs, uint rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint4 lhs, uint4 rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint4 lhs, uint rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint lhs, uint4 rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint lhs, uint rhs) => bool4(lhs <= rhs);
        
        /// Returns a uint4 from component-wise application of Abs (v).
        public static uint4 Abs(uint4 v) => uint4(v.x, v.y, v.z, v.w);
        
        /// Returns a uint from the application of Abs (v).
        public static uint4 Abs(uint v) => uint4(v);
        
        /// Returns a uint4 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static uint4 HermiteInterpolationOrder3(uint4 v) => uint4((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y, (3 - 2 * v.z) * v.z * v.z, (3 - 2 * v.w) * v.w * v.w);
        
        /// Returns a uint from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static uint4 HermiteInterpolationOrder3(uint v) => uint4((3 - 2 * v) * v * v);
        
        /// Returns a uint4 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static uint4 HermiteInterpolationOrder5(uint4 v) => uint4(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y, ((6 * v.z - 15) * v.z + 10) * v.z * v.z * v.z, ((6 * v.w - 15) * v.w + 10) * v.w * v.w * v.w);
        
        /// Returns a uint from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static uint4 HermiteInterpolationOrder5(uint v) => uint4(((6 * v - 15) * v + 10) * v * v * v);
        
        /// Returns a uint4 from component-wise application of Sqr (v * v).
        public static uint4 Sqr(uint4 v) => uint4(v.x * v.x, v.y * v.y, v.z * v.z, v.w * v.w);
        
        /// Returns a uint from the application of Sqr (v * v).
        public static uint4 Sqr(uint v) => uint4(v * v);
        
        /// Returns a uint4 from component-wise application of Pow2 (v * v).
        public static uint4 Pow2(uint4 v) => uint4(v.x * v.x, v.y * v.y, v.z * v.z, v.w * v.w);
        
        /// Returns a uint from the application of Pow2 (v * v).
        public static uint4 Pow2(uint v) => uint4(v * v);
        
        /// Returns a uint4 from component-wise application of Pow3 (v * v * v).
        public static uint4 Pow3(uint4 v) => uint4(v.x * v.x * v.x, v.y * v.y * v.y, v.z * v.z * v.z, v.w * v.w * v.w);
        
        /// Returns a uint from the application of Pow3 (v * v * v).
        public static uint4 Pow3(uint v) => uint4(v * v * v);
        
        /// Returns a uint4 from component-wise application of Step (v &gt;= 0u ? 1u : 0u).
        public static uint4 Step(uint4 v) => uint4(v.x >= 0u ? 1u : 0u, v.y >= 0u ? 1u : 0u, v.z >= 0u ? 1u : 0u, v.w >= 0u ? 1u : 0u);
        
        /// Returns a uint from the application of Step (v &gt;= 0u ? 1u : 0u).
        public static uint4 Step(uint v) => uint4(v >= 0u ? 1u : 0u);
        
        /// Returns a uint4 from component-wise application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        public static uint4 Sqrt(uint4 v) => uint4((uint)System.Math.Sqrt((double)v.x), (uint)System.Math.Sqrt((double)v.y), (uint)System.Math.Sqrt((double)v.z), (uint)System.Math.Sqrt((double)v.w));
        
        /// Returns a uint from the application of Sqrt ((uint)System.Math.Sqrt((double)v)).
        public static uint4 Sqrt(uint v) => uint4((uint)System.Math.Sqrt((double)v));
        
        /// Returns a uint4 from component-wise application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        public static uint4 InverseSqrt(uint4 v) => uint4((uint)(1.0 / System.Math.Sqrt((double)v.x)), (uint)(1.0 / System.Math.Sqrt((double)v.y)), (uint)(1.0 / System.Math.Sqrt((double)v.z)), (uint)(1.0 / System.Math.Sqrt((double)v.w)));
        
        /// Returns a uint from the application of InverseSqrt ((uint)(1.0 / System.Math.Sqrt((double)v))).
        public static uint4 InverseSqrt(uint v) => uint4((uint)(1.0 / System.Math.Sqrt((double)v)));
        
        /// Returns a int4 from component-wise application of Sign (System.Math.Sign(v)).
        public static int4 Sign(uint4 v) => int4(System.Math.Sign(v.x), System.Math.Sign(v.y), System.Math.Sign(v.z), System.Math.Sign(v.w));
        
        /// Returns a int from the application of Sign (System.Math.Sign(v)).
        public static int4 Sign(uint v) => int4(System.Math.Sign(v));
        
        /// Returns a uint4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint4 Max(uint4 lhs, uint4 rhs) => uint4(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y), System.Math.Max(lhs.z, rhs.z), System.Math.Max(lhs.w, rhs.w));
        
        /// Returns a uint4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint4 Max(uint4 lhs, uint rhs) => uint4(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs), System.Math.Max(lhs.z, rhs), System.Math.Max(lhs.w, rhs));
        
        /// Returns a uint4 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static uint4 Max(uint lhs, uint4 rhs) => uint4(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y), System.Math.Max(lhs, rhs.z), System.Math.Max(lhs, rhs.w));
        
        /// Returns a uint from the application of Max (System.Math.Max(lhs, rhs)).
        public static uint4 Max(uint lhs, uint rhs) => uint4(System.Math.Max(lhs, rhs));
        
        /// Returns a uint4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint4 Min(uint4 lhs, uint4 rhs) => uint4(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y), System.Math.Min(lhs.z, rhs.z), System.Math.Min(lhs.w, rhs.w));
        
        /// Returns a uint4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint4 Min(uint4 lhs, uint rhs) => uint4(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs), System.Math.Min(lhs.z, rhs), System.Math.Min(lhs.w, rhs));
        
        /// Returns a uint4 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static uint4 Min(uint lhs, uint4 rhs) => uint4(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y), System.Math.Min(lhs, rhs.z), System.Math.Min(lhs, rhs.w));
        
        /// Returns a uint from the application of Min (System.Math.Min(lhs, rhs)).
        public static uint4 Min(uint lhs, uint rhs) => uint4(System.Math.Min(lhs, rhs));
        
        /// Returns a uint4 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint4 Pow(uint4 lhs, uint4 rhs) => uint4((uint)System.Math.Pow((double)lhs.x, (double)rhs.x), (uint)System.Math.Pow((double)lhs.y, (double)rhs.y), (uint)System.Math.Pow((double)lhs.z, (double)rhs.z), (uint)System.Math.Pow((double)lhs.w, (double)rhs.w));
        
        /// Returns a uint4 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint4 Pow(uint4 lhs, uint rhs) => uint4((uint)System.Math.Pow((double)lhs.x, (double)rhs), (uint)System.Math.Pow((double)lhs.y, (double)rhs), (uint)System.Math.Pow((double)lhs.z, (double)rhs), (uint)System.Math.Pow((double)lhs.w, (double)rhs));
        
        /// Returns a uint4 from component-wise application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint4 Pow(uint lhs, uint4 rhs) => uint4((uint)System.Math.Pow((double)lhs, (double)rhs.x), (uint)System.Math.Pow((double)lhs, (double)rhs.y), (uint)System.Math.Pow((double)lhs, (double)rhs.z), (uint)System.Math.Pow((double)lhs, (double)rhs.w));
        
        /// Returns a uint from the application of Pow ((uint)System.Math.Pow((double)lhs, (double)rhs)).
        public static uint4 Pow(uint lhs, uint rhs) => uint4((uint)System.Math.Pow((double)lhs, (double)rhs));
        
        /// Returns a uint4 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint4 Log(uint4 lhs, uint4 rhs) => uint4((uint)System.Math.Log((double)lhs.x, (double)rhs.x), (uint)System.Math.Log((double)lhs.y, (double)rhs.y), (uint)System.Math.Log((double)lhs.z, (double)rhs.z), (uint)System.Math.Log((double)lhs.w, (double)rhs.w));
        
        /// Returns a uint4 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint4 Log(uint4 lhs, uint rhs) => uint4((uint)System.Math.Log((double)lhs.x, (double)rhs), (uint)System.Math.Log((double)lhs.y, (double)rhs), (uint)System.Math.Log((double)lhs.z, (double)rhs), (uint)System.Math.Log((double)lhs.w, (double)rhs));
        
        /// Returns a uint4 from component-wise application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint4 Log(uint lhs, uint4 rhs) => uint4((uint)System.Math.Log((double)lhs, (double)rhs.x), (uint)System.Math.Log((double)lhs, (double)rhs.y), (uint)System.Math.Log((double)lhs, (double)rhs.z), (uint)System.Math.Log((double)lhs, (double)rhs.w));
        
        /// Returns a uint from the application of Log ((uint)System.Math.Log((double)lhs, (double)rhs)).
        public static uint4 Log(uint lhs, uint rhs) => uint4((uint)System.Math.Log((double)lhs, (double)rhs));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint4 v, uint4 min, uint4 max) => uint4(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y), System.Math.Min(System.Math.Max(v.z, min.z), max.z), System.Math.Min(System.Math.Max(v.w, min.w), max.w));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint4 v, uint4 min, uint max) => uint4(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max), System.Math.Min(System.Math.Max(v.z, min.z), max), System.Math.Min(System.Math.Max(v.w, min.w), max));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint4 v, uint min, uint4 max) => uint4(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y), System.Math.Min(System.Math.Max(v.z, min), max.z), System.Math.Min(System.Math.Max(v.w, min), max.w));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint4 v, uint min, uint max) => uint4(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max), System.Math.Min(System.Math.Max(v.z, min), max), System.Math.Min(System.Math.Max(v.w, min), max));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint v, uint4 min, uint4 max) => uint4(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y), System.Math.Min(System.Math.Max(v, min.z), max.z), System.Math.Min(System.Math.Max(v, min.w), max.w));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint v, uint4 min, uint max) => uint4(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max), System.Math.Min(System.Math.Max(v, min.z), max), System.Math.Min(System.Math.Max(v, min.w), max));
        
        /// Returns a uint4 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint v, uint min, uint4 max) => uint4(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y), System.Math.Min(System.Math.Max(v, min), max.z), System.Math.Min(System.Math.Max(v, min), max.w));
        
        /// Returns a uint from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static uint4 Clamp(uint v, uint min, uint max) => uint4(System.Math.Min(System.Math.Max(v, min), max));
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint4 min, uint4 max, uint4 a) => uint4(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint4 min, uint4 max, uint a) => uint4(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint4 min, uint max, uint4 a) => uint4(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint4 min, uint max, uint a) => uint4(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint min, uint4 max, uint4 a) => uint4(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint min, uint4 max, uint a) => uint4(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a uint4 from component-wise application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint min, uint max, uint4 a) => uint4(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a uint from the application of Mix (min * (1-a) + max * a).
        public static uint4 Mix(uint min, uint max, uint a) => uint4(min * (1-a) + max * a);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint4 min, uint4 max, uint4 a) => uint4(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint4 min, uint4 max, uint a) => uint4(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint4 min, uint max, uint4 a) => uint4(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint4 min, uint max, uint a) => uint4(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint min, uint4 max, uint4 a) => uint4(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint min, uint4 max, uint a) => uint4(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a uint4 from component-wise application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint min, uint max, uint4 a) => uint4(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a uint from the application of Lerp (min * (1-a) + max * a).
        public static uint4 Lerp(uint min, uint max, uint a) => uint4(min * (1-a) + max * a);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint4 a, uint4 b, uint4 c) => uint4(a.x * b.x + c.x, a.y * b.y + c.y, a.z * b.z + c.z, a.w * b.w + c.w);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint4 a, uint4 b, uint c) => uint4(a.x * b.x + c, a.y * b.y + c, a.z * b.z + c, a.w * b.w + c);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint4 a, uint b, uint4 c) => uint4(a.x * b + c.x, a.y * b + c.y, a.z * b + c.z, a.w * b + c.w);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint4 a, uint b, uint c) => uint4(a.x * b + c, a.y * b + c, a.z * b + c, a.w * b + c);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint a, uint4 b, uint4 c) => uint4(a * b.x + c.x, a * b.y + c.y, a * b.z + c.z, a * b.w + c.w);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint a, uint4 b, uint c) => uint4(a * b.x + c, a * b.y + c, a * b.z + c, a * b.w + c);
        
        /// Returns a uint4 from component-wise application of Fma (a * b + c).
        public static uint4 Fma(uint a, uint b, uint4 c) => uint4(a * b + c.x, a * b + c.y, a * b + c.z, a * b + c.w);
        
        /// Returns a uint from the application of Fma (a * b + c).
        public static uint4 Fma(uint a, uint b, uint c) => uint4(a * b + c);
        
        /// Returns a uint4 from component-wise application of Add (lhs + rhs).
        public static uint4 Add(uint4 lhs, uint4 rhs) => uint4(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a uint4 from component-wise application of Add (lhs + rhs).
        public static uint4 Add(uint4 lhs, uint rhs) => uint4(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a uint4 from component-wise application of Add (lhs + rhs).
        public static uint4 Add(uint lhs, uint4 rhs) => uint4(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a uint from the application of Add (lhs + rhs).
        public static uint4 Add(uint lhs, uint rhs) => uint4(lhs + rhs);
        
        /// Returns a uint4 from component-wise application of Sub (lhs - rhs).
        public static uint4 Sub(uint4 lhs, uint4 rhs) => uint4(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a uint4 from component-wise application of Sub (lhs - rhs).
        public static uint4 Sub(uint4 lhs, uint rhs) => uint4(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a uint4 from component-wise application of Sub (lhs - rhs).
        public static uint4 Sub(uint lhs, uint4 rhs) => uint4(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a uint from the application of Sub (lhs - rhs).
        public static uint4 Sub(uint lhs, uint rhs) => uint4(lhs - rhs);
        
        /// Returns a uint4 from component-wise application of Mul (lhs * rhs).
        public static uint4 Mul(uint4 lhs, uint4 rhs) => uint4(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z, lhs.w * rhs.w);
        
        /// Returns a uint4 from component-wise application of Mul (lhs * rhs).
        public static uint4 Mul(uint4 lhs, uint rhs) => uint4(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a uint4 from component-wise application of Mul (lhs * rhs).
        public static uint4 Mul(uint lhs, uint4 rhs) => uint4(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a uint from the application of Mul (lhs * rhs).
        public static uint4 Mul(uint lhs, uint rhs) => uint4(lhs * rhs);
        
        /// Returns a uint4 from component-wise application of Div (lhs / rhs).
        public static uint4 Div(uint4 lhs, uint4 rhs) => uint4(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z, lhs.w / rhs.w);
        
        /// Returns a uint4 from component-wise application of Div (lhs / rhs).
        public static uint4 Div(uint4 lhs, uint rhs) => uint4(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);
        
        /// Returns a uint4 from component-wise application of Div (lhs / rhs).
        public static uint4 Div(uint lhs, uint4 rhs) => uint4(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z, lhs / rhs.w);
        
        /// Returns a uint from the application of Div (lhs / rhs).
        public static uint4 Div(uint lhs, uint rhs) => uint4(lhs / rhs);
        
        /// Returns a uint4 from component-wise application of Xor (lhs ^ rhs).
        public static uint4 Xor(uint4 lhs, uint4 rhs) => uint4(lhs.x ^ rhs.x, lhs.y ^ rhs.y, lhs.z ^ rhs.z, lhs.w ^ rhs.w);
        
        /// Returns a uint4 from component-wise application of Xor (lhs ^ rhs).
        public static uint4 Xor(uint4 lhs, uint rhs) => uint4(lhs.x ^ rhs, lhs.y ^ rhs, lhs.z ^ rhs, lhs.w ^ rhs);
        
        /// Returns a uint4 from component-wise application of Xor (lhs ^ rhs).
        public static uint4 Xor(uint lhs, uint4 rhs) => uint4(lhs ^ rhs.x, lhs ^ rhs.y, lhs ^ rhs.z, lhs ^ rhs.w);
        
        /// Returns a uint from the application of Xor (lhs ^ rhs).
        public static uint4 Xor(uint lhs, uint rhs) => uint4(lhs ^ rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint4 BitwiseOr(uint4 lhs, uint4 rhs) => uint4(lhs.x | rhs.x, lhs.y | rhs.y, lhs.z | rhs.z, lhs.w | rhs.w);
        
        /// Returns a uint4 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint4 BitwiseOr(uint4 lhs, uint rhs) => uint4(lhs.x | rhs, lhs.y | rhs, lhs.z | rhs, lhs.w | rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseOr (lhs | rhs).
        public static uint4 BitwiseOr(uint lhs, uint4 rhs) => uint4(lhs | rhs.x, lhs | rhs.y, lhs | rhs.z, lhs | rhs.w);
        
        /// Returns a uint from the application of BitwiseOr (lhs | rhs).
        public static uint4 BitwiseOr(uint lhs, uint rhs) => uint4(lhs | rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint4 BitwiseAnd(uint4 lhs, uint4 rhs) => uint4(lhs.x & rhs.x, lhs.y & rhs.y, lhs.z & rhs.z, lhs.w & rhs.w);
        
        /// Returns a uint4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint4 BitwiseAnd(uint4 lhs, uint rhs) => uint4(lhs.x & rhs, lhs.y & rhs, lhs.z & rhs, lhs.w & rhs);
        
        /// Returns a uint4 from component-wise application of BitwiseAnd (lhs &amp; rhs).
        public static uint4 BitwiseAnd(uint lhs, uint4 rhs) => uint4(lhs & rhs.x, lhs & rhs.y, lhs & rhs.z, lhs & rhs.w);
        
        /// Returns a uint from the application of BitwiseAnd (lhs &amp; rhs).
        public static uint4 BitwiseAnd(uint lhs, uint rhs) => uint4(lhs & rhs);
        
        /// Returns a uint4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint4 LeftShift(uint4 lhs, int4 rhs) => uint4(lhs.x << rhs.x, lhs.y << rhs.y, lhs.z << rhs.z, lhs.w << rhs.w);
        
        /// Returns a uint4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint4 LeftShift(uint4 lhs, int rhs) => uint4(lhs.x << rhs, lhs.y << rhs, lhs.z << rhs, lhs.w << rhs);
        
        /// Returns a uint4 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
        public static uint4 LeftShift(uint lhs, int4 rhs) => uint4(lhs << rhs.x, lhs << rhs.y, lhs << rhs.z, lhs << rhs.w);
        
        /// Returns a uint from the application of LeftShift (lhs &lt;&lt; rhs).
        public static uint4 LeftShift(uint lhs, int rhs) => uint4(lhs << rhs);
        
        /// Returns a uint4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint4 RightShift(uint4 lhs, int4 rhs) => uint4(lhs.x >> rhs.x, lhs.y >> rhs.y, lhs.z >> rhs.z, lhs.w >> rhs.w);
        
        /// Returns a uint4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint4 RightShift(uint4 lhs, int rhs) => uint4(lhs.x >> rhs, lhs.y >> rhs, lhs.z >> rhs, lhs.w >> rhs);
        
        /// Returns a uint4 from component-wise application of RightShift (lhs &gt;&gt; rhs).
        public static uint4 RightShift(uint lhs, int4 rhs) => uint4(lhs >> rhs.x, lhs >> rhs.y, lhs >> rhs.z, lhs >> rhs.w);
        
        /// Returns a uint from the application of RightShift (lhs &gt;&gt; rhs).
        public static uint4 RightShift(uint lhs, int rhs) => uint4(lhs >> rhs);
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static uint4 Random(Random random, uint4 maxValue) => uint4((uint)random.Next((int)maxValue.x), (uint)random.Next((int)maxValue.y), (uint)random.Next((int)maxValue.z), (uint)random.Next((int)maxValue.w));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between 0 (inclusive) and maxValue (exclusive). (A maxValue of 0 is allowed and returns 0.)
        public static uint4 Random(Random random, uint maxValue) => uint4((uint)random.Next((int)maxValue));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 Random(Random random, uint4 minValue, uint4 maxValue) => uint4((uint)random.Next((int)minValue.x, (int)maxValue.x), (uint)random.Next((int)minValue.y, (int)maxValue.y), (uint)random.Next((int)minValue.z, (int)maxValue.z), (uint)random.Next((int)minValue.w, (int)maxValue.w));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 Random(Random random, uint4 minValue, uint maxValue) => uint4((uint)random.Next((int)minValue.x, (int)maxValue), (uint)random.Next((int)minValue.y, (int)maxValue), (uint)random.Next((int)minValue.z, (int)maxValue), (uint)random.Next((int)minValue.w, (int)maxValue));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 Random(Random random, uint minValue, uint4 maxValue) => uint4((uint)random.Next((int)minValue, (int)maxValue.x), (uint)random.Next((int)minValue, (int)maxValue.y), (uint)random.Next((int)minValue, (int)maxValue.z), (uint)random.Next((int)minValue, (int)maxValue.w));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 Random(Random random, uint minValue, uint maxValue) => uint4((uint)random.Next((int)minValue, (int)maxValue));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 RandomUniform(Random random, uint4 minValue, uint4 maxValue) => uint4((uint)random.Next((int)minValue.x, (int)maxValue.x), (uint)random.Next((int)minValue.y, (int)maxValue.y), (uint)random.Next((int)minValue.z, (int)maxValue.z), (uint)random.Next((int)minValue.w, (int)maxValue.w));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 RandomUniform(Random random, uint4 minValue, uint maxValue) => uint4((uint)random.Next((int)minValue.x, (int)maxValue), (uint)random.Next((int)minValue.y, (int)maxValue), (uint)random.Next((int)minValue.z, (int)maxValue), (uint)random.Next((int)minValue.w, (int)maxValue));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 RandomUniform(Random random, uint minValue, uint4 maxValue) => uint4((uint)random.Next((int)minValue, (int)maxValue.x), (uint)random.Next((int)minValue, (int)maxValue.y), (uint)random.Next((int)minValue, (int)maxValue.z), (uint)random.Next((int)minValue, (int)maxValue.w));
        
        /// Returns a uint4 with independent and identically distributed uniform integer values between minValue (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values are allowed.)
        public static uint4 RandomUniform(Random random, uint minValue, uint maxValue) => uint4((uint)random.Next((int)minValue, (int)maxValue));

        #endregion


        #region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(uint4 lhs, uint4 rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(uint4 lhs, uint rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(uint lhs, uint4 rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(uint4 lhs, uint4 rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(uint4 lhs, uint rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(uint lhs, uint4 rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(uint4 lhs, uint4 rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(uint4 lhs, uint rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(uint lhs, uint4 rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(uint4 lhs, uint4 rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(uint4 lhs, uint rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(uint lhs, uint4 rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a uint4 from component-wise application of operator+ (lhs + rhs).
        public static uint4 operator+(uint4 lhs, uint4 rhs) => uint4(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a uint4 from component-wise application of operator+ (lhs + rhs).
        public static uint4 operator+(uint4 lhs, uint rhs) => uint4(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a uint4 from component-wise application of operator+ (lhs + rhs).
        public static uint4 operator+(uint lhs, uint4 rhs) => uint4(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a uint4 from component-wise application of operator- (lhs - rhs).
        public static uint4 operator-(uint4 lhs, uint4 rhs) => uint4(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a uint4 from component-wise application of operator- (lhs - rhs).
        public static uint4 operator-(uint4 lhs, uint rhs) => uint4(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a uint4 from component-wise application of operator- (lhs - rhs).
        public static uint4 operator-(uint lhs, uint4 rhs) => uint4(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a uint4 from component-wise application of operator* (lhs * rhs).
        public static uint4 operator*(uint4 lhs, uint4 rhs) => uint4(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z, lhs.w * rhs.w);
        
        /// Returns a uint4 from component-wise application of operator* (lhs * rhs).
        public static uint4 operator*(uint4 lhs, uint rhs) => uint4(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a uint4 from component-wise application of operator* (lhs * rhs).
        public static uint4 operator*(uint lhs, uint4 rhs) => uint4(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a uint4 from component-wise application of operator/ (lhs / rhs).
        public static uint4 operator/(uint4 lhs, uint4 rhs) => uint4(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z, lhs.w / rhs.w);
        
        /// Returns a uint4 from component-wise application of operator/ (lhs / rhs).
        public static uint4 operator/(uint4 lhs, uint rhs) => uint4(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);
        
        /// Returns a uint4 from component-wise application of operator/ (lhs / rhs).
        public static uint4 operator/(uint lhs, uint4 rhs) => uint4(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z, lhs / rhs.w);
        
        /// Returns a uint4 from component-wise application of operator~ (~v).
        public static uint4 operator~(uint4 v) => uint4(~v.x, ~v.y, ~v.z, ~v.w);
        
        /// Returns a uint4 from component-wise application of operator^ (lhs ^ rhs).
        public static uint4 operator^(uint4 lhs, uint4 rhs) => uint4(lhs.x ^ rhs.x, lhs.y ^ rhs.y, lhs.z ^ rhs.z, lhs.w ^ rhs.w);
        
        /// Returns a uint4 from component-wise application of operator^ (lhs ^ rhs).
        public static uint4 operator^(uint4 lhs, uint rhs) => uint4(lhs.x ^ rhs, lhs.y ^ rhs, lhs.z ^ rhs, lhs.w ^ rhs);
        
        /// Returns a uint4 from component-wise application of operator^ (lhs ^ rhs).
        public static uint4 operator^(uint lhs, uint4 rhs) => uint4(lhs ^ rhs.x, lhs ^ rhs.y, lhs ^ rhs.z, lhs ^ rhs.w);
        
        /// Returns a uint4 from component-wise application of operator| (lhs | rhs).
        public static uint4 operator|(uint4 lhs, uint4 rhs) => uint4(lhs.x | rhs.x, lhs.y | rhs.y, lhs.z | rhs.z, lhs.w | rhs.w);
        
        /// Returns a uint4 from component-wise application of operator| (lhs | rhs).
        public static uint4 operator|(uint4 lhs, uint rhs) => uint4(lhs.x | rhs, lhs.y | rhs, lhs.z | rhs, lhs.w | rhs);
        
        /// Returns a uint4 from component-wise application of operator| (lhs | rhs).
        public static uint4 operator|(uint lhs, uint4 rhs) => uint4(lhs | rhs.x, lhs | rhs.y, lhs | rhs.z, lhs | rhs.w);
        
        /// Returns a uint4 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint4 operator&(uint4 lhs, uint4 rhs) => uint4(lhs.x & rhs.x, lhs.y & rhs.y, lhs.z & rhs.z, lhs.w & rhs.w);
        
        /// Returns a uint4 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint4 operator&(uint4 lhs, uint rhs) => uint4(lhs.x & rhs, lhs.y & rhs, lhs.z & rhs, lhs.w & rhs);
        
        /// Returns a uint4 from component-wise application of operator&amp; (lhs &amp; rhs).
        public static uint4 operator&(uint lhs, uint4 rhs) => uint4(lhs & rhs.x, lhs & rhs.y, lhs & rhs.z, lhs & rhs.w);
        
        /// Returns a uint4 from component-wise application of operator&lt;&lt; (lhs &lt;&lt; rhs).
        public static uint4 operator<<(uint4 lhs, int rhs) => uint4(lhs.x << rhs, lhs.y << rhs, lhs.z << rhs, lhs.w << rhs);
        
        /// Returns a uint4 from component-wise application of operator&gt;&gt; (lhs &gt;&gt; rhs).
        public static uint4 operator>>(uint4 lhs, int rhs) => uint4(lhs.x >> rhs, lhs.y >> rhs, lhs.z >> rhs, lhs.w >> rhs);

        #endregion

    }
}
