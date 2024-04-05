using System;
namespace glm
{
    
    /// A vector of type bool with 2 components.
    [Union]
    public struct bool2
    {

        #region Fields
        
        /// component data
        public bool[2] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_bool2 swizzle;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(bool x, bool y)
        {
            values = .(x,y);
        }
        
        /// all-same-value constructor
        public this(bool v)
        {
            values = .(v,v);
        }
        
        /// from-vector constructor
        public this(bool2 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(bool3 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(bool4 v)
        {
            values = .(v.x,v.y);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(bool[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? false : v[0],(c < 1) ? false : v[1]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(bool[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? false : v[0 + startIndex],(c + startIndex < 1) ? false : v[1 + startIndex]);
        }

        #endregion


        #region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(bool2 v) =>  int2(v.x ? 1 : 0, v.y ? 1 : 0);
        
        /// Explicitly converts this to a int3. (Higher components are zeroed)
        public static explicit operator int3(bool2 v) =>  int3(v.x ? 1 : 0, v.y ? 1 : 0, 0);
        
        /// Explicitly converts this to a int4. (Higher components are zeroed)
        public static explicit operator int4(bool2 v) =>  int4(v.x ? 1 : 0, v.y ? 1 : 0, 0, 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(bool2 v) =>  uint2(v.x ? 1u : 0u, v.y ? 1u : 0u);
        
        /// Explicitly converts this to a uint3. (Higher components are zeroed)
        public static explicit operator uint3(bool2 v) =>  uint3(v.x ? 1u : 0u, v.y ? 1u : 0u, 0u);
        
        /// Explicitly converts this to a uint4. (Higher components are zeroed)
        public static explicit operator uint4(bool2 v) =>  uint4(v.x ? 1u : 0u, v.y ? 1u : 0u, 0u, 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(bool2 v) =>  float2(v.x ? 1f : 0f, v.y ? 1f : 0f);
        
        /// Explicitly converts this to a float3. (Higher components are zeroed)
        public static explicit operator float3(bool2 v) =>  float3(v.x ? 1f : 0f, v.y ? 1f : 0f, 0f);
        
        /// Explicitly converts this to a float4. (Higher components are zeroed)
        public static explicit operator float4(bool2 v) =>  float4(v.x ? 1f : 0f, v.y ? 1f : 0f, 0f, 0f);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(bool2 v) =>  double2(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0);
        
        /// Explicitly converts this to a double3. (Higher components are zeroed)
        public static explicit operator double3(bool2 v) =>  double3(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, 0.0);
        
        /// Explicitly converts this to a double4. (Higher components are zeroed)
        public static explicit operator double4(bool2 v) =>  double4(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, 0.0, 0.0);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(bool2 v) =>  long2(v.x ? 1 : 0, v.y ? 1 : 0);
        
        /// Explicitly converts this to a long3. (Higher components are zeroed)
        public static explicit operator long3(bool2 v) =>  long3(v.x ? 1 : 0, v.y ? 1 : 0, 0);
        
        /// Explicitly converts this to a long4. (Higher components are zeroed)
        public static explicit operator long4(bool2 v) =>  long4(v.x ? 1 : 0, v.y ? 1 : 0, 0, 0);
        
        /// Explicitly converts this to a bool3. (Higher components are zeroed)
        public static explicit operator bool3(bool2 v) =>  bool3((bool)v.x, (bool)v.y, false);
        
        /// Explicitly converts this to a bool4. (Higher components are zeroed)
        public static explicit operator bool4(bool2 v) =>  bool4((bool)v.x, (bool)v.y, false, false);

        #endregion


        #region Properties
        
        /// x-component
        public bool x
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
        public bool y
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
        
        /// 0-component
        public bool width
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
        
        /// 1-component
        public bool height
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
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 xy
        {
            [Inline]get
            {
                return  bool2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 rg
        {
            [Inline]get
            {
                return  bool2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool r
        {
            [Inline]get
            {
                return x;
            }
            [Inline]set mut
            {
                x = value;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool g
        {
            [Inline]get
            {
                return y;
            }
            [Inline]set mut
            {
                y = value;
            }
        }
        
        /// Returns the number of components (2).
        public int Count => 2;
        
        /// Returns the minimal component of this vector.
        public bool MinElement => (x && y);
        
        /// Returns the maximal component of this vector.
        public bool MaxElement => (x || y);
        
        /// Returns true if all component are true.
        public bool All => (x && y);
        
        /// Returns true if any component is true.
        public bool Any => (x || y);

        #endregion


        #region Static Properties
        
        /// Predefined all-zero vector
        readonly public static bool2 Zero  =  bool2(false, false);
        
        /// Predefined all-ones vector
        readonly public static bool2 Ones  =  bool2(true, true);
        
        /// Predefined unit-X vector
        readonly public static bool2 UnitX  =  bool2(true, false);
        
        /// Predefined unit-Y vector
        readonly public static bool2 UnitY  =  bool2(false, true);

        #endregion


        #region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(bool2 lhs, bool2 rhs) => (lhs.x == rhs.x && lhs.y == rhs.y);
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(bool2 lhs, bool2 rhs) => !(lhs.x == rhs.x && lhs.y == rhs.y);

        #endregion


        #region Functions
        
        /// Returns an array with all values
        public bool[] ToArray() => new .[] ( x, y );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
             stringBuffer.Join(sep, _x,_y );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((x.GetHashCode()) * 2) ^ y.GetHashCode();
            }
        }

        #endregion


        #region Static Functions
        
        /// Returns a bool2 with independent and identically distributed random true/false values (the probability for 'true' can be configured).
        public static bool2 Random(Random random, float trueProbability = 0.5f) =>  bool2(random.NextDouble() < trueProbability, random.NextDouble() < trueProbability);

        #endregion


        #region Component-Wise Static Functions
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(bool2 lhs, bool2 rhs) => bool2(lhs.x == rhs.x, lhs.y == rhs.y);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(bool2 lhs, bool rhs) => bool2(lhs.x == rhs, lhs.y == rhs);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(bool lhs, bool2 rhs) => bool2(lhs == rhs.x, lhs == rhs.y);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool2 Equal(bool lhs, bool rhs) => bool2(lhs == rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(bool2 lhs, bool2 rhs) => bool2(lhs.x != rhs.x, lhs.y != rhs.y);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(bool2 lhs, bool rhs) => bool2(lhs.x != rhs, lhs.y != rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(bool lhs, bool2 rhs) => bool2(lhs != rhs.x, lhs != rhs.y);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(bool lhs, bool rhs) => bool2(lhs != rhs);
        
        /// Returns a bool2 from component-wise application of Not (!v).
        public static bool2 Not(bool2 v) => bool2(!v.x, !v.y);
        
        /// Returns a bool from the application of Not (!v).
        public static bool2 Not(bool v) => bool2(!v);
        
        /// Returns a bool2 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool2 And(bool2 lhs, bool2 rhs) => bool2(lhs.x && rhs.x, lhs.y && rhs.y);
        
        /// Returns a bool2 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool2 And(bool2 lhs, bool rhs) => bool2(lhs.x && rhs, lhs.y && rhs);
        
        /// Returns a bool2 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool2 And(bool lhs, bool2 rhs) => bool2(lhs && rhs.x, lhs && rhs.y);
        
        /// Returns a bool from the application of And (lhs &amp;&amp; rhs).
        public static bool2 And(bool lhs, bool rhs) => bool2(lhs && rhs);
        
        /// Returns a bool2 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool2 Nand(bool2 lhs, bool2 rhs) => bool2(!(lhs.x && rhs.x), !(lhs.y && rhs.y));
        
        /// Returns a bool2 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool2 Nand(bool2 lhs, bool rhs) => bool2(!(lhs.x && rhs), !(lhs.y && rhs));
        
        /// Returns a bool2 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool2 Nand(bool lhs, bool2 rhs) => bool2(!(lhs && rhs.x), !(lhs && rhs.y));
        
        /// Returns a bool from the application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool2 Nand(bool lhs, bool rhs) => bool2(!(lhs && rhs));
        
        /// Returns a bool2 from component-wise application of Or (lhs || rhs).
        public static bool2 Or(bool2 lhs, bool2 rhs) => bool2(lhs.x || rhs.x, lhs.y || rhs.y);
        
        /// Returns a bool2 from component-wise application of Or (lhs || rhs).
        public static bool2 Or(bool2 lhs, bool rhs) => bool2(lhs.x || rhs, lhs.y || rhs);
        
        /// Returns a bool2 from component-wise application of Or (lhs || rhs).
        public static bool2 Or(bool lhs, bool2 rhs) => bool2(lhs || rhs.x, lhs || rhs.y);
        
        /// Returns a bool from the application of Or (lhs || rhs).
        public static bool2 Or(bool lhs, bool rhs) => bool2(lhs || rhs);
        
        /// Returns a bool2 from component-wise application of Nor (!(lhs || rhs)).
        public static bool2 Nor(bool2 lhs, bool2 rhs) => bool2(!(lhs.x || rhs.x), !(lhs.y || rhs.y));
        
        /// Returns a bool2 from component-wise application of Nor (!(lhs || rhs)).
        public static bool2 Nor(bool2 lhs, bool rhs) => bool2(!(lhs.x || rhs), !(lhs.y || rhs));
        
        /// Returns a bool2 from component-wise application of Nor (!(lhs || rhs)).
        public static bool2 Nor(bool lhs, bool2 rhs) => bool2(!(lhs || rhs.x), !(lhs || rhs.y));
        
        /// Returns a bool from the application of Nor (!(lhs || rhs)).
        public static bool2 Nor(bool lhs, bool rhs) => bool2(!(lhs || rhs));
        
        /// Returns a bool2 from component-wise application of Xor (lhs != rhs).
        public static bool2 Xor(bool2 lhs, bool2 rhs) => bool2(lhs.x != rhs.x, lhs.y != rhs.y);
        
        /// Returns a bool2 from component-wise application of Xor (lhs != rhs).
        public static bool2 Xor(bool2 lhs, bool rhs) => bool2(lhs.x != rhs, lhs.y != rhs);
        
        /// Returns a bool2 from component-wise application of Xor (lhs != rhs).
        public static bool2 Xor(bool lhs, bool2 rhs) => bool2(lhs != rhs.x, lhs != rhs.y);
        
        /// Returns a bool from the application of Xor (lhs != rhs).
        public static bool2 Xor(bool lhs, bool rhs) => bool2(lhs != rhs);
        
        /// Returns a bool2 from component-wise application of Xnor (lhs == rhs).
        public static bool2 Xnor(bool2 lhs, bool2 rhs) => bool2(lhs.x == rhs.x, lhs.y == rhs.y);
        
        /// Returns a bool2 from component-wise application of Xnor (lhs == rhs).
        public static bool2 Xnor(bool2 lhs, bool rhs) => bool2(lhs.x == rhs, lhs.y == rhs);
        
        /// Returns a bool2 from component-wise application of Xnor (lhs == rhs).
        public static bool2 Xnor(bool lhs, bool2 rhs) => bool2(lhs == rhs.x, lhs == rhs.y);
        
        /// Returns a bool from the application of Xnor (lhs == rhs).
        public static bool2 Xnor(bool lhs, bool rhs) => bool2(lhs == rhs);

        #endregion


        #region Component-Wise Operator Overloads
        
        /// Returns a bool2 from component-wise application of operator! (!v).
        public static bool2 operator!(bool2 v) => bool2(!v.x, !v.y);
        
        /// Returns a bool2 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool2 operator&(bool2 lhs, bool2 rhs) => bool2(lhs.x && rhs.x, lhs.y && rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool2 operator&(bool2 lhs, bool rhs) => bool2(lhs.x && rhs, lhs.y && rhs);
        
        /// Returns a bool2 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool2 operator&(bool lhs, bool2 rhs) => bool2(lhs && rhs.x, lhs && rhs.y);
        
        /// Returns a bool2 from component-wise application of operator| (lhs || rhs).
        public static bool2 operator|(bool2 lhs, bool2 rhs) => bool2(lhs.x || rhs.x, lhs.y || rhs.y);
        
        /// Returns a bool2 from component-wise application of operator| (lhs || rhs).
        public static bool2 operator|(bool2 lhs, bool rhs) => bool2(lhs.x || rhs, lhs.y || rhs);
        
        /// Returns a bool2 from component-wise application of operator| (lhs || rhs).
        public static bool2 operator|(bool lhs, bool2 rhs) => bool2(lhs || rhs.x, lhs || rhs.y);

        #endregion

    }
}
