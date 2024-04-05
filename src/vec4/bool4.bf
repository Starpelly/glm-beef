using System;
namespace glm
{
    
    /// A vector of type bool with 4 components.
    [Union]
    public struct bool4
    {

        #region Fields
        
        /// component data
        public bool[4] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_bool4 swizzle;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(bool x, bool y, bool z, bool w)
        {
            values = .(x,y,z,w);
        }
        
        /// all-same-value constructor
        public this(bool v)
        {
            values = .(v,v,v,v);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(bool2 v)
        {
            values = .(v.x,v.y,false,false);
        }
        
        /// from-vector-and-value constructor (empty fields are zero/false)
        public this(bool2 v, bool z)
        {
            values = .(v.x,v.y,z,false);
        }
        
        /// from-vector-and-value constructor
        public this(bool2 v, bool z, bool w)
        {
            values = .(v.x,v.y,z,w);
        }
        
        /// from-vector constructor (empty fields are zero/false)
        public this(bool3 v)
        {
            values = .(v.x,v.y,v.z,false);
        }
        
        /// from-vector-and-value constructor
        public this(bool3 v, bool w)
        {
            values = .(v.x,v.y,v.z,w);
        }
        
        /// from-vector constructor
        public this(bool4 v)
        {
            values = .(v.x,v.y,v.z,v.w);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(bool[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? false : v[0],(c < 1) ? false : v[1],(c < 2) ? false : v[2],(c < 3) ? false : v[3]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(bool[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? false : v[0 + startIndex],(c + startIndex < 1) ? false : v[1 + startIndex],(c + startIndex < 2) ? false : v[2 + startIndex],(c + startIndex < 3) ? false : v[3 + startIndex]);
        }

        #endregion


        #region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(bool4 v) =>  int2(v.x ? 1 : 0, v.y ? 1 : 0);
        
        /// Explicitly converts this to a int3.
        public static explicit operator int3(bool4 v) =>  int3(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0);
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(bool4 v) =>  int4(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(bool4 v) =>  uint2(v.x ? 1u : 0u, v.y ? 1u : 0u);
        
        /// Explicitly converts this to a uint3.
        public static explicit operator uint3(bool4 v) =>  uint3(v.x ? 1u : 0u, v.y ? 1u : 0u, v.z ? 1u : 0u);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(bool4 v) =>  uint4(v.x ? 1u : 0u, v.y ? 1u : 0u, v.z ? 1u : 0u, v.w ? 1u : 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(bool4 v) =>  float2(v.x ? 1f : 0f, v.y ? 1f : 0f);
        
        /// Explicitly converts this to a float3.
        public static explicit operator float3(bool4 v) =>  float3(v.x ? 1f : 0f, v.y ? 1f : 0f, v.z ? 1f : 0f);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(bool4 v) =>  float4(v.x ? 1f : 0f, v.y ? 1f : 0f, v.z ? 1f : 0f, v.w ? 1f : 0f);
        
        /// Explicitly converts this to a double2.
        public static explicit operator double2(bool4 v) =>  double2(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0);
        
        /// Explicitly converts this to a double3.
        public static explicit operator double3(bool4 v) =>  double3(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, v.z ? 1.0 : 0.0);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(bool4 v) =>  double4(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, v.z ? 1.0 : 0.0, v.w ? 1.0 : 0.0);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(bool4 v) =>  long2(v.x ? 1 : 0, v.y ? 1 : 0);
        
        /// Explicitly converts this to a long3.
        public static explicit operator long3(bool4 v) =>  long3(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(bool4 v) =>  long4(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(bool4 v) =>  bool2((bool)v.x, (bool)v.y);
        
        /// Explicitly converts this to a bool3.
        public static explicit operator bool3(bool4 v) =>  bool3((bool)v.x, (bool)v.y, (bool)v.z);

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
        
        /// z-component
        public bool z
        {
            [Inline]get
            {
                return values[2];
            }
            [Inline]set mut
            {
                values[2] = value;
            }
        }
        
        /// w-component
        public bool w
        {
            [Inline]get
            {
                return values[3];
            }
            [Inline]set mut
            {
                values[3] = value;
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
        public bool2 xz
        {
            [Inline]get
            {
                return  bool2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 yz
        {
            [Inline]get
            {
                return  bool2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 xyz
        {
            [Inline]get
            {
                return  bool3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 xw
        {
            [Inline]get
            {
                return  bool2(x, w);
            }
            [Inline]set mut
            {
                x = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 yw
        {
            [Inline]get
            {
                return  bool2(y, w);
            }
            [Inline]set mut
            {
                y = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 xyw
        {
            [Inline]get
            {
                return  bool3(x, y, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 zw
        {
            [Inline]get
            {
                return  bool2(z, w);
            }
            [Inline]set mut
            {
                z = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 xzw
        {
            [Inline]get
            {
                return  bool3(x, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 yzw
        {
            [Inline]get
            {
                return  bool3(y, z, w);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool4 xyzw
        {
            [Inline]get
            {
                return  bool4(x, y, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
                w = value.w;
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
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 rb
        {
            [Inline]get
            {
                return  bool2(x, z);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 gb
        {
            [Inline]get
            {
                return  bool2(y, z);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 rgb
        {
            [Inline]get
            {
                return  bool3(x, y, z);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 ra
        {
            [Inline]get
            {
                return  bool2(x, w);
            }
            [Inline]set mut
            {
                x = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 ga
        {
            [Inline]get
            {
                return  bool2(y, w);
            }
            [Inline]set mut
            {
                y = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 rga
        {
            [Inline]get
            {
                return  bool3(x, y, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool2 ba
        {
            [Inline]get
            {
                return  bool2(z, w);
            }
            [Inline]set mut
            {
                z = value.x;
                w = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 rba
        {
            [Inline]get
            {
                return  bool3(x, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool3 gba
        {
            [Inline]get
            {
                return  bool3(y, z, w);
            }
            [Inline]set mut
            {
                y = value.x;
                z = value.y;
                w = value.z;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool4 rgba
        {
            [Inline]get
            {
                return  bool4(x, y, z, w);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
                z = value.z;
                w = value.w;
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
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool b
        {
            [Inline]get
            {
                return z;
            }
            [Inline]set mut
            {
                z = value;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public bool a
        {
            [Inline]get
            {
                return w;
            }
            [Inline]set mut
            {
                w = value;
            }
        }
        
        /// Returns the number of components (4).
        public int Count => 4;
        
        /// Returns the minimal component of this vector.
        public bool MinElement => ((x && y) && (z && w));
        
        /// Returns the maximal component of this vector.
        public bool MaxElement => ((x || y) || (z || w));
        
        /// Returns true if all component are true.
        public bool All => ((x && y) && (z && w));
        
        /// Returns true if any component is true.
        public bool Any => ((x || y) || (z || w));

        #endregion


        #region Static Properties
        
        /// Predefined all-zero vector
        readonly public static bool4 Zero  =  bool4(false, false, false, false);
        
        /// Predefined all-ones vector
        readonly public static bool4 Ones  =  bool4(true, true, true, true);
        
        /// Predefined unit-X vector
        readonly public static bool4 UnitX  =  bool4(true, false, false, false);
        
        /// Predefined unit-Y vector
        readonly public static bool4 UnitY  =  bool4(false, true, false, false);
        
        /// Predefined unit-Z vector
        readonly public static bool4 UnitZ  =  bool4(false, false, true, false);
        
        /// Predefined unit-W vector
        readonly public static bool4 UnitW  =  bool4(false, false, false, true);

        #endregion


        #region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(bool4 lhs, bool4 rhs) => ((lhs.x == rhs.x && lhs.y == rhs.y) && (lhs.z == rhs.z && lhs.w == rhs.w));
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(bool4 lhs, bool4 rhs) => !((lhs.x == rhs.x && lhs.y == rhs.y) && (lhs.z == rhs.z && lhs.w == rhs.w));

        #endregion


        #region Functions
        
        /// Returns an array with all values
        public bool[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
            let _z = scope String(); values[2].ToString(_z);
            let _w = scope String(); values[3].ToString(_w);
             stringBuffer.Join(sep, _x,_y,_z,_w );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 2) ^ y.GetHashCode()) * 2) ^ z.GetHashCode()) * 2) ^ w.GetHashCode();
            }
        }

        #endregion


        #region Static Functions
        
        /// Returns a bool4 with independent and identically distributed random true/false values (the probability for 'true' can be configured).
        public static bool4 Random(Random random, float trueProbability = 0.5f) =>  bool4(random.NextDouble() < trueProbability, random.NextDouble() < trueProbability, random.NextDouble() < trueProbability, random.NextDouble() < trueProbability);

        #endregion


        #region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(bool4 lhs, bool4 rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(bool4 lhs, bool rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(bool lhs, bool4 rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(bool lhs, bool rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool4 lhs, bool4 rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool4 lhs, bool rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool lhs, bool4 rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool lhs, bool rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of Not (!v).
        public static bool4 Not(bool4 v) => bool4(!v.x, !v.y, !v.z, !v.w);
        
        /// Returns a bool from the application of Not (!v).
        public static bool4 Not(bool v) => bool4(!v);
        
        /// Returns a bool4 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool4 And(bool4 lhs, bool4 rhs) => bool4(lhs.x && rhs.x, lhs.y && rhs.y, lhs.z && rhs.z, lhs.w && rhs.w);
        
        /// Returns a bool4 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool4 And(bool4 lhs, bool rhs) => bool4(lhs.x && rhs, lhs.y && rhs, lhs.z && rhs, lhs.w && rhs);
        
        /// Returns a bool4 from component-wise application of And (lhs &amp;&amp; rhs).
        public static bool4 And(bool lhs, bool4 rhs) => bool4(lhs && rhs.x, lhs && rhs.y, lhs && rhs.z, lhs && rhs.w);
        
        /// Returns a bool from the application of And (lhs &amp;&amp; rhs).
        public static bool4 And(bool lhs, bool rhs) => bool4(lhs && rhs);
        
        /// Returns a bool4 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool4 Nand(bool4 lhs, bool4 rhs) => bool4(!(lhs.x && rhs.x), !(lhs.y && rhs.y), !(lhs.z && rhs.z), !(lhs.w && rhs.w));
        
        /// Returns a bool4 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool4 Nand(bool4 lhs, bool rhs) => bool4(!(lhs.x && rhs), !(lhs.y && rhs), !(lhs.z && rhs), !(lhs.w && rhs));
        
        /// Returns a bool4 from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool4 Nand(bool lhs, bool4 rhs) => bool4(!(lhs && rhs.x), !(lhs && rhs.y), !(lhs && rhs.z), !(lhs && rhs.w));
        
        /// Returns a bool from the application of Nand (!(lhs &amp;&amp; rhs)).
        public static bool4 Nand(bool lhs, bool rhs) => bool4(!(lhs && rhs));
        
        /// Returns a bool4 from component-wise application of Or (lhs || rhs).
        public static bool4 Or(bool4 lhs, bool4 rhs) => bool4(lhs.x || rhs.x, lhs.y || rhs.y, lhs.z || rhs.z, lhs.w || rhs.w);
        
        /// Returns a bool4 from component-wise application of Or (lhs || rhs).
        public static bool4 Or(bool4 lhs, bool rhs) => bool4(lhs.x || rhs, lhs.y || rhs, lhs.z || rhs, lhs.w || rhs);
        
        /// Returns a bool4 from component-wise application of Or (lhs || rhs).
        public static bool4 Or(bool lhs, bool4 rhs) => bool4(lhs || rhs.x, lhs || rhs.y, lhs || rhs.z, lhs || rhs.w);
        
        /// Returns a bool from the application of Or (lhs || rhs).
        public static bool4 Or(bool lhs, bool rhs) => bool4(lhs || rhs);
        
        /// Returns a bool4 from component-wise application of Nor (!(lhs || rhs)).
        public static bool4 Nor(bool4 lhs, bool4 rhs) => bool4(!(lhs.x || rhs.x), !(lhs.y || rhs.y), !(lhs.z || rhs.z), !(lhs.w || rhs.w));
        
        /// Returns a bool4 from component-wise application of Nor (!(lhs || rhs)).
        public static bool4 Nor(bool4 lhs, bool rhs) => bool4(!(lhs.x || rhs), !(lhs.y || rhs), !(lhs.z || rhs), !(lhs.w || rhs));
        
        /// Returns a bool4 from component-wise application of Nor (!(lhs || rhs)).
        public static bool4 Nor(bool lhs, bool4 rhs) => bool4(!(lhs || rhs.x), !(lhs || rhs.y), !(lhs || rhs.z), !(lhs || rhs.w));
        
        /// Returns a bool from the application of Nor (!(lhs || rhs)).
        public static bool4 Nor(bool lhs, bool rhs) => bool4(!(lhs || rhs));
        
        /// Returns a bool4 from component-wise application of Xor (lhs != rhs).
        public static bool4 Xor(bool4 lhs, bool4 rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of Xor (lhs != rhs).
        public static bool4 Xor(bool4 lhs, bool rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of Xor (lhs != rhs).
        public static bool4 Xor(bool lhs, bool4 rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of Xor (lhs != rhs).
        public static bool4 Xor(bool lhs, bool rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of Xnor (lhs == rhs).
        public static bool4 Xnor(bool4 lhs, bool4 rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Xnor (lhs == rhs).
        public static bool4 Xnor(bool4 lhs, bool rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Xnor (lhs == rhs).
        public static bool4 Xnor(bool lhs, bool4 rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Xnor (lhs == rhs).
        public static bool4 Xnor(bool lhs, bool rhs) => bool4(lhs == rhs);

        #endregion


        #region Component-Wise Operator Overloads
        
        /// Returns a bool4 from component-wise application of operator! (!v).
        public static bool4 operator!(bool4 v) => bool4(!v.x, !v.y, !v.z, !v.w);
        
        /// Returns a bool4 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool4 operator&(bool4 lhs, bool4 rhs) => bool4(lhs.x && rhs.x, lhs.y && rhs.y, lhs.z && rhs.z, lhs.w && rhs.w);
        
        /// Returns a bool4 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool4 operator&(bool4 lhs, bool rhs) => bool4(lhs.x && rhs, lhs.y && rhs, lhs.z && rhs, lhs.w && rhs);
        
        /// Returns a bool4 from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static bool4 operator&(bool lhs, bool4 rhs) => bool4(lhs && rhs.x, lhs && rhs.y, lhs && rhs.z, lhs && rhs.w);
        
        /// Returns a bool4 from component-wise application of operator| (lhs || rhs).
        public static bool4 operator|(bool4 lhs, bool4 rhs) => bool4(lhs.x || rhs.x, lhs.y || rhs.y, lhs.z || rhs.z, lhs.w || rhs.w);
        
        /// Returns a bool4 from component-wise application of operator| (lhs || rhs).
        public static bool4 operator|(bool4 lhs, bool rhs) => bool4(lhs.x || rhs, lhs.y || rhs, lhs.z || rhs, lhs.w || rhs);
        
        /// Returns a bool4 from component-wise application of operator| (lhs || rhs).
        public static bool4 operator|(bool lhs, bool4 rhs) => bool4(lhs || rhs.x, lhs || rhs.y, lhs || rhs.z, lhs || rhs.w);

        #endregion

    }
}
