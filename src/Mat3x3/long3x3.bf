using System;
namespace glm
{
    
    /// A matrix of type long with 3 columns and 3 rows.
    public struct long3x3 : IEquatable<long3x3>
    {

        //#region Fields
        
        /// component data
        public long[9] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(long m00, long m01, long m02, long m10, long m11, long m12, long m20, long m21, long m22)
        {
            values = .(m00,m01,m02,m10,m11,m12,m20,m21,m22);
        }
        
        /// Constructs this matrix from a long2x2. Non-overwritten fields are from an Identity matrix.
        public this(long2x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,0,0,1);
        }
        
        /// Constructs this matrix from a long3x2. Non-overwritten fields are from an Identity matrix.
        public this(long3x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,m.m20,m.m21,1);
        }
        
        /// Constructs this matrix from a long4x2. Non-overwritten fields are from an Identity matrix.
        public this(long4x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,m.m20,m.m21,1);
        }
        
        /// Constructs this matrix from a long2x3. Non-overwritten fields are from an Identity matrix.
        public this(long2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,0,0,1);
        }
        
        /// Constructs this matrix from a long3x3. Non-overwritten fields are from an Identity matrix.
        public this(long3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22);
        }
        
        /// Constructs this matrix from a long4x3. Non-overwritten fields are from an Identity matrix.
        public this(long4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22);
        }
        
        /// Constructs this matrix from a long2x4. Non-overwritten fields are from an Identity matrix.
        public this(long2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,0,0,1);
        }
        
        /// Constructs this matrix from a long3x4. Non-overwritten fields are from an Identity matrix.
        public this(long3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22);
        }
        
        /// Constructs this matrix from a long4x4. Non-overwritten fields are from an Identity matrix.
        public this(long4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(long2 c0, long2 c1)
        {
            values = .(c0.x,c0.y,0,c1.x,c1.y,0,0,0,1);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(long2 c0, long2 c1, long2 c2)
        {
            values = .(c0.x,c0.y,0,c1.x,c1.y,0,c2.x,c2.y,1);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(long3 c0, long3 c1)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,0,0,1);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(long3 c0, long3 c1, long3 c2)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,c2.x,c2.y,c2.z);
        }

        //#endregion


        //#region Properties
        
        /// Column 0, Rows 0
        public long m00
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
        public long m01
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
        public long m02
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
        public long m10
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
        public long m11
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
        public long m12
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
        public long m20
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
        public long m21
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
        public long m22
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
        
        /// Gets or sets the column nr 0
        public long3 Column0
        {
            [Inline]get
            {
                return  long3(m00, m01, m02);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
            }
        }
        
        /// Gets or sets the column nr 1
        public long3 Column1
        {
            [Inline]get
            {
                return  long3(m10, m11, m12);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
            }
        }
        
        /// Gets or sets the column nr 2
        public long3 Column2
        {
            [Inline]get
            {
                return  long3(m20, m21, m22);
            }
            [Inline]set mut
            {
                m20 = value.x;
                m21 = value.y;
                m22 = value.z;
            }
        }
        
        /// Gets or sets the row nr 0
        public long3 Row0
        {
            [Inline]get
            {
                return  long3(m00, m10, m20);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
                m20 = value.z;
            }
        }
        
        /// Gets or sets the row nr 1
        public long3 Row1
        {
            [Inline]get
            {
                return  long3(m01, m11, m21);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
                m21 = value.z;
            }
        }
        
        /// Gets or sets the row nr 2
        public long3 Row2
        {
            [Inline]get
            {
                return  long3(m02, m12, m22);
            }
            [Inline]set mut
            {
                m02 = value.x;
                m12 = value.y;
                m22 = value.z;
            }
        }

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static long3x3 Zero  =  long3x3(0, 0, 0, 0, 0, 0, 0, 0, 0);
        
        /// Predefined all-ones matrix
        readonly public static long3x3 Ones  =  long3x3(1, 1, 1, 1, 1, 1, 1, 1, 1);
        
        /// Predefined identity matrix
        readonly public static long3x3 Identity  =  long3x3(1, 0, 0, 0, 1, 0, 0, 0, 1);
        
        /// Predefined all-MaxValue matrix
        readonly public static long3x3 AllMaxValue  =  long3x3(long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue, long.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static long3x3 DiagonalMaxValue  =  long3x3(long.MaxValue, 0, 0, 0, long.MaxValue, 0, 0, 0, long.MaxValue);
        
        /// Predefined all-MinValue matrix
        readonly public static long3x3 AllMinValue  =  long3x3(long.MinValue, long.MinValue, long.MinValue, long.MinValue, long.MinValue, long.MinValue, long.MinValue, long.MinValue, long.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static long3x3 DiagonalMinValue  =  long3x3(long.MinValue, 0, 0, 0, long.MinValue, 0, 0, 0, long.MinValue);

        //#endregion


        //#region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public long[,] ToArray() => new .[,] ( ( m00, m01, m02 ), ( m10, m11, m12 ), ( m20, m21, m22 ) );
        
        /// Creates a 1D array with all values (internal order)
        public long[] ToArray1D() => new .[] ( m00, m01, m02, m10, m11, m12, m20, m21, m22 );

        //#endregion

        
        /// Returns the number of Fields (3 x 3 = 9).
        public int Count => 9;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public long this[int fieldIndex]
        {
            [Inline]get
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 9, "fieldIndex was out of range");
               unchecked { return values[fieldIndex]; }
            }
            [Inline]set mut
            {
               System.Diagnostics.Debug.Assert(fieldIndex >= 0 && fieldIndex < 9, "fieldIndex was out of range");
               unchecked { values[fieldIndex] = value; }
            }
        }
        
        /// Gets/Sets a specific 2D-indexed component (a bit slower than direct access).
        public long this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { return values[col * 3 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 3, "row was out of range");
                unchecked { values[col * 3 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(long3x3 rhs) => ((((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && (m10 == rhs.m10 && m11 == rhs.m11)) && ((m12 == rhs.m12 && m20 == rhs.m20) && (m21 == rhs.m21 && m22 == rhs.m22)));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(long3x3 lhs, long3x3 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(long3x3 lhs, long3x3 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode()) * 397) ^ m20.GetHashCode()) * 397) ^ m21.GetHashCode()) * 397) ^ m22.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public long3x3 Transposed => long3x3(m00, m10, m20, m01, m11, m21, m02, m12, m22);
        
        /// Returns the minimal component of this matrix.
        public long MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m10), m11), m12), m20), m21), m22);
        
        /// Returns the maximal component of this matrix.
        public long MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m10), m11), m12), m20), m21), m22);
        
        /// Returns the euclidean length of this matrix.
        public double Length => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + (m10*m10 + m11*m11)) + ((m12*m12 + m20*m20) + (m21*m21 + m22*m22))));
        
        /// Returns the squared euclidean length of this matrix.
        public double LengthSqr => ((((m00*m00 + m01*m01) + m02*m02) + (m10*m10 + m11*m11)) + ((m12*m12 + m20*m20) + (m21*m21 + m22*m22)));
        
        /// Returns the sum of all fields.
        public long Sum => ((((m00 + m01) + m02) + (m10 + m11)) + ((m12 + m20) + (m21 + m22)));
        
        /// Returns the euclidean norm of this matrix.
        public double Norm => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + (m10*m10 + m11*m11)) + ((m12*m12 + m20*m20) + (m21*m21 + m22*m22))));
        
        /// Returns the one-norm of this matrix.
        public double Norm1 => ((((System.Math.Abs(m00) + System.Math.Abs(m01)) + System.Math.Abs(m02)) + (System.Math.Abs(m10) + System.Math.Abs(m11))) + ((System.Math.Abs(m12) + System.Math.Abs(m20)) + (System.Math.Abs(m21) + System.Math.Abs(m22))));
        
        /// Returns the two-norm of this matrix.
        public double Norm2 => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + (m10*m10 + m11*m11)) + ((m12*m12 + m20*m20) + (m21*m21 + m22*m22))));
        
        /// Returns the max-norm of this matrix.
        public long NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m02)), System.Math.Abs(m10)), System.Math.Abs(m11)), System.Math.Abs(m12)), System.Math.Abs(m20)), System.Math.Abs(m21)), System.Math.Abs(m22));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow(((((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + System.Math.Pow((double)System.Math.Abs(m02), p)) + (System.Math.Pow((double)System.Math.Abs(m10), p) + System.Math.Pow((double)System.Math.Abs(m11), p))) + ((System.Math.Pow((double)System.Math.Abs(m12), p) + System.Math.Pow((double)System.Math.Abs(m20), p)) + (System.Math.Pow((double)System.Math.Abs(m21), p) + System.Math.Pow((double)System.Math.Abs(m22), p)))), 1 / p);
        
        /// Returns determinant of this matrix.
        public long Determinant => m00 * (m11 * m22 - m21 * m12) - m10 * (m01 * m22 - m21 * m02) + m20 * (m01 * m12 - m11 * m02);
        
        /// Returns the adjunct of this matrix.
        public long3x3 Adjugate => long3x3(m11 * m22 - m21 * m12, -m01 * m22 + m21 * m02, m01 * m12 - m11 * m02, -m10 * m22 + m20 * m12, m00 * m22 - m20 * m02, -m00 * m12 + m10 * m02, m10 * m21 - m20 * m11, -m00 * m21 + m20 * m01, m00 * m11 - m10 * m01);
        
        /// Returns the inverse of this matrix (use with caution).
        public long3x3 Inverse => Adjugate / Determinant;
        
        /// Executes a matrix-matrix-multiplication long3x3 * long2x3 -> long2x3.
        public static long2x3 operator*(long3x3 lhs, long2x3 rhs) => long2x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12));
        
        /// Executes a matrix-matrix-multiplication long3x3 * long3x3 -> long3x3.
        public static long3x3 operator*(long3x3 lhs, long3x3 rhs) => long3x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + lhs.m22 * rhs.m22));
        
        /// Executes a matrix-matrix-multiplication long3x3 * long4x3 -> long4x3.
        public static long4x3 operator*(long3x3 lhs, long4x3 rhs) => long4x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + lhs.m22 * rhs.m22), ((lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31) + lhs.m20 * rhs.m32), ((lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31) + lhs.m21 * rhs.m32), ((lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31) + lhs.m22 * rhs.m32));
        
        /// Executes a matrix-vector-multiplication.
        public static long3 operator*(long3x3 m, long3 v) => long3(((m.m00 * v.x + m.m10 * v.y) + m.m20 * v.z), ((m.m01 * v.x + m.m11 * v.y) + m.m21 * v.z), ((m.m02 * v.x + m.m12 * v.y) + m.m22 * v.z));
        
        /// Executes a matrix-matrix-divison A / B == A * B^-1 (use with caution).
        public static long3x3 operator/(long3x3 A, long3x3 B) => A * B.Inverse;
        
        /// Executes a component-wise * (multiply).
        public static long3x3 CompMul(long3x3 A, long3x3 B) => long3x3(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12, A.m20 * B.m20, A.m21 * B.m21, A.m22 * B.m22);
        
        /// Executes a component-wise / (divide).
        public static long3x3 CompDiv(long3x3 A, long3x3 B) => long3x3(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12, A.m20 / B.m20, A.m21 / B.m21, A.m22 / B.m22);
        
        /// Executes a component-wise + (add).
        public static long3x3 CompAdd(long3x3 A, long3x3 B) => long3x3(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12, A.m20 + B.m20, A.m21 + B.m21, A.m22 + B.m22);
        
        /// Executes a component-wise - (subtract).
        public static long3x3 CompSub(long3x3 A, long3x3 B) => long3x3(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12, A.m20 - B.m20, A.m21 - B.m21, A.m22 - B.m22);
        
        /// Executes a component-wise + (add).
        public static long3x3 operator+(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12, lhs.m20 + rhs.m20, lhs.m21 + rhs.m21, lhs.m22 + rhs.m22);
        
        /// Executes a component-wise + (add) with a scalar.
        public static long3x3 operator+(long3x3 lhs, long rhs) => long3x3(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs, lhs.m20 + rhs, lhs.m21 + rhs, lhs.m22 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static long3x3 operator+(long lhs, long3x3 rhs) => long3x3(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12, lhs + rhs.m20, lhs + rhs.m21, lhs + rhs.m22);
        
        /// Executes a component-wise - (subtract).
        public static long3x3 operator-(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12, lhs.m20 - rhs.m20, lhs.m21 - rhs.m21, lhs.m22 - rhs.m22);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static long3x3 operator-(long3x3 lhs, long rhs) => long3x3(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs, lhs.m20 - rhs, lhs.m21 - rhs, lhs.m22 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static long3x3 operator-(long lhs, long3x3 rhs) => long3x3(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12, lhs - rhs.m20, lhs - rhs.m21, lhs - rhs.m22);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static long3x3 operator/(long3x3 lhs, long rhs) => long3x3(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs, lhs.m20 / rhs, lhs.m21 / rhs, lhs.m22 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static long3x3 operator/(long lhs, long3x3 rhs) => long3x3(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12, lhs / rhs.m20, lhs / rhs.m21, lhs / rhs.m22);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static long3x3 operator*(long3x3 lhs, long rhs) => long3x3(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs, lhs.m20 * rhs, lhs.m21 * rhs, lhs.m22 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static long3x3 operator*(long lhs, long3x3 rhs) => long3x3(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12, lhs * rhs.m20, lhs * rhs.m21, lhs * rhs.m22);
        
        /// Executes a component-wise % (modulo).
        public static long3x3 operator%(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 % rhs.m00, lhs.m01 % rhs.m01, lhs.m02 % rhs.m02, lhs.m10 % rhs.m10, lhs.m11 % rhs.m11, lhs.m12 % rhs.m12, lhs.m20 % rhs.m20, lhs.m21 % rhs.m21, lhs.m22 % rhs.m22);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static long3x3 operator%(long3x3 lhs, long rhs) => long3x3(lhs.m00 % rhs, lhs.m01 % rhs, lhs.m02 % rhs, lhs.m10 % rhs, lhs.m11 % rhs, lhs.m12 % rhs, lhs.m20 % rhs, lhs.m21 % rhs, lhs.m22 % rhs);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static long3x3 operator%(long lhs, long3x3 rhs) => long3x3(lhs % rhs.m00, lhs % rhs.m01, lhs % rhs.m02, lhs % rhs.m10, lhs % rhs.m11, lhs % rhs.m12, lhs % rhs.m20, lhs % rhs.m21, lhs % rhs.m22);
        
        /// Executes a component-wise ^ (xor).
        public static long3x3 operator^(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 ^ rhs.m00, lhs.m01 ^ rhs.m01, lhs.m02 ^ rhs.m02, lhs.m10 ^ rhs.m10, lhs.m11 ^ rhs.m11, lhs.m12 ^ rhs.m12, lhs.m20 ^ rhs.m20, lhs.m21 ^ rhs.m21, lhs.m22 ^ rhs.m22);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static long3x3 operator^(long3x3 lhs, long rhs) => long3x3(lhs.m00 ^ rhs, lhs.m01 ^ rhs, lhs.m02 ^ rhs, lhs.m10 ^ rhs, lhs.m11 ^ rhs, lhs.m12 ^ rhs, lhs.m20 ^ rhs, lhs.m21 ^ rhs, lhs.m22 ^ rhs);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static long3x3 operator^(long lhs, long3x3 rhs) => long3x3(lhs ^ rhs.m00, lhs ^ rhs.m01, lhs ^ rhs.m02, lhs ^ rhs.m10, lhs ^ rhs.m11, lhs ^ rhs.m12, lhs ^ rhs.m20, lhs ^ rhs.m21, lhs ^ rhs.m22);
        
        /// Executes a component-wise | (bitwise-or).
        public static long3x3 operator|(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 | rhs.m00, lhs.m01 | rhs.m01, lhs.m02 | rhs.m02, lhs.m10 | rhs.m10, lhs.m11 | rhs.m11, lhs.m12 | rhs.m12, lhs.m20 | rhs.m20, lhs.m21 | rhs.m21, lhs.m22 | rhs.m22);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static long3x3 operator|(long3x3 lhs, long rhs) => long3x3(lhs.m00 | rhs, lhs.m01 | rhs, lhs.m02 | rhs, lhs.m10 | rhs, lhs.m11 | rhs, lhs.m12 | rhs, lhs.m20 | rhs, lhs.m21 | rhs, lhs.m22 | rhs);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static long3x3 operator|(long lhs, long3x3 rhs) => long3x3(lhs | rhs.m00, lhs | rhs.m01, lhs | rhs.m02, lhs | rhs.m10, lhs | rhs.m11, lhs | rhs.m12, lhs | rhs.m20, lhs | rhs.m21, lhs | rhs.m22);
        
        /// Executes a component-wise &amp; (bitwise-and).
        public static long3x3 operator&(long3x3 lhs, long3x3 rhs) => long3x3(lhs.m00 & rhs.m00, lhs.m01 & rhs.m01, lhs.m02 & rhs.m02, lhs.m10 & rhs.m10, lhs.m11 & rhs.m11, lhs.m12 & rhs.m12, lhs.m20 & rhs.m20, lhs.m21 & rhs.m21, lhs.m22 & rhs.m22);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static long3x3 operator&(long3x3 lhs, long rhs) => long3x3(lhs.m00 & rhs, lhs.m01 & rhs, lhs.m02 & rhs, lhs.m10 & rhs, lhs.m11 & rhs, lhs.m12 & rhs, lhs.m20 & rhs, lhs.m21 & rhs, lhs.m22 & rhs);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static long3x3 operator&(long lhs, long3x3 rhs) => long3x3(lhs & rhs.m00, lhs & rhs.m01, lhs & rhs.m02, lhs & rhs.m10, lhs & rhs.m11, lhs & rhs.m12, lhs & rhs.m20, lhs & rhs.m21, lhs & rhs.m22);
        
        /// Executes a component-wise left-shift with a scalar.
        public static long3x3 operator<<(long3x3 lhs, int rhs) => long3x3(lhs.m00 << rhs, lhs.m01 << rhs, lhs.m02 << rhs, lhs.m10 << rhs, lhs.m11 << rhs, lhs.m12 << rhs, lhs.m20 << rhs, lhs.m21 << rhs, lhs.m22 << rhs);
        
        /// Executes a component-wise right-shift with a scalar.
        public static long3x3 operator>>(long3x3 lhs, int rhs) => long3x3(lhs.m00 >> rhs, lhs.m01 >> rhs, lhs.m02 >> rhs, lhs.m10 >> rhs, lhs.m11 >> rhs, lhs.m12 >> rhs, lhs.m20 >> rhs, lhs.m21 >> rhs, lhs.m22 >> rhs);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool3x3 operator<(long3x3 lhs, long3x3 rhs) => bool3x3(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12, lhs.m20 < rhs.m20, lhs.m21 < rhs.m21, lhs.m22 < rhs.m22);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x3 operator<(long3x3 lhs, long rhs) => bool3x3(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs, lhs.m20 < rhs, lhs.m21 < rhs, lhs.m22 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x3 operator<(long lhs, long3x3 rhs) => bool3x3(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12, lhs < rhs.m20, lhs < rhs.m21, lhs < rhs.m22);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool3x3 operator<=(long3x3 lhs, long3x3 rhs) => bool3x3(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12, lhs.m20 <= rhs.m20, lhs.m21 <= rhs.m21, lhs.m22 <= rhs.m22);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x3 operator<=(long3x3 lhs, long rhs) => bool3x3(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs, lhs.m20 <= rhs, lhs.m21 <= rhs, lhs.m22 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x3 operator<=(long lhs, long3x3 rhs) => bool3x3(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12, lhs <= rhs.m20, lhs <= rhs.m21, lhs <= rhs.m22);
        
        /// Executes a component-wise greater-than comparison.
        public static bool3x3 operator>(long3x3 lhs, long3x3 rhs) => bool3x3(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12, lhs.m20 > rhs.m20, lhs.m21 > rhs.m21, lhs.m22 > rhs.m22);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x3 operator>(long3x3 lhs, long rhs) => bool3x3(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs, lhs.m20 > rhs, lhs.m21 > rhs, lhs.m22 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x3 operator>(long lhs, long3x3 rhs) => bool3x3(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12, lhs > rhs.m20, lhs > rhs.m21, lhs > rhs.m22);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool3x3 operator>=(long3x3 lhs, long3x3 rhs) => bool3x3(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12, lhs.m20 >= rhs.m20, lhs.m21 >= rhs.m21, lhs.m22 >= rhs.m22);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x3 operator>=(long3x3 lhs, long rhs) => bool3x3(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs, lhs.m20 >= rhs, lhs.m21 >= rhs, lhs.m22 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x3 operator>=(long lhs, long3x3 rhs) => bool3x3(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12, lhs >= rhs.m20, lhs >= rhs.m21, lhs >= rhs.m22);
    }
}
