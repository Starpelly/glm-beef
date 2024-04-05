using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static bool[] ToArray(qbool q) => q.ToArray();
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(qbool q) => q.Count;
        
        /// Returns true iff this equals rhs component-wise.
        [Inline]
        public static bool Equals(qbool q, qbool rhs) => q.Equals(rhs);
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(qbool q) => q.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(qbool lhs, qbool rhs) => qbool.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(qbool lhs, qbool rhs) => qbool.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Not (!v).
        [Inline]
        public static bool4 Not(qbool v) => qbool.Not(v);
        
        /// Returns a qbool from component-wise application of And (lhs &amp;&amp; rhs).
        [Inline]
        public static qbool And(qbool lhs, qbool rhs) => qbool.And(lhs, rhs);
        
        /// Returns a qbool from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        [Inline]
        public static qbool Nand(qbool lhs, qbool rhs) => qbool.Nand(lhs, rhs);
        
        /// Returns a qbool from component-wise application of Or (lhs || rhs).
        [Inline]
        public static qbool Or(qbool lhs, qbool rhs) => qbool.Or(lhs, rhs);
        
        /// Returns a qbool from component-wise application of Nor (!(lhs || rhs)).
        [Inline]
        public static qbool Nor(qbool lhs, qbool rhs) => qbool.Nor(lhs, rhs);
        
        /// Returns a qbool from component-wise application of Xor (lhs != rhs).
        [Inline]
        public static qbool Xor(qbool lhs, qbool rhs) => qbool.Xor(lhs, rhs);
        
        /// Returns a qbool from component-wise application of Xnor (lhs == rhs).
        [Inline]
        public static qbool Xnor(qbool lhs, qbool rhs) => qbool.Xnor(lhs, rhs);
        
        /// Returns the minimal component of this quaternion.
        [Inline]
        public static bool MinElement(qbool q) => q.MinElement;
        
        /// Returns the maximal component of this quaternion.
        [Inline]
        public static bool MaxElement(qbool q) => q.MaxElement;
        
        /// Returns true if all component are true.
        [Inline]
        public static bool All(qbool q) => q.All;
        
        /// Returns true if any component is true.
        [Inline]
        public static bool Any(qbool q) => q.Any;

    }
}
