using System;
namespace glm
{
    
    /// A quaternion of type uint.
    public struct quint : IEquatable<quint>
    {

        //#region Fields
        
        /// component data
        public uint[4] values;

        //#endregion


        //#region Constructors
        
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
        
        /// copy constructor
        public this(quint q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(uint3 v, uint s)
        {
            values = .(v.x,v.y,v.z,s);
        }

        //#endregion


        //#region Implicit Operators
        
        /// Implicitly converts this to a qlong.
        public static implicit operator qlong(quint v) =>  qlong((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Implicitly converts this to a qfloat.
        public static implicit operator qfloat(quint v) =>  qfloat((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Implicitly converts this to a qdouble.
        public static implicit operator qdouble(quint v) =>  qdouble((double)v.x, (double)v.y, (double)v.z, (double)v.w);

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(quint v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a qint.
        public static explicit operator qint(quint v) =>  qint((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(quint v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(quint v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(quint v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(quint v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(quint v) =>  bool4(v.x != 0u, v.y != 0u, v.z != 0u, v.w != 0u);
        
        /// Explicitly converts this to a qbool.
        public static explicit operator qbool(quint v) =>  qbool(v.x != 0u, v.y != 0u, v.z != 0u, v.w != 0u);

        //#endregion


        //#region Indexer
        
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
        
        /// Returns the number of components (4).
        public int Count => 4;
        
        /// Returns the euclidean length of this quaternion.
        public float Length => (float)System.Math.Sqrt(((x*x + y*y) + (z*z + w*w)));
        
        /// Returns the squared euclidean length of this quaternion.
        public uint LengthSqr => ((x*x + y*y) + (z*z + w*w));

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static quint Zero  =  quint(0u, 0u, 0u, 0u);
        
        /// Predefined all-ones quaternion
        readonly public static quint Ones  =  quint(1u, 1u, 1u, 1u);
        
        /// Predefined identity quaternion
        readonly public static quint Identity  =  quint(0u, 0u, 0u, 1u);
        
        /// Predefined unit-X quaternion
        readonly public static quint UnitX  =  quint(1u, 0u, 0u, 0u);
        
        /// Predefined unit-Y quaternion
        readonly public static quint UnitY  =  quint(0u, 1u, 0u, 0u);
        
        /// Predefined unit-Z quaternion
        readonly public static quint UnitZ  =  quint(0u, 0u, 1u, 0u);
        
        /// Predefined unit-W quaternion
        readonly public static quint UnitW  =  quint(0u, 0u, 0u, 1u);
        
        /// Predefined all-MaxValue quaternion
        readonly public static quint MaxValue  =  quint(uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue);
        
        /// Predefined all-MinValue quaternion
        readonly public static quint MinValue  =  quint(uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(quint lhs, quint rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(quint lhs, quint rhs) => !lhs.Equals(rhs);
        
        /// Returns proper multiplication of two quaternions.
        public static quint operator*(quint p, quint q) =>  quint(p.w * q.x + p.x * q.w + p.y * q.z - p.z * q.y, p.w * q.y + p.y * q.w + p.z * q.x - p.x * q.z, p.w * q.z + p.z * q.w + p.x * q.y - p.y * q.x, p.w * q.w - p.x * q.x - p.y * q.y - p.z * q.z);
        
        /// Returns a vector rotated by the quaternion.
        public static uint3 operator*(quint q, uint3 v)
        {
            let qv =  uint3(q.x, q.y, q.z);
            let uv = uint3.Cross(qv, v);
            let uuv = uint3.Cross(qv, uv);
            return v + ((uv * q.w) + uuv) * 2;
        }
        
        /// Returns a vector rotated by the quaternion (preserves v.w).
        public static uint4 operator*(quint q, uint4 v) =>  uint4(q *  uint3(v), v.w);

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public uint[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(quint rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 397) ^ y.GetHashCode()) * 397) ^ z.GetHashCode()) * 397) ^ w.GetHashCode();
            }
        }

        //#endregion


        //#region Static Functions
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        public static uint Dot(quint lhs, quint rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Returns the cross product between two quaternions.
        public static quint Cross(quint q1, quint q2) =>  quint(q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y, q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z, q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x, q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z);

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(quint lhs, quint rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(quint lhs, uint rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(uint lhs, quint rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(uint lhs, uint rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(quint lhs, quint rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(quint lhs, uint rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint lhs, quint rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(uint lhs, uint rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(quint lhs, quint rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(quint lhs, uint rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint lhs, quint rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(uint lhs, uint rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(quint lhs, quint rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(quint lhs, uint rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint lhs, quint rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(uint lhs, uint rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(quint lhs, quint rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(quint lhs, uint rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint lhs, quint rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(uint lhs, uint rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(quint lhs, quint rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(quint lhs, uint rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint lhs, quint rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(uint lhs, uint rhs) => bool4(lhs <= rhs);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(quint min, quint max, quint a) => quint(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(quint min, quint max, uint a) => quint(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(quint min, uint max, quint a) => quint(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(quint min, uint max, uint a) => quint(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(uint min, quint max, quint a) => quint(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(uint min, quint max, uint a) => quint(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(uint min, uint max, quint a) => quint(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a quint from the application of Lerp (min * (1-a) + max * a).
        public static quint Lerp(uint min, uint max, uint a) => quint(min * (1-a) + max * a);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(quint lhs, quint rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(quint lhs, uint rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(uint lhs, quint rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(quint lhs, quint rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(quint lhs, uint rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(uint lhs, quint rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(quint lhs, quint rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(quint lhs, uint rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(uint lhs, quint rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(quint lhs, quint rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(quint lhs, uint rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(uint lhs, quint rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a quint from component-wise application of operator+ (lhs + rhs).
        public static quint operator+(quint lhs, quint rhs) => quint(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a quint from component-wise application of operator+ (lhs + rhs).
        public static quint operator+(quint lhs, uint rhs) => quint(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a quint from component-wise application of operator+ (lhs + rhs).
        public static quint operator+(uint lhs, quint rhs) => quint(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a quint from component-wise application of operator- (lhs - rhs).
        public static quint operator-(quint lhs, quint rhs) => quint(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a quint from component-wise application of operator- (lhs - rhs).
        public static quint operator-(quint lhs, uint rhs) => quint(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a quint from component-wise application of operator- (lhs - rhs).
        public static quint operator-(uint lhs, quint rhs) => quint(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a quint from component-wise application of operator* (lhs * rhs).
        public static quint operator*(quint lhs, uint rhs) => quint(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a quint from component-wise application of operator* (lhs * rhs).
        public static quint operator*(uint lhs, quint rhs) => quint(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a quint from component-wise application of operator/ (lhs / rhs).
        public static quint operator/(quint lhs, uint rhs) => quint(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);

        //#endregion

    }
}
