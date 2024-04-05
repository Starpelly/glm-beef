using System;
namespace glm
{
    
    /// A matrix of type uint with 2 columns and 4 rows.
    public struct uint2x4 : IEquatable<uint2x4>
    {

        #region Fields
        
        /// component data
        public uint[8] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(uint m00, uint m01, uint m02, uint m03, uint m10, uint m11, uint m12, uint m13)
        {
            values = .(m00,m01,m02,m03,m10,m11,m12,m13);
        }
        
        /// Constructs this matrix from a uint2x2. Non-overwritten fields are from an Identity matrix.
        public this(uint2x2 m)
        {
            values = .(m.m00,m.m01,0u,0u,m.m10,m.m11,0u,0u);
        }
        
        /// Constructs this matrix from a uint3x2. Non-overwritten fields are from an Identity matrix.
        public this(uint3x2 m)
        {
            values = .(m.m00,m.m01,0u,0u,m.m10,m.m11,0u,0u);
        }
        
        /// Constructs this matrix from a uint4x2. Non-overwritten fields are from an Identity matrix.
        public this(uint4x2 m)
        {
            values = .(m.m00,m.m01,0u,0u,m.m10,m.m11,0u,0u);
        }
        
        /// Constructs this matrix from a uint2x3. Non-overwritten fields are from an Identity matrix.
        public this(uint2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0u,m.m10,m.m11,m.m12,0u);
        }
        
        /// Constructs this matrix from a uint3x3. Non-overwritten fields are from an Identity matrix.
        public this(uint3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0u,m.m10,m.m11,m.m12,0u);
        }
        
        /// Constructs this matrix from a uint4x3. Non-overwritten fields are from an Identity matrix.
        public this(uint4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0u,m.m10,m.m11,m.m12,0u);
        }
        
        /// Constructs this matrix from a uint2x4. Non-overwritten fields are from an Identity matrix.
        public this(uint2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13);
        }
        
        /// Constructs this matrix from a uint3x4. Non-overwritten fields are from an Identity matrix.
        public this(uint3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13);
        }
        
        /// Constructs this matrix from a uint4x4. Non-overwritten fields are from an Identity matrix.
        public this(uint4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(uint2 c0, uint2 c1)
        {
            values = .(c0.x,c0.y,0u,0u,c1.x,c1.y,0u,0u);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(uint3 c0, uint3 c1)
        {
            values = .(c0.x,c0.y,c0.z,0u,c1.x,c1.y,c1.z,0u);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(uint4 c0, uint4 c1)
        {
            values = .(c0.x,c0.y,c0.z,c0.w,c1.x,c1.y,c1.z,c1.w);
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
        
        /// Column 0, Rows 3
        public uint m03
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
        
        /// Column 1, Rows 0
        public uint m10
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
        
        /// Column 1, Rows 1
        public uint m11
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
        
        /// Column 1, Rows 2
        public uint m12
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
        
        /// Column 1, Rows 3
        public uint m13
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
        
        /// Gets or sets the column nr 0
        public uint4 Column0
        {
            [Inline]get
            {
                return  uint4(m00, m01, m02, m03);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
                m03 = value.w;
            }
        }
        
        /// Gets or sets the column nr 1
        public uint4 Column1
        {
            [Inline]get
            {
                return  uint4(m10, m11, m12, m13);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
                m13 = value.w;
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
        
        /// Gets or sets the row nr 3
        public uint2 Row3
        {
            [Inline]get
            {
                return  uint2(m03, m13);
            }
            [Inline]set mut
            {
                m03 = value.x;
                m13 = value.y;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static uint2x4 Zero  =  uint2x4(0u, 0u, 0u, 0u, 0u, 0u, 0u, 0u);
        
        /// Predefined all-ones matrix
        readonly public static uint2x4 Ones  =  uint2x4(1u, 1u, 1u, 1u, 1u, 1u, 1u, 1u);
        
        /// Predefined identity matrix
        readonly public static uint2x4 Identity  =  uint2x4(1u, 0u, 0u, 0u, 0u, 1u, 0u, 0u);
        
        /// Predefined all-MaxValue matrix
        readonly public static uint2x4 AllMaxValue  =  uint2x4(uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue, uint.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static uint2x4 DiagonalMaxValue  =  uint2x4(uint.MaxValue, 0u, 0u, 0u, 0u, uint.MaxValue, 0u, 0u);
        
        /// Predefined all-MinValue matrix
        readonly public static uint2x4 AllMinValue  =  uint2x4(uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue, uint.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static uint2x4 DiagonalMinValue  =  uint2x4(uint.MinValue, 0u, 0u, 0u, 0u, uint.MinValue, 0u, 0u);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public uint[,] ToArray() => new .[,] ( ( m00, m01, m02, m03 ), ( m10, m11, m12, m13 ) );
        
        /// Creates a 1D array with all values (internal order)
        public uint[] ToArray1D() => new .[] ( m00, m01, m02, m03, m10, m11, m12, m13 );

        #endregion

        
        /// Returns the number of Fields (2 x 4 = 8).
        public int Count => 8;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public uint this[int fieldIndex]
        {
            [Inline]get
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 8, "fieldIndex was out of range");
               unchecked { return values[fieldIndex]; }
            }
            [Inline]set mut
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 8, "fieldIndex was out of range");
               unchecked { values[fieldIndex] = value; }
            }
        }
        
        /// Gets/Sets a specific 2D-indexed component (a bit slower than direct access).
        public uint this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 4, "row was out of range");
                unchecked { return values[col * 4 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 2, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 4, "row was out of range");
                unchecked { values[col * 4 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(uint2x4 rhs) => (((m00 == rhs.m00 && m01 == rhs.m01) && (m02 == rhs.m02 && m03 == rhs.m03)) && ((m10 == rhs.m10 && m11 == rhs.m11) && (m12 == rhs.m12 && m13 == rhs.m13)));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(uint2x4 lhs, uint2x4 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(uint2x4 lhs, uint2x4 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m03.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode()) * 397) ^ m13.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public uint4x2 Transposed => uint4x2(m00, m10, m01, m11, m02, m12, m03, m13);
        
        /// Returns the minimal component of this matrix.
        public uint MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m03), m10), m11), m12), m13);
        
        /// Returns the maximal component of this matrix.
        public uint MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m03), m10), m11), m12), m13);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + (m02*m02 + m03*m03)) + ((m10*m10 + m11*m11) + (m12*m12 + m13*m13))));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => (((m00*m00 + m01*m01) + (m02*m02 + m03*m03)) + ((m10*m10 + m11*m11) + (m12*m12 + m13*m13)));
        
        /// Returns the sum of all fields.
        public uint Sum => (((m00 + m01) + (m02 + m03)) + ((m10 + m11) + (m12 + m13)));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + (m02*m02 + m03*m03)) + ((m10*m10 + m11*m11) + (m12*m12 + m13*m13))));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => (((m00 + m01) + (m02 + m03)) + ((m10 + m11) + (m12 + m13)));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + (m02*m02 + m03*m03)) + ((m10*m10 + m11*m11) + (m12*m12 + m13*m13))));
        
        /// Returns the max-norm of this matrix.
        public uint NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m03), m10), m11), m12), m13);
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow((((System.Math.Pow((double)m00, p) + System.Math.Pow((double)m01, p)) + (System.Math.Pow((double)m02, p) + System.Math.Pow((double)m03, p))) + ((System.Math.Pow((double)m10, p) + System.Math.Pow((double)m11, p)) + (System.Math.Pow((double)m12, p) + System.Math.Pow((double)m13, p)))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication uint2x4 * uint2x2 -> uint2x4.
        public static uint2x4 operator*(uint2x4 lhs, uint2x2 rhs) => uint2x4((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11));
        
        /// Executes a matrix-matrix-multiplication uint2x4 * uint3x2 -> uint3x4.
        public static uint3x4 operator*(uint2x4 lhs, uint3x2 rhs) => uint3x4((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21), (lhs.m03 * rhs.m20 + lhs.m13 * rhs.m21));
        
        /// Executes a matrix-matrix-multiplication uint2x4 * uint4x2 -> uint4x4.
        public static uint4x4 operator*(uint2x4 lhs, uint4x2 rhs) => uint4x4((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21), (lhs.m03 * rhs.m20 + lhs.m13 * rhs.m21), (lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31), (lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31), (lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31), (lhs.m03 * rhs.m30 + lhs.m13 * rhs.m31));
        
        /// Executes a matrix-vector-multiplication.
        public static uint4 operator*(uint2x4 m, uint2 v) => uint4((m.m00 * v.x + m.m10 * v.y), (m.m01 * v.x + m.m11 * v.y), (m.m02 * v.x + m.m12 * v.y), (m.m03 * v.x + m.m13 * v.y));
        
        /// Executes a component-wise * (multiply).
        public static uint2x4 CompMul(uint2x4 A, uint2x4 B) => uint2x4(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m03 * B.m03, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12, A.m13 * B.m13);
        
        /// Executes a component-wise / (divide).
        public static uint2x4 CompDiv(uint2x4 A, uint2x4 B) => uint2x4(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m03 / B.m03, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12, A.m13 / B.m13);
        
        /// Executes a component-wise + (add).
        public static uint2x4 CompAdd(uint2x4 A, uint2x4 B) => uint2x4(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m03 + B.m03, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12, A.m13 + B.m13);
        
        /// Executes a component-wise - (subtract).
        public static uint2x4 CompSub(uint2x4 A, uint2x4 B) => uint2x4(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m03 - B.m03, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12, A.m13 - B.m13);
        
        /// Executes a component-wise + (add).
        public static uint2x4 operator+(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m03 + rhs.m03, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12, lhs.m13 + rhs.m13);
        
        /// Executes a component-wise + (add) with a scalar.
        public static uint2x4 operator+(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m03 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs, lhs.m13 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static uint2x4 operator+(uint lhs, uint2x4 rhs) => uint2x4(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m03, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12, lhs + rhs.m13);
        
        /// Executes a component-wise - (subtract).
        public static uint2x4 operator-(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m03 - rhs.m03, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12, lhs.m13 - rhs.m13);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static uint2x4 operator-(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m03 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs, lhs.m13 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static uint2x4 operator-(uint lhs, uint2x4 rhs) => uint2x4(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m03, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12, lhs - rhs.m13);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static uint2x4 operator/(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m03 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs, lhs.m13 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static uint2x4 operator/(uint lhs, uint2x4 rhs) => uint2x4(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m03, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12, lhs / rhs.m13);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static uint2x4 operator*(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m03 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs, lhs.m13 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static uint2x4 operator*(uint lhs, uint2x4 rhs) => uint2x4(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m03, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12, lhs * rhs.m13);
        
        /// Executes a component-wise % (modulo).
        public static uint2x4 operator%(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 % rhs.m00, lhs.m01 % rhs.m01, lhs.m02 % rhs.m02, lhs.m03 % rhs.m03, lhs.m10 % rhs.m10, lhs.m11 % rhs.m11, lhs.m12 % rhs.m12, lhs.m13 % rhs.m13);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static uint2x4 operator%(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 % rhs, lhs.m01 % rhs, lhs.m02 % rhs, lhs.m03 % rhs, lhs.m10 % rhs, lhs.m11 % rhs, lhs.m12 % rhs, lhs.m13 % rhs);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static uint2x4 operator%(uint lhs, uint2x4 rhs) => uint2x4(lhs % rhs.m00, lhs % rhs.m01, lhs % rhs.m02, lhs % rhs.m03, lhs % rhs.m10, lhs % rhs.m11, lhs % rhs.m12, lhs % rhs.m13);
        
        /// Executes a component-wise ^ (xor).
        public static uint2x4 operator^(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 ^ rhs.m00, lhs.m01 ^ rhs.m01, lhs.m02 ^ rhs.m02, lhs.m03 ^ rhs.m03, lhs.m10 ^ rhs.m10, lhs.m11 ^ rhs.m11, lhs.m12 ^ rhs.m12, lhs.m13 ^ rhs.m13);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static uint2x4 operator^(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 ^ rhs, lhs.m01 ^ rhs, lhs.m02 ^ rhs, lhs.m03 ^ rhs, lhs.m10 ^ rhs, lhs.m11 ^ rhs, lhs.m12 ^ rhs, lhs.m13 ^ rhs);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static uint2x4 operator^(uint lhs, uint2x4 rhs) => uint2x4(lhs ^ rhs.m00, lhs ^ rhs.m01, lhs ^ rhs.m02, lhs ^ rhs.m03, lhs ^ rhs.m10, lhs ^ rhs.m11, lhs ^ rhs.m12, lhs ^ rhs.m13);
        
        /// Executes a component-wise | (bitwise-or).
        public static uint2x4 operator|(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 | rhs.m00, lhs.m01 | rhs.m01, lhs.m02 | rhs.m02, lhs.m03 | rhs.m03, lhs.m10 | rhs.m10, lhs.m11 | rhs.m11, lhs.m12 | rhs.m12, lhs.m13 | rhs.m13);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static uint2x4 operator|(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 | rhs, lhs.m01 | rhs, lhs.m02 | rhs, lhs.m03 | rhs, lhs.m10 | rhs, lhs.m11 | rhs, lhs.m12 | rhs, lhs.m13 | rhs);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static uint2x4 operator|(uint lhs, uint2x4 rhs) => uint2x4(lhs | rhs.m00, lhs | rhs.m01, lhs | rhs.m02, lhs | rhs.m03, lhs | rhs.m10, lhs | rhs.m11, lhs | rhs.m12, lhs | rhs.m13);
        
        /// Executes a component-wise &amp; (bitwise-and).
        public static uint2x4 operator&(uint2x4 lhs, uint2x4 rhs) => uint2x4(lhs.m00 & rhs.m00, lhs.m01 & rhs.m01, lhs.m02 & rhs.m02, lhs.m03 & rhs.m03, lhs.m10 & rhs.m10, lhs.m11 & rhs.m11, lhs.m12 & rhs.m12, lhs.m13 & rhs.m13);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static uint2x4 operator&(uint2x4 lhs, uint rhs) => uint2x4(lhs.m00 & rhs, lhs.m01 & rhs, lhs.m02 & rhs, lhs.m03 & rhs, lhs.m10 & rhs, lhs.m11 & rhs, lhs.m12 & rhs, lhs.m13 & rhs);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static uint2x4 operator&(uint lhs, uint2x4 rhs) => uint2x4(lhs & rhs.m00, lhs & rhs.m01, lhs & rhs.m02, lhs & rhs.m03, lhs & rhs.m10, lhs & rhs.m11, lhs & rhs.m12, lhs & rhs.m13);
        
        /// Executes a component-wise left-shift with a scalar.
        public static uint2x4 operator<<(uint2x4 lhs, int rhs) => uint2x4(lhs.m00 << rhs, lhs.m01 << rhs, lhs.m02 << rhs, lhs.m03 << rhs, lhs.m10 << rhs, lhs.m11 << rhs, lhs.m12 << rhs, lhs.m13 << rhs);
        
        /// Executes a component-wise right-shift with a scalar.
        public static uint2x4 operator>>(uint2x4 lhs, int rhs) => uint2x4(lhs.m00 >> rhs, lhs.m01 >> rhs, lhs.m02 >> rhs, lhs.m03 >> rhs, lhs.m10 >> rhs, lhs.m11 >> rhs, lhs.m12 >> rhs, lhs.m13 >> rhs);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool2x4 operator<(uint2x4 lhs, uint2x4 rhs) => bool2x4(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m03 < rhs.m03, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12, lhs.m13 < rhs.m13);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x4 operator<(uint2x4 lhs, uint rhs) => bool2x4(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m03 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs, lhs.m13 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x4 operator<(uint lhs, uint2x4 rhs) => bool2x4(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m03, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12, lhs < rhs.m13);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool2x4 operator<=(uint2x4 lhs, uint2x4 rhs) => bool2x4(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m03 <= rhs.m03, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12, lhs.m13 <= rhs.m13);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x4 operator<=(uint2x4 lhs, uint rhs) => bool2x4(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m03 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs, lhs.m13 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x4 operator<=(uint lhs, uint2x4 rhs) => bool2x4(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m03, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12, lhs <= rhs.m13);
        
        /// Executes a component-wise greater-than comparison.
        public static bool2x4 operator>(uint2x4 lhs, uint2x4 rhs) => bool2x4(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m03 > rhs.m03, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12, lhs.m13 > rhs.m13);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x4 operator>(uint2x4 lhs, uint rhs) => bool2x4(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m03 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs, lhs.m13 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x4 operator>(uint lhs, uint2x4 rhs) => bool2x4(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m03, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12, lhs > rhs.m13);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool2x4 operator>=(uint2x4 lhs, uint2x4 rhs) => bool2x4(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m03 >= rhs.m03, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12, lhs.m13 >= rhs.m13);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x4 operator>=(uint2x4 lhs, uint rhs) => bool2x4(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m03 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs, lhs.m13 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x4 operator>=(uint lhs, uint2x4 rhs) => bool2x4(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m03, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12, lhs >= rhs.m13);
    }
}
