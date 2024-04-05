using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Returns an array with all values
        [Inline]
        public static bool[] ToArray(bool3 v) => v.ToArray();
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        [Inline]
        public static void ToString(bool3 v, String stringBuffer) => v.ToString(stringBuffer);
        
        /// Returns a string representation of this vector using a provided seperator.
        [Inline]
        public static void ToString(bool3 v, String stringBuffer, String sep) => v.ToString(stringBuffer, sep);
        
        /// Returns the number of components (3).
        [Inline]
        public static int Count(bool3 v) => v.Count;
        
        /// Returns a hash code for this instance.
        [Inline]
        public static int GetHashCode(bool3 v) => v.GetHashCode();
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool3 Equal(bool3 lhs, bool3 rhs) => bool3.Equal(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Equal (lhs == rhs).
        [Inline]
        public static bool Equal(bool lhs, bool rhs) => lhs == rhs;
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool3 NotEqual(bool3 lhs, bool3 rhs) => bool3.NotEqual(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of NotEqual (lhs != rhs).
        [Inline]
        public static bool NotEqual(bool lhs, bool rhs) => lhs != rhs;
        
        /// Returns a bool3 from component-wise application of Not (!v).
        [Inline]
        public static bool3 Not(bool3 v) => bool3.Not(v);
        
        /// Returns a bool3 from component-wise application of Not (!v).
        [Inline]
        public static bool Not(bool v) => !v;
        
        /// Returns a bool3 from component-wise application of And (lhs &amp;&amp; rhs).
        [Inline]
        public static bool3 And(bool3 lhs, bool3 rhs) => bool3.And(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of And (lhs &amp;&amp; rhs).
        [Inline]
        public static bool And(bool lhs, bool rhs) => lhs && rhs;
        
        /// Returns a bool3 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        [Inline]
        public static bool3 Nand(bool3 lhs, bool3 rhs) => bool3.Nand(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        [Inline]
        public static bool Nand(bool lhs, bool rhs) => !(lhs && rhs);
        
        /// Returns a bool3 from component-wise application of Or (lhs || rhs).
        [Inline]
        public static bool3 Or(bool3 lhs, bool3 rhs) => bool3.Or(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Or (lhs || rhs).
        [Inline]
        public static bool Or(bool lhs, bool rhs) => lhs || rhs;
        
        /// Returns a bool3 from component-wise application of Nor (!(lhs || rhs)).
        [Inline]
        public static bool3 Nor(bool3 lhs, bool3 rhs) => bool3.Nor(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Nor (!(lhs || rhs)).
        [Inline]
        public static bool Nor(bool lhs, bool rhs) => !(lhs || rhs);
        
        /// Returns a bool3 from component-wise application of Xor (lhs != rhs).
        [Inline]
        public static bool3 Xor(bool3 lhs, bool3 rhs) => bool3.Xor(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Xor (lhs != rhs).
        [Inline]
        public static bool Xor(bool lhs, bool rhs) => lhs != rhs;
        
        /// Returns a bool3 from component-wise application of Xnor (lhs == rhs).
        [Inline]
        public static bool3 Xnor(bool3 lhs, bool3 rhs) => bool3.Xnor(lhs, rhs);
        
        /// Returns a bool3 from component-wise application of Xnor (lhs == rhs).
        [Inline]
        public static bool Xnor(bool lhs, bool rhs) => lhs == rhs;
        
        /// Returns the minimal component of this vector.
        [Inline]
        public static bool MinElement(bool3 v) => v.MinElement;
        
        /// Returns the maximal component of this vector.
        [Inline]
        public static bool MaxElement(bool3 v) => v.MaxElement;
        
        /// Returns true if all component are true.
        [Inline]
        public static bool All(bool3 v) => v.All;
        
        /// Returns true if any component is true.
        [Inline]
        public static bool Any(bool3 v) => v.Any;

    }
}
