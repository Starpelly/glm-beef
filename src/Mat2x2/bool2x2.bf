using System;
namespace glm
{
    
    /// A matrix of type bool with 2 columns and 2 rows.
    public struct bool2x2 : IEquatable<bool2x2>
    {

        #region Fields
        
        /// component data
        public bool[4] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(bool m00, bool m01, bool m10, bool m11)
        {
            values = .(m00,m01,m10,m11);
        }
        
        /// Constructs this matrix from a bool2x2. Non-overwritten fields are from an Identity matrix.
        public this(bool2x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool3x2. Non-overwritten fields are from an Identity matrix.
        public this(bool3x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool4x2. Non-overwritten fields are from an Identity matrix.
        public this(bool4x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool2x3. Non-overwritten fields are from an Identity matrix.
        public this(bool2x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool3x3. Non-overwritten fields are from an Identity matrix.
        public this(bool3x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool4x3. Non-overwritten fields are from an Identity matrix.
        public this(bool4x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool2x4. Non-overwritten fields are from an Identity matrix.
        public this(bool2x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool3x4. Non-overwritten fields are from an Identity matrix.
        public this(bool3x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a bool4x4. Non-overwritten fields are from an Identity matrix.
        public this(bool4x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool2 c0, bool2 c1)
        {
            values = .(c0.x,c0.y,c1.x,c1.y);
        }

        #endregion


        #region Properties
        
        /// Column 0, Rows 0
        public bool m00
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
        
        /// Column 0, Rows 1
        public bool m01
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
        
        /// Column 1, Rows 0
        public bool m10
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
        
        /// Column 1, Rows 1
        public bool m11
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
        
        /// Gets or sets the column nr 0
        public bool2 Column0
        {
            [Inline]get
            {
                return  bool2(m00, m01);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
            }
        }
        
        /// Gets or sets the column nr 1
        public bool2 Column1
        {
            [Inline]get
            {
                return  bool2(m10, m11);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
            }
        }
        
        /// Gets or sets the row nr 0
        public bool2 Row0
        {
            [Inline]get
            {
                return  bool2(m00, m10);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
            }
        }
        
        /// Gets or sets the row nr 1
        public bool2 Row1
        {
            [Inline]get
            {
                return  bool2(m01, m11);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static bool2x2 Zero  =  bool2x2(false, false, false, false);
        
        /// Predefined all-ones matrix
        readonly public static bool2x2 Ones  =  bool2x2(true, true, true, true);
        
        /// Predefined identity matrix
        readonly public static bool2x2 Identity  =  bool2x2(true, false, false, true);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public bool[,] ToArray() => new .[,] ( ( m00, m01 ), ( m10, m11 ) );
        
        /// Creates a 1D array with all values (internal order)
        public bool[] ToArray1D() => new .[] ( m00, m01, m10, m11 );

        #endregion

        
        /// Returns the number of Fields (2 x 2 = 4).
        public int Count => 4;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public bool this[int fieldIndex]
        {
            [Inline]get
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 4, "fieldIndex was out of range");
               unchecked { return values[fieldIndex]; }
            }
            [Inline]set mut
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 4, "fieldIndex was out of range");
               unchecked { values[fieldIndex] = value; }
            }
        }
        
        /// Gets/Sets a specific 2D-indexed component (a bit slower than direct access).
        public bool this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 2, "row was out of range");
                unchecked { return values[col * 2 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 2, "row was out of range");
                unchecked { values[col * 2 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(bool2x2 rhs) => ((m00 == rhs.m00 && m01 == rhs.m01) && (m10 == rhs.m10 && m11 == rhs.m11));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(bool2x2 lhs, bool2x2 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(bool2x2 lhs, bool2x2 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((m00.GetHashCode()) * 2) ^ m01.GetHashCode()) * 2) ^ m10.GetHashCode()) * 2) ^ m11.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public bool2x2 Transposed => bool2x2(m00, m10, m01, m11);
        
        /// Returns the minimal component of this matrix.
        public bool MinElement => ((m00 && m01) && (m10 && m11));
        
        /// Returns the maximal component of this matrix.
        public bool MaxElement => ((m00 || m01) || (m10 || m11));
        
        /// Returns true if all component are true.
        public bool All => ((m00 && m01) && (m10 && m11));
        
        /// Returns true if any component is true.
        public bool Any => ((m00 || m01) || (m10 || m11));
        
        /// Executes a component-wise &amp;&amp;. (sorry for different overload but &amp;&amp; cannot be overloaded directly)
        public static bool2x2 operator&(bool2x2 lhs, bool2x2 rhs) => bool2x2(lhs.m00 && rhs.m00, lhs.m01 && rhs.m01, lhs.m10 && rhs.m10, lhs.m11 && rhs.m11);
        
        /// Executes a component-wise ||. (sorry for different overload but || cannot be overloaded directly)
        public static bool2x2 operator|(bool2x2 lhs, bool2x2 rhs) => bool2x2(lhs.m00 || rhs.m00, lhs.m01 || rhs.m01, lhs.m10 || rhs.m10, lhs.m11 || rhs.m11);
    }
}
