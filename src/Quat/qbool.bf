using System;
namespace glm
{
    
    /// A quaternion of type bool.
    public struct qbool : IEquatable<qbool>
    {

        //#region Fields
        
        /// component data
        public bool[4] values;

        //#endregion


        //#region Constructors
        
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
        
        /// copy constructor
        public this(qbool q)
        {
            values = .(q.x,q.y,q.z,q.w);
        }
        
        /// vector-and-scalar constructor (CAUTION: not angle-axis, use FromAngleAxis instead)
        public this(bool3 v, bool s)
        {
            values = .(v.x,v.y,v.z,s);
        }

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int4.
        public static explicit operator int4(qbool v) =>  int4(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a qint.
        public static explicit operator qint(qbool v) =>  qint(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a uint4.
        public static explicit operator uint4(qbool v) =>  uint4(v.x ? 1u : 0u, v.y ? 1u : 0u, v.z ? 1u : 0u, v.w ? 1u : 0u);
        
        /// Explicitly converts this to a quint.
        public static explicit operator quint(qbool v) =>  quint(v.x ? 1u : 0u, v.y ? 1u : 0u, v.z ? 1u : 0u, v.w ? 1u : 0u);
        
        /// Explicitly converts this to a float4.
        public static explicit operator float4(qbool v) =>  float4(v.x ? 1f : 0f, v.y ? 1f : 0f, v.z ? 1f : 0f, v.w ? 1f : 0f);
        
        /// Explicitly converts this to a qfloat.
        public static explicit operator qfloat(qbool v) =>  qfloat(v.x ? 1f : 0f, v.y ? 1f : 0f, v.z ? 1f : 0f, v.w ? 1f : 0f);
        
        /// Explicitly converts this to a double4.
        public static explicit operator double4(qbool v) =>  double4(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, v.z ? 1.0 : 0.0, v.w ? 1.0 : 0.0);
        
        /// Explicitly converts this to a qdouble.
        public static explicit operator qdouble(qbool v) =>  qdouble(v.x ? 1.0 : 0.0, v.y ? 1.0 : 0.0, v.z ? 1.0 : 0.0, v.w ? 1.0 : 0.0);
        
        /// Explicitly converts this to a long4.
        public static explicit operator long4(qbool v) =>  long4(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a qlong.
        public static explicit operator qlong(qbool v) =>  qlong(v.x ? 1 : 0, v.y ? 1 : 0, v.z ? 1 : 0, v.w ? 1 : 0);
        
        /// Explicitly converts this to a bool4.
        public static explicit operator bool4(qbool v) =>  bool4((bool)v.x, (bool)v.y, (bool)v.z, (bool)v.w);

        //#endregion


        //#region Indexer
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public bool this[int index]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 4, "index out of range");
                unchecked { return values[index]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(index >=0 && index < 4, "index out of range");
                unchecked { values[index] = value;}
            }
        }

        //#endregion


        //#region Properties
        
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
        
        /// Returns the number of components (4).
        public int Count => 4;
        
        /// Returns the minimal component of this quaternion.
        public bool MinElement => ((x && y) && (z && w));
        
        /// Returns the maximal component of this quaternion.
        public bool MaxElement => ((x || y) || (z || w));
        
        /// Returns true if all component are true.
        public bool All => ((x && y) && (z && w));
        
        /// Returns true if any component is true.
        public bool Any => ((x || y) || (z || w));

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero quaternion
        readonly public static qbool Zero  =  qbool(false, false, false, false);
        
        /// Predefined all-ones quaternion
        readonly public static qbool Ones  =  qbool(true, true, true, true);
        
        /// Predefined identity quaternion
        readonly public static qbool Identity  =  qbool(false, false, false, true);
        
        /// Predefined unit-X quaternion
        readonly public static qbool UnitX  =  qbool(true, false, false, false);
        
        /// Predefined unit-Y quaternion
        readonly public static qbool UnitY  =  qbool(false, true, false, false);
        
        /// Predefined unit-Z quaternion
        readonly public static qbool UnitZ  =  qbool(false, false, true, false);
        
        /// Predefined unit-W quaternion
        readonly public static qbool UnitW  =  qbool(false, false, false, true);

        //#endregion


        //#region Operators
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator==(qbool lhs, qbool rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator!=(qbool lhs, qbool rhs) => !lhs.Equals(rhs);

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public bool[] ToArray() => new .[] ( x, y, z, w );
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(qbool rhs) => ((x == rhs.x && y == rhs.y) && (z == rhs.z && w == rhs.w));
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((x.GetHashCode()) * 2) ^ y.GetHashCode()) * 2) ^ z.GetHashCode()) * 2) ^ w.GetHashCode();
            }
        }

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qbool lhs, qbool rhs) => bool4(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(qbool lhs, bool rhs) => bool4(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a bool4 from component-wise application of Equal (lhs == rhs).
        public static bool4 Equal(bool lhs, qbool rhs) => bool4(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool4 Equal(bool lhs, bool rhs) => bool4(lhs == rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qbool lhs, qbool rhs) => bool4(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(qbool lhs, bool rhs) => bool4(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a bool4 from component-wise application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool lhs, qbool rhs) => bool4(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool4 NotEqual(bool lhs, bool rhs) => bool4(lhs != rhs);
        
        /// Returns a bool4 from component-wise application of Not (!v).
        public static bool4 Not(qbool v) => bool4(!v.x, !v.y, !v.z, !v.w);
        
        /// Returns a bool from the application of Not (!v).
        public static bool4 Not(bool v) => bool4(!v);
        
        /// Returns a qbool from component-wise application of And (lhs &amp;&amp; rhs).
        public static qbool And(qbool lhs, qbool rhs) => qbool(lhs.x && rhs.x, lhs.y && rhs.y, lhs.z && rhs.z, lhs.w && rhs.w);
        
        /// Returns a qbool from component-wise application of And (lhs &amp;&amp; rhs).
        public static qbool And(qbool lhs, bool rhs) => qbool(lhs.x && rhs, lhs.y && rhs, lhs.z && rhs, lhs.w && rhs);
        
        /// Returns a qbool from component-wise application of And (lhs &amp;&amp; rhs).
        public static qbool And(bool lhs, qbool rhs) => qbool(lhs && rhs.x, lhs && rhs.y, lhs && rhs.z, lhs && rhs.w);
        
        /// Returns a qbool from the application of And (lhs &amp;&amp; rhs).
        public static qbool And(bool lhs, bool rhs) => qbool(lhs && rhs);
        
        /// Returns a qbool from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static qbool Nand(qbool lhs, qbool rhs) => qbool(!(lhs.x && rhs.x), !(lhs.y && rhs.y), !(lhs.z && rhs.z), !(lhs.w && rhs.w));
        
        /// Returns a qbool from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static qbool Nand(qbool lhs, bool rhs) => qbool(!(lhs.x && rhs), !(lhs.y && rhs), !(lhs.z && rhs), !(lhs.w && rhs));
        
        /// Returns a qbool from component-wise application of Nand (!(lhs &amp;&amp; rhs)).
        public static qbool Nand(bool lhs, qbool rhs) => qbool(!(lhs && rhs.x), !(lhs && rhs.y), !(lhs && rhs.z), !(lhs && rhs.w));
        
        /// Returns a qbool from the application of Nand (!(lhs &amp;&amp; rhs)).
        public static qbool Nand(bool lhs, bool rhs) => qbool(!(lhs && rhs));
        
        /// Returns a qbool from component-wise application of Or (lhs || rhs).
        public static qbool Or(qbool lhs, qbool rhs) => qbool(lhs.x || rhs.x, lhs.y || rhs.y, lhs.z || rhs.z, lhs.w || rhs.w);
        
        /// Returns a qbool from component-wise application of Or (lhs || rhs).
        public static qbool Or(qbool lhs, bool rhs) => qbool(lhs.x || rhs, lhs.y || rhs, lhs.z || rhs, lhs.w || rhs);
        
        /// Returns a qbool from component-wise application of Or (lhs || rhs).
        public static qbool Or(bool lhs, qbool rhs) => qbool(lhs || rhs.x, lhs || rhs.y, lhs || rhs.z, lhs || rhs.w);
        
        /// Returns a qbool from the application of Or (lhs || rhs).
        public static qbool Or(bool lhs, bool rhs) => qbool(lhs || rhs);
        
        /// Returns a qbool from component-wise application of Nor (!(lhs || rhs)).
        public static qbool Nor(qbool lhs, qbool rhs) => qbool(!(lhs.x || rhs.x), !(lhs.y || rhs.y), !(lhs.z || rhs.z), !(lhs.w || rhs.w));
        
        /// Returns a qbool from component-wise application of Nor (!(lhs || rhs)).
        public static qbool Nor(qbool lhs, bool rhs) => qbool(!(lhs.x || rhs), !(lhs.y || rhs), !(lhs.z || rhs), !(lhs.w || rhs));
        
        /// Returns a qbool from component-wise application of Nor (!(lhs || rhs)).
        public static qbool Nor(bool lhs, qbool rhs) => qbool(!(lhs || rhs.x), !(lhs || rhs.y), !(lhs || rhs.z), !(lhs || rhs.w));
        
        /// Returns a qbool from the application of Nor (!(lhs || rhs)).
        public static qbool Nor(bool lhs, bool rhs) => qbool(!(lhs || rhs));
        
        /// Returns a qbool from component-wise application of Xor (lhs != rhs).
        public static qbool Xor(qbool lhs, qbool rhs) => qbool(lhs.x != rhs.x, lhs.y != rhs.y, lhs.z != rhs.z, lhs.w != rhs.w);
        
        /// Returns a qbool from component-wise application of Xor (lhs != rhs).
        public static qbool Xor(qbool lhs, bool rhs) => qbool(lhs.x != rhs, lhs.y != rhs, lhs.z != rhs, lhs.w != rhs);
        
        /// Returns a qbool from component-wise application of Xor (lhs != rhs).
        public static qbool Xor(bool lhs, qbool rhs) => qbool(lhs != rhs.x, lhs != rhs.y, lhs != rhs.z, lhs != rhs.w);
        
        /// Returns a qbool from the application of Xor (lhs != rhs).
        public static qbool Xor(bool lhs, bool rhs) => qbool(lhs != rhs);
        
        /// Returns a qbool from component-wise application of Xnor (lhs == rhs).
        public static qbool Xnor(qbool lhs, qbool rhs) => qbool(lhs.x == rhs.x, lhs.y == rhs.y, lhs.z == rhs.z, lhs.w == rhs.w);
        
        /// Returns a qbool from component-wise application of Xnor (lhs == rhs).
        public static qbool Xnor(qbool lhs, bool rhs) => qbool(lhs.x == rhs, lhs.y == rhs, lhs.z == rhs, lhs.w == rhs);
        
        /// Returns a qbool from component-wise application of Xnor (lhs == rhs).
        public static qbool Xnor(bool lhs, qbool rhs) => qbool(lhs == rhs.x, lhs == rhs.y, lhs == rhs.z, lhs == rhs.w);
        
        /// Returns a qbool from the application of Xnor (lhs == rhs).
        public static qbool Xnor(bool lhs, bool rhs) => qbool(lhs == rhs);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a qbool from component-wise application of operator! (!v).
        public static qbool operator!(qbool v) => qbool(!v.x, !v.y, !v.z, !v.w);
        
        /// Returns a qbool from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static qbool operator&(qbool lhs, qbool rhs) => qbool(lhs.x && rhs.x, lhs.y && rhs.y, lhs.z && rhs.z, lhs.w && rhs.w);
        
        /// Returns a qbool from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static qbool operator&(qbool lhs, bool rhs) => qbool(lhs.x && rhs, lhs.y && rhs, lhs.z && rhs, lhs.w && rhs);
        
        /// Returns a qbool from component-wise application of operator&amp; (lhs &amp;&amp; rhs).
        public static qbool operator&(bool lhs, qbool rhs) => qbool(lhs && rhs.x, lhs && rhs.y, lhs && rhs.z, lhs && rhs.w);
        
        /// Returns a qbool from component-wise application of operator| (lhs || rhs).
        public static qbool operator|(qbool lhs, qbool rhs) => qbool(lhs.x || rhs.x, lhs.y || rhs.y, lhs.z || rhs.z, lhs.w || rhs.w);
        
        /// Returns a qbool from component-wise application of operator| (lhs || rhs).
        public static qbool operator|(qbool lhs, bool rhs) => qbool(lhs.x || rhs, lhs.y || rhs, lhs.z || rhs, lhs.w || rhs);
        
        /// Returns a qbool from component-wise application of operator| (lhs || rhs).
        public static qbool operator|(bool lhs, qbool rhs) => qbool(lhs || rhs.x, lhs || rhs.y, lhs || rhs.z, lhs || rhs.w);

        //#endregion

    }
}
