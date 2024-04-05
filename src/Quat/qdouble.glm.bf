using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static double[] ToArray(qdouble q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(qdouble q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(qdouble q, qdouble rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(qdouble q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of IsInfinity (v.IsInfinity).
        [Inline]
        public static bool4 IsInfinity(qdouble v) => qdouble.IsInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsNaN (v.IsNaN).
        [Inline]
        public static bool4 IsNaN(qdouble v) => qdouble.IsNaN(v);
        
        /// Returns a bool4 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        [Inline]
        public static bool4 IsNegativeInfinity(qdouble v) => qdouble.IsNegativeInfinity(v);
        
        /// Returns a bool4 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        [Inline]
        public static bool4 IsPositiveInfinity(qdouble v) => qdouble.IsPositiveInfinity(v);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(qdouble lhs, qdouble rhs) => qdouble.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(qdouble lhs, qdouble rhs) => qdouble.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(qdouble lhs, qdouble rhs) => qdouble.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(qdouble lhs, qdouble rhs) => qdouble.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(qdouble lhs, qdouble rhs) => qdouble.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(qdouble lhs, qdouble rhs) => qdouble.LesserThanEqual(lhs, rhs);
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        [Inline]
        public static double Dot(qdouble lhs, qdouble rhs) => qdouble.Dot(lhs, rhs);
        
        /// Returns the euclidean length of this quaternion.
        [Inline]
        public static double Length(qdouble q) => q.Length;
        
        /// Returns the squared euclidean length of this quaternion.
        [Inline]
        public static double LengthSqr(qdouble q) => q.LengthSqr;
        
        /// Returns a copy of this quaternion with length one (undefined if this has zero length).
        [Inline]
        public static qdouble Normalized(qdouble q) => q.Normalized;
        
        /// Returns a copy of this quaternion with length one (returns zero if length is zero).
        [Inline]
        public static qdouble NormalizedSafe(qdouble q) => q.NormalizedSafe;
        
        /// Returns the represented angle of this quaternion.
        [Inline]
        public static double Angle(qdouble q) => q.Angle;
        
        /// Returns the represented axis of this quaternion.
        [Inline]
        public static double3 Axis(qdouble q) => q.Axis;
        
        /// Returns the represented yaw angle of this quaternion.
        [Inline]
        public static double Yaw(qdouble q) => q.Yaw;
        
        /// Returns the represented pitch angle of this quaternion.
        [Inline]
        public static double Pitch(qdouble q) => q.Pitch;
        
        /// Returns the represented roll angle of this quaternion.
        [Inline]
        public static double Roll(qdouble q) => q.Roll;
        
        /// Returns the represented euler angles (pitch, yaw, roll) of this quaternion.
        [Inline]
        public static double3 EulerAngles(qdouble q) => q.EulerAngles;
        
        /// Rotates this quaternion from an axis and an angle (in radians).
        [Inline]
        public static qdouble Rotated(qdouble q, double angle, double3 v) => q.Rotated(angle, v);
        
        /// Creates a double3x3 that realizes the rotation of this quaternion
        [Inline]
        public static double3x3 ToMat3(qdouble q) => q.ToMat3;
        
        /// Creates a double4x4 that realizes the rotation of this quaternion
        [Inline]
        public static double4x4 ToMat4(qdouble q) => q.ToMat4;
        
        /// Returns the conjugated quaternion
        [Inline]
        public static qdouble Conjugate(qdouble q) => q.Conjugate;
        
        /// Returns the inverse quaternion
        [Inline]
        public static qdouble Inverse(qdouble q) => q.Inverse;
        
        /// Returns the cross product between two quaternions.
        [Inline]
        public static qdouble Cross(qdouble q1, qdouble q2) => qdouble.Cross(q1, q2);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        [Inline]
        public static qdouble Mix(qdouble x, qdouble y, double a) => qdouble.Mix(x, y, a);
        
        /// Calculates a proper spherical interpolation between two quaternions (only works for normalized quaternions).
        [Inline]
        public static qdouble SLerp(qdouble x, qdouble y, double a) => qdouble.SLerp(x, y, a);
        
        /// Applies squad interpolation of these quaternions
        [Inline]
        public static qdouble Squad(qdouble q1, qdouble q2, qdouble s1, qdouble s2, double h) => qdouble.Squad(q1, q2, s1, s2, h);
        
        /// Returns a qdouble from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static qdouble Lerp(qdouble min, qdouble max, qdouble a) => qdouble.Lerp(min, max, a);

    }
}
