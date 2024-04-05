using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static bool[] ToArray(bool2 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(bool2 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(bool2 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (2).
        [Inline]
        public static int Count(bool2 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(bool2 v) => v.GetHashCode();
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool2 Equal(bool2 lhs, bool2 rhs) => bool2.Equal(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool2 NotEqual(bool2 lhs, bool2 rhs) => bool2.NotEqual(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Not (!v).
        [Inline]
        public static bool2 Not(bool2 v) => bool2.Not(v);
        
        /// Returns a bool2 from component-wise application of And (lhs &amp;&amp; rhs).
        [Inline]
        public static bool2 And(bool2 lhs, bool2 rhs) => bool2.And(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        [Inline]
        public static bool2 Nand(bool2 lhs, bool2 rhs) => bool2.Nand(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Or (lhs || rhs).
        [Inline]
        public static bool2 Or(bool2 lhs, bool2 rhs) => bool2.Or(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Nor (!(lhs || rhs)).
        [Inline]
        public static bool2 Nor(bool2 lhs, bool2 rhs) => bool2.Nor(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Xor (lhs != rhs).
        [Inline]
        public static bool2 Xor(bool2 lhs, bool2 rhs) => bool2.Xor(lhs, rhs);
        
        /// Returns a bool2 from component-wise application of Xnor (lhs == rhs).
        [Inline]
        public static bool2 Xnor(bool2 lhs, bool2 rhs) => bool2.Xnor(lhs, rhs);
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static bool MinElement(bool2 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static bool MaxElement(bool2 v) => v.MaxElement;
        
        /// Returns true if all component are true.
        [Inline]
        public static bool All(bool2 v) => v.All;
        
        /// Returns true if any component is true.
        [Inline]
        public static bool Any(bool2 v) => v.Any;

    }
}
