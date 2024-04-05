using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static int[] ToArray(qint q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(qint q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(qint q, qint rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(qint q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(qint lhs, qint rhs) => qint.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(qint lhs, qint rhs) => qint.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(qint lhs, qint rhs) => qint.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(qint lhs, qint rhs) => qint.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(qint lhs, qint rhs) => qint.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(qint lhs, qint rhs) => qint.LesserThanEqual(lhs, rhs);
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        [Inline]
        public static int Dot(qint lhs, qint rhs) => qint.Dot(lhs, rhs);
        
        /// Returns the euclidean length of this quaternion.
        [Inline]
        public static float Length(qint q) => q.Length;
        
        /// Returns the squared euclidean length of this quaternion.
        [Inline]
        public static int LengthSqr(qint q) => q.LengthSqr;
        
        /// Returns the conjugated quaternion
        [Inline]
        public static qint Conjugate(qint q) => q.Conjugate;
        
        /// Returns the inverse quaternion
        [Inline]
        public static qint Inverse(qint q) => q.Inverse;
        
        /// Returns the cross product between two quaternions.
        [Inline]
        public static qint Cross(qint q1, qint q2) => qint.Cross(q1, q2);
        
        /// Returns a qint from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static qint Lerp(qint min, qint max, qint a) => qint.Lerp(min, max, a);

    }
}
