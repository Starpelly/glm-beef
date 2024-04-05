using System;
namespace glm
{
    
    /// A vector of type float with 3 components.
    [Union]
    public struct float3 : IHashable
    {

        #region Fields
        
        /// component data
        public float[3] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_float3 swizzle;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(float x, float y, float z)
        {
            values = .(x,y,z);
        }
        
        /// all-same-value constructor
        public this(float v)
        {
            values = .(v,v,v);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(float2 v)
        {
            values = .(v.x,v.y,0f);
        }
        
        /// from-vector-and-value constructor
        public this(float2 v, float z)
        {
            values = .(v.x,v.y,z);
        }
        
        /// from-vector constructor
        public this(float3 v)
        {
            values = .(v.x,v.y,v.z);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(float4 v)
        {
            values = .(v.x,v.y,v.z);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(float[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? 0f : v[0],(c < 1) ? 0f : v[1],(c < 2) ? 0f : v[2]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(float[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? 0f : v[0 + startIndex],(c + startIndex < 1) ? 0f : v[1 + startIndex],(c + startIndex < 2) ? 0f : v[2 + startIndex]);
        }

        #endregion


        #region Implicit Operators
        
        /// Implicitly converts this to a double3.
        public static implicit operator double3(float3 v) =>  double3((double)v.x, (double)v.y, (double)v.z);

        #endregion


        #region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(float3 v) =>  int2((int)v.x, (int)v.y);
        
        /// Explicitly converts this to a int3.
        public static explicit operator int3(float3 v) =>  int3((int)v.x, (int)v.y, (int)v.z);
        
        /// Explicitly converts this to a int4. (Higher components are zeroed)
        public static explicit operator int4(float3 v) =>  int4((int)v.x, (int)v.y, (int)v.z, 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(float3 v) =>  uint2((uint)v.x, (uint)v.y);
        
        /// Explicitly converts this to a uint3.
        public static explicit operator uint3(float3 v) =>  uint3((uint)v.x, (uint)v.y, (uint)v.z);
        
        /// Explicitly converts this to a uint4. (Higher components are zeroed)
        public static explicit operator uint4(float3 v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(float3 v) =>  float2((float)v.x, (float)v.y);
        
        /// Explicitly converts this to a float4. (Higher components are zeroed)
        public static explicit operator float4(float3 v) =>  float4((float)v.x, (float)v.y, (float)v.z, 0f);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(float3 v) =>  double2((double)v.x, (double)v.y);
        
        /// Explicitly converts this to a double4. (Higher components are zeroed)
        public static explicit operator double4(float3 v) =>  double4((double)v.x, (double)v.y, (double)v.z, 0.0);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(float3 v) =>  long2((long)v.x, (long)v.y);
        
        /// Explicitly converts this to a long3.
        public static explicit operator long3(float3 v) =>  long3((long)v.x, (long)v.y, (long)v.z);
        
        /// Explicitly converts this to a long4. (Higher components are zeroed)
        public static explicit operator long4(float3 v) =>  long4((long)v.x, (long)v.y, (long)v.z, 0);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(float3 v) =>  bool2(v.x != 0f, v.y != 0f);
        
        /// Explicitly converts this to a bool3.
        public static explicit operator bool3(float3 v) =>  bool3(v.x != 0f, v.y != 0f, v.z != 0f);
        
        /// Explicitly converts this to a bool4. (Higher components are zeroed)
        public static explicit operator bool4(float3 v) =>  bool4(v.x != 0f, v.y != 0f, v.z != 0f, false);

        #endregion


        #region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public float this[int index]
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

        #endregion


        #region Properties
        
        /// x-component
        public float x
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
        public float y
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
        public float z
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
        public float2 xy
        {
            [Inline]get
            {
                return  float2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float2 xz
        {
            [Inline]get
            {
                return  float2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float2 yz
        {
            [Inline]get
            {
                return  float2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float3 xyz
        {
            [Inline]get
            {
                return  float3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float2 rg
        {
            [Inline]get
            {
                return  float2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float2 rb
        {
            [Inline]get
            {
                return  float2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float2 gb
        {
            [Inline]get
            {
                return  float2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public float3 rgb
        {
            [Inline]get
            {
                return  float3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public float r
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
        public float g
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
        public float b
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
        public float MinElement => System.Math.Min(System.Math.Min(x, y), z);
        
        /// Returns the maximal component of this vector.
        public float MaxElement => System.Math.Max(System.Math.Max(x, y), z);
        
        /// Returns the euclidean length of this vector.
        public float Length => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the squared euclidean length of this vector.
        public float LengthSqr => ((x*x + y*y) + z*z);
        
        /// Returns the sum of all components.
        public float Sum => ((x + y) + z);
        
        /// Returns the euclidean norm of this vector.
        public float Norm => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the one-norm of this vector.
        public float Norm1 => ((System.Math.Abs(x) + System.Math.Abs(y)) + System.Math.Abs(z));
        
        /// Returns the two-norm (euclidean length) of this vector.
        public float Norm2 => (float)System.Math.Sqrt(((x*x + y*y) + z*z));
        
        /// Returns the max-norm of this vector.
        public float NormMax => System.Math.Max(System.Math.Max(System.Math.Abs(x), System.Math.Abs(y)), System.Math.Abs(z));
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        public float3 Normalized => this / (float)Length;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        public float3 NormalizedSafe => this == Zero ? Zero : this / (float)Length;

        #endregion


        #region Static Properties
        
        /// Predefined all-zero vector
        readonly public static float3 Zero  =  float3(0f, 0f, 0f);
        
        /// Predefined all-ones vector
        readonly public static float3 Ones  =  float3(1f, 1f, 1f);
        
        /// Predefined unit-X vector
        readonly public static float3 UnitX  =  float3(1f, 0f, 0f);
        
        /// Predefined unit-X vector
        readonly public static float3 NegativeUnitX  =  float3(-1f, 0f, 0f);
        
        /// Predefined unit-Y vector
        readonly public static float3 UnitY  =  float3(0f, 1f, 0f);
        
        /// Predefined unit-Y vector
        readonly public static float3 NegativeUnitY  =  float3(0f, -1f, 0f);
        
        /// Predefined unit-Z vector
        readonly public static float3 UnitZ  =  float3(0f, 0f, 1f);
        
        /// Predefined unit-Z vector
        readonly public static float3 NegativeUnitZ  =  float3(0f, 0f, -1f);
        
        /// Predefined all-MaxValue vector
        readonly public static float3 MaxValue  =  float3(float.MaxValue, float.MaxValue, float.MaxValue);
        
        /// Predefined all-MinValue vector
        readonly public static float3 MinValue  =  float3(float.MinValue, float.MinValue, float.MinValue);
        
        /// Predefined all-Epsilon vector
        readonly public static float3 Epsilon  =  float3(float.Epsilon, float.Epsilon, float.Epsilon);
        
        /// Predefined all-NaN vector
        readonly public static float3 NaN  =  float3(float.NaN, float.NaN, float.NaN);
        
        /// Predefined all-NegativeInfinity vector
        readonly public static float3 NegativeInfinity  =  float3(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity);
        
        /// Predefined all-PositiveInfinity vector
        readonly public static float3 PositiveInfinity  =  float3(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity);

        #endregion


        #region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(float3 lhs, float3 rhs) => ((lhs.x == rhs.x && lhs.y == rhs.y) && lhs.z == rhs.z);
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(float3 lhs, float3 rhs) => !((lhs.x == rhs.x && lhs.y == rhs.y) && lhs.z == rhs.z);

        #endregion


        #region Functions
        
        /// Returns an array with all values
        public float[] ToArray() => new .[] ( x, y, z );
        
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
        public double NormP(double p) => System.Math.Pow(((System.Math.Pow((double)System.Math.Abs(x), p) + System.Math.Pow((double)System.Math.Abs(y), p)) + System.Math.Pow((double)System.Math.Abs(z), p)), 1 / p);

        #endregion


        #region Static Functions
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        public static bool ApproxEqual(float3 lhs, float3 rhs, float eps = 0.1f) => Distance(lhs, rhs) <= eps;
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static float3x2 OuterProduct(float2 c, float3 r) =>  float3x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static float2x3 OuterProduct(float3 c, float2 r) =>  float2x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static float3x3 OuterProduct(float3 c, float3 r) =>  float3x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.x * r.z, c.y * r.z, c.z * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static float3x4 OuterProduct(float4 c, float3 r) =>  float3x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.w * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static float4x3 OuterProduct(float3 c, float4 r) =>  float4x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.x * r.z, c.y * r.z, c.z * r.z, c.x * r.w, c.y * r.w, c.z * r.w);
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        public static float Dot(float3 lhs, float3 rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + lhs.z * rhs.z);
        
        /// Returns the euclidean distance between the two vectors.
        public static float Distance(float3 lhs, float3 rhs) => (lhs - rhs).Length;
        
        /// Returns the squared euclidean distance between the two vectors.
        public static float DistanceSqr(float3 lhs, float3 rhs) => (lhs - rhs).LengthSqr;
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        public static float3 Reflect(float3 I, float3 N) => I - 2 * Dot(N, I) * N;
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        public static float3 Refract(float3 I, float3 N, float eta)
        {
            let dNI = Dot(N, I);
            let k = 1 - eta * eta * (1 - dNI * dNI);
            if (k < 0) return Zero;
            return eta * I - (eta * dNI + (float)System.Math.Sqrt(k)) * N;
        }
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        public static float3 FaceForward(float3 N, float3 I, float3 Nref) => Dot(Nref, I) < 0 ? N : -N;
        
        /// Returns the outer product (cross product, vector product) of the two vectors.
        public static float3 Cross(float3 l, float3 r) =>  float3(l.y * r.z - l.z * r.y, l.z * r.x - l.x * r.z, l.x * r.y - l.y * r.x);
        
        /// Returns a float3 with independent and identically distributed uniform values between 0.0 and 1.0.
        public static float3 Random(Random random) =>  float3((float)random.NextDouble(), (float)random.NextDouble(), (float)random.NextDouble());
        
        /// Returns a float3 with independent and identically distributed uniform values between -1.0 and 1.0.
        public static float3 RandomSigned(Random random) =>  float3((float)(random.NextDouble() * 2.0 - 1.0), (float)(random.NextDouble() * 2.0 - 1.0), (float)(random.NextDouble() * 2.0 - 1.0));
        
        /// Returns a float3 with independent and identically distributed values according to a normal distribution (zero mean, unit variance).
        public static float3 RandomNormal(Random random) =>  float3((float)(System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))), (float)(System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))), (float)(System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))));

        #endregion


        #region Component-Wise Static Functions
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(float3 lhs, float3 rhs) => bool3(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(float3 lhs, float rhs) => bool3(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        public static bool3 Equal(float lhs, float3 rhs) => bool3(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool3 Equal(float lhs, float rhs) => bool3(lhs == rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(float3 lhs, float3 rhs) => bool3(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(float3 lhs, float rhs) => bool3(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(float lhs, float3 rhs) => bool3(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool3 NotEqual(float lhs, float rhs) => bool3(lhs != rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(float3 lhs, float3 rhs) => bool3(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(float3 lhs, float rhs) => bool3(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(float lhs, float3 rhs) => bool3(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool3 GreaterThan(float lhs, float rhs) => bool3(lhs > rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(float3 lhs, float3 rhs) => bool3(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(float3 lhs, float rhs) => bool3(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs);
        
        /// Returns a bool3 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(float lhs, float3 rhs) => bool3(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool3 GreaterThanEqual(float lhs, float rhs) => bool3(lhs >= rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(float3 lhs, float3 rhs) => bool3(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(float3 lhs, float rhs) => bool3(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs);
        
        /// Returns a bool3 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(float lhs, float3 rhs) => bool3(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool3 LesserThan(float lhs, float rhs) => bool3(lhs < rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(float3 lhs, float3 rhs) => bool3(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(float3 lhs, float rhs) => bool3(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs);
        
        /// Returns a bool3 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(float lhs, float3 rhs) => bool3(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool3 LesserThanEqual(float lhs, float rhs) => bool3(lhs <= rhs);
        
        /// Returns a bool3 from component-wise application of IsInfinity (v.IsInfinity).
        public static bool3 IsInfinity(float3 v) => bool3(v.x.IsInfinity, v.y.IsInfinity, v.z.IsInfinity);
        
        /// Returns a bool from the application of IsInfinity (v.IsInfinity).
        public static bool3 IsInfinity(float v) => bool3(v.IsInfinity);
        
        /// Returns a bool3 from component-wise application of IsFinite (v.IsFinite).
        public static bool3 IsFinite(float3 v) => bool3(v.x.IsFinite, v.y.IsFinite, v.z.IsFinite);
        
        /// Returns a bool from the application of IsFinite (v.IsFinite).
        public static bool3 IsFinite(float v) => bool3(v.IsFinite);
        
        /// Returns a bool3 from component-wise application of IsNaN (v.IsNaN).
        public static bool3 IsNaN(float3 v) => bool3(v.x.IsNaN, v.y.IsNaN, v.z.IsNaN);
        
        /// Returns a bool from the application of IsNaN (v.IsNaN).
        public static bool3 IsNaN(float v) => bool3(v.IsNaN);
        
        /// Returns a bool3 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool3 IsNegativeInfinity(float3 v) => bool3(v.x.IsNegativeInfinity, v.y.IsNegativeInfinity, v.z.IsNegativeInfinity);
        
        /// Returns a bool from the application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool3 IsNegativeInfinity(float v) => bool3(v.IsNegativeInfinity);
        
        /// Returns a bool3 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool3 IsPositiveInfinity(float3 v) => bool3(v.x.IsPositiveInfinity, v.y.IsPositiveInfinity, v.z.IsPositiveInfinity);
        
        /// Returns a bool from the application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool3 IsPositiveInfinity(float v) => bool3(v.IsPositiveInfinity);
        
        /// Returns a float3 from component-wise application of Abs (System.Math.Abs(v)).
        public static float3 Abs(float3 v) => float3(System.Math.Abs(v.x), System.Math.Abs(v.y), System.Math.Abs(v.z));
        
        /// Returns a float from the application of Abs (System.Math.Abs(v)).
        public static float3 Abs(float v) => float3(System.Math.Abs(v));
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static float3 HermiteInterpolationOrder3(float3 v) => float3((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y, (3 - 2 * v.z) * v.z * v.z);
        
        /// Returns a float from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static float3 HermiteInterpolationOrder3(float v) => float3((3 - 2 * v) * v * v);
        
        /// Returns a float3 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static float3 HermiteInterpolationOrder5(float3 v) => float3(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y, ((6 * v.z - 15) * v.z + 10) * v.z * v.z * v.z);
        
        /// Returns a float from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static float3 HermiteInterpolationOrder5(float v) => float3(((6 * v - 15) * v + 10) * v * v * v);
        
        /// Returns a float3 from component-wise application of Sqr (v * v).
        public static float3 Sqr(float3 v) => float3(v.x * v.x, v.y * v.y, v.z * v.z);
        
        /// Returns a float from the application of Sqr (v * v).
        public static float3 Sqr(float v) => float3(v * v);
        
        /// Returns a float3 from component-wise application of Pow2 (v * v).
        public static float3 Pow2(float3 v) => float3(v.x * v.x, v.y * v.y, v.z * v.z);
        
        /// Returns a float from the application of Pow2 (v * v).
        public static float3 Pow2(float v) => float3(v * v);
        
        /// Returns a float3 from component-wise application of Pow3 (v * v * v).
        public static float3 Pow3(float3 v) => float3(v.x * v.x * v.x, v.y * v.y * v.y, v.z * v.z * v.z);
        
        /// Returns a float from the application of Pow3 (v * v * v).
        public static float3 Pow3(float v) => float3(v * v * v);
        
        /// Returns a float3 from component-wise application of Step (v &gt;= 0f ? 1f : 0f).
        public static float3 Step(float3 v) => float3(v.x >= 0f ? 1f : 0f, v.y >= 0f ? 1f : 0f, v.z >= 0f ? 1f : 0f);
        
        /// Returns a float from the application of Step (v &gt;= 0f ? 1f : 0f).
        public static float3 Step(float v) => float3(v >= 0f ? 1f : 0f);
        
        /// Returns a float3 from component-wise application of Sqrt ((float)System.Math.Sqrt((double)v)).
        public static float3 Sqrt(float3 v) => float3((float)System.Math.Sqrt((double)v.x), (float)System.Math.Sqrt((double)v.y), (float)System.Math.Sqrt((double)v.z));
        
        /// Returns a float from the application of Sqrt ((float)System.Math.Sqrt((double)v)).
        public static float3 Sqrt(float v) => float3((float)System.Math.Sqrt((double)v));
        
        /// Returns a float3 from component-wise application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        public static float3 InverseSqrt(float3 v) => float3((float)(1.0 / System.Math.Sqrt((double)v.x)), (float)(1.0 / System.Math.Sqrt((double)v.y)), (float)(1.0 / System.Math.Sqrt((double)v.z)));
        
        /// Returns a float from the application of InverseSqrt ((float)(1.0 / System.Math.Sqrt((double)v))).
        public static float3 InverseSqrt(float v) => float3((float)(1.0 / System.Math.Sqrt((double)v)));
        
        /// Returns a int3 from component-wise application of Sign (System.Math.Sign(v)).
        public static int3 Sign(float3 v) => int3(System.Math.Sign(v.x), System.Math.Sign(v.y), System.Math.Sign(v.z));
        
        /// Returns a int from the application of Sign (System.Math.Sign(v)).
        public static int3 Sign(float v) => int3(System.Math.Sign(v));
        
        /// Returns a float3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static float3 Max(float3 lhs, float3 rhs) => float3(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y), System.Math.Max(lhs.z, rhs.z));
        
        /// Returns a float3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static float3 Max(float3 lhs, float rhs) => float3(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs), System.Math.Max(lhs.z, rhs));
        
        /// Returns a float3 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static float3 Max(float lhs, float3 rhs) => float3(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y), System.Math.Max(lhs, rhs.z));
        
        /// Returns a float from the application of Max (System.Math.Max(lhs, rhs)).
        public static float3 Max(float lhs, float rhs) => float3(System.Math.Max(lhs, rhs));
        
        /// Returns a float3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static float3 Min(float3 lhs, float3 rhs) => float3(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y), System.Math.Min(lhs.z, rhs.z));
        
        /// Returns a float3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static float3 Min(float3 lhs, float rhs) => float3(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs), System.Math.Min(lhs.z, rhs));
        
        /// Returns a float3 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static float3 Min(float lhs, float3 rhs) => float3(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y), System.Math.Min(lhs, rhs.z));
        
        /// Returns a float from the application of Min (System.Math.Min(lhs, rhs)).
        public static float3 Min(float lhs, float rhs) => float3(System.Math.Min(lhs, rhs));
        
        /// Returns a float3 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        public static float3 Pow(float3 lhs, float3 rhs) => float3((float)System.Math.Pow((double)lhs.x, (double)rhs.x), (float)System.Math.Pow((double)lhs.y, (double)rhs.y), (float)System.Math.Pow((double)lhs.z, (double)rhs.z));
        
        /// Returns a float3 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        public static float3 Pow(float3 lhs, float rhs) => float3((float)System.Math.Pow((double)lhs.x, (double)rhs), (float)System.Math.Pow((double)lhs.y, (double)rhs), (float)System.Math.Pow((double)lhs.z, (double)rhs));
        
        /// Returns a float3 from component-wise application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        public static float3 Pow(float lhs, float3 rhs) => float3((float)System.Math.Pow((double)lhs, (double)rhs.x), (float)System.Math.Pow((double)lhs, (double)rhs.y), (float)System.Math.Pow((double)lhs, (double)rhs.z));
        
        /// Returns a float from the application of Pow ((float)System.Math.Pow((double)lhs, (double)rhs)).
        public static float3 Pow(float lhs, float rhs) => float3((float)System.Math.Pow((double)lhs, (double)rhs));
        
        /// Returns a float3 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        public static float3 Log(float3 lhs, float3 rhs) => float3((float)System.Math.Log((double)lhs.x, (double)rhs.x), (float)System.Math.Log((double)lhs.y, (double)rhs.y), (float)System.Math.Log((double)lhs.z, (double)rhs.z));
        
        /// Returns a float3 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        public static float3 Log(float3 lhs, float rhs) => float3((float)System.Math.Log((double)lhs.x, (double)rhs), (float)System.Math.Log((double)lhs.y, (double)rhs), (float)System.Math.Log((double)lhs.z, (double)rhs));
        
        /// Returns a float3 from component-wise application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        public static float3 Log(float lhs, float3 rhs) => float3((float)System.Math.Log((double)lhs, (double)rhs.x), (float)System.Math.Log((double)lhs, (double)rhs.y), (float)System.Math.Log((double)lhs, (double)rhs.z));
        
        /// Returns a float from the application of Log ((float)System.Math.Log((double)lhs, (double)rhs)).
        public static float3 Log(float lhs, float rhs) => float3((float)System.Math.Log((double)lhs, (double)rhs));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float3 v, float3 min, float3 max) => float3(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y), System.Math.Min(System.Math.Max(v.z, min.z), max.z));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float3 v, float3 min, float max) => float3(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max), System.Math.Min(System.Math.Max(v.z, min.z), max));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float3 v, float min, float3 max) => float3(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y), System.Math.Min(System.Math.Max(v.z, min), max.z));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float3 v, float min, float max) => float3(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max), System.Math.Min(System.Math.Max(v.z, min), max));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float v, float3 min, float3 max) => float3(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y), System.Math.Min(System.Math.Max(v, min.z), max.z));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float v, float3 min, float max) => float3(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max), System.Math.Min(System.Math.Max(v, min.z), max));
        
        /// Returns a float3 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float v, float min, float3 max) => float3(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y), System.Math.Min(System.Math.Max(v, min), max.z));
        
        /// Returns a float from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static float3 Clamp(float v, float min, float max) => float3(System.Math.Min(System.Math.Max(v, min), max));
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float3 min, float3 max, float3 a) => float3(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float3 min, float3 max, float a) => float3(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float3 min, float max, float3 a) => float3(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float3 min, float max, float a) => float3(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float min, float3 max, float3 a) => float3(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float min, float3 max, float a) => float3(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a);
        
        /// Returns a float3 from component-wise application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float min, float max, float3 a) => float3(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z);
        
        /// Returns a float from the application of Mix (min * (1-a) + max * a).
        public static float3 Mix(float min, float max, float a) => float3(min * (1-a) + max * a);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float3 min, float3 max, float3 a) => float3(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float3 min, float3 max, float a) => float3(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float3 min, float max, float3 a) => float3(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float3 min, float max, float a) => float3(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float min, float3 max, float3 a) => float3(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float min, float3 max, float a) => float3(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a);
        
        /// Returns a float3 from component-wise application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float min, float max, float3 a) => float3(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z);
        
        /// Returns a float from the application of Lerp (min * (1-a) + max * a).
        public static float3 Lerp(float min, float max, float a) => float3(min * (1-a) + max * a);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float3 a, float3 b, float3 c) => float3(a.x * b.x + c.x, a.y * b.y + c.y, a.z * b.z + c.z);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float3 a, float3 b, float c) => float3(a.x * b.x + c, a.y * b.y + c, a.z * b.z + c);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float3 a, float b, float3 c) => float3(a.x * b + c.x, a.y * b + c.y, a.z * b + c.z);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float3 a, float b, float c) => float3(a.x * b + c, a.y * b + c, a.z * b + c);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float a, float3 b, float3 c) => float3(a * b.x + c.x, a * b.y + c.y, a * b.z + c.z);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float a, float3 b, float c) => float3(a * b.x + c, a * b.y + c, a * b.z + c);
        
        /// Returns a float3 from component-wise application of Fma (a * b + c).
        public static float3 Fma(float a, float b, float3 c) => float3(a * b + c.x, a * b + c.y, a * b + c.z);
        
        /// Returns a float from the application of Fma (a * b + c).
        public static float3 Fma(float a, float b, float c) => float3(a * b + c);
        
        /// Returns a float3 from component-wise application of Add (lhs + rhs).
        public static float3 Add(float3 lhs, float3 rhs) => float3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z);
        
        /// Returns a float3 from component-wise application of Add (lhs + rhs).
        public static float3 Add(float3 lhs, float rhs) => float3(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs);
        
        /// Returns a float3 from component-wise application of Add (lhs + rhs).
        public static float3 Add(float lhs, float3 rhs) => float3(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z);
        
        /// Returns a float from the application of Add (lhs + rhs).
        public static float3 Add(float lhs, float rhs) => float3(lhs + rhs);
        
        /// Returns a float3 from component-wise application of Sub (lhs - rhs).
        public static float3 Sub(float3 lhs, float3 rhs) => float3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z);
        
        /// Returns a float3 from component-wise application of Sub (lhs - rhs).
        public static float3 Sub(float3 lhs, float rhs) => float3(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs);
        
        /// Returns a float3 from component-wise application of Sub (lhs - rhs).
        public static float3 Sub(float lhs, float3 rhs) => float3(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z);
        
        /// Returns a float from the application of Sub (lhs - rhs).
        public static float3 Sub(float lhs, float rhs) => float3(lhs - rhs);
        
        /// Returns a float3 from component-wise application of Mul (lhs * rhs).
        public static float3 Mul(float3 lhs, float3 rhs) => float3(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z);
        
        /// Returns a float3 from component-wise application of Mul (lhs * rhs).
        public static float3 Mul(float3 lhs, float rhs) => float3(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs);
        
        /// Returns a float3 from component-wise application of Mul (lhs * rhs).
        public static float3 Mul(float lhs, float3 rhs) => float3(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z);
        
        /// Returns a float from the application of Mul (lhs * rhs).
        public static float3 Mul(float lhs, float rhs) => float3(lhs * rhs);
        
        /// Returns a float3 from component-wise application of Div (lhs / rhs).
        public static float3 Div(float3 lhs, float3 rhs) => float3(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z);
        
        /// Returns a float3 from component-wise application of Div (lhs / rhs).
        public static float3 Div(float3 lhs, float rhs) => float3(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs);
        
        /// Returns a float3 from component-wise application of Div (lhs / rhs).
        public static float3 Div(float lhs, float3 rhs) => float3(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z);
        
        /// Returns a float from the application of Div (lhs / rhs).
        public static float3 Div(float lhs, float rhs) => float3(lhs / rhs);
        
        /// Returns a float3 from component-wise application of Modulo (lhs % rhs).
        public static float3 Modulo(float3 lhs, float3 rhs) => float3(lhs.x % rhs.x, lhs.y % rhs.y, lhs.z % rhs.z);
        
        /// Returns a float3 from component-wise application of Modulo (lhs % rhs).
        public static float3 Modulo(float3 lhs, float rhs) => float3(lhs.x % rhs, lhs.y % rhs, lhs.z % rhs);
        
        /// Returns a float3 from component-wise application of Modulo (lhs % rhs).
        public static float3 Modulo(float lhs, float3 rhs) => float3(lhs % rhs.x, lhs % rhs.y, lhs % rhs.z);
        
        /// Returns a float from the application of Modulo (lhs % rhs).
        public static float3 Modulo(float lhs, float rhs) => float3(lhs % rhs);
        
        /// Returns a float3 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        public static float3 Degrees(float3 v) => float3((float)(v.x * 57.295779513082320876798154814105170332405472466564321f), (float)(v.y * 57.295779513082320876798154814105170332405472466564321f), (float)(v.z * 57.295779513082320876798154814105170332405472466564321f));
        
        /// Returns a float from the application of Degrees (Radians-To-Degrees Conversion).
        public static float3 Degrees(float v) => float3((float)(v * 57.295779513082320876798154814105170332405472466564321f));
        
        /// Returns a float3 from component-wise application of Radians (Degrees-To-Radians Conversion).
        public static float3 Radians(float3 v) => float3((float)(v.x * 0.0174532925199432957692369076848861271344287188854172f), (float)(v.y * 0.0174532925199432957692369076848861271344287188854172f), (float)(v.z * 0.0174532925199432957692369076848861271344287188854172f));
        
        /// Returns a float from the application of Radians (Degrees-To-Radians Conversion).
        public static float3 Radians(float v) => float3((float)(v * 0.0174532925199432957692369076848861271344287188854172f));
        
        /// Returns a float3 from component-wise application of Acos (System.Math.Acos(v)).
        public static float3 Acos(float3 v) => float3(System.Math.Acos(v.x), System.Math.Acos(v.y), System.Math.Acos(v.z));
        
        /// Returns a float from the application of Acos (System.Math.Acos(v)).
        public static float3 Acos(float v) => float3(System.Math.Acos(v));
        
        /// Returns a float3 from component-wise application of Asin (System.Math.Asin(v)).
        public static float3 Asin(float3 v) => float3(System.Math.Asin(v.x), System.Math.Asin(v.y), System.Math.Asin(v.z));
        
        /// Returns a float from the application of Asin (System.Math.Asin(v)).
        public static float3 Asin(float v) => float3(System.Math.Asin(v));
        
        /// Returns a float3 from component-wise application of Atan (System.Math.Atan(v)).
        public static float3 Atan(float3 v) => float3(System.Math.Atan(v.x), System.Math.Atan(v.y), System.Math.Atan(v.z));
        
        /// Returns a float from the application of Atan (System.Math.Atan(v)).
        public static float3 Atan(float v) => float3(System.Math.Atan(v));
        
        /// Returns a float3 from component-wise application of Cos (System.Math.Cos(v)).
        public static float3 Cos(float3 v) => float3(System.Math.Cos(v.x), System.Math.Cos(v.y), System.Math.Cos(v.z));
        
        /// Returns a float from the application of Cos (System.Math.Cos(v)).
        public static float3 Cos(float v) => float3(System.Math.Cos(v));
        
        /// Returns a float3 from component-wise application of Cosh (System.Math.Cosh(v)).
        public static float3 Cosh(float3 v) => float3(System.Math.Cosh(v.x), System.Math.Cosh(v.y), System.Math.Cosh(v.z));
        
        /// Returns a float from the application of Cosh (System.Math.Cosh(v)).
        public static float3 Cosh(float v) => float3(System.Math.Cosh(v));
        
        /// Returns a float3 from component-wise application of Exp (System.Math.Exp(v)).
        public static float3 Exp(float3 v) => float3(System.Math.Exp(v.x), System.Math.Exp(v.y), System.Math.Exp(v.z));
        
        /// Returns a float from the application of Exp (System.Math.Exp(v)).
        public static float3 Exp(float v) => float3(System.Math.Exp(v));
        
        /// Returns a float3 from component-wise application of Log (System.Math.Log(v)).
        public static float3 Log(float3 v) => float3(System.Math.Log(v.x), System.Math.Log(v.y), System.Math.Log(v.z));
        
        /// Returns a float from the application of Log (System.Math.Log(v)).
        public static float3 Log(float v) => float3(System.Math.Log(v));
        
        /// Returns a float3 from component-wise application of Log2 (System.Math.Log(v, 2)).
        public static float3 Log2(float3 v) => float3(System.Math.Log(v.x, 2), System.Math.Log(v.y, 2), System.Math.Log(v.z, 2));
        
        /// Returns a float from the application of Log2 (System.Math.Log(v, 2)).
        public static float3 Log2(float v) => float3(System.Math.Log(v, 2));
        
        /// Returns a float3 from component-wise application of Log10 (System.Math.Log10(v)).
        public static float3 Log10(float3 v) => float3(System.Math.Log10(v.x), System.Math.Log10(v.y), System.Math.Log10(v.z));
        
        /// Returns a float from the application of Log10 (System.Math.Log10(v)).
        public static float3 Log10(float v) => float3(System.Math.Log10(v));
        
        /// Returns a float3 from component-wise application of Floor (System.Math.Floor(v)).
        public static float3 Floor(float3 v) => float3(System.Math.Floor(v.x), System.Math.Floor(v.y), System.Math.Floor(v.z));
        
        /// Returns a float from the application of Floor (System.Math.Floor(v)).
        public static float3 Floor(float v) => float3(System.Math.Floor(v));
        
        /// Returns a float3 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        public static float3 Ceiling(float3 v) => float3(System.Math.Ceiling(v.x), System.Math.Ceiling(v.y), System.Math.Ceiling(v.z));
        
        /// Returns a float from the application of Ceiling (System.Math.Ceiling(v)).
        public static float3 Ceiling(float v) => float3(System.Math.Ceiling(v));
        
        /// Returns a float3 from component-wise application of Round (System.Math.Round(v)).
        public static float3 Round(float3 v) => float3(System.Math.Round(v.x), System.Math.Round(v.y), System.Math.Round(v.z));
        
        /// Returns a float from the application of Round (System.Math.Round(v)).
        public static float3 Round(float v) => float3(System.Math.Round(v));
        
        /// Returns a float3 from component-wise application of Sin (System.Math.Sin(v)).
        public static float3 Sin(float3 v) => float3(System.Math.Sin(v.x), System.Math.Sin(v.y), System.Math.Sin(v.z));
        
        /// Returns a float from the application of Sin (System.Math.Sin(v)).
        public static float3 Sin(float v) => float3(System.Math.Sin(v));
        
        /// Returns a float3 from component-wise application of Sinh (System.Math.Sinh(v)).
        public static float3 Sinh(float3 v) => float3(System.Math.Sinh(v.x), System.Math.Sinh(v.y), System.Math.Sinh(v.z));
        
        /// Returns a float from the application of Sinh (System.Math.Sinh(v)).
        public static float3 Sinh(float v) => float3(System.Math.Sinh(v));
        
        /// Returns a float3 from component-wise application of Tan (System.Math.Tan(v)).
        public static float3 Tan(float3 v) => float3(System.Math.Tan(v.x), System.Math.Tan(v.y), System.Math.Tan(v.z));
        
        /// Returns a float from the application of Tan (System.Math.Tan(v)).
        public static float3 Tan(float v) => float3(System.Math.Tan(v));
        
        /// Returns a float3 from component-wise application of Tanh (System.Math.Tanh(v)).
        public static float3 Tanh(float3 v) => float3(System.Math.Tanh(v.x), System.Math.Tanh(v.y), System.Math.Tanh(v.z));
        
        /// Returns a float from the application of Tanh (System.Math.Tanh(v)).
        public static float3 Tanh(float v) => float3(System.Math.Tanh(v));
        
        /// Returns a float3 from component-wise application of Truncate (System.Math.Truncate(v)).
        public static float3 Truncate(float3 v) => float3(System.Math.Truncate(v.x), System.Math.Truncate(v.y), System.Math.Truncate(v.z));
        
        /// Returns a float from the application of Truncate (System.Math.Truncate(v)).
        public static float3 Truncate(float v) => float3(System.Math.Truncate(v));
        
        /// Returns a float3 from component-wise application of Fract ((v - System.Math.Floor(v))).
        public static float3 Fract(float3 v) => float3((v.x - System.Math.Floor(v.x)), (v.y - System.Math.Floor(v.y)), (v.z - System.Math.Floor(v.z)));
        
        /// Returns a float from the application of Fract ((v - System.Math.Floor(v))).
        public static float3 Fract(float v) => float3((v - System.Math.Floor(v)));
        
        /// Returns a float3 from component-wise application of TruncateFast ((int64)(v)).
        public static float3 TruncateFast(float3 v) => float3((int64)(v.x), (int64)(v.y), (int64)(v.z));
        
        /// Returns a float from the application of TruncateFast ((int64)(v)).
        public static float3 TruncateFast(float v) => float3((int64)(v));
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 Random(Random random, float3 minValue, float3 maxValue) => float3((float)random.NextDouble() * (maxValue.x - minValue.x) + minValue.x, (float)random.NextDouble() * (maxValue.y - minValue.y) + minValue.y, (float)random.NextDouble() * (maxValue.z - minValue.z) + minValue.z);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 Random(Random random, float3 minValue, float maxValue) => float3((float)random.NextDouble() * (maxValue - minValue.x) + minValue.x, (float)random.NextDouble() * (maxValue - minValue.y) + minValue.y, (float)random.NextDouble() * (maxValue - minValue.z) + minValue.z);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 Random(Random random, float minValue, float3 maxValue) => float3((float)random.NextDouble() * (maxValue.x - minValue) + minValue, (float)random.NextDouble() * (maxValue.y - minValue) + minValue, (float)random.NextDouble() * (maxValue.z - minValue) + minValue);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 Random(Random random, float minValue, float maxValue) => float3((float)random.NextDouble() * (maxValue - minValue) + minValue);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 RandomUniform(Random random, float3 minValue, float3 maxValue) => float3((float)random.NextDouble() * (maxValue.x - minValue.x) + minValue.x, (float)random.NextDouble() * (maxValue.y - minValue.y) + minValue.y, (float)random.NextDouble() * (maxValue.z - minValue.z) + minValue.z);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 RandomUniform(Random random, float3 minValue, float maxValue) => float3((float)random.NextDouble() * (maxValue - minValue.x) + minValue.x, (float)random.NextDouble() * (maxValue - minValue.y) + minValue.y, (float)random.NextDouble() * (maxValue - minValue.z) + minValue.z);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 RandomUniform(Random random, float minValue, float3 maxValue) => float3((float)random.NextDouble() * (maxValue.x - minValue) + minValue, (float)random.NextDouble() * (maxValue.y - minValue) + minValue, (float)random.NextDouble() * (maxValue.z - minValue) + minValue);
        
        /// Returns a float3 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static float3 RandomUniform(Random random, float minValue, float maxValue) => float3((float)random.NextDouble() * (maxValue - minValue) + minValue);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomNormal(Random random, float3 mean, float3 variance) => float3((float)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (float)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y, (float)(System.Math.Sqrt((double)variance.z) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.z);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomNormal(Random random, float3 mean, float variance) => float3((float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y, (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.z);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomNormal(Random random, float mean, float3 variance) => float3((float)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (float)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (float)(System.Math.Sqrt((double)variance.z) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomNormal(Random random, float mean, float variance) => float3((float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomGaussian(Random random, float3 mean, float3 variance) => float3((float)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (float)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y, (float)(System.Math.Sqrt((double)variance.z) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.z);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomGaussian(Random random, float3 mean, float variance) => float3((float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y, (float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.z);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomGaussian(Random random, float mean, float3 variance) => float3((float)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (float)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (float)(System.Math.Sqrt((double)variance.z) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a float3 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static float3 RandomGaussian(Random random, float mean, float variance) => float3((float)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);

        #endregion


        #region Component-Wise Operator Overloads
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(float3 lhs, float3 rhs) => bool3(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(float3 lhs, float rhs) => bool3(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs);
        
        /// Returns a bool3 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool3 operator<(float lhs, float3 rhs) => bool3(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(float3 lhs, float3 rhs) => bool3(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(float3 lhs, float rhs) => bool3(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs);
        
        /// Returns a bool3 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool3 operator<=(float lhs, float3 rhs) => bool3(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(float3 lhs, float3 rhs) => bool3(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(float3 lhs, float rhs) => bool3(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs);
        
        /// Returns a bool3 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool3 operator>(float lhs, float3 rhs) => bool3(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(float3 lhs, float3 rhs) => bool3(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(float3 lhs, float rhs) => bool3(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs);
        
        /// Returns a bool3 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool3 operator>=(float lhs, float3 rhs) => bool3(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z);
        
        /// Returns a float3 from component-wise application of operator+ (lhs + rhs).
        public static float3 operator+(float3 lhs, float3 rhs) => float3(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z);
        
        /// Returns a float3 from component-wise application of operator+ (lhs + rhs).
        public static float3 operator+(float3 lhs, float rhs) => float3(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs);
        
        /// Returns a float3 from component-wise application of operator+ (lhs + rhs).
        public static float3 operator+(float lhs, float3 rhs) => float3(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z);
        
        /// Returns a float3 from component-wise application of operator- (lhs - rhs).
        public static float3 operator-(float3 lhs, float3 rhs) => float3(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z);
        
        /// Returns a float3 from component-wise application of operator- (lhs - rhs).
        public static float3 operator-(float3 lhs, float rhs) => float3(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs);
        
        /// Returns a float3 from component-wise application of operator- (lhs - rhs).
        public static float3 operator-(float lhs, float3 rhs) => float3(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z);
        
        /// Returns a float3 from component-wise application of operator* (lhs * rhs).
        public static float3 operator*(float3 lhs, float3 rhs) => float3(lhs.x * rhs.x, lhs.y * rhs.y, lhs.z * rhs.z);
        
        /// Returns a float3 from component-wise application of operator* (lhs * rhs).
        public static float3 operator*(float3 lhs, float rhs) => float3(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs);
        
        /// Returns a float3 from component-wise application of operator* (lhs * rhs).
        public static float3 operator*(float lhs, float3 rhs) => float3(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z);
        
        /// Returns a float3 from component-wise application of operator/ (lhs / rhs).
        public static float3 operator/(float3 lhs, float3 rhs) => float3(lhs.x / rhs.x, lhs.y / rhs.y, lhs.z / rhs.z);
        
        /// Returns a float3 from component-wise application of operator/ (lhs / rhs).
        public static float3 operator/(float3 lhs, float rhs) => float3(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs);
        
        /// Returns a float3 from component-wise application of operator/ (lhs / rhs).
        public static float3 operator/(float lhs, float3 rhs) => float3(lhs / rhs.x, lhs / rhs.y, lhs / rhs.z);
        
        /// Returns a float3 from component-wise application of operator- (-v).
        public static float3 operator-(float3 v) => float3(-v.x, -v.y, -v.z);
        
        /// Returns a float3 from component-wise application of operator% (lhs % rhs).
        public static float3 operator%(float3 lhs, float3 rhs) => float3(lhs.x % rhs.x, lhs.y % rhs.y, lhs.z % rhs.z);
        
        /// Returns a float3 from component-wise application of operator% (lhs % rhs).
        public static float3 operator%(float3 lhs, float rhs) => float3(lhs.x % rhs, lhs.y % rhs, lhs.z % rhs);
        
        /// Returns a float3 from component-wise application of operator% (lhs % rhs).
        public static float3 operator%(float lhs, float3 rhs) => float3(lhs % rhs.x, lhs % rhs.y, lhs % rhs.z);

        #endregion

    }
}
