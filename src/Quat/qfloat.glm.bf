using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static float[] ToArray(qfloat q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(qfloat q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(qfloat q, qfloat rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(qfloat q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool4 IsInfinity(qfloat v) => qfloat.IsInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsFinite (v.IsFinite).
        [Inline]
        public static bool4 IsFinite(qfloat v) => qfloat.IsFinite(v);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool4 IsNaN(qfloat v) => qfloat.IsNaN(v);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool4 IsNegativeInfinity(qfloat v) => qfloat.IsNegativeInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool4 IsPositiveInfinity(qfloat v) => qfloat.IsPositiveInfinity(v);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(qfloat lhs, qfloat rhs) => qfloat.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(qfloat lhs, qfloat rhs) => qfloat.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(qfloat lhs, qfloat rhs) => qfloat.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(qfloat lhs, qfloat rhs) => qfloat.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(qfloat lhs, qfloat rhs) => qfloat.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(qfloat lhs, qfloat rhs) => qfloat.LesserThanEqual(lhs, rhs);
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        [Inline]
        public static float Dot(qfloat lhs, qfloat rhs) => qfloat.Dot(lhs, rhs);
        
        /// Returns the euclidean length of this quaternion.
        [Inline]
        public static float Length(qfloat q) => q.Length;
        
        /// Returns the squared euclidean length of this quaternion.
        [Inline]
        public static float LengthSqr(qfloat q) => q.LengthSqr;
        
        /// Returns a copy of this quaternion with length one (undefined if this has zero length).
        [Inline]
        public static qfloat Normalized(qfloat q) => q.Normalized;
        
        /// Returns a copy of this quaternion with length one (returns zero if length is zero).
        [Inline]
        public static qfloat NormalizedSafe(qfloat q) => q.NormalizedSafe;
        
        /// Returns the represented angle of this quaternion.
        [Inline]
        public static double Angle(qfloat q) => q.Angle;
        
        /// Returns the represented axis of this quaternion.
        [Inline]
        public static float3 Axis(qfloat q) => q.Axis;
        
        /// Returns the represented yaw angle of this quaternion.
        [Inline]
        public static double Yaw(qfloat q) => q.Yaw;
        
        /// Returns the represented pitch angle of this quaternion.
        [Inline]
        public static double Pitch(qfloat q) => q.Pitch;
        
        /// Returns the represented roll angle of this quaternion.
        [Inline]
        public static double Roll(qfloat q) => q.Roll;
        
        /// Returns the represented euler angles (pitch, yaw, roll) of this quaternion.
        [Inline]
        public static double3 EulerAngles(qfloat q) => q.EulerAngles;
        
        /// Rotates this quaternion from an axis and an angle (in radians).
        [Inline]
        public static qfloat Rotated(qfloat q, float angle, float3 v) => q.Rotated(angle, v);
        
        /// Creates a float3x3 that realizes the rotation of this quaternion
        [Inline]
        public static float3x3 ToMat3(qfloat q) => q.ToMat3;
        
        /// Creates a float4x4 that realizes the rotation of this quaternion
        [Inline]
        public static float4x4 ToMat4(qfloat q) => q.ToMat4;
        
        /// Returns the conjugated quaternion
        [Inline]
        public static qfloat Conjugate(qfloat q) => q.Conjugate;
        
        /// Returns the inverse quaternion
        [Inline]
        public static qfloat Inverse(qfloat q) => q.Inverse;
        
        /// Returns the cross product between two quaternions.
        [Inline]
        public static qfloat Cross(qfloat q1, qfloat q2) => qfloat.Cross(q1, q2);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        [Inline]
        public static qfloat Mix(qfloat x, qfloat y, float a) => qfloat.Mix(x, y, a);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        [Inline]
        public static qfloat SLerp(qfloat x, qfloat y, float a) => qfloat.SLerp(x, y, a);
        
        /// Applies squad interpolation of these quaternions
        [Inline]
        public static qfloat Squad(qfloat q1, qfloat q2, qfloat s1, qfloat s2, float h) => qfloat.Squad(q1, q2, s1, s2, h);
        
        /// Returns a qfloat from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static qfloat Lerp(qfloat min, qfloat max, qfloat a) => qfloat.Lerp(min, max, a);

    }
}
