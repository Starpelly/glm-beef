using System;
namespace glm
{
    
    /// A matrix of type int with 4 columns and 3 rows.
    public struct int4x3 : IEquatable<int4x3>
    {

        //#region Fields
        
        /// component data
        public int[12] values;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(int m00, int m01, int m02, int m10, int m11, int m12, int m20, int m21, int m22, int m30, int m31, int m32)
        {
            values = .(m00,m01,m02,m10,m11,m12,m20,m21,m22,m30,m31,m32);
        }
        
        /// Constructs this matrix from a int2x2. Non-overwritten fields are from an Identity matrix.
        public this(int2x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,0,0,1,0,0,0);
        }
        
        /// Constructs this matrix from a int3x2. Non-overwritten fields are from an Identity matrix.
        public this(int3x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,m.m20,m.m21,1,0,0,0);
        }
        
        /// Constructs this matrix from a int4x2. Non-overwritten fields are from an Identity matrix.
        public this(int4x2 m)
        {
            values = .(m.m00,m.m01,0,m.m10,m.m11,0,m.m20,m.m21,1,m.m30,m.m31,0);
        }
        
        /// Constructs this matrix from a int2x3. Non-overwritten fields are from an Identity matrix.
        public this(int2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,0,0,1,0,0,0);
        }
        
        /// Constructs this matrix from a int3x3. Non-overwritten fields are from an Identity matrix.
        public this(int3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,0,0,0);
        }
        
        /// Constructs this matrix from a int4x3. Non-overwritten fields are from an Identity matrix.
        public this(int4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,m.m30,m.m31,m.m32);
        }
        
        /// Constructs this matrix from a int2x4. Non-overwritten fields are from an Identity matrix.
        public this(int2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,0,0,1,0,0,0);
        }
        
        /// Constructs this matrix from a int3x4. Non-overwritten fields are from an Identity matrix.
        public this(int3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,0,0,0);
        }
        
        /// Constructs this matrix from a int4x4. Non-overwritten fields are from an Identity matrix.
        public this(int4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12,m.m20,m.m21,m.m22,m.m30,m.m31,m.m32);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int2 c0, int2 c1)
        {
            values = .(c0.x,c0.y,0,c1.x,c1.y,0,0,0,1,0,0,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int2 c0, int2 c1, int2 c2)
        {
            values = .(c0.x,c0.y,0,c1.x,c1.y,0,c2.x,c2.y,1,0,0,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int2 c0, int2 c1, int2 c2, int2 c3)
        {
            values = .(c0.x,c0.y,0,c1.x,c1.y,0,c2.x,c2.y,1,c3.x,c3.y,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int3 c0, int3 c1)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,0,0,1,0,0,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int3 c0, int3 c1, int3 c2)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,c2.x,c2.y,c2.z,0,0,0);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(int3 c0, int3 c1, int3 c2, int3 c3)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z,c2.x,c2.y,c2.z,c3.x,c3.y,c3.z);
        }

        //#endregion


        //#region Properties
        
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
        
        /// Column 0, Rows 2
        public int m02
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
        public int m10
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
        public int m11
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
        public int m12
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
        public int m20
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
        public int m21
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
        public int m22
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
        public int m30
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
        public int m31
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
        public int m32
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
        public int3 Column0
        {
            [Inline]get
            {
                return  int3(m00, m01, m02);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
            }
        }
        
        /// Gets or sets the column nr 1
        public int3 Column1
        {
            [Inline]get
            {
                return  int3(m10, m11, m12);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
            }
        }
        
        /// Gets or sets the column nr 2
        public int3 Column2
        {
            [Inline]get
            {
                return  int3(m20, m21, m22);
            }
            [Inline]set mut
            {
                m20 = value.x;
                m21 = value.y;
                m22 = value.z;
            }
        }
        
        /// Gets or sets the column nr 3
        public int3 Column3
        {
            [Inline]get
            {
                return  int3(m30, m31, m32);
            }
            [Inline]set mut
            {
                m30 = value.x;
                m31 = value.y;
                m32 = value.z;
            }
        }
        
        /// Gets or sets the row nr 0
        public int4 Row0
        {
            [Inline]get
            {
                return  int4(m00, m10, m20, m30);
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
        public int4 Row1
        {
            [Inline]get
            {
                return  int4(m01, m11, m21, m31);
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
        public int4 Row2
        {
            [Inline]get
            {
                return  int4(m02, m12, m22, m32);
            }
            [Inline]set mut
            {
                m02 = value.x;
                m12 = value.y;
                m22 = value.z;
                m32 = value.w;
            }
        }

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static int4x3 Zero  =  int4x3(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        
        /// Predefined all-ones matrix
        readonly public static int4x3 Ones  =  int4x3(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);
        
        /// Predefined identity matrix
        readonly public static int4x3 Identity  =  int4x3(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0);
        
        /// Predefined all-MaxValue matrix
        readonly public static int4x3 AllMaxValue  =  int4x3(int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue, int.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static int4x3 DiagonalMaxValue  =  int4x3(int.MaxValue, 0, 0, 0, int.MaxValue, 0, 0, 0, int.MaxValue, 0, 0, 0);
        
        /// Predefined all-MinValue matrix
        readonly public static int4x3 AllMinValue  =  int4x3(int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue, int.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static int4x3 DiagonalMinValue  =  int4x3(int.MinValue, 0, 0, 0, int.MinValue, 0, 0, 0, int.MinValue, 0, 0, 0);

        //#endregion


        //#region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public int[,] ToArray() => new .[,] ( ( m00, m01, m02 ), ( m10, m11, m12 ), ( m20, m21, m22 ), ( m30, m31, m32 ) );
        
        /// Creates a 1D array with all values (internal order)
        public int[] ToArray1D() => new .[] ( m00, m01, m02, m10, m11, m12, m20, m21, m22, m30, m31, m32 );

        //#endregion

        
        /// Returns the number of Fields (4 x 3 = 12).
        public int Count => 12;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public int this[int fieldIndex]
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
        public int this[int col, int row]
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
        public bool Equals(int4x3 rhs) => ((((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && ((m10 == rhs.m10 && m11 == rhs.m11) && m12 == rhs.m12)) && (((m20 == rhs.m20 && m21 == rhs.m21) && m22 == rhs.m22) && ((m30 == rhs.m30 && m31 == rhs.m31) && m32 == rhs.m32)));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(int4x3 lhs, int4x3 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(int4x3 lhs, int4x3 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((((((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode()) * 397) ^ m20.GetHashCode()) * 397) ^ m21.GetHashCode()) * 397) ^ m22.GetHashCode()) * 397) ^ m30.GetHashCode()) * 397) ^ m31.GetHashCode()) * 397) ^ m32.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public int3x4 Transposed => int3x4(m00, m10, m20, m30, m01, m11, m21, m31, m02, m12, m22, m32);
        
        /// Returns the minimal component of this matrix.
        public int MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m10), m11), m12), m20), m21), m22), m30), m31), m32);
        
        /// Returns the maximal component of this matrix.
        public int MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m10), m11), m12), m20), m21), m22), m30), m31), m32);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)) + (((m20*m20 + m21*m21) + m22*m22) + ((m30*m30 + m31*m31) + m32*m32))));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => ((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)) + (((m20*m20 + m21*m21) + m22*m22) + ((m30*m30 + m31*m31) + m32*m32)));
        
        /// Returns the sum of all fields.
        public int Sum => ((((m00 + m01) + m02) + ((m10 + m11) + m12)) + (((m20 + m21) + m22) + ((m30 + m31) + m32)));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)) + (((m20*m20 + m21*m21) + m22*m22) + ((m30*m30 + m31*m31) + m32*m32))));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => ((((System.Math.Abs(m00) + System.Math.Abs(m01)) + System.Math.Abs(m02)) + ((System.Math.Abs(m10) + System.Math.Abs(m11)) + System.Math.Abs(m12))) + (((System.Math.Abs(m20) + System.Math.Abs(m21)) + System.Math.Abs(m22)) + ((System.Math.Abs(m30) + System.Math.Abs(m31)) + System.Math.Abs(m32))));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt(((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)) + (((m20*m20 + m21*m21) + m22*m22) + ((m30*m30 + m31*m31) + m32*m32))));
        
        /// Returns the max-norm of this matrix.
        public int NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m02)), System.Math.Abs(m10)), System.Math.Abs(m11)), System.Math.Abs(m12)), System.Math.Abs(m20)), System.Math.Abs(m21)), System.Math.Abs(m22)), System.Math.Abs(m30)), System.Math.Abs(m31)), System.Math.Abs(m32));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow(((((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + System.Math.Pow((double)System.Math.Abs(m02), p)) + ((System.Math.Pow((double)System.Math.Abs(m10), p) + System.Math.Pow((double)System.Math.Abs(m11), p)) + System.Math.Pow((double)System.Math.Abs(m12), p))) + (((System.Math.Pow((double)System.Math.Abs(m20), p) + System.Math.Pow((double)System.Math.Abs(m21), p)) + System.Math.Pow((double)System.Math.Abs(m22), p)) + ((System.Math.Pow((double)System.Math.Abs(m30), p) + System.Math.Pow((double)System.Math.Abs(m31), p)) + System.Math.Pow((double)System.Math.Abs(m32), p)))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication int4x3 * int2x4 -> int2x3.
        public static int2x3 operator*(int4x3 lhs, int2x4 rhs) => int2x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + (lhs.m20 * rhs.m02 + lhs.m30 * rhs.m03)), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + (lhs.m21 * rhs.m02 + lhs.m31 * rhs.m03)), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + (lhs.m22 * rhs.m02 + lhs.m32 * rhs.m03)), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + (lhs.m20 * rhs.m12 + lhs.m30 * rhs.m13)), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + (lhs.m21 * rhs.m12 + lhs.m31 * rhs.m13)), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + (lhs.m22 * rhs.m12 + lhs.m32 * rhs.m13)));
        
        /// Executes a matrix-matrix-multiplication int4x3 * int3x4 -> int3x3.
        public static int3x3 operator*(int4x3 lhs, int3x4 rhs) => int3x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + (lhs.m20 * rhs.m02 + lhs.m30 * rhs.m03)), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + (lhs.m21 * rhs.m02 + lhs.m31 * rhs.m03)), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + (lhs.m22 * rhs.m02 + lhs.m32 * rhs.m03)), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + (lhs.m20 * rhs.m12 + lhs.m30 * rhs.m13)), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + (lhs.m21 * rhs.m12 + lhs.m31 * rhs.m13)), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + (lhs.m22 * rhs.m12 + lhs.m32 * rhs.m13)), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + (lhs.m20 * rhs.m22 + lhs.m30 * rhs.m23)), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + (lhs.m21 * rhs.m22 + lhs.m31 * rhs.m23)), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + (lhs.m22 * rhs.m22 + lhs.m32 * rhs.m23)));
        
        /// Executes a matrix-matrix-multiplication int4x3 * int4x4 -> int4x3.
        public static int4x3 operator*(int4x3 lhs, int4x4 rhs) => int4x3(((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01) + (lhs.m20 * rhs.m02 + lhs.m30 * rhs.m03)), ((lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01) + (lhs.m21 * rhs.m02 + lhs.m31 * rhs.m03)), ((lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01) + (lhs.m22 * rhs.m02 + lhs.m32 * rhs.m03)), ((lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11) + (lhs.m20 * rhs.m12 + lhs.m30 * rhs.m13)), ((lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11) + (lhs.m21 * rhs.m12 + lhs.m31 * rhs.m13)), ((lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11) + (lhs.m22 * rhs.m12 + lhs.m32 * rhs.m13)), ((lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21) + (lhs.m20 * rhs.m22 + lhs.m30 * rhs.m23)), ((lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21) + (lhs.m21 * rhs.m22 + lhs.m31 * rhs.m23)), ((lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21) + (lhs.m22 * rhs.m22 + lhs.m32 * rhs.m23)), ((lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31) + (lhs.m20 * rhs.m32 + lhs.m30 * rhs.m33)), ((lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31) + (lhs.m21 * rhs.m32 + lhs.m31 * rhs.m33)), ((lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31) + (lhs.m22 * rhs.m32 + lhs.m32 * rhs.m33)));
        
        /// Executes a matrix-vector-multiplication.
        public static int3 operator*(int4x3 m, int4 v) => int3(((m.m00 * v.x + m.m10 * v.y) + (m.m20 * v.z + m.m30 * v.w)), ((m.m01 * v.x + m.m11 * v.y) + (m.m21 * v.z + m.m31 * v.w)), ((m.m02 * v.x + m.m12 * v.y) + (m.m22 * v.z + m.m32 * v.w)));
        
        /// Executes a component-wise * (multiply).
        public static int4x3 CompMul(int4x3 A, int4x3 B) => int4x3(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12, A.m20 * B.m20, A.m21 * B.m21, A.m22 * B.m22, A.m30 * B.m30, A.m31 * B.m31, A.m32 * B.m32);
        
        /// Executes a component-wise / (divide).
        public static int4x3 CompDiv(int4x3 A, int4x3 B) => int4x3(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12, A.m20 / B.m20, A.m21 / B.m21, A.m22 / B.m22, A.m30 / B.m30, A.m31 / B.m31, A.m32 / B.m32);
        
        /// Executes a component-wise + (add).
        public static int4x3 CompAdd(int4x3 A, int4x3 B) => int4x3(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12, A.m20 + B.m20, A.m21 + B.m21, A.m22 + B.m22, A.m30 + B.m30, A.m31 + B.m31, A.m32 + B.m32);
        
        /// Executes a component-wise - (subtract).
        public static int4x3 CompSub(int4x3 A, int4x3 B) => int4x3(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12, A.m20 - B.m20, A.m21 - B.m21, A.m22 - B.m22, A.m30 - B.m30, A.m31 - B.m31, A.m32 - B.m32);
        
        /// Executes a component-wise + (add).
        public static int4x3 operator+(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12, lhs.m20 + rhs.m20, lhs.m21 + rhs.m21, lhs.m22 + rhs.m22, lhs.m30 + rhs.m30, lhs.m31 + rhs.m31, lhs.m32 + rhs.m32);
        
        /// Executes a component-wise + (add) with a scalar.
        public static int4x3 operator+(int4x3 lhs, int rhs) => int4x3(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs, lhs.m20 + rhs, lhs.m21 + rhs, lhs.m22 + rhs, lhs.m30 + rhs, lhs.m31 + rhs, lhs.m32 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static int4x3 operator+(int lhs, int4x3 rhs) => int4x3(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12, lhs + rhs.m20, lhs + rhs.m21, lhs + rhs.m22, lhs + rhs.m30, lhs + rhs.m31, lhs + rhs.m32);
        
        /// Executes a component-wise - (subtract).
        public static int4x3 operator-(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12, lhs.m20 - rhs.m20, lhs.m21 - rhs.m21, lhs.m22 - rhs.m22, lhs.m30 - rhs.m30, lhs.m31 - rhs.m31, lhs.m32 - rhs.m32);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static int4x3 operator-(int4x3 lhs, int rhs) => int4x3(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs, lhs.m20 - rhs, lhs.m21 - rhs, lhs.m22 - rhs, lhs.m30 - rhs, lhs.m31 - rhs, lhs.m32 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static int4x3 operator-(int lhs, int4x3 rhs) => int4x3(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12, lhs - rhs.m20, lhs - rhs.m21, lhs - rhs.m22, lhs - rhs.m30, lhs - rhs.m31, lhs - rhs.m32);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static int4x3 operator/(int4x3 lhs, int rhs) => int4x3(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs, lhs.m20 / rhs, lhs.m21 / rhs, lhs.m22 / rhs, lhs.m30 / rhs, lhs.m31 / rhs, lhs.m32 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static int4x3 operator/(int lhs, int4x3 rhs) => int4x3(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12, lhs / rhs.m20, lhs / rhs.m21, lhs / rhs.m22, lhs / rhs.m30, lhs / rhs.m31, lhs / rhs.m32);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static int4x3 operator*(int4x3 lhs, int rhs) => int4x3(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs, lhs.m20 * rhs, lhs.m21 * rhs, lhs.m22 * rhs, lhs.m30 * rhs, lhs.m31 * rhs, lhs.m32 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static int4x3 operator*(int lhs, int4x3 rhs) => int4x3(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12, lhs * rhs.m20, lhs * rhs.m21, lhs * rhs.m22, lhs * rhs.m30, lhs * rhs.m31, lhs * rhs.m32);
        
        /// Executes a component-wise % (modulo).
        public static int4x3 operator%(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 % rhs.m00, lhs.m01 % rhs.m01, lhs.m02 % rhs.m02, lhs.m10 % rhs.m10, lhs.m11 % rhs.m11, lhs.m12 % rhs.m12, lhs.m20 % rhs.m20, lhs.m21 % rhs.m21, lhs.m22 % rhs.m22, lhs.m30 % rhs.m30, lhs.m31 % rhs.m31, lhs.m32 % rhs.m32);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static int4x3 operator%(int4x3 lhs, int rhs) => int4x3(lhs.m00 % rhs, lhs.m01 % rhs, lhs.m02 % rhs, lhs.m10 % rhs, lhs.m11 % rhs, lhs.m12 % rhs, lhs.m20 % rhs, lhs.m21 % rhs, lhs.m22 % rhs, lhs.m30 % rhs, lhs.m31 % rhs, lhs.m32 % rhs);
        
        /// Executes a component-wise % (modulo) with a scalar.
        public static int4x3 operator%(int lhs, int4x3 rhs) => int4x3(lhs % rhs.m00, lhs % rhs.m01, lhs % rhs.m02, lhs % rhs.m10, lhs % rhs.m11, lhs % rhs.m12, lhs % rhs.m20, lhs % rhs.m21, lhs % rhs.m22, lhs % rhs.m30, lhs % rhs.m31, lhs % rhs.m32);
        
        /// Executes a component-wise ^ (xor).
        public static int4x3 operator^(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 ^ rhs.m00, lhs.m01 ^ rhs.m01, lhs.m02 ^ rhs.m02, lhs.m10 ^ rhs.m10, lhs.m11 ^ rhs.m11, lhs.m12 ^ rhs.m12, lhs.m20 ^ rhs.m20, lhs.m21 ^ rhs.m21, lhs.m22 ^ rhs.m22, lhs.m30 ^ rhs.m30, lhs.m31 ^ rhs.m31, lhs.m32 ^ rhs.m32);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static int4x3 operator^(int4x3 lhs, int rhs) => int4x3(lhs.m00 ^ rhs, lhs.m01 ^ rhs, lhs.m02 ^ rhs, lhs.m10 ^ rhs, lhs.m11 ^ rhs, lhs.m12 ^ rhs, lhs.m20 ^ rhs, lhs.m21 ^ rhs, lhs.m22 ^ rhs, lhs.m30 ^ rhs, lhs.m31 ^ rhs, lhs.m32 ^ rhs);
        
        /// Executes a component-wise ^ (xor) with a scalar.
        public static int4x3 operator^(int lhs, int4x3 rhs) => int4x3(lhs ^ rhs.m00, lhs ^ rhs.m01, lhs ^ rhs.m02, lhs ^ rhs.m10, lhs ^ rhs.m11, lhs ^ rhs.m12, lhs ^ rhs.m20, lhs ^ rhs.m21, lhs ^ rhs.m22, lhs ^ rhs.m30, lhs ^ rhs.m31, lhs ^ rhs.m32);
        
        /// Executes a component-wise | (bitwise-or).
        public static int4x3 operator|(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 | rhs.m00, lhs.m01 | rhs.m01, lhs.m02 | rhs.m02, lhs.m10 | rhs.m10, lhs.m11 | rhs.m11, lhs.m12 | rhs.m12, lhs.m20 | rhs.m20, lhs.m21 | rhs.m21, lhs.m22 | rhs.m22, lhs.m30 | rhs.m30, lhs.m31 | rhs.m31, lhs.m32 | rhs.m32);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static int4x3 operator|(int4x3 lhs, int rhs) => int4x3(lhs.m00 | rhs, lhs.m01 | rhs, lhs.m02 | rhs, lhs.m10 | rhs, lhs.m11 | rhs, lhs.m12 | rhs, lhs.m20 | rhs, lhs.m21 | rhs, lhs.m22 | rhs, lhs.m30 | rhs, lhs.m31 | rhs, lhs.m32 | rhs);
        
        /// Executes a component-wise | (bitwise-or) with a scalar.
        public static int4x3 operator|(int lhs, int4x3 rhs) => int4x3(lhs | rhs.m00, lhs | rhs.m01, lhs | rhs.m02, lhs | rhs.m10, lhs | rhs.m11, lhs | rhs.m12, lhs | rhs.m20, lhs | rhs.m21, lhs | rhs.m22, lhs | rhs.m30, lhs | rhs.m31, lhs | rhs.m32);
        
        /// Executes a component-wise &amp; (bitwise-and).
        public static int4x3 operator&(int4x3 lhs, int4x3 rhs) => int4x3(lhs.m00 & rhs.m00, lhs.m01 & rhs.m01, lhs.m02 & rhs.m02, lhs.m10 & rhs.m10, lhs.m11 & rhs.m11, lhs.m12 & rhs.m12, lhs.m20 & rhs.m20, lhs.m21 & rhs.m21, lhs.m22 & rhs.m22, lhs.m30 & rhs.m30, lhs.m31 & rhs.m31, lhs.m32 & rhs.m32);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static int4x3 operator&(int4x3 lhs, int rhs) => int4x3(lhs.m00 & rhs, lhs.m01 & rhs, lhs.m02 & rhs, lhs.m10 & rhs, lhs.m11 & rhs, lhs.m12 & rhs, lhs.m20 & rhs, lhs.m21 & rhs, lhs.m22 & rhs, lhs.m30 & rhs, lhs.m31 & rhs, lhs.m32 & rhs);
        
        /// Executes a component-wise &amp; (bitwise-and) with a scalar.
        public static int4x3 operator&(int lhs, int4x3 rhs) => int4x3(lhs & rhs.m00, lhs & rhs.m01, lhs & rhs.m02, lhs & rhs.m10, lhs & rhs.m11, lhs & rhs.m12, lhs & rhs.m20, lhs & rhs.m21, lhs & rhs.m22, lhs & rhs.m30, lhs & rhs.m31, lhs & rhs.m32);
        
        /// Executes a component-wise left-shift with a scalar.
        public static int4x3 operator<<(int4x3 lhs, int rhs) => int4x3(lhs.m00 << rhs, lhs.m01 << rhs, lhs.m02 << rhs, lhs.m10 << rhs, lhs.m11 << rhs, lhs.m12 << rhs, lhs.m20 << rhs, lhs.m21 << rhs, lhs.m22 << rhs, lhs.m30 << rhs, lhs.m31 << rhs, lhs.m32 << rhs);
        
        /// Executes a component-wise right-shift with a scalar.
        public static int4x3 operator>>(int4x3 lhs, int rhs) => int4x3(lhs.m00 >> rhs, lhs.m01 >> rhs, lhs.m02 >> rhs, lhs.m10 >> rhs, lhs.m11 >> rhs, lhs.m12 >> rhs, lhs.m20 >> rhs, lhs.m21 >> rhs, lhs.m22 >> rhs, lhs.m30 >> rhs, lhs.m31 >> rhs, lhs.m32 >> rhs);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool4x3 operator<(int4x3 lhs, int4x3 rhs) => bool4x3(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12, lhs.m20 < rhs.m20, lhs.m21 < rhs.m21, lhs.m22 < rhs.m22, lhs.m30 < rhs.m30, lhs.m31 < rhs.m31, lhs.m32 < rhs.m32);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool4x3 operator<(int4x3 lhs, int rhs) => bool4x3(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs, lhs.m20 < rhs, lhs.m21 < rhs, lhs.m22 < rhs, lhs.m30 < rhs, lhs.m31 < rhs, lhs.m32 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool4x3 operator<(int lhs, int4x3 rhs) => bool4x3(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12, lhs < rhs.m20, lhs < rhs.m21, lhs < rhs.m22, lhs < rhs.m30, lhs < rhs.m31, lhs < rhs.m32);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool4x3 operator<=(int4x3 lhs, int4x3 rhs) => bool4x3(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12, lhs.m20 <= rhs.m20, lhs.m21 <= rhs.m21, lhs.m22 <= rhs.m22, lhs.m30 <= rhs.m30, lhs.m31 <= rhs.m31, lhs.m32 <= rhs.m32);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool4x3 operator<=(int4x3 lhs, int rhs) => bool4x3(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs, lhs.m20 <= rhs, lhs.m21 <= rhs, lhs.m22 <= rhs, lhs.m30 <= rhs, lhs.m31 <= rhs, lhs.m32 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool4x3 operator<=(int lhs, int4x3 rhs) => bool4x3(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12, lhs <= rhs.m20, lhs <= rhs.m21, lhs <= rhs.m22, lhs <= rhs.m30, lhs <= rhs.m31, lhs <= rhs.m32);
        
        /// Executes a component-wise greater-than comparison.
        public static bool4x3 operator>(int4x3 lhs, int4x3 rhs) => bool4x3(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12, lhs.m20 > rhs.m20, lhs.m21 > rhs.m21, lhs.m22 > rhs.m22, lhs.m30 > rhs.m30, lhs.m31 > rhs.m31, lhs.m32 > rhs.m32);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool4x3 operator>(int4x3 lhs, int rhs) => bool4x3(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs, lhs.m20 > rhs, lhs.m21 > rhs, lhs.m22 > rhs, lhs.m30 > rhs, lhs.m31 > rhs, lhs.m32 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool4x3 operator>(int lhs, int4x3 rhs) => bool4x3(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12, lhs > rhs.m20, lhs > rhs.m21, lhs > rhs.m22, lhs > rhs.m30, lhs > rhs.m31, lhs > rhs.m32);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool4x3 operator>=(int4x3 lhs, int4x3 rhs) => bool4x3(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12, lhs.m20 >= rhs.m20, lhs.m21 >= rhs.m21, lhs.m22 >= rhs.m22, lhs.m30 >= rhs.m30, lhs.m31 >= rhs.m31, lhs.m32 >= rhs.m32);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool4x3 operator>=(int4x3 lhs, int rhs) => bool4x3(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs, lhs.m20 >= rhs, lhs.m21 >= rhs, lhs.m22 >= rhs, lhs.m30 >= rhs, lhs.m31 >= rhs, lhs.m32 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool4x3 operator>=(int lhs, int4x3 rhs) => bool4x3(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12, lhs >= rhs.m20, lhs >= rhs.m21, lhs >= rhs.m22, lhs >= rhs.m30, lhs >= rhs.m31, lhs >= rhs.m32);
    }
}
