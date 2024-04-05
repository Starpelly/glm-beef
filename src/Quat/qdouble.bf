using System;
namespace glm
{
    
    /// A quaternion of type double.
    public struct qdouble : IEquatable<qdouble>
    {

        //#region Fields
        
        /// component data
        public double[4] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(double x, double y, double z, double w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(double v)
        {
            values = .(v,v,v,v);
        }
        
        /// copy constructor
        public this(qdouble q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(double3 v, double s)
        {
            values = .(v.x,v.y,v.z,s);
        }
        
        /// Creates a quaternion from the rotational part of a double3x3.
        public this(double3x3 m)
            : this(FromMat3(m))
        {
        }
        
        /// Creates a quaternion from the rotational part of a double4x4.
        public this(double4x4 m)
            : this(FromMat4(m))
        {
        }

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(qdouble v) =>  int4((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a qint.
        public static explicit operator qint(qdouble v) =>  qint((int)v.x, (int)v.y, (int)v.z, (int)v.w);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(qdouble v) =>  uint4((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a quint.
        public static explicit operator quint(qdouble v) =>  quint((uint)v.x, (uint)v.y, (uint)v.z, (uint)v.w);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(qdouble v) =>  float4((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a qfloat.
        public static explicit operator qfloat(qdouble v) =>  qfloat((float)v.x, (float)v.y, (float)v.z, (float)v.w);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(qdouble v) =>  double4((double)v.x, (double)v.y, (double)v.z, (double)v.w);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(qdouble v) =>  long4((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a qlong.
        public static explicit operator qlong(qdouble v) =>  qlong((long)v.x, (long)v.y, (long)v.z, (long)v.w);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(qdouble v) =>  bool4(v.x != 0.0, v.y != 0.0, v.z != 0.0, v.w != 0.0);
        
        /// Explicitly converts this to a qbool.
        public static explicit operator qbool(qdouble v) =>  qbool(v.x != 0.0, v.y != 0.0, v.z != 0.0, v.w != 0.0);
        
        /// Creates a quaternion from the rotational part of a double3x3.
        public static explicit operator qdouble(double3x3 m) => FromMat3(m);
        
        /// Creates a quaternion from the rotational part of a double4x4.
        public static explicit operator qdouble(double4x4 m) => FromMat4(m);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public double this[int index]
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
        public double x
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
        public double y
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
        public double z
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
        public double w
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
        public double LengthSqr => ((x*x + y*y) + (z*z + w*w));
        
        /// Returns a copy of this quaternion with length one (undefined if this has zero length).
        public qdouble Normalized => this / (double)Length;
        
        /// Returns a copy of this quaternion with length one (returns zero if length is zero).
        public qdouble NormalizedSafe => this == Zero ? Identity : this / (double)Length;
        
        /// Returns the represented angle of this quaternion.
        public double Angle => System.Math.Acos((double)w) * 2.0;
        
        /// Returns the represented axis of this quaternion.
        public double3 Axis
        {
            [Inline]get
            {
                let s1 = 1 - w * w;
                if (s1 < 0) return double3.UnitZ;
                let s2 = 1 / System.Math.Sqrt(s1);
                return  double3((double)(x * s2), (double)(y * s2), (double)(z * s2));
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
        
        /// Creates a double3x3 that realizes the rotation of this quaternion
        public double3x3 ToMat3 =>  double3x3(1 - 2 * (y*y + z*z), 2 * (x*y + w*z), 2 * (x*z - w*y), 2 * (x*y - w*z), 1 - 2 * (x*x + z*z), 2 * (y*z + w*x), 2 * (x*z + w*y), 2 * (y*z - w*x), 1 - 2 * (x*x + y*y));
        
        /// Creates a double4x4 that realizes the rotation of this quaternion
        public double4x4 ToMat4 =>  double4x4(ToMat3);
        
        /// Returns the conjugated quaternion
        public qdouble Conjugate =>  qdouble(-x, -y, -z, w);
        
        /// Returns the inverse quaternion
        public qdouble Inverse => Conjugate / LengthSqr;

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static qdouble Zero  =  qdouble(0.0, 0.0, 0.0, 0.0);
        
        /// Predefined all-ones quaternion
        readonly public static qdouble Ones  =  qdouble(1.0, 1.0, 1.0, 1.0);
        
        /// Predefined identity quaternion
        readonly public static qdouble Identity  =  qdouble(0.0, 0.0, 0.0, 1.0);
        
        /// Predefined unit-X quaternion
        readonly public static qdouble UnitX  =  qdouble(1.0, 0.0, 0.0, 0.0);
        
        /// Predefined unit-Y quaternion
        readonly public static qdouble UnitY  =  qdouble(0.0, 1.0, 0.0, 0.0);
        
        /// Predefined unit-Z quaternion
        readonly public static qdouble UnitZ  =  qdouble(0.0, 0.0, 1.0, 0.0);
        
        /// Predefined unit-W quaternion
        readonly public static qdouble UnitW  =  qdouble(0.0, 0.0, 0.0, 1.0);
        
        /// Predefined all-MaxValue quaternion
        readonly public static qdouble MaxValue  =  qdouble(double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue);
        
        /// Predefined all-MinValue quaternion
        readonly public static qdouble MinValue  =  qdouble(double.MinValue, double.MinValue, double.MinValue, double.MinValue);
        
        /// Predefined all-Epsilon quaternion
        readonly public static qdouble Epsilon  =  qdouble(double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon);
        
        /// Predefined all-NaN quaternion
        readonly public static qdouble NaN  =  qdouble(double.NaN, double.NaN, double.NaN, double.NaN);
        
        /// Predefined all-NegativeInfinity quaternion
        readonly public static qdouble NegativeInfinity  =  qdouble(double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity);
        
        /// Predefined all-PositiveInfinity quaternion
        readonly public static qdouble PositiveInfinity  =  qdouble(double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(qdouble lhs, qdouble rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(qdouble lhs, qdouble rhs) => !lhs.Equals(rhs);
        
        /// Returns proper multiplication of two quaternions.
        public static qdouble operator*(qdouble p, qdouble q) =>  qdouble(p.w * q.x + p.x * q.w + p.y * q.z - p.z * q.y, p.w * q.y + p.y * q.w + p.z * q.x - p.x * q.z, p.w * q.z + p.z * q.w + p.x * q.y - p.y * q.x, p.w * q.w - p.x * q.x - p.y * q.y - p.z * q.z);
        
        /// Returns a vector rotated by the quaternion.
        public static double3 operator*(qdouble q, double3 v)
        {
            let qv =  double3(q.x, q.y, q.z);
            let uv = double3.Cross(qv, v);
            let uuv = double3.Cross(qv, uv);
            return v + ((uv * q.w) + uuv) * 2;
        }
        
        /// Returns a vector rotated by the quaternion (preserves v.w).
        public static double4 operator*(qdouble q, double4 v) =>  double4(q *  double3(v), v.w);
        
        /// Returns a vector rotated by the inverted quaternion.
        public static double3 operator*(double3 v, qdouble q) => q.Inverse * v;
        
        /// Returns a vector rotated by the inverted quaternion (preserves v.w).
        public static double4 operator*(double4 v, qdouble q) => q.Inverse * v;

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public double[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(qdouble rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 397) ^ y.GetHashCode()) * 397) ^ z.GetHashCode()) * 397) ^ w.GetHashCode();
            }
        }
        
        /// Rotates this quaternion from an axis and an angle (in radians).
        public qdouble Rotated(double angle, double3 v) => this * FromAxisAngle(angle, v);

        //#endregion


        //#region Static Functions
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        public static double Dot(qdouble lhs, qdouble rhs) => ((lhs.x * rhs.x + lhs.y * rhs.y) + (lhs.z * rhs.z + lhs.w * rhs.w));
        
        /// Creates a quaternion from an axis and an angle (in radians).
        public static qdouble FromAxisAngle(double angle, double3 v)
        {
            let s = System.Math.Sin((double)angle * 0.5);
            let c = System.Math.Cos((double)angle * 0.5);
            return  qdouble((double)((double)v.x * s), (double)((double)v.y * s), (double)((double)v.z * s), (double)c);
        }
        
        /// Creates a quaternion from the rotational part of a double4x4.
        public static qdouble FromMat3(double3x3 m)
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
                case 0: return  qdouble((double)((double)(m.m12 - m.m21) * mult), (double)((double)(m.m20 - m.m02) * mult), (double)((double)(m.m01 - m.m10) * mult), (double)(biggestVal));
                case 1: return  qdouble((double)(biggestVal), (double)((double)(m.m01 + m.m10) * mult), (double)((double)(m.m20 + m.m02) * mult), (double)((double)(m.m12 - m.m21) * mult));
                case 2: return  qdouble((double)((double)(m.m01 + m.m10) * mult), (double)(biggestVal), (double)((double)(m.m12 + m.m21) * mult), (double)((double)(m.m20 - m.m02) * mult));
                default: return  qdouble((double)((double)(m.m20 + m.m02) * mult), (double)((double)(m.m12 + m.m21) * mult), (double)(biggestVal), (double)((double)(m.m01 - m.m10) * mult));
            }
        }
        
        /// Creates a quaternion from the rotational part of a double3x3.
        public static qdouble FromMat4(double4x4 m) => FromMat3( double3x3(m));
        
        /// Returns the cross product between two quaternions.
        public static qdouble Cross(qdouble q1, qdouble q2) =>  qdouble(q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y, q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z, q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x, q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        public static qdouble Mix(qdouble x, qdouble y, double a)
        {
            let cosTheta = (double)Dot(x, y);
            if (cosTheta > 1 - float.Epsilon)
                return Lerp(x, y, a);
            else
            {
                let angle = System.Math.Acos((double)cosTheta);
                return ( (System.Math.Sin((1 - (double)a) * angle) * x + System.Math.Sin((double)a * angle) * y) / System.Math.Sin(angle) );
            }
        }
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        public static qdouble SLerp(qdouble x, qdouble y, double a)
        {
            var z = y;
            var cosTheta = (double)Dot(x, y);
            if (cosTheta < 0) { z = -y; cosTheta = -cosTheta; }
            if (cosTheta > 1 - float.Epsilon)
                return Lerp(x, z, a);
            else
            {
                var angle = System.Math.Acos((double)cosTheta);
                return ( (System.Math.Sin((1 - (double)a) * angle) * x + System.Math.Sin((double)a * angle) * z) / System.Math.Sin(angle) );
            }
        }
        
        /// Applies squad interpolation of these quaternions
        public static qdouble Squad(qdouble q1, qdouble q2, qdouble s1, qdouble s2, double h) => Mix(Mix(q1, q2, h), Mix(s1, s2, h), 2 * (1 - h) * h);

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        public static bool4 IsInfinity(qdouble v) => bool4(v.x.IsInfinity, v.y.IsInfinity, v.z.IsInfinity, v.w.IsInfinity);
        
        /// Returns a bool from the application of IsInfinity (v.IsInfinity).
        public static bool4 IsInfinity(double v) => bool4(v.IsInfinity);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        public static bool4 IsNaN(qdouble v) => bool4(v.x.IsNaN, v.y.IsNaN, v.z.IsNaN, v.w.IsNaN);
        
        /// Returns a bool from the application of IsNaN (v.IsNaN).
        public static bool4 IsNaN(double v) => bool4(v.IsNaN);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool4 IsNegativeInfinity(qdouble v) => bool4(v.x.IsNegativeInfinity, v.y.IsNegativeInfinity, v.z.IsNegativeInfinity, v.w.IsNegativeInfinity);
        
        /// Returns a bool from the application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool4 IsNegativeInfinity(double v) => bool4(v.IsNegativeInfinity);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool4 IsPositiveInfinity(qdouble v) => bool4(v.x.IsPositiveInfinity, v.y.IsPositiveInfinity, v.z.IsPositiveInfinity, v.w.IsPositiveInfinity);
        
        /// Returns a bool from the application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool4 IsPositiveInfinity(double v) => bool4(v.IsPositiveInfinity);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qdouble lhs, qdouble rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qdouble lhs, double rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(double lhs, qdouble rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(double lhs, double rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qdouble lhs, qdouble rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qdouble lhs, double rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(double lhs, qdouble rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(double lhs, double rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qdouble lhs, qdouble rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(qdouble lhs, double rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(double lhs, qdouble rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool4 GreaterThan(double lhs, double rhs) => bool4(lhs > rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qdouble lhs, qdouble rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(qdouble lhs, double rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(double lhs, qdouble rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool4 GreaterThanEqual(double lhs, double rhs) => bool4(lhs >= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qdouble lhs, qdouble rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(qdouble lhs, double rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(double lhs, qdouble rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool4 LesserThan(double lhs, double rhs) => bool4(lhs < rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qdouble lhs, qdouble rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(qdouble lhs, double rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(double lhs, qdouble rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool4 LesserThanEqual(double lhs, double rhs) => bool4(lhs <= rhs);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(qdouble min, qdouble max, qdouble a) => qdouble(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y, min.z * (1-a.z) + max.z * a.z, min.w * (1-a.w) + max.w * a.w);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(qdouble min, qdouble max, double a) => qdouble(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a, min.z * (1-a) + max.z * a, min.w * (1-a) + max.w * a);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(qdouble min, double max, qdouble a) => qdouble(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y, min.z * (1-a.z) + max * a.z, min.w * (1-a.w) + max * a.w);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(qdouble min, double max, double a) => qdouble(min.x * (1-a) + max * a, min.y * (1-a) + max * a, min.z * (1-a) + max * a, min.w * (1-a) + max * a);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(double min, qdouble max, qdouble a) => qdouble(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y, min * (1-a.z) + max.z * a.z, min * (1-a.w) + max.w * a.w);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(double min, qdouble max, double a) => qdouble(min * (1-a) + max.x * a, min * (1-a) + max.y * a, min * (1-a) + max.z * a, min * (1-a) + max.w * a);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(double min, double max, qdouble a) => qdouble(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y, min * (1-a.z) + max * a.z, min * (1-a.w) + max * a.w);
        
        /// Returns a qdouble from the application of Lerp (min * (1-a) + max * a).
        public static qdouble Lerp(double min, double max, double a) => qdouble(min * (1-a) + max * a);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qdouble lhs, qdouble rhs) => bool4(lhs.x < rhs.x, lhs.y < rhs.y, lhs.z < rhs.z, lhs.w < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(qdouble lhs, double rhs) => bool4(lhs.x < rhs, lhs.y < rhs, lhs.z < rhs, lhs.w < rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool4 operator<(double lhs, qdouble rhs) => bool4(lhs < rhs.x, lhs < rhs.y, lhs < rhs.z, lhs < rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qdouble lhs, qdouble rhs) => bool4(lhs.x <= rhs.x, lhs.y <= rhs.y, lhs.z <= rhs.z, lhs.w <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(qdouble lhs, double rhs) => bool4(lhs.x <= rhs, lhs.y <= rhs, lhs.z <= rhs, lhs.w <= rhs);
        
        /// Returns a bool4 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool4 operator<=(double lhs, qdouble rhs) => bool4(lhs <= rhs.x, lhs <= rhs.y, lhs <= rhs.z, lhs <= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qdouble lhs, qdouble rhs) => bool4(lhs.x > rhs.x, lhs.y > rhs.y, lhs.z > rhs.z, lhs.w > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(qdouble lhs, double rhs) => bool4(lhs.x > rhs, lhs.y > rhs, lhs.z > rhs, lhs.w > rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool4 operator>(double lhs, qdouble rhs) => bool4(lhs > rhs.x, lhs > rhs.y, lhs > rhs.z, lhs > rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qdouble lhs, qdouble rhs) => bool4(lhs.x >= rhs.x, lhs.y >= rhs.y, lhs.z >= rhs.z, lhs.w >= rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(qdouble lhs, double rhs) => bool4(lhs.x >= rhs, lhs.y >= rhs, lhs.z >= rhs, lhs.w >= rhs);
        
        /// Returns a bool4 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool4 operator>=(double lhs, qdouble rhs) => bool4(lhs >= rhs.x, lhs >= rhs.y, lhs >= rhs.z, lhs >= rhs.w);
        
        /// Returns a qdouble from component-wise application of operator- (-v).
        public static qdouble operator-(qdouble v) => qdouble(-v.x, -v.y, -v.z, -v.w);
        
        /// Returns a qdouble from component-wise application of operator+ (lhs + rhs).
        public static qdouble operator+(qdouble lhs, qdouble rhs) => qdouble(lhs.x + rhs.x, lhs.y + rhs.y, lhs.z + rhs.z, lhs.w + rhs.w);
        
        /// Returns a qdouble from component-wise application of operator+ (lhs + rhs).
        public static qdouble operator+(qdouble lhs, double rhs) => qdouble(lhs.x + rhs, lhs.y + rhs, lhs.z + rhs, lhs.w + rhs);
        
        /// Returns a qdouble from component-wise application of operator+ (lhs + rhs).
        public static qdouble operator+(double lhs, qdouble rhs) => qdouble(lhs + rhs.x, lhs + rhs.y, lhs + rhs.z, lhs + rhs.w);
        
        /// Returns a qdouble from component-wise application of operator- (lhs - rhs).
        public static qdouble operator-(qdouble lhs, qdouble rhs) => qdouble(lhs.x - rhs.x, lhs.y - rhs.y, lhs.z - rhs.z, lhs.w - rhs.w);
        
        /// Returns a qdouble from component-wise application of operator- (lhs - rhs).
        public static qdouble operator-(qdouble lhs, double rhs) => qdouble(lhs.x - rhs, lhs.y - rhs, lhs.z - rhs, lhs.w - rhs);
        
        /// Returns a qdouble from component-wise application of operator- (lhs - rhs).
        public static qdouble operator-(double lhs, qdouble rhs) => qdouble(lhs - rhs.x, lhs - rhs.y, lhs - rhs.z, lhs - rhs.w);
        
        /// Returns a qdouble from component-wise application of operator* (lhs * rhs).
        public static qdouble operator*(qdouble lhs, double rhs) => qdouble(lhs.x * rhs, lhs.y * rhs, lhs.z * rhs, lhs.w * rhs);
        
        /// Returns a qdouble from component-wise application of operator* (lhs * rhs).
        public static qdouble operator*(double lhs, qdouble rhs) => qdouble(lhs * rhs.x, lhs * rhs.y, lhs * rhs.z, lhs * rhs.w);
        
        /// Returns a qdouble from component-wise application of operator/ (lhs / rhs).
        public static qdouble operator/(qdouble lhs, double rhs) => qdouble(lhs.x / rhs, lhs.y / rhs, lhs.z / rhs, lhs.w / rhs);

        //#endregion

    }
}
