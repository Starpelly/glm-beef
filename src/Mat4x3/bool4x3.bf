using System;
namespace glm
{
    
    /// A matrix of type bool with 4 columns and 3 rows.
    public struct bool4x3 : IEquatable<bool4x3>
    {

        #region Fields
        
        /// component data
        public bool[12] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(bool m00, bool m01, bool m02, bool m10, bool m11, bool m12, bool m20, bool m21, bool m22, bool m30, bool m31, bool m32)
        {
            values = .(m00,m01,m02,m10,m11,m12,m20,m21,m22,m30,m31,m32);
        }
        
        /// Constructs this matrix from a bool2x2. Non-overwritten fields are from an Identity matrix.
        public this(bool2x2 m)
        {
            values = .(m.m00,m.m01,false,m.m10,m.m11,false,false,false,true,false,false,false);
        }
        
        /// Constructs this matrix from a bool3x2. Non-overwritten fields are from an Identity matrix.
        public this(bool3x2 m)
        {
            values = .(m.m00,m.m01,false,m.m10,m.m11,false,m.m20,m.m21,true,false,false,false);
        }
        
        /// Constructs this matrix from a bool4x2. Non-overwritten fields are from an Identity matrix.
        public this(bool4x2 m)
        {
            values = .(m.m00,m.m01,false,m.m10,m.m11,false,m.m20,m.m21,true,m.m30,m.m31,false);
        }
        
        /// Constructs this matrix from a bool2x3. Non-overwritten fields are from an Identity matrix.
        public this(bool2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,false,false,true,false,false,false);
        }
        
        /// Constructs this matrix from a bool3x3. Non-overwritten fields are from an Identity matrix.
        public this(bool3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,false,false,false);
        }
        
        /// Constructs this matrix from a bool4x3. Non-overwritten fields are from an Identity matrix.
        public this(bool4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,m.m30,m.m31,m.m32);
        }
        
        /// Constructs this matrix from a bool2x4. Non-overwritten fields are from an Identity matrix.
        public this(bool2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,false,false,true,false,false,false);
        }
        
        /// Constructs this matrix from a bool3x4. Non-overwritten fields are from an Identity matrix.
        public this(bool3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,false,false,false);
        }
        
        /// Constructs this matrix from a bool4x4. Non-overwritten fields are from an Identity matrix.
        public this(bool4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,m.m30,m.m31,m.m32);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool2 c0, bool2 c1)
        {
            values = .(c0.x,c0.y,false,c1.x,c1.y,false,false,false,true,false,false,false);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool2 c0, bool2 c1, bool2 c2)
        {
            values = .(c0.x,c0.y,false,c1.x,c1.y,false,c2.x,c2.y,true,false,false,false);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool2 c0, bool2 c1, bool2 c2, bool2 c3)
        {
            values = .(c0.x,c0.y,false,c1.x,c1.y,false,c2.x,c2.y,true,c3.x,c3.y,false);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool3 c0, bool3 c1)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,false,false,true,false,false,false);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool3 c0, bool3 c1, bool3 c2)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,c2.x,c2.y,c2.z,false,false,false);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(bool3 c0, bool3 c1, bool3 c2, bool3 c3)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,c2.x,c2.y,c2.z,c3.x,c3.y,c3.z);
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
        
        /// Column 0, Rows 2
        public bool m02
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
        
        /// Column 1, Rows 0
        public bool m10
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
        
        /// Column 1, Rows 1
        public bool m11
        {
            [Inline]get
            {
                return values[4];
            }
            [Inline]set mut
            {
                values[4] = value;
            }
        }
        
        /// Column 1, Rows 2
        public bool m12
        {
            [Inline]get
            {
                return values[5];
            }
            [Inline]set mut
            {
                values[5] = value;
            }
        }
        
        /// Column 2, Rows 0
        public bool m20
        {
            [Inline]get
            {
                return values[6];
            }
            [Inline]set mut
            {
                values[6] = value;
            }
        }
        
        /// Column 2, Rows 1
        public bool m21
        {
            [Inline]get
            {
                return values[7];
            }
            [Inline]set mut
            {
                values[7] = value;
            }
        }
        
        /// Column 2, Rows 2
        public bool m22
        {
            [Inline]get
            {
                return values[8];
            }
            [Inline]set mut
            {
                values[8] = value;
            }
        }
        
        /// Column 3, Rows 0
        public bool m30
        {
            [Inline]get
            {
                return values[9];
            }
            [Inline]set mut
            {
                values[9] = value;
            }
        }
        
        /// Column 3, Rows 1
        public bool m31
        {
            [Inline]get
            {
                return values[10];
            }
            [Inline]set mut
            {
                values[10] = value;
            }
        }
        
        /// Column 3, Rows 2
        public bool m32
        {
            [Inline]get
            {
                return values[11];
            }
            [Inline]set mut
            {
                values[11] = value;
            }
        }
        
        /// Gets or sets the column nr 0
        public bool3 Column0
        {
            [Inline]get
            {
                return  bool3(m00, m01, m02);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
            }
        }
        
        /// Gets or sets the column nr 1
        public bool3 Column1
        {
            [Inline]get
            {
                return  bool3(m10, m11, m12);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
            }
        }
        
        /// Gets or sets the column nr 2
        public bool3 Column2
        {
            [Inline]get
            {
                return  bool3(m20, m21, m22);
            }
            [Inline]set mut
            {
                m20 = value.x;
                m21 = value.y;
                m22 = value.z;
            }
        }
        
        /// Gets or sets the column nr 3
        public bool3 Column3
        {
            [Inline]get
            {
                return  bool3(m30, m31, m32);
            }
            [Inline]set mut
            {
                m30 = value.x;
                m31 = value.y;
                m32 = value.z;
            }
        }
        
        /// Gets or sets the row nr 0
        public bool4 Row0
        {
            [Inline]get
            {
                return  bool4(m00, m10, m20, m30);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
                m20 = value.z;
                m30 = value.w;
            }
        }
        
        /// Gets or sets the row nr 1
        public bool4 Row1
        {
            [Inline]get
            {
                return  bool4(m01, m11, m21, m31);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
                m21 = value.z;
                m31 = value.w;
            }
        }
        
        /// Gets or sets the row nr 2
        public bool4 Row2
        {
            [Inline]get
            {
                return  bool4(m02, m12, m22, m32);
            }
            [Inline]set mut
            {
                m02 = value.x;
                m12 = value.y;
                m22 = value.z;
                m32 = value.w;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static bool4x3 Zero  =  bool4x3(false, false, false, false, false, false, false, false, false, false, false, false);
        
        /// Predefined all-ones matrix
        readonly public static bool4x3 Ones  =  bool4x3(true, true, true, true, true, true, true, true, true, true, true, true);
        
        /// Predefined identity matrix
        readonly public static bool4x3 Identity  =  bool4x3(true, false, false, false, true, false, false, false, true, false, false, false);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public bool[,] ToArray() => new .[,] ( ( m00, m01, m02 ), ( m10, m11, m12 ), ( m20, m21, m22 ), ( m30, m31, m32 ) );
        
        /// Creates a 1D array with all values (internal order)
        public bool[] ToArray1D() => new .[] ( m00, m01, m02, m10, m11, m12, m20, m21, m22, m30, m31, m32 );

        #endregion

        
        /// Returns the number of Fields (4 x 3 = 12).
        public int Count => 12;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public bool this[int fieldIndex]
        {
            [Inline]get
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 12, "fieldIndex was out of range");
               unchecked { return values[fieldIndex]; }
            }
            [Inline]set mut
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 12, "fieldIndex was out of range");
               unchecked { values[fieldIndex] = value; }
            }
        }
        
        /// Gets/Sets a specific 2D-indexed component (a bit slower than direct access).
        public bool this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 4, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { return values[col * 3 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 4, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { values[col * 3 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(bool4x3 rhs) => ((((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && ((m10 == rhs.m10 && m11 == rhs.m11) && m12 == rhs.m12)) && (((m20 == rhs.m20 && m21 == rhs.m21) && m22 == rhs.m22) && ((m30 == rhs.m30 && m31 == rhs.m31) && m32 == rhs.m32)));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(bool4x3 lhs, bool4x3 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(bool4x3 lhs, bool4x3 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((((((((((((((m00.GetHashCode()) * 2) ^ m01.GetHashCode()) * 2) ^ m02.GetHashCode()) * 2) ^ m10.GetHashCode()) * 2) ^ m11.GetHashCode()) * 2) ^ m12.GetHashCode()) * 2) ^ m20.GetHashCode()) * 2) ^ m21.GetHashCode()) * 2) ^ m22.GetHashCode()) * 2) ^ m30.GetHashCode()) * 2) ^ m31.GetHashCode()) * 2) ^ m32.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public bool3x4 Transposed => bool3x4(m00, m10, m20, m30, m01, m11, m21, m31, m02, m12, m22, m32);
        
        /// Returns the minimal component of this matrix.
        public bool MinElement => ((((m00 && m01) && m02) && ((m10 && m11) && m12)) && (((m20 && m21) && m22) && ((m30 && m31) && m32)));
        
        /// Returns the maximal component of this matrix.
        public bool MaxElement => ((((m00 || m01) || m02) || ((m10 || m11) || m12)) || (((m20 || m21) || m22) || ((m30 || m31) || m32)));
        
        /// Returns true if all component are true.
        public bool All => ((((m00 && m01) && m02) && ((m10 && m11) && m12)) && (((m20 && m21) && m22) && ((m30 && m31) && m32)));
        
        /// Returns true if any component is true.
        public bool Any => ((((m00 || m01) || m02) || ((m10 || m11) || m12)) || (((m20 || m21) || m22) || ((m30 || m31) || m32)));
        
        /// Executes a component-wise &amp;&amp;. (sorry for different overload but &amp;&amp; cannot be overloaded directly)
        public static bool4x3 operator&(bool4x3 lhs, bool4x3 rhs) => bool4x3(lhs.m00 && rhs.m00, lhs.m01 && rhs.m01, lhs.m02 && rhs.m02, lhs.m10 && rhs.m10, lhs.m11 && rhs.m11, lhs.m12 && rhs.m12, lhs.m20 && rhs.m20, lhs.m21 && rhs.m21, lhs.m22 && rhs.m22, lhs.m30 && rhs.m30, lhs.m31 && rhs.m31, lhs.m32 && rhs.m32);
        
        /// Executes a component-wise ||. (sorry for different overload but || cannot be overloaded directly)
        public static bool4x3 operator|(bool4x3 lhs, bool4x3 rhs) => bool4x3(lhs.m00 || rhs.m00, lhs.m01 || rhs.m01, lhs.m02 || rhs.m02, lhs.m10 || rhs.m10, lhs.m11 || rhs.m11, lhs.m12 || rhs.m12, lhs.m20 || rhs.m20, lhs.m21 || rhs.m21, lhs.m22 || rhs.m22, lhs.m30 || rhs.m30, lhs.m31 || rhs.m31, lhs.m32 || rhs.m32);
    }
}
