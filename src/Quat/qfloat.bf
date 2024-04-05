using System;
namespace glm
{
    
    /// A quaternion of type float.
    public struct qfloat : IEquatable<qfloat>
    {

        //#region Fields
        
        /// component data
        public float[4] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(float x, float y, float z, float w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(float v)
        {
            values = .(v,v,v,v);
        }
        
        /// copy constructor
        public this(qfloat q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(float3 v, float s)
        {
            values = .(v.x,v.y,v.z,s);
        }
        
        /// Creates a quaternion from the rotational part of a float3x3.
        public this(float3x3 m)
            : this(FromMat3(m))
        {
        }
        
        /// Creates a quaternion from the rotational part of a float4x4.
        public this(float4x4 m)
            : this(FromMat4(m))
        {
        }

        //#endregion


        //#region Implicit Operators
        
        /// Implicitly converts this to a qdouble.
        public static implicit operator qdouble(qfloat v) =>  qdouble((double)v.x, (double)v.y, (double)v.z, (double)v.w);

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(qfloat v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a qint.
        public static explicit operator qint(qfloat v) =>  qint((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(qfloat v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a quint.
        public static explicit operator quint(qfloat v) =>  quint((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(qfloat v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(qfloat v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(qfloat v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a qlong.
        public static explicit operator qlong(qfloat v) =>  qlong((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(qfloat v) =>  bool4(v.x != 0f, v.y != 0f, v.z != 0f, v.w != 0f);
        
        /// Explicitly converts this to a qbool.
        public static explicit operator qbool(qfloat v) =>  qbool(v.x != 0f, v.y != 0f, v.z != 0f, v.w != 0f);
        
        /// Creates a quaternion from the rotational part of a float3x3.
        public static explicit operator qfloat(float3x3 m) => FromMat3(m);
        
        /// Creates a quaternion from the rotational part of a float4x4.
        public static explicit operator qfloat(float4x4 m) => FromMat4(m);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public float this[int index]
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
        
        /// w-component
        public float w
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
        public float LengthSqr => ((x*x + y*y) + (z*z + w*w));
        
        /// Returns a copy of this quaternion with length one (undefined if this has zero length).
        public qfloat Normalized => this / (float)Length;
        
        /// Returns a copy of this quaternion with length one (returns zero if length is zero).
        public qfloat NormalizedSafe => this == Zero ? Identity : this / (float)Length;
        
        /// Returns the represented angle of this quaternion.
        public double Angle => System.Math.Acos((double)w) * 2.0;
        
        /// Returns the represented axis of this quaternion.
        public float3 Axis
        {
            [Inline]get
            {
                let s1 = 1 - w * w;
                if (s1 < 0) return float3.UnitZ;
                let s2 = 1 / System.Math.Sqrt(s1);
                return  float3((float)(x * s2), (float)(y * s2), (float)(z * s2));
            }
        }
        
        /// Returns the represented yaw angle of this quaternion.
        public double Yaw => System.Math.Asin(-2.0 * (double)(x * z - w * y));
        
        /// Returns the represented pitch angle of this quaternion.
        public double Pitch => System.Math.Atan2(2.0 * (double)(y * z + w * x), (double)(w * w - x * x - y * y + z * z));
        
        /// Returns the represented roll angle of this quaternion.
        public double Roll => System.Math.Atan2(2.0 * (double)(x * y + w * z), (double)(w * w + x * x - y * y - z * z));
        
        /// Returns the represented euler angles (pitch, yaw, roll) of this quaternion.
        public double3 EulerAngles =>  double3(Pitch, Yaw, Roll);
        
        /// Creates a float3x3 that realizes the rotation of this quaternion
        public float3x3 ToMat3 =>  float3x3(1 - 2 * (y*y + z*z), 2 * (x*y + w*z), 2 * (x*z - w*y), 2 * (x*y - w*z), 1 - 2 * (x*x + z*z), 2 * (y*z + w*x), 2 * (x*z + w*y), 2 * (y*z - w*x), 1 - 2 * (x*x + y*y));
        
        /// Creates a float4x4 that realizes the rotation of this quaternion
        public float4x4 ToMat4 =>  float4x4(ToMat3);
        
        /// Returns the conjugated quaternion
        public qfloat Conjugate =>  qfloat(-x, -y, -z, w);
        
        /// Returns the inverse quaternion
        public qfloat Inverse => Conjugate / LengthSqr;

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static qfloat Zero  =  qfloat(0f, 0f, 0f, 0f);
        
        /// Predefined all-ones quaternion
        readonly public static qfloat Ones  =  qfloat(1f, 1f, 1f, 1f);
        
        /// Predefined identity quaternion
        readonly public static qfloat Identity  =  qfloat(0f, 0f, 0f, 1f);
        
        /// Predefined unit-X quaternion
        readonly public static qfloat UnitX  =  qfloat(1f, 0f, 0f, 0f);
        
        /// Predefined unit-Y quaternion
        readonly public static qfloat UnitY  =  qfloat(0f, 1f, 0f, 0f);
        
        /// Predefined unit-Z quaternion
        readonly public static qfloat UnitZ  =  qfloat(0f, 0f, 1f, 0f);
        
        /// Predefined unit-W quaternion
        readonly public static qfloat UnitW  =  qfloat(0f, 0f, 0f, 1f);
        
        /// Predefined all-MaxValue quaternion
        readonly public static qfloat MaxValue  =  qfloat(float.MaxValue, float.MaxValue, float.MaxValue, float.MaxValue);
        
        /// Predefined all-MinValue quaternion
        readonly public static qfloat MinValue  =  qfloat(float.MinValue, float.MinValue, float.MinValue, float.MinValue);
        
        /// Predefined all-Epsilon quaternion
        readonly public static qfloat Epsilon  =  qfloat(float.Epsilon, float.Epsilon, float.Epsilon, float.Epsilon);
        
        /// Predefined all-NaN quaternion
        readonly public static qfloat NaN  =  qfloat(float.NaN, float.NaN, float.NaN, float.NaN);
        
        /// Predefined all-NegativeInfinity quaternion
        readonly public static qfloat NegativeInfinity  =  qfloat(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity);
        
        /// Predefined all-PositiveInfinity quaternion
        readonly public static qfloat PositiveInfinity  =  qfloat(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(qfloat lhs, qfloat rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(qfloat lhs, qfloat rhs) => !lhs.Equals(rhs);
        
        /// Returns proper multiplication of two quaternions.
        public static qfloat operator*(qfloat p, qfloat q) =>  qfloat(p.w * q.x + p.x * q.w + p.y * q.z - p.z * q.y, p.w * q.y + p.y * q.w + p.z * q.x - p.x * q.z, p.w * q.z + p.z * q.w + p.x * q.y - p.y * q.x, p.w * q.w - p.x * q.x - p.y * q.y - p.z * q.z);
        
        /// Returns a vector rotated by the quaternion.
        public static float3 operator*(qfloat q, float3 v)
        {
            let qv =  float3(q.x, q.y, q.z);
            let uv = float3.Cross(qv, v);
            let uuv = float3.Cross(qv, uv);
            return v + ((uv * q.w) + uuv) * 2;
        }
        
        /// Returns a vector rotated by the quaternion (preserves v.w).
        public static float4 operator*(qfloat q, float4 v) =>  float4(q *  float3(v), v.w);
        
        /// Returns a vector rotated by the inverted quaternion.
        public static float3 operator*(float3 v, qfloat q) => q.Inverse * v;
        
        /// Returns a vector rotated by the inverted quaternion (preserves v.w).
        public static float4 operator*(float4 v, qfloat q) => q.Inverse * v;

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public float[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(qfloat rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 397) ^ y.GetHashCode()) * 397) ^ z.GetHashCode()) * 397) ^ w.GetHashCode();
            }
        }
        
        /// Rotates this quaternion from an axis and an angle (in radians).
        public qfloat Rotated(float angle, float3 v) => this * FromAxisAngle(angle, v);

        //#endregion


        //#region Static Functions
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        public static float Dot(qfloat lhs, qfloat rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Creates a quaternion from an axis and an angle (in radians).
        public static qfloat FromAxisAngle(float angle, float3 v)
        {
            let s = System.Math.Sin((double)angle * 0.5);
            let c = System.Math.Cos((double)angle * 0.5);
            return  qfloat((float)((double)v.x * s), (float)((double)v.y * s), (float)((double)v.z * s), (float)c);
        }
        
        /// Creates a quaternion from the rotational part of a float4x4.
        public static qfloat FromMat3(float3x3 m)
        {
            var fourXSquaredMinus1 = m.m00 - m.m11 - m.m22;
            var fourYSquaredMinus1 = m.m11 - m.m00 - m.m22;
            var fourZSquaredMinus1 = m.m22 - m.m00 - m.m11;
            var fourWSquaredMinus1 = m.m00 + m.m11 + m.m22;
            var biggestIndex = 0;
            var fourBiggestSquaredMinus1 = fourWSquaredMinus1;
            if(fourXSquaredMinus1 > fourBiggestSquaredMinus1)
            {
                fourBiggestSquaredMinus1 = fourXSquaredMinus1;
                biggestIndex = 1;
            }
            if(fourYSquaredMinus1 > fourBiggestSquaredMinus1)
            {
                fourBiggestSquaredMinus1 = fourYSquaredMinus1;
                biggestIndex = 2;
            }
            if(fourZSquaredMinus1 > fourBiggestSquaredMinus1)
            {
                fourBiggestSquaredMinus1 = fourZSquaredMinus1;
                biggestIndex = 3;
            }
            var biggestVal = System.Math.Sqrt((double)fourBiggestSquaredMinus1 + 1.0) * 0.5;
            var mult = 0.25 / biggestVal;
            switch(biggestIndex)
            {
                case 0: return  qfloat((float)((double)(m.m12 - m.m21) * mult), (float)((double)(m.m20 - m.m02) * mult), (float)((double)(m.m01 - m.m10) * mult), (float)(biggestVal));
                case 1: return  qfloat((float)(biggestVal), (float)((double)(m.m01 + m.m10) * mult), (float)((double)(m.m20 + m.m02) * mult), (float)((double)(m.m12 - m.m21) * mult));
                case 2: return  qfloat((float)((double)(m.m01 + m.m10) * mult), (float)(biggestVal), (float)((double)(m.m12 + m.m21) * mult), (float)((double)(m.m20 - m.m02) * mult));
                default: return  qfloat((float)((double)(m.m20 + m.m02) * mult), (float)((double)(m.m12 + m.m21) * mult), (float)(biggestVal), (float)((double)(m.m01 - m.m10) * mult));
            }
        }
        
        /// Creates a quaternion from the rotational part of a float3x3.
        public static qfloat FromMat4(float4x4 m) => FromMat3( float3x3(m));
        
        /// Returns the cross product between two quaternions.
        public static qfloat Cross(qfloat q1, qfloat q2) =>  qfloat(q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y, q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z, q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x, q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        public static qfloat Mix(qfloat x, qfloat y, float a)
        {
            let cosTheta = (double)Dot(x, y);
            if (cosTheta > 1 - float.Epsilon)
                return Lerp(x, y, a);
            else
            {
                let angle = System.Math.Acos((double)cosTheta);
                return (qfloat)( (System.Math.Sin((1 - (double)a) * angle) * (qdouble)x + System.Math.Sin((double)a * angle) * (qdouble)y) / System.Math.Sin(angle) );
            }
        }
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        public static qfloat SLerp(qfloat x, qfloat y, float a)
        {
            var z = y;
            var cosTheta = (double)Dot(x, y);
            if (cosTheta < 0) { z = -y; cosTheta = -cosTheta; }
            if (cosTheta > 1 - float.Epsilon)
                return Lerp(x, z, a);
            else
            {
                var angle = System.Math.Acos((double)cosTheta);
                return (qfloat)( (System.Math.Sin((1 - (double)a) * angle) * (qdouble)x + System.Math.Sin((double)a * angle) * (qdouble)z) / System.Math.Sin(angle) );
            }
        }
        
        /// Applies squad interpolation of these quaternions
        public static qfloat Squad(qfloat q1, qfloat q2, qfloat s1, qfloat s2, float h) => Mix(Mix(q1, q2, h), Mix(s1, s2, h), 2 * (1 - h) * h);

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        public static bool4 IsInfinity(qfloat v) => bool4(v.x.IsInfinity, v.y.IsInfinity, v.z.IsInfinity, v.w.IsInfinity);
        
        /// Returns a bool from the application of IsInfinity (v.IsInfinity).
        public static bool4 IsInfinity(float v) => bool4(v.IsInfinity);
        
        /// Returns a bool4 from component-wise application of IsFinite (v.IsFinite).
        public static bool4 IsFinite(qfloat v) => bool4(v.x.IsFinite, v.y.IsFinite, v.z.IsFinite, v.w.IsFinite);
        
        /// Returns a bool from the application of IsFinite (v.IsFinite).
        public static bool4 IsFinite(float v) => bool4(v.IsFinite);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        public static bool4 IsNaN(qfloat v) => bool4(v.x.IsNaN, v.y.IsNaN, v.z.IsNaN, v.w.IsNaN);
        
        /// Returns a bool from the application of IsNaN (v.IsNaN).
        public static bool4 IsNaN(float v) => bool4(v.IsNaN);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool4 IsNegativeInfinity(qfloat v) => bool4(v.x.IsNegativeInfinity, v.y.IsNegativeInfinity, v.z.IsNegativeInfinity, v.w.IsNegativeInfinity);
        
        /// Returns a bool from the application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool4 IsNegativeInfinity(float v) => bool4(v.IsNegativeInfinity);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool4 IsPositiveInfinity(qfloat v) => bool4(v.x.IsPositiveInfinity, v.y.IsPositiveInfinity, v.z.IsPositiveInfinity, v.w.IsPositiveInfinity);
        
        /// Returns a bool from the application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool4 IsPositiveInfinity(float v) => bool4(v.IsPositiveInfinity);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qfloat lhs, qfloat rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qfloat lhs, float rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(float lhs, qfloat rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(float lhs, float rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qfloat lhs, qfloat rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qfloat lhs, float rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(float lhs, qfloat rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(float lhs, float rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qfloat lhs, qfloat rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qfloat lhs, float rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(float lhs, qfloat rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(float lhs, float rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qfloat lhs, qfloat rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qfloat lhs, float rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(float lhs, qfloat rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(float lhs, float rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qfloat lhs, qfloat rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qfloat lhs, float rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(float lhs, qfloat rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(float lhs, float rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qfloat lhs, qfloat rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qfloat lhs, float rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(float lhs, qfloat rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(float lhs, float rhs) => bool4(lhs <= rhs);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(qfloat min, qfloat max, qfloat a) => qfloat(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(qfloat min, qfloat max, float a) => qfloat(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(qfloat min, float max, qfloat a) => qfloat(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(qfloat min, float max, float a) => qfloat(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(float min, qfloat max, qfloat a) => qfloat(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(float min, qfloat max, float a) => qfloat(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(float min, float max, qfloat a) => qfloat(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a qfloat from the application of Lerp (min * (1-a) + max * a).
        public static qfloat Lerp(float min, float max, float a) => qfloat(min * (1-a) + max * a);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qfloat lhs, qfloat rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qfloat lhs, float rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(float lhs, qfloat rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qfloat lhs, qfloat rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qfloat lhs, float rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(float lhs, qfloat rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qfloat lhs, qfloat rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qfloat lhs, float rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(float lhs, qfloat rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qfloat lhs, qfloat rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qfloat lhs, float rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(float lhs, qfloat rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a qfloat from component-wise application of operator- (-v).
        public static qfloat operator-(qfloat v) => qfloat(-v.x, -v.y, -v.z, -v.w);
        
        /// Returns a qfloat from component-wise application of operator+ (lhs + rhs).
        public static qfloat operator+(qfloat lhs, qfloat rhs) => qfloat(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a qfloat from component-wise application of operator+ (lhs + rhs).
        public static qfloat operator+(qfloat lhs, float rhs) => qfloat(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a qfloat from component-wise application of operator+ (lhs + rhs).
        public static qfloat operator+(float lhs, qfloat rhs) => qfloat(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a qfloat from component-wise application of operator- (lhs - rhs).
        public static qfloat operator-(qfloat lhs, qfloat rhs) => qfloat(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a qfloat from component-wise application of operator- (lhs - rhs).
        public static qfloat operator-(qfloat lhs, float rhs) => qfloat(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a qfloat from component-wise application of operator- (lhs - rhs).
        public static qfloat operator-(float lhs, qfloat rhs) => qfloat(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a qfloat from component-wise application of operator* (lhs * rhs).
        public static qfloat operator*(qfloat lhs, float rhs) => qfloat(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a qfloat from component-wise application of operator* (lhs * rhs).
        public static qfloat operator*(float lhs, qfloat rhs) => qfloat(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a qfloat from component-wise application of operator/ (lhs / rhs).
        public static qfloat operator/(qfloat lhs, float rhs) => qfloat(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);

        //#endregion

    }
}
