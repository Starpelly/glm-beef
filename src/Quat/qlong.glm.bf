using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static long[] ToArray(qlong q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(qlong q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(qlong q, qlong rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(qlong q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(qlong lhs, qlong rhs) => qlong.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(qlong lhs, qlong rhs) => qlong.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(qlong lhs, qlong rhs) => qlong.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(qlong lhs, qlong rhs) => qlong.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(qlong lhs, qlong rhs) => qlong.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(qlong lhs, qlong rhs) => qlong.LesserThanEqual(lhs, rhs);
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        [Inline]
        public static long Dot(qlong lhs, qlong rhs) => qlong.Dot(lhs, rhs);
        
        /// Returns the euclidean length of this quaternion.
        [Inline]
        public static double Length(qlong q) => q.Length;
        
        /// Returns the squared euclidean length of this quaternion.
        [Inline]
        public static long LengthSqr(qlong q) => q.LengthSqr;
        
        /// Returns the conjugated quaternion
        [Inline]
        public static qlong Conjugate(qlong q) => q.Conjugate;
        
        /// Returns the inverse quaternion
        [Inline]
        public static qlong Inverse(qlong q) => q.Inverse;
        
        /// Returns the cross product between two quaternions.
        [Inline]
        public static qlong Cross(qlong q1, qlong q2) => qlong.Cross(q1, q2);
        
        /// Returns a qlong from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static qlong Lerp(qlong min, qlong max, qlong a) => qlong.Lerp(min, max, a);

    }
}
