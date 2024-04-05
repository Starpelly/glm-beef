using System;
namespace glm
{
    
    /// A quaternion of type long.
    public struct qlong : IEquatable<qlong>
    {

        //#region Fields
        
        /// component data
        public long[4] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(long x, long y, long z, long w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(long v)
        {
            values = .(v,v,v,v);
        }
        
        /// copy constructor
        public this(qlong q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(long3 v, long s)
        {
            values = .(v.x,v.y,v.z,s);
        }

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(qlong v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a qint.
        public static explicit operator qint(qlong v) =>  qint((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(qlong v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a quint.
        public static explicit operator quint(qlong v) =>  quint((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(qlong v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a qfloat.
        public static explicit operator qfloat(qlong v) =>  qfloat((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(qlong v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a qdouble.
        public static explicit operator qdouble(qlong v) =>  qdouble((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(qlong v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(qlong v) =>  bool4(v.x != 0, v.y != 0, v.z != 0, v.w != 0);
        
        /// Explicitly converts this to a qbool.
        public static explicit operator qbool(qlong v) =>  qbool(v.x != 0, v.y != 0, v.z != 0, v.w != 0);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public long this[int index]
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
        
        /// z-component
        public long z
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
        public long w
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
        public double Length => (double)System.Math.Sqrt(((x*x + y*y) + (z*z + w*w)));
        
        /// Returns the squared euclidean length of this quaternion.
        public long LengthSqr => ((x*x + y*y) + (z*z + w*w));
        
        /// Returns the conjugated quaternion
        public qlong Conjugate =>  qlong(-x, -y, -z, w);
        
        /// Returns the inverse quaternion
        public qlong Inverse => Conjugate / LengthSqr;

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static qlong Zero  =  qlong(0, 0, 0, 0);
        
        /// Predefined all-ones quaternion
        readonly public static qlong Ones  =  qlong(1, 1, 1, 1);
        
        /// Predefined identity quaternion
        readonly public static qlong Identity  =  qlong(0, 0, 0, 1);
        
        /// Predefined unit-X quaternion
        readonly public static qlong UnitX  =  qlong(1, 0, 0, 0);
        
        /// Predefined unit-Y quaternion
        readonly public static qlong UnitY  =  qlong(0, 1, 0, 0);
        
        /// Predefined unit-Z quaternion
        readonly public static qlong UnitZ  =  qlong(0, 0, 1, 0);
        
        /// Predefined unit-W quaternion
        readonly public static qlong UnitW  =  qlong(0, 0, 0, 1);
        
        /// Predefined all-MaxValue quaternion
        readonly public static qlong MaxValue  =  qlong(long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue);
        
        /// Predefined all-MinValue quaternion
        readonly public static qlong MinValue  =  qlong(long.MinValue, long.MinValue, long.MinValue, long.MinValue);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(qlong lhs, qlong rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(qlong lhs, qlong rhs) => !lhs.Equals(rhs);
        
        /// Returns proper multiplication of two quaternions.
        public static qlong operator*(qlong p, qlong q) =>  qlong(p.w * q.x + p.x * q.w + p.y * q.z - p.z * q.y, p.w * q.y + p.y * q.w + p.z * q.x - p.x * q.z, p.w * q.z + p.z * q.w + p.x * q.y - p.y * q.x, p.w * q.w - p.x * q.x - p.y * q.y - p.z * q.z);
        
        /// Returns a vector rotated by the quaternion.
        public static long3 operator*(qlong q, long3 v)
        {
            let qv =  long3(q.x, q.y, q.z);
            let uv = long3.Cross(qv, v);
            let uuv = long3.Cross(qv, uv);
            return v + ((uv * q.w) + uuv) * 2;
        }
        
        /// Returns a vector rotated by the quaternion (preserves v.w).
        public static long4 operator*(qlong q, long4 v) =>  long4(q *  long3(v), v.w);
        
        /// Returns a vector rotated by the inverted quaternion.
        public static long3 operator*(long3 v, qlong q) => q.Inverse * v;
        
        /// Returns a vector rotated by the inverted quaternion (preserves v.w).
        public static long4 operator*(long4 v, qlong q) => q.Inverse * v;

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public long[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(qlong rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
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
        public static long Dot(qlong lhs, qlong rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Returns the cross product between two quaternions.
        public static qlong Cross(qlong q1, qlong q2) =>  qlong(q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y, q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z, q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x, q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z);

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qlong lhs, qlong rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qlong lhs, long rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(long lhs, qlong rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(long lhs, long rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qlong lhs, qlong rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qlong lhs, long rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(long lhs, qlong rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(long lhs, long rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qlong lhs, qlong rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qlong lhs, long rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(long lhs, qlong rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(long lhs, long rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qlong lhs, qlong rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qlong lhs, long rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(long lhs, qlong rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(long lhs, long rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qlong lhs, qlong rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qlong lhs, long rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(long lhs, qlong rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(long lhs, long rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qlong lhs, qlong rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qlong lhs, long rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(long lhs, qlong rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(long lhs, long rhs) => bool4(lhs <= rhs);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(qlong min, qlong max, qlong a) => qlong(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(qlong min, qlong max, long a) => qlong(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(qlong min, long max, qlong a) => qlong(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(qlong min, long max, long a) => qlong(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(long min, qlong max, qlong a) => qlong(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(long min, qlong max, long a) => qlong(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(long min, long max, qlong a) => qlong(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a qlong from the application of Lerp (min * (1-a) + max * a).
        public static qlong Lerp(long min, long max, long a) => qlong(min * (1-a) + max * a);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qlong lhs, qlong rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qlong lhs, long rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(long lhs, qlong rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qlong lhs, qlong rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qlong lhs, long rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(long lhs, qlong rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qlong lhs, qlong rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qlong lhs, long rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(long lhs, qlong rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qlong lhs, qlong rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qlong lhs, long rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(long lhs, qlong rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a qlong from component-wise application of operator- (-v).
        public static qlong operator-(qlong v) => qlong(-v.x, -v.y, -v.z, -v.w);
        
        /// Returns a qlong from component-wise application of operator+ (lhs + rhs).
        public static qlong operator+(qlong lhs, qlong rhs) => qlong(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a qlong from component-wise application of operator+ (lhs + rhs).
        public static qlong operator+(qlong lhs, long rhs) => qlong(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a qlong from component-wise application of operator+ (lhs + rhs).
        public static qlong operator+(long lhs, qlong rhs) => qlong(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a qlong from component-wise application of operator- (lhs - rhs).
        public static qlong operator-(qlong lhs, qlong rhs) => qlong(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a qlong from component-wise application of operator- (lhs - rhs).
        public static qlong operator-(qlong lhs, long rhs) => qlong(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a qlong from component-wise application of operator- (lhs - rhs).
        public static qlong operator-(long lhs, qlong rhs) => qlong(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a qlong from component-wise application of operator* (lhs * rhs).
        public static qlong operator*(qlong lhs, long rhs) => qlong(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a qlong from component-wise application of operator* (lhs * rhs).
        public static qlong operator*(long lhs, qlong rhs) => qlong(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a qlong from component-wise application of operator/ (lhs / rhs).
        public static qlong operator/(qlong lhs, long rhs) => qlong(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);

        //#endregion

    }
}
