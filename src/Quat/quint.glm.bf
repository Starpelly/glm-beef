using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static uint[] ToArray(quint q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(quint q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(quint q, quint rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(quint q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(quint lhs, quint rhs) => quint.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(quint lhs, quint rhs) => quint.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThan (lhs &gt; rhs).
        [Inline]
        public static bool4 GreaterThan(quint lhs, quint rhs) => quint.GreaterThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        [Inline]
        public static bool4 GreaterThanEqual(quint lhs, quint rhs) => quint.GreaterThanEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThan (lhs &lt; rhs).
        [Inline]
        public static bool4 LesserThan(quint lhs, quint rhs) => quint.LesserThan(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        [Inline]
        public static bool4 LesserThanEqual(quint lhs, quint rhs) => quint.LesserThanEqual(lhs, rhs);
        
        /// Returns the inner product (dot product, scalar product) of the two quaternions.
        [Inline]
        public static uint Dot(quint lhs, quint rhs) => quint.Dot(lhs, rhs);
        
        /// Returns the euclidean length of this quaternion.
        [Inline]
        public static float Length(quint q) => q.Length;
        
        /// Returns the squared euclidean length of this quaternion.
        [Inline]
        public static uint LengthSqr(quint q) => q.LengthSqr;
        
        /// Returns the cross product between two quaternions.
        [Inline]
        public static quint Cross(quint q1, quint q2) => quint.Cross(q1, q2);
        
        /// Returns a quint from component-wise application of Lerp (min * (1-a) + max * a).
        [Inline]
        public static quint Lerp(quint min, quint max, quint a) => quint.Lerp(min, max, a);

    }
}
