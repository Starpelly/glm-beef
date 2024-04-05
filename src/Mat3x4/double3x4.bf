using System;
namespace glm
{
    
    /// A matrix of type double with 3 columns and 4 rows.
    public struct double3x4 : IEquatable<double3x4>
    {

        #region Fields
        
        /// component data
        public double[12] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(double m00, double m01, double m02, double m03, double m10, double m11, double m12, double m13, double m20, double m21, double m22, double m23)
        {
            values = .(m00,m01,m02,m03,m10,m11,m12,m13,m20,m21,m22,m23);
        }
        
        /// Constructs this matrix from a double2x2. Non-overwritten fields are from an Identity matrix.
        public this(double2x2 m)
        {
            values = .(m.m00,m.m01,0.0,0.0,m.m10,m.m11,0.0,0.0,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a double3x2. Non-overwritten fields are from an Identity matrix.
        public this(double3x2 m)
        {
            values = .(m.m00,m.m01,0.0,0.0,m.m10,m.m11,0.0,0.0,m.m20,m.m21,1.0,0.0);
        }
        
        /// Constructs this matrix from a double4x2. Non-overwritten fields are from an Identity matrix.
        public this(double4x2 m)
        {
            values = .(m.m00,m.m01,0.0,0.0,m.m10,m.m11,0.0,0.0,m.m20,m.m21,1.0,0.0);
        }
        
        /// Constructs this matrix from a double2x3. Non-overwritten fields are from an Identity matrix.
        public this(double2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0.0,m.m10,m.m11,m.m12,0.0,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a double3x3. Non-overwritten fields are from an Identity matrix.
        public this(double3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0.0,m.m10,m.m11,m.m12,0.0,m.m20,m.m21,m.m22,0.0);
        }
        
        /// Constructs this matrix from a double4x3. Non-overwritten fields are from an Identity matrix.
        public this(double4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,0.0,m.m10,m.m11,m.m12,0.0,m.m20,m.m21,m.m22,0.0);
        }
        
        /// Constructs this matrix from a double2x4. Non-overwritten fields are from an Identity matrix.
        public this(double2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a double3x4. Non-overwritten fields are from an Identity matrix.
        public this(double3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13,m.m20,m.m21,m.m22,m.m23);
        }
        
        /// Constructs this matrix from a double4x4. Non-overwritten fields are from an Identity matrix.
        public this(double4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m03,m.m10,m.m11,m.m12,m.m13,m.m20,m.m21,m.m22,m.m23);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double2 c0, double2 c1)
        {
            values = .(c0.x,c0.y,0.0,0.0,c1.x,c1.y,0.0,0.0,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double2 c0, double2 c1, double2 c2)
        {
            values = .(c0.x,c0.y,0.0,0.0,c1.x,c1.y,0.0,0.0,c2.x,c2.y,1.0,0.0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double3 c0, double3 c1)
        {
            values = .(c0.x,c0.y,c0.z,0.0,c1.x,c1.y,c1.z,0.0,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double3 c0, double3 c1, double3 c2)
        {
            values = .(c0.x,c0.y,c0.z,0.0,c1.x,c1.y,c1.z,0.0,c2.x,c2.y,c2.z,0.0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double4 c0, double4 c1)
        {
            values = .(c0.x,c0.y,c0.z,c0.w,c1.x,c1.y,c1.z,c1.w,0.0,0.0,1.0,0.0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(double4 c0, double4 c1, double4 c2)
        {
            values = .(c0.x,c0.y,c0.z,c0.w,c1.x,c1.y,c1.z,c1.w,c2.x,c2.y,c2.z,c2.w);
        }

        #endregion


        #region Properties
        
        /// Column 0, Rows 0
        public double m00
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
        public double m01
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
        public double m02
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
        public double m03
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
        public double m10
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
        public double m11
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
        public double m12
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
        public double m13
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
        
        /// Column 2, Rows 0
        public double m20
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
        
        /// Column 2, Rows 1
        public double m21
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
        
        /// Column 2, Rows 2
        public double m22
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
        
        /// Column 2, Rows 3
        public double m23
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
        public double4 Column0
        {
            [Inline]get
            {
                return  double4(m00, m01, m02, m03);
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
        public double4 Column1
        {
            [Inline]get
            {
                return  double4(m10, m11, m12, m13);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
                m13 = value.w;
            }
        }
        
        /// Gets or sets the column nr 2
        public double4 Column2
        {
            [Inline]get
            {
                return  double4(m20, m21, m22, m23);
            }
            [Inline]set mut
            {
                m20 = value.x;
                m21 = value.y;
                m22 = value.z;
                m23 = value.w;
            }
        }
        
        /// Gets or sets the row nr 0
        public double3 Row0
        {
            [Inline]get
            {
                return  double3(m00, m10, m20);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
                m20 = value.z;
            }
        }
        
        /// Gets or sets the row nr 1
        public double3 Row1
        {
            [Inline]get
            {
                return  double3(m01, m11, m21);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
                m21 = value.z;
            }
        }
        
        /// Gets or sets the row nr 2
        public double3 Row2
        {
            [Inline]get
            {
                return  double3(m02, m12, m22);
            }
            [Inline]set mut
            {
                m02 = value.x;
                m12 = value.y;
                m22 = value.z;
            }
        }
        
        /// Gets or sets the row nr 3
        public double3 Row3
        {
            [Inline]get
            {
                return  double3(m03, m13, m23);
            }
            [Inline]set mut
            {
                m03 = value.x;
                m13 = value.y;
                m23 = value.z;
            }
        }

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static double3x4 Zero  =  double3x4(0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
        
        /// Predefined all-ones matrix
        readonly public static double3x4 Ones  =  double3x4(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0);
        
        /// Predefined identity matrix
        readonly public static double3x4 Identity  =  double3x4(1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0, 1.0, 0.0);
        
        /// Predefined all-MaxValue matrix
        readonly public static double3x4 AllMaxValue  =  double3x4(double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue, double.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static double3x4 DiagonalMaxValue  =  double3x4(double.MaxValue, 0.0, 0.0, 0.0, 0.0, double.MaxValue, 0.0, 0.0, 0.0, 0.0, double.MaxValue, 0.0);
        
        /// Predefined all-MinValue matrix
        readonly public static double3x4 AllMinValue  =  double3x4(double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue, double.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static double3x4 DiagonalMinValue  =  double3x4(double.MinValue, 0.0, 0.0, 0.0, 0.0, double.MinValue, 0.0, 0.0, 0.0, 0.0, double.MinValue, 0.0);
        
        /// Predefined all-Epsilon matrix
        readonly public static double3x4 AllEpsilon  =  double3x4(double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon, double.Epsilon);
        
        /// Predefined diagonal-Epsilon matrix
        readonly public static double3x4 DiagonalEpsilon  =  double3x4(double.Epsilon, 0.0, 0.0, 0.0, 0.0, double.Epsilon, 0.0, 0.0, 0.0, 0.0, double.Epsilon, 0.0);
        
        /// Predefined all-NaN matrix
        readonly public static double3x4 AllNaN  =  double3x4(double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN, double.NaN);
        
        /// Predefined diagonal-NaN matrix
        readonly public static double3x4 DiagonalNaN  =  double3x4(double.NaN, 0.0, 0.0, 0.0, 0.0, double.NaN, 0.0, 0.0, 0.0, 0.0, double.NaN, 0.0);
        
        /// Predefined all-NegativeInfinity matrix
        readonly public static double3x4 AllNegativeInfinity  =  double3x4(double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity, double.NegativeInfinity);
        
        /// Predefined diagonal-NegativeInfinity matrix
        readonly public static double3x4 DiagonalNegativeInfinity  =  double3x4(double.NegativeInfinity, 0.0, 0.0, 0.0, 0.0, double.NegativeInfinity, 0.0, 0.0, 0.0, 0.0, double.NegativeInfinity, 0.0);
        
        /// Predefined all-PositiveInfinity matrix
        readonly public static double3x4 AllPositiveInfinity  =  double3x4(double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity, double.PositiveInfinity);
        
        /// Predefined diagonal-PositiveInfinity matrix
        readonly public static double3x4 DiagonalPositiveInfinity  =  double3x4(double.PositiveInfinity, 0.0, 0.0, 0.0, 0.0, double.PositiveInfinity, 0.0, 0.0, 0.0, 0.0, double.PositiveInfinity, 0.0);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public double[,] ToArray() => new .[,] ( ( m00, m01, m02, m03 ), ( m10, m11, m12, m13 ), ( m20, m21, m22, m23 ) );
        
        /// Creates a 1D array with all values (internal order)
        public double[] ToArray1D() => new .[] ( m00, m01, m02, m03, m10, m11, m12, m13, m20, m21, m22, m23 );

        #endregion

        
        /// Returns the number of Fields (3 x 4 = 12).
        public int Count => 12;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public double this[int fieldIndex]
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
        public double this[int col, int row]
        {
            [Inline]get
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 4, "row was out of range");
                unchecked { return values[col * 4 + row]; }
            }
            [Inline]set mut
            {
                System.Diagnostics.Debug.Assert(col >= 0 && col < 3, "col was out of range");
                System.Diagnostics.Debug.Assert(row >= 0 && row < 4, "row was out of range");
                unchecked { values[col * 4 + row] = value; }
            }
        }
        
        /// Returns true iff this equals rhs component-wise.
        public bool Equals(double3x4 rhs) => ((((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && ((m03 == rhs.m03 && m10 == rhs.m10) && m11 == rhs.m11)) && (((m12 == rhs.m12 && m13 == rhs.m13) && m20 == rhs.m20) && ((m21 == rhs.m21 && m22 == rhs.m22) && m23 == rhs.m23)));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(double3x4 lhs, double3x4 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(double3x4 lhs, double3x4 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((((((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m03.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode()) * 397) ^ m13.GetHashCode()) * 397) ^ m20.GetHashCode()) * 397) ^ m21.GetHashCode()) * 397) ^ m22.GetHashCode()) * 397) ^ m23.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public double4x3 Transposed => double4x3(m00, m10, m20, m01, m11, m21, m02, m12, m22, m03, m13, m23);
        
        /// Returns the minimal component of this matrix.
        public double MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m03), m10), m11), m12), m13), m20), m21), m22), m23);
        
        /// Returns the maximal component of this matrix.
        public double MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m03), m10), m11), m12), m13), m20), m21), m22), m23);
        
        /// Returns the euclidean length of this matrix.
        public double Length => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m03*m03 + m10*m10) + m11*m11)) + (((m12*m12 + m13*m13) + m20*m20) + ((m21*m21 + m22*m22) + m23*m23))));
        
        /// Returns the squared euclidean length of this matrix.
        public double LengthSqr => ((((m00*m00 + m01*m01) + m02*m02) + ((m03*m03 + m10*m10) + m11*m11)) + (((m12*m12 + m13*m13) + m20*m20) + ((m21*m21 + m22*m22) + m23*m23)));
        
        /// Returns the sum of all fields.
        public double Sum => ((((m00 + m01) + m02) + ((m03 + m10) + m11)) + (((m12 + m13) + m20) + ((m21 + m22) + m23)));
        
        /// Returns the euclidean norm of this matrix.
        public double Norm => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m03*m03 + m10*m10) + m11*m11)) + (((m12*m12 + m13*m13) + m20*m20) + ((m21*m21 + m22*m22) + m23*m23))));
        
        /// Returns the one-norm of this matrix.
        public double Norm1 => ((((System.Math.Abs(m00) + System.Math.Abs(m01)) + System.Math.Abs(m02)) + ((System.Math.Abs(m03) + System.Math.Abs(m10)) + System.Math.Abs(m11))) + (((System.Math.Abs(m12) + System.Math.Abs(m13)) + System.Math.Abs(m20)) + ((System.Math.Abs(m21) + System.Math.Abs(m22)) + System.Math.Abs(m23))));
        
        /// Returns the two-norm of this matrix.
        public double Norm2 => (double)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m03*m03 + m10*m10) + m11*m11)) + (((m12*m12 + m13*m13) + m20*m20) + ((m21*m21 + m22*m22) + m23*m23))));
        
        /// Returns the max-norm of this matrix.
        public double NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m02)), System.Math.Abs(m03)), System.Math.Abs(m10)), System.Math.Abs(m11)), System.Math.Abs(m12)), System.Math.Abs(m13)), System.Math.Abs(m20)), System.Math.Abs(m21)), System.Math.Abs(m22)), System.Math.Abs(m23));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow(((((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + System.Math.Pow((double)System.Math.Abs(m02), p)) + ((System.Math.Pow((double)System.Math.Abs(m03), p) + System.Math.Pow((double)System.Math.Abs(m10), p)) + System.Math.Pow((double)System.Math.Abs(m11), p))) + (((System.Math.Pow((double)System.Math.Abs(m12), p) + System.Math.Pow((double)System.Math.Abs(m13), p)) + System.Math.Pow((double)System.Math.Abs(m20), p)) + ((System.Math.Pow((double)System.Math.Abs(m21), p) + System.Math.Pow((double)System.Math.Abs(m22), p)) + System.Math.Pow((double)System.Math.Abs(m23), p)))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication double3x4 * double2x3 -> double2x4.
        public static double2x4 operator*(double3x4 lhs, double2x3 rhs) => double2x4(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01) + lhs.m23 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12), ((lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11) + lhs.m23 * rhs.m12));
        
        /// Executes a matrix-matrix-multiplication double3x4 * double3x3 -> double3x4.
        public static double3x4 operator*(double3x4 lhs, double3x3 rhs) => double3x4(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01) + lhs.m23 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12), ((lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11) + lhs.m23 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + lhs.m22 * rhs.m22), ((lhs.m03 * rhs.m20 + lhs.m13 * rhs.m21) + lhs.m23 * rhs.m22));
        
        /// Executes a matrix-matrix-multiplication double3x4 * double4x3 -> double4x4.
        public static double4x4 operator*(double3x4 lhs, double4x3 rhs) => double4x4(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + lhs.m20 * rhs.m02), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + lhs.m21 * rhs.m02), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + lhs.m22 * rhs.m02), ((lhs.m03 * rhs.m00 + lhs.m13 * rhs.m01) + lhs.m23 * rhs.m02), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + lhs.m20 * rhs.m12), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + lhs.m21 * rhs.m12), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + lhs.m22 * rhs.m12), ((lhs.m03 * rhs.m10 + lhs.m13 * rhs.m11) + lhs.m23 * rhs.m12), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + lhs.m20 * rhs.m22), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + lhs.m21 * rhs.m22), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + lhs.m22 * rhs.m22), ((lhs.m03 * rhs.m20 + lhs.m13 * rhs.m21) + lhs.m23 * rhs.m22), ((lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31) + lhs.m20 * rhs.m32), ((lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31) + lhs.m21 * rhs.m32), ((lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31) + lhs.m22 * rhs.m32), ((lhs.m03 * rhs.m30 + lhs.m13 * rhs.m31) + lhs.m23 * rhs.m32));
        
        /// Executes a matrix-vector-multiplication.
        public static double4 operator*(double3x4 m, double3 v) => double4(((m.m00 * v.x + m.m10 * v.y) + m.m20 * v.z), ((m.m01 * v.x + m.m11 * v.y) + m.m21 * v.z), ((m.m02 * v.x + m.m12 * v.y) + m.m22 * v.z), ((m.m03 * v.x + m.m13 * v.y) + m.m23 * v.z));
        
        /// Executes a component-wise * (multiply).
        public static double3x4 CompMul(double3x4 A, double3x4 B) => double3x4(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m03 * B.m03, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12, A.m13 * B.m13, A.m20 * B.m20, A.m21 * B.m21, A.m22 * B.m22, A.m23 * B.m23);
        
        /// Executes a component-wise / (divide).
        public static double3x4 CompDiv(double3x4 A, double3x4 B) => double3x4(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m03 / B.m03, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12, A.m13 / B.m13, A.m20 / B.m20, A.m21 / B.m21, A.m22 / B.m22, A.m23 / B.m23);
        
        /// Executes a component-wise + (add).
        public static double3x4 CompAdd(double3x4 A, double3x4 B) => double3x4(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m03 + B.m03, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12, A.m13 + B.m13, A.m20 + B.m20, A.m21 + B.m21, A.m22 + B.m22, A.m23 + B.m23);
        
        /// Executes a component-wise - (subtract).
        public static double3x4 CompSub(double3x4 A, double3x4 B) => double3x4(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m03 - B.m03, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12, A.m13 - B.m13, A.m20 - B.m20, A.m21 - B.m21, A.m22 - B.m22, A.m23 - B.m23);
        
        /// Executes a component-wise + (add).
        public static double3x4 operator+(double3x4 lhs, double3x4 rhs) => double3x4(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m03 + rhs.m03, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12, lhs.m13 + rhs.m13, lhs.m20 + rhs.m20, lhs.m21 + rhs.m21, lhs.m22 + rhs.m22, lhs.m23 + rhs.m23);
        
        /// Executes a component-wise + (add) with a scalar.
        public static double3x4 operator+(double3x4 lhs, double rhs) => double3x4(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m03 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs, lhs.m13 + rhs, lhs.m20 + rhs, lhs.m21 + rhs, lhs.m22 + rhs, lhs.m23 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static double3x4 operator+(double lhs, double3x4 rhs) => double3x4(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m03, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12, lhs + rhs.m13, lhs + rhs.m20, lhs + rhs.m21, lhs + rhs.m22, lhs + rhs.m23);
        
        /// Executes a component-wise - (subtract).
        public static double3x4 operator-(double3x4 lhs, double3x4 rhs) => double3x4(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m03 - rhs.m03, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12, lhs.m13 - rhs.m13, lhs.m20 - rhs.m20, lhs.m21 - rhs.m21, lhs.m22 - rhs.m22, lhs.m23 - rhs.m23);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static double3x4 operator-(double3x4 lhs, double rhs) => double3x4(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m03 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs, lhs.m13 - rhs, lhs.m20 - rhs, lhs.m21 - rhs, lhs.m22 - rhs, lhs.m23 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static double3x4 operator-(double lhs, double3x4 rhs) => double3x4(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m03, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12, lhs - rhs.m13, lhs - rhs.m20, lhs - rhs.m21, lhs - rhs.m22, lhs - rhs.m23);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static double3x4 operator/(double3x4 lhs, double rhs) => double3x4(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m03 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs, lhs.m13 / rhs, lhs.m20 / rhs, lhs.m21 / rhs, lhs.m22 / rhs, lhs.m23 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static double3x4 operator/(double lhs, double3x4 rhs) => double3x4(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m03, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12, lhs / rhs.m13, lhs / rhs.m20, lhs / rhs.m21, lhs / rhs.m22, lhs / rhs.m23);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static double3x4 operator*(double3x4 lhs, double rhs) => double3x4(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m03 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs, lhs.m13 * rhs, lhs.m20 * rhs, lhs.m21 * rhs, lhs.m22 * rhs, lhs.m23 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static double3x4 operator*(double lhs, double3x4 rhs) => double3x4(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m03, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12, lhs * rhs.m13, lhs * rhs.m20, lhs * rhs.m21, lhs * rhs.m22, lhs * rhs.m23);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool3x4 operator<(double3x4 lhs, double3x4 rhs) => bool3x4(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m03 < rhs.m03, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12, lhs.m13 < rhs.m13, lhs.m20 < rhs.m20, lhs.m21 < rhs.m21, lhs.m22 < rhs.m22, lhs.m23 < rhs.m23);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x4 operator<(double3x4 lhs, double rhs) => bool3x4(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m03 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs, lhs.m13 < rhs, lhs.m20 < rhs, lhs.m21 < rhs, lhs.m22 < rhs, lhs.m23 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool3x4 operator<(double lhs, double3x4 rhs) => bool3x4(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m03, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12, lhs < rhs.m13, lhs < rhs.m20, lhs < rhs.m21, lhs < rhs.m22, lhs < rhs.m23);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool3x4 operator<=(double3x4 lhs, double3x4 rhs) => bool3x4(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m03 <= rhs.m03, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12, lhs.m13 <= rhs.m13, lhs.m20 <= rhs.m20, lhs.m21 <= rhs.m21, lhs.m22 <= rhs.m22, lhs.m23 <= rhs.m23);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x4 operator<=(double3x4 lhs, double rhs) => bool3x4(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m03 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs, lhs.m13 <= rhs, lhs.m20 <= rhs, lhs.m21 <= rhs, lhs.m22 <= rhs, lhs.m23 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool3x4 operator<=(double lhs, double3x4 rhs) => bool3x4(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m03, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12, lhs <= rhs.m13, lhs <= rhs.m20, lhs <= rhs.m21, lhs <= rhs.m22, lhs <= rhs.m23);
        
        /// Executes a component-wise greater-than comparison.
        public static bool3x4 operator>(double3x4 lhs, double3x4 rhs) => bool3x4(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m03 > rhs.m03, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12, lhs.m13 > rhs.m13, lhs.m20 > rhs.m20, lhs.m21 > rhs.m21, lhs.m22 > rhs.m22, lhs.m23 > rhs.m23);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x4 operator>(double3x4 lhs, double rhs) => bool3x4(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m03 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs, lhs.m13 > rhs, lhs.m20 > rhs, lhs.m21 > rhs, lhs.m22 > rhs, lhs.m23 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool3x4 operator>(double lhs, double3x4 rhs) => bool3x4(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m03, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12, lhs > rhs.m13, lhs > rhs.m20, lhs > rhs.m21, lhs > rhs.m22, lhs > rhs.m23);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool3x4 operator>=(double3x4 lhs, double3x4 rhs) => bool3x4(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m03 >= rhs.m03, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12, lhs.m13 >= rhs.m13, lhs.m20 >= rhs.m20, lhs.m21 >= rhs.m21, lhs.m22 >= rhs.m22, lhs.m23 >= rhs.m23);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x4 operator>=(double3x4 lhs, double rhs) => bool3x4(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m03 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs, lhs.m13 >= rhs, lhs.m20 >= rhs, lhs.m21 >= rhs, lhs.m22 >= rhs, lhs.m23 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool3x4 operator>=(double lhs, double3x4 rhs) => bool3x4(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m03, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12, lhs >= rhs.m13, lhs >= rhs.m20, lhs >= rhs.m21, lhs >= rhs.m22, lhs >= rhs.m23);
    }
}
