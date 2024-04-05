using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static bool[] ToArray(bool4 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(bool4 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(bool4 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (4).
        [Inline]
        public static int Count(bool4 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(bool4 v) => v.GetHashCode();
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool4 Equal(bool4 lhs, bool4 rhs) => bool4.Equal(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool4 NotEqual(bool4 lhs, bool4 rhs) => bool4.NotEqual(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Not (!v).
        [Inline]
        public static bool4 Not(bool4 v) => bool4.Not(v);
        
        /// Returns a bool4 from component-wise application of And (lhs &amp;&amp; rhs).
        [Inline]
        public static bool4 And(bool4 lhs, bool4 rhs) => bool4.And(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        [Inline]
        public static bool4 Nand(bool4 lhs, bool4 rhs) => bool4.Nand(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Or (lhs || rhs).
        [Inline]
        public static bool4 Or(bool4 lhs, bool4 rhs) => bool4.Or(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Nor (!(lhs || rhs)).
        [Inline]
        public static bool4 Nor(bool4 lhs, bool4 rhs) => bool4.Nor(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Xor (lhs != rhs).
        [Inline]
        public static bool4 Xor(bool4 lhs, bool4 rhs) => bool4.Xor(lhs, rhs);
        
        /// Returns a bool4 from component-wise application of Xnor (lhs == rhs).
        [Inline]
        public static bool4 Xnor(bool4 lhs, bool4 rhs) => bool4.Xnor(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static bool MinElement(bool4 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static bool MaxElement(bool4 v) => v.MaxElement;
        
        /// Returns true if all component are true.
        [Inline]
        public static bool All(bool4 v) => v.All;
        
        /// Returns true if any component is true.
        [Inline]
        public static bool Any(bool4 v) => v.Any;

    }
}
