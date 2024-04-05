using System;
namespace glm
{
    
    /// A quaternion of type int.
    public struct qint : IEquatable<qint>
    {

        //#region Fields
        
        /// component data
        public int[4] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(int x, int y, int z, int w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(int v)
        {
            values = .(v,v,v,v);
        }
        
        /// copy constructor
        public this(qint q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(int3 v, int s)
        {
            values = .(v.x,v.y,v.z,s);
        }

        //#endregion


        //#region Implicit Operators
        
        /// Implicitly converts this to a qlong.
        public static implicit operator qlong(qint v) =>  qlong((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Implicitly converts this to a qfloat.
        public static implicit operator qfloat(qint v) =>  qfloat((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Implicitly converts this to a qdouble.
        public static implicit operator qdouble(qint v) =>  qdouble((double)v.x, (double)v.y, (double)v.z, (double)v.w);

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(qint v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(qint v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a quint.
        public static explicit operator quint(qint v) =>  quint((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(qint v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(qint v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(qint v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(qint v) =>  bool4(v.x != 0, v.y != 0, v.z != 0, v.w != 0);
        
        /// Explicitly converts this to a qbool.
        public static explicit operator qbool(qint v) =>  qbool(v.x != 0, v.y != 0, v.z != 0, v.w != 0);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public int this[int index]
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
        public int x
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
        public int y
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
        public int z
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
        public int w
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
        public int LengthSqr => ((x*x + y*y) + (z*z + w*w));
        
        /// Returns the conjugated quaternion
        public qint Conjugate =>  qint(-x, -y, -z, w);
        
        /// Returns the inverse quaternion
        public qint Inverse => Conjugate / LengthSqr;

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static qint Zero  =  qint(0, 0, 0, 0);
        
        /// Predefined all-ones quaternion
        readonly public static qint Ones  =  qint(1, 1, 1, 1);
        
        /// Predefined identity quaternion
        readonly public static qint Identity  =  qint(0, 0, 0, 1);
        
        /// Predefined unit-X quaternion
        readonly public static qint UnitX  =  qint(1, 0, 0, 0);
        
        /// Predefined unit-Y quaternion
        readonly public static qint UnitY  =  qint(0, 1, 0, 0);
        
        /// Predefined unit-Z quaternion
        readonly public static qint UnitZ  =  qint(0, 0, 1, 0);
        
        /// Predefined unit-W quaternion
        readonly public static qint UnitW  =  qint(0, 0, 0, 1);
        
        /// Predefined all-MaxValue quaternion
        readonly public static qint MaxValue  =  qint(int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue);
        
        /// Predefined all-MinValue quaternion
        readonly public static qint MinValue  =  qint(int.MinValue, int.MinValue, int.MinValue, int.MinValue);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(qint lhs, qint rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(qint lhs, qint rhs) => !lhs.Equals(rhs);
        
        /// Returns proper multiplication of two quaternions.
        public static qint operator*(qint p, qint q) =>  qint(p.w * q.x + p.x * q.w + p.y * q.z - p.z * q.y, p.w * q.y + p.y * q.w + p.z * q.x - p.x * q.z, p.w * q.z + p.z * q.w + p.x * q.y - p.y * q.x, p.w * q.w - p.x * q.x - p.y * q.y - p.z * q.z);
        
        /// Returns a vector rotated by the quaternion.
        public static int3 operator*(qint q, int3 v)
        {
            let qv =  int3(q.x, q.y, q.z);
            let uv = int3.Cross(qv, v);
            let uuv = int3.Cross(qv, uv);
            return v + ((uv * q.w) + uuv) * 2;
        }
        
        /// Returns a vector rotated by the quaternion (preserves v.w).
        public static int4 operator*(qint q, int4 v) =>  int4(q *  int3(v), v.w);
        
        /// Returns a vector rotated by the inverted quaternion.
        public static int3 operator*(int3 v, qint q) => q.Inverse * v;
        
        /// Returns a vector rotated by the inverted quaternion (preserves v.w).
        public static int4 operator*(int4 v, qint q) => q.Inverse * v;

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public int[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(qint rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
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
        public static int Dot(qint lhs, qint rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Returns the cross product between two quaternions.
        public static qint Cross(qint q1, qint q2) =>  qint(q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y, q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z, q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x, q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z);

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qint lhs, qint rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qint lhs, int rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(int lhs, qint rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(int lhs, int rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qint lhs, qint rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qint lhs, int rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(int lhs, qint rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(int lhs, int rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qint lhs, qint rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qint lhs, int rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(int lhs, qint rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(int lhs, int rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qint lhs, qint rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qint lhs, int rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(int lhs, qint rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(int lhs, int rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qint lhs, qint rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qint lhs, int rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(int lhs, qint rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(int lhs, int rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qint lhs, qint rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qint lhs, int rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(int lhs, qint rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(int lhs, int rhs) => bool4(lhs <= rhs);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(qint min, qint max, qint a) => qint(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(qint min, qint max, int a) => qint(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(qint min, int max, qint a) => qint(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(qint min, int max, int a) => qint(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(int min, qint max, qint a) => qint(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(int min, qint max, int a) => qint(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(int min, int max, qint a) => qint(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a qint from the application of Lerp (min * (1-a) + max * a).
        public static qint Lerp(int min, int max, int a) => qint(min * (1-a) + max * a);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qint lhs, qint rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qint lhs, int rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(int lhs, qint rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qint lhs, qint rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qint lhs, int rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(int lhs, qint rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qint lhs, qint rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qint lhs, int rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(int lhs, qint rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qint lhs, qint rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qint lhs, int rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(int lhs, qint rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a qint from component-wise application of operator- (-v).
        public static qint operator-(qint v) => qint(-v.x, -v.y, -v.z, -v.w);
        
        /// Returns a qint from component-wise application of operator+ (lhs + rhs).
        public static qint operator+(qint lhs, qint rhs) => qint(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a qint from component-wise application of operator+ (lhs + rhs).
        public static qint operator+(qint lhs, int rhs) => qint(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a qint from component-wise application of operator+ (lhs + rhs).
        public static qint operator+(int lhs, qint rhs) => qint(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a qint from component-wise application of operator- (lhs - rhs).
        public static qint operator-(qint lhs, qint rhs) => qint(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a qint from component-wise application of operator- (lhs - rhs).
        public static qint operator-(qint lhs, int rhs) => qint(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a qint from component-wise application of operator- (lhs - rhs).
        public static qint operator-(int lhs, qint rhs) => qint(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a qint from component-wise application of operator* (lhs * rhs).
        public static qint operator*(qint lhs, int rhs) => qint(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a qint from component-wise application of operator* (lhs * rhs).
        public static qint operator*(int lhs, qint rhs) => qint(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a qint from component-wise application of operator/ (lhs / rhs).
        public static qint operator/(qint lhs, int rhs) => qint(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);

        //#endregion

    }
}
