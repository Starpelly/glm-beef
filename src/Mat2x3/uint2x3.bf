using System;
namespace glm
{
    
    /// A matrix of type uint with 2 columns and 3 rows.
    public struct uint2x3 : IEquatable<uint2x3>
    {

        #region Fields
        
        /// component data
        public uint[6] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(uint m00, uint m01, uint m02, uint m10, uint m11, uint m12)
        {
            values = .(m00,m01,m02,m10,m11,m12);
        }
        
        /// Constructs this matrix from a uint2x2. Non-overwritten fields are from an Identity matrix.
        public this(uint2x2 m)
        {
            values = .(m.m00,m.m01,0u,m.m10,m.m11,0u);
        }
        
        /// Constructs this matrix from a uint3x2. Non-overwritten fields are from an Identity matrix.
        public this(uint3x2 m)
        {
            values = .(m.m00,m.m01,0u,m.m10,m.m11,0u);
        }
        
        /// Constructs this matrix from a uint4x2. Non-overwritten fields are from an Identity matrix.
        public this(uint4x2 m)
        {
            values = .(m.m00,m.m01,0u,m.m10,m.m11,0u);
        }
        
        /// Constructs this matrix from a uint2x3. Non-overwritten fields are from an Identity matrix.
        public this(uint2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a uint3x3. Non-overwritten fields are from an Identity matrix.
        public this(uint3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a uint4x3. Non-overwritten fields are from an Identity matrix.
        public this(uint4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a uint2x4. Non-overwritten fields are from an Identity matrix.
        public this(uint2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a uint3x4. Non-overwritten fields are from an Identity matrix.
        public this(uint3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a uint4x4. Non-overwritten fields are from an Identity matrix.
        public this(uint4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(uint2 c0, uint2 c1)
        {
            values = .(c0.x,c0.y,0u,c1.x,c1.y,0u);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(uint3 c0, uint3 c1)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z);
        }

        #endregion


        #region Properties
        
        /// Column 0, Rows 0
        public uint m00
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
        public uint m01
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
        public uint m02
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
        public uint m10
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
        public uint m11
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
        public uint m12
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
        
        /// Gets or sets the column nr 0
        public uint3 Column0
        {
            [Inline]get
            {
                return  uint3(m00, m01, m02);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
            }
        }
        
        /// Gets or sets the column nr 1
        public uint3 Column1
        {
            [Inline]get
            {
                return  uint3(m10, m11, m12);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
            }
        }
        
        /// Gets or sets the row nr 0
        public uint2 Row0
        {
            [Inline]get
            {
                return  uint2(m00, m10);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
            }
        }
        
        /// Gets or sets the row nr 1
        public uint2 Row1
        {
            [Inline]get
            {
                return  uint2(m01, m11);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
            }
        }
        
        /// Gets or sets the row nr 2
        public uint2 Row2
        {
            [Inline]get
            {
                return  uint2(m02, m12);
            }
            [Inline]set mut
            {
                m02 = value.x;
                m12 = value.y;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static uint2x3 Zero  =  uint2x3(0u, 0u, 0u, 0u, 0u, 0u);
        
        /// Predefined all-ones matrix
        readonly public static uint2x3 Ones  =  uint2x3(1u, 1u, 1u, 1u, 1u, 1u);
        
        /// Predefined identity matrix
        readonly public static uint2x3 Identity  =  uint2x3(1u, 0u, 0u, 0u, 1u, 0u);
        
        /// Predefined all-MaxValue matrix
        readonly public static uint2x3 AllMaxValue  =  uint2x3(uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static uint2x3 DiagonalMaxValue  =  uint2x3(uint.MaxValue, 0u, 0u, 0u, uint.MaxValue, 0u);
        
        /// Predefined all-MinValue matrix
        readonly public static uint2x3 AllMinValue  =  uint2x3(uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static uint2x3 DiagonalMinValue  =  uint2x3(uint.MinValue, 0u, 0u, 0u, uint.MinValue, 0u);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public uint[,] ToArray() => new .[,] ( ( m00, m01, m02 ), ( m10, m11, m12 ) );
        
        /// Creates a 1D array with all values (internal order)
        public uint[] ToArray1D() => new .[] ( m00, m01, m02, m10, m11, m12 );

        #endregion

        
        /// Returns the number of Fields (2 x 3 = 6).
        public int Count => 6;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public uint this[int fieldIndex]
        {
            [Inline]get
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 6, "fieldIndex was out of range");
               unchecked { return values[fieldIndex]; }
            }
            [Inline]set mut
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 6, "fieldIndex was out of range");
               unchecked { values[fieldIndex] = value; }
            }
        }
        
        /// Gets/Sets a specific 2D-indexed component (a bit slower than direct access).
        public uint this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { return values[col * 3 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { values[col * 3 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(uint2x3 rhs) => (((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && ((m10 == rhs.m10 && m11 == rhs.m11) && m12 == rhs.m12));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(uint2x3 lhs, uint2x3 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(uint2x3 lhs, uint2x3 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public uint3x2 Transposed => uint3x2(m00, m10, m01, m11, m02, m12);
        
        /// Returns the minimal component of this matrix.
        public uint MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m10), m11), m12);
        
        /// Returns the maximal component of this matrix.
        public uint MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m10), m11), m12);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => (((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12));
        
        /// Returns the sum of all fields.
        public uint Sum => (((m00 + m01) + m02) + ((m10 + m11) + m12));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => (((m00 + m01) + m02) + ((m10 + m11) + m12));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the max-norm of this matrix.
        public uint NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m10), m11), m12);
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow((((System.Math.Pow((double)m00, p) + System.Math.Pow((double)m01, p)) + System.Math.Pow((double)m02, p)) + ((System.Math.Pow((double)m10, p) + System.Math.Pow((double)m11, p)) + System.Math.Pow((double)m12, p))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication uint2x3 * uint2x2 -> uint2x3.
        public static uint2x3 operator*(uint2x3 lhs, uint2x2 rhs) => uint2x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11));
        
        /// Executes a matrix-matrix-multiplication uint2x3 * uint3x2 -> uint3x3.
        public static uint3x3 operator*(uint2x3 lhs, uint3x2 rhs) => uint3x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21));
        
        /// Executes a matrix-matrix-multiplication uint2x3 * uint4x2 -> uint4x3.
        public static uint4x3 operator*(uint2x3 lhs, uint4x2 rhs) => uint4x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21), (lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31), (lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31), (lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31));
        
        /// Executes a matrix-vector-multiplication.
        public static uint3 operator*(uint2x3 m, uint2 v) => uint3((m.m00 * v.x + m.m10 * v.y), (m.m01 * v.x + m.m11 * v.y), (m.m02 * v.x + m.m12 * v.y));
        
        /// Executes a component-wise * (multiply).
        public static uint2x3 CompMul(uint2x3 A, uint2x3 B) => uint2x3(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12);
        
        /// Executes a component-wise / (divide).
        public static uint2x3 CompDiv(uint2x3 A, uint2x3 B) => uint2x3(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12);
        
        /// Executes a component-wise + (add).
        public static uint2x3 CompAdd(uint2x3 A, uint2x3 B) => uint2x3(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12);
        
        /// Executes a component-wise - (subtract).
        public static uint2x3 CompSub(uint2x3 A, uint2x3 B) => uint2x3(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12);
        
        /// Executes a component-wise + (add).
        public static uint2x3 operator+(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12);
        
        /// Executes a component-wise + (add) with a scalar.
        public static uint2x3 operator+(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static uint2x3 operator+(uint lhs, uint2x3 rhs) => uint2x3(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12);
        
        /// Executes a component-wise - (subtract).
        public static uint2x3 operator-(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static uint2x3 operator-(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static uint2x3 operator-(uint lhs, uint2x3 rhs) => uint2x3(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static uint2x3 operator/(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static uint2x3 operator/(uint lhs, uint2x3 rhs) => uint2x3(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static uint2x3 operator*(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static uint2x3 operator*(uint lhs, uint2x3 rhs) => uint2x3(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12);
        
        /// Executes a component-wise % (modulo).
        public static uint2x3 operator%(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 % rhs.m00, lhs.m01 % rhs.m01, lhs.m02 % rhs.m02, lhs.m10 % rhs.m10, lhs.m11 % rhs.m11, lhs.m12 % rhs.m12);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static uint2x3 operator%(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 % rhs, lhs.m01 % rhs, lhs.m02 % rhs, lhs.m10 % rhs, lhs.m11 % rhs, lhs.m12 % rhs);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static uint2x3 operator%(uint lhs, uint2x3 rhs) => uint2x3(lhs % rhs.m00, lhs % rhs.m01, lhs % rhs.m02, lhs % rhs.m10, lhs % rhs.m11, lhs % rhs.m12);
        
        /// Executes a component-wise ^ (xor).
        public static uint2x3 operator^(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 ^ rhs.m00, lhs.m01 ^ rhs.m01, lhs.m02 ^ rhs.m02, lhs.m10 ^ rhs.m10, lhs.m11 ^ rhs.m11, lhs.m12 ^ rhs.m12);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static uint2x3 operator^(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 ^ rhs, lhs.m01 ^ rhs, lhs.m02 ^ rhs, lhs.m10 ^ rhs, lhs.m11 ^ rhs, lhs.m12 ^ rhs);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static uint2x3 operator^(uint lhs, uint2x3 rhs) => uint2x3(lhs ^ rhs.m00, lhs ^ rhs.m01, lhs ^ rhs.m02, lhs ^ rhs.m10, lhs ^ rhs.m11, lhs ^ rhs.m12);
        
        /// Executes a component-wise | (bitwise-or).
        public static uint2x3 operator|(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 | rhs.m00, lhs.m01 | rhs.m01, lhs.m02 | rhs.m02, lhs.m10 | rhs.m10, lhs.m11 | rhs.m11, lhs.m12 | rhs.m12);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static uint2x3 operator|(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 | rhs, lhs.m01 | rhs, lhs.m02 | rhs, lhs.m10 | rhs, lhs.m11 | rhs, lhs.m12 | rhs);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static uint2x3 operator|(uint lhs, uint2x3 rhs) => uint2x3(lhs | rhs.m00, lhs | rhs.m01, lhs | rhs.m02, lhs | rhs.m10, lhs | rhs.m11, lhs | rhs.m12);
        
        /// Executes a component-wise &amp; (bitwise-and).
        public static uint2x3 operator&(uint2x3 lhs, uint2x3 rhs) => uint2x3(lhs.m00 & rhs.m00, lhs.m01 & rhs.m01, lhs.m02 & rhs.m02, lhs.m10 & rhs.m10, lhs.m11 & rhs.m11, lhs.m12 & rhs.m12);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static uint2x3 operator&(uint2x3 lhs, uint rhs) => uint2x3(lhs.m00 & rhs, lhs.m01 & rhs, lhs.m02 & rhs, lhs.m10 & rhs, lhs.m11 & rhs, lhs.m12 & rhs);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static uint2x3 operator&(uint lhs, uint2x3 rhs) => uint2x3(lhs & rhs.m00, lhs & rhs.m01, lhs & rhs.m02, lhs & rhs.m10, lhs & rhs.m11, lhs & rhs.m12);
        
        /// Executes a component-wise left-shift with a scalar.
        public static uint2x3 operator<<(uint2x3 lhs, int rhs) => uint2x3(lhs.m00 << rhs, lhs.m01 << rhs, lhs.m02 << rhs, lhs.m10 << rhs, lhs.m11 << rhs, lhs.m12 << rhs);
        
        /// Executes a component-wise right-shift with a scalar.
        public static uint2x3 operator>>(uint2x3 lhs, int rhs) => uint2x3(lhs.m00 >> rhs, lhs.m01 >> rhs, lhs.m02 >> rhs, lhs.m10 >> rhs, lhs.m11 >> rhs, lhs.m12 >> rhs);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool2x3 operator<(uint2x3 lhs, uint2x3 rhs) => bool2x3(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x3 operator<(uint2x3 lhs, uint rhs) => bool2x3(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x3 operator<(uint lhs, uint2x3 rhs) => bool2x3(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool2x3 operator<=(uint2x3 lhs, uint2x3 rhs) => bool2x3(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x3 operator<=(uint2x3 lhs, uint rhs) => bool2x3(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x3 operator<=(uint lhs, uint2x3 rhs) => bool2x3(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12);
        
        /// Executes a component-wise greater-than comparison.
        public static bool2x3 operator>(uint2x3 lhs, uint2x3 rhs) => bool2x3(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x3 operator>(uint2x3 lhs, uint rhs) => bool2x3(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x3 operator>(uint lhs, uint2x3 rhs) => bool2x3(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool2x3 operator>=(uint2x3 lhs, uint2x3 rhs) => bool2x3(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x3 operator>=(uint2x3 lhs, uint rhs) => bool2x3(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x3 operator>=(uint lhs, uint2x3 rhs) => bool2x3(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12);
    }
}
