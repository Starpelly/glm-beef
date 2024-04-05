using System;
namespace glm
{
    
    /// A matrix of type int with 3 columns and 2 rows.
    public struct int3x2 : IEquatable<int3x2>
    {

        #region Fields
        
        /// component data
        public int[6] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(int m00, int m01, int m10, int m11, int m20, int m21)
        {
            values = .(m00,m01,m10,m11,m20,m21);
        }
        
        /// Constructs this matrix from a int2x2. Non-overwritten fields are from an Identity matrix.
        public this(int2x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,0,0);
        }
        
        /// Constructs this matrix from a int3x2. Non-overwritten fields are from an Identity matrix.
        public this(int3x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a int4x2. Non-overwritten fields are from an Identity matrix.
        public this(int4x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a int2x3. Non-overwritten fields are from an Identity matrix.
        public this(int2x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,0,0);
        }
        
        /// Constructs this matrix from a int3x3. Non-overwritten fields are from an Identity matrix.
        public this(int3x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a int4x3. Non-overwritten fields are from an Identity matrix.
        public this(int4x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a int2x4. Non-overwritten fields are from an Identity matrix.
        public this(int2x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,0,0);
        }
        
        /// Constructs this matrix from a int3x4. Non-overwritten fields are from an Identity matrix.
        public this(int3x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a int4x4. Non-overwritten fields are from an Identity matrix.
        public this(int4x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11,m.m20,m.m21);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int2 c0, int2 c1)
        {
            values = .(c0.x,c0.y,c1.x,c1.y,0,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int2 c0, int2 c1, int2 c2)
        {
            values = .(c0.x,c0.y,c1.x,c1.y,c2.x,c2.y);
        }

        #endregion


        #region Properties
        
        /// Column 0, Rows 0
        public int m00
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
        public int m01
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
        public int m10
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
        public int m11
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
        
        /// Column 2, Rows 0
        public int m20
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
        
        /// Column 2, Rows 1
        public int m21
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
        public int2 Column0
        {
            [Inline]get
            {
                return  int2(m00, m01);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
            }
        }
        
        /// Gets or sets the column nr 1
        public int2 Column1
        {
            [Inline]get
            {
                return  int2(m10, m11);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
            }
        }
        
        /// Gets or sets the column nr 2
        public int2 Column2
        {
            [Inline]get
            {
                return  int2(m20, m21);
            }
            [Inline]set mut
            {
                m20 = value.x;
                m21 = value.y;
            }
        }
        
        /// Gets or sets the row nr 0
        public int3 Row0
        {
            [Inline]get
            {
                return  int3(m00, m10, m20);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
                m20 = value.z;
            }
        }
        
        /// Gets or sets the row nr 1
        public int3 Row1
        {
            [Inline]get
            {
                return  int3(m01, m11, m21);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
                m21 = value.z;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static int3x2 Zero  =  int3x2(0, 0, 0, 0, 0, 0);
        
        /// Predefined all-ones matrix
        readonly public static int3x2 Ones  =  int3x2(1, 1, 1, 1, 1, 1);
        
        /// Predefined identity matrix
        readonly public static int3x2 Identity  =  int3x2(1, 0, 0, 1, 0, 0);
        
        /// Predefined all-MaxValue matrix
        readonly public static int3x2 AllMaxValue  =  int3x2(int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static int3x2 DiagonalMaxValue  =  int3x2(int.MaxValue, 0, 0, int.MaxValue, 0, 0);
        
        /// Predefined all-MinValue matrix
        readonly public static int3x2 AllMinValue  =  int3x2(int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static int3x2 DiagonalMinValue  =  int3x2(int.MinValue, 0, 0, int.MinValue, 0, 0);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public int[,] ToArray() => new .[,] ( ( m00, m01 ), ( m10, m11 ), ( m20, m21 ) );
        
        /// Creates a 1D array with all values (internal order)
        public int[] ToArray1D() => new .[] ( m00, m01, m10, m11, m20, m21 );

        #endregion

        
        /// Returns the number of Fields (3 x 2 = 6).
        public int Count => 6;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public int this[int fieldIndex]
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
        public int this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 2, "row was out of range");
                unchecked { return values[col * 2 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 2, "row was out of range");
                unchecked { values[col * 2 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(int3x2 rhs) => (((m00 == rhs.m00 && m01 == rhs.m01) && m10 == rhs.m10) && ((m11 == rhs.m11 && m20 == rhs.m20) && m21 == rhs.m21));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(int3x2 lhs, int3x2 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(int3x2 lhs, int3x2 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m20.GetHashCode()) * 397) ^ m21.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public int2x3 Transposed => int2x3(m00, m10, m20, m01, m11, m21);
        
        /// Returns the minimal component of this matrix.
        public int MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m10), m11), m20), m21);
        
        /// Returns the maximal component of this matrix.
        public int MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m10), m11), m20), m21);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m10*m10) + ((m11*m11 + m20*m20) + m21*m21)));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => (((m00*m00 + m01*m01) + m10*m10) + ((m11*m11 + m20*m20) + m21*m21));
        
        /// Returns the sum of all fields.
        public int Sum => (((m00 + m01) + m10) + ((m11 + m20) + m21));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m10*m10) + ((m11*m11 + m20*m20) + m21*m21)));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => (((System.Math.Abs(m00) + System.Math.Abs(m01)) + System.Math.Abs(m10)) + ((System.Math.Abs(m11) + System.Math.Abs(m20)) + System.Math.Abs(m21)));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m10*m10) + ((m11*m11 + m20*m20) + m21*m21)));
        
        /// Returns the max-norm of this matrix.
        public int NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m10)), System.Math.Abs(m11)), System.Math.Abs(m20)), System.Math.Abs(m21));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow((((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + System.Math.Pow((double)System.Math.Abs(m10), p)) + ((System.Math.Pow((double)System.Math.Abs(m11), p) + System.Math.Pow((double)System.Math.Abs(m20), p)) + System.Math.Pow((double)System.Math.Abs(m21), p))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication int3x2 * int2x3 -> int2x2.
        public static int2x2 operator*(int3x2 lhs, int2x3 rhs) => int2x2(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12));
        
        /// Executes a matrix-matrix-multiplication int3x2 * int3x3 -> int3x2.
        public static int3x2 operator*(int3x2 lhs, int3x3 rhs) => int3x2(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22));
        
        /// Executes a matrix-matrix-multiplication int3x2 * int4x3 -> int4x2.
        public static int4x2 operator*(int3x2 lhs, int4x3 rhs) => int4x2(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22), ((lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31) + lhs.m20 * rhs.m32), ((lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31) + lhs.m21 * rhs.m32));
        
        /// Executes a matrix-vector-multiplication.
        public static int2 operator*(int3x2 m, int3 v) => int2(((m.m00 * v.x + m.m10 * v.y) + m.m20 * v.z), ((m.m01 * v.x + m.m11 * v.y) + m.m21 * v.z));
        
        /// Executes a component-wise * (multiply).
        public static int3x2 CompMul(int3x2 A, int3x2 B) => int3x2(A.m00 * B.m00, A.m01 * B.m01, A.m10 * B.m10, A.m11 * B.m11, A.m20 * B.m20, A.m21 * B.m21);
        
        /// Executes a component-wise / (divide).
        public static int3x2 CompDiv(int3x2 A, int3x2 B) => int3x2(A.m00 / B.m00, A.m01 / B.m01, A.m10 / B.m10, A.m11 / B.m11, A.m20 / B.m20, A.m21 / B.m21);
        
        /// Executes a component-wise + (add).
        public static int3x2 CompAdd(int3x2 A, int3x2 B) => int3x2(A.m00 + B.m00, A.m01 + B.m01, A.m10 + B.m10, A.m11 + B.m11, A.m20 + B.m20, A.m21 + B.m21);
        
        /// Executes a component-wise - (subtract).
        public static int3x2 CompSub(int3x2 A, int3x2 B) => int3x2(A.m00 - B.m00, A.m01 - B.m01, A.m10 - B.m10, A.m11 - B.m11, A.m20 - B.m20, A.m21 - B.m21);
        
        /// Executes a component-wise + (add).
        public static int3x2 operator+(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m20 + rhs.m20, lhs.m21 + rhs.m21);
        
        /// Executes a component-wise + (add) with a scalar.
        public static int3x2 operator+(int3x2 lhs, int rhs) => int3x2(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m20 + rhs, lhs.m21 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static int3x2 operator+(int lhs, int3x2 rhs) => int3x2(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m20, lhs + rhs.m21);
        
        /// Executes a component-wise - (subtract).
        public static int3x2 operator-(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m20 - rhs.m20, lhs.m21 - rhs.m21);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static int3x2 operator-(int3x2 lhs, int rhs) => int3x2(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m20 - rhs, lhs.m21 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static int3x2 operator-(int lhs, int3x2 rhs) => int3x2(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m20, lhs - rhs.m21);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static int3x2 operator/(int3x2 lhs, int rhs) => int3x2(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m20 / rhs, lhs.m21 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static int3x2 operator/(int lhs, int3x2 rhs) => int3x2(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m20, lhs / rhs.m21);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static int3x2 operator*(int3x2 lhs, int rhs) => int3x2(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m20 * rhs, lhs.m21 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static int3x2 operator*(int lhs, int3x2 rhs) => int3x2(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m20, lhs * rhs.m21);
        
        /// Executes a component-wise % (modulo).
        public static int3x2 operator%(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 % rhs.m00, lhs.m01 % rhs.m01, lhs.m10 % rhs.m10, lhs.m11 % rhs.m11, lhs.m20 % rhs.m20, lhs.m21 % rhs.m21);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static int3x2 operator%(int3x2 lhs, int rhs) => int3x2(lhs.m00 % rhs, lhs.m01 % rhs, lhs.m10 % rhs, lhs.m11 % rhs, lhs.m20 % rhs, lhs.m21 % rhs);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static int3x2 operator%(int lhs, int3x2 rhs) => int3x2(lhs % rhs.m00, lhs % rhs.m01, lhs % rhs.m10, lhs % rhs.m11, lhs % rhs.m20, lhs % rhs.m21);
        
        /// Executes a component-wise ^ (xor).
        public static int3x2 operator^(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 ^ rhs.m00, lhs.m01 ^ rhs.m01, lhs.m10 ^ rhs.m10, lhs.m11 ^ rhs.m11, lhs.m20 ^ rhs.m20, lhs.m21 ^ rhs.m21);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static int3x2 operator^(int3x2 lhs, int rhs) => int3x2(lhs.m00 ^ rhs, lhs.m01 ^ rhs, lhs.m10 ^ rhs, lhs.m11 ^ rhs, lhs.m20 ^ rhs, lhs.m21 ^ rhs);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static int3x2 operator^(int lhs, int3x2 rhs) => int3x2(lhs ^ rhs.m00, lhs ^ rhs.m01, lhs ^ rhs.m10, lhs ^ rhs.m11, lhs ^ rhs.m20, lhs ^ rhs.m21);
        
        /// Executes a component-wise | (bitwise-or).
        public static int3x2 operator|(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 | rhs.m00, lhs.m01 | rhs.m01, lhs.m10 | rhs.m10, lhs.m11 | rhs.m11, lhs.m20 | rhs.m20, lhs.m21 | rhs.m21);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static int3x2 operator|(int3x2 lhs, int rhs) => int3x2(lhs.m00 | rhs, lhs.m01 | rhs, lhs.m10 | rhs, lhs.m11 | rhs, lhs.m20 | rhs, lhs.m21 | rhs);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static int3x2 operator|(int lhs, int3x2 rhs) => int3x2(lhs | rhs.m00, lhs | rhs.m01, lhs | rhs.m10, lhs | rhs.m11, lhs | rhs.m20, lhs | rhs.m21);
        
        /// Executes a component-wise &amp; (bitwise-and).
        public static int3x2 operator&(int3x2 lhs, int3x2 rhs) => int3x2(lhs.m00 & rhs.m00, lhs.m01 & rhs.m01, lhs.m10 & rhs.m10, lhs.m11 & rhs.m11, lhs.m20 & rhs.m20, lhs.m21 & rhs.m21);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static int3x2 operator&(int3x2 lhs, int rhs) => int3x2(lhs.m00 & rhs, lhs.m01 & rhs, lhs.m10 & rhs, lhs.m11 & rhs, lhs.m20 & rhs, lhs.m21 & rhs);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static int3x2 operator&(int lhs, int3x2 rhs) => int3x2(lhs & rhs.m00, lhs & rhs.m01, lhs & rhs.m10, lhs & rhs.m11, lhs & rhs.m20, lhs & rhs.m21);
        
        /// Executes a component-wise left-shift with a scalar.
        public static int3x2 operator<<(int3x2 lhs, int rhs) => int3x2(lhs.m00 << rhs, lhs.m01 << rhs, lhs.m10 << rhs, lhs.m11 << rhs, lhs.m20 << rhs, lhs.m21 << rhs);
        
        /// Executes a component-wise right-shift with a scalar.
        public static int3x2 operator>>(int3x2 lhs, int rhs) => int3x2(lhs.m00 >> rhs, lhs.m01 >> rhs, lhs.m10 >> rhs, lhs.m11 >> rhs, lhs.m20 >> rhs, lhs.m21 >> rhs);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool3x2 operator<(int3x2 lhs, int3x2 rhs) => bool3x2(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m20 < rhs.m20, lhs.m21 < rhs.m21);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x2 operator<(int3x2 lhs, int rhs) => bool3x2(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m20 < rhs, lhs.m21 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x2 operator<(int lhs, int3x2 rhs) => bool3x2(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m20, lhs < rhs.m21);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool3x2 operator<=(int3x2 lhs, int3x2 rhs) => bool3x2(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m20 <= rhs.m20, lhs.m21 <= rhs.m21);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x2 operator<=(int3x2 lhs, int rhs) => bool3x2(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m20 <= rhs, lhs.m21 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x2 operator<=(int lhs, int3x2 rhs) => bool3x2(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m20, lhs <= rhs.m21);
        
        /// Executes a component-wise greater-than comparison.
        public static bool3x2 operator>(int3x2 lhs, int3x2 rhs) => bool3x2(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m20 > rhs.m20, lhs.m21 > rhs.m21);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x2 operator>(int3x2 lhs, int rhs) => bool3x2(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m20 > rhs, lhs.m21 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x2 operator>(int lhs, int3x2 rhs) => bool3x2(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m20, lhs > rhs.m21);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool3x2 operator>=(int3x2 lhs, int3x2 rhs) => bool3x2(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m20 >= rhs.m20, lhs.m21 >= rhs.m21);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x2 operator>=(int3x2 lhs, int rhs) => bool3x2(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m20 >= rhs, lhs.m21 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x2 operator>=(int lhs, int3x2 rhs) => bool3x2(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m20, lhs >= rhs.m21);
    }
}
