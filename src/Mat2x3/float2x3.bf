using System;
namespace glm
{
    
    /// A matrix of type float with 2 columns and 3 rows.
    public struct float2x3 : IEquatable<float2x3>
    {

        #region Fields
        
        /// component data
        public float[6] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(float m00, float m01, float m02, float m10, float m11, float m12)
        {
            values = .(m00,m01,m02,m10,m11,m12);
        }
        
        /// Constructs this matrix from a float2x2. Non-overwritten fields are from an Identity matrix.
        public this(float2x2 m)
        {
            values = .(m.m00,m.m01,0f,m.m10,m.m11,0f);
        }
        
        /// Constructs this matrix from a float3x2. Non-overwritten fields are from an Identity matrix.
        public this(float3x2 m)
        {
            values = .(m.m00,m.m01,0f,m.m10,m.m11,0f);
        }
        
        /// Constructs this matrix from a float4x2. Non-overwritten fields are from an Identity matrix.
        public this(float4x2 m)
        {
            values = .(m.m00,m.m01,0f,m.m10,m.m11,0f);
        }
        
        /// Constructs this matrix from a float2x3. Non-overwritten fields are from an Identity matrix.
        public this(float2x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a float3x3. Non-overwritten fields are from an Identity matrix.
        public this(float3x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a float4x3. Non-overwritten fields are from an Identity matrix.
        public this(float4x3 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a float2x4. Non-overwritten fields are from an Identity matrix.
        public this(float2x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a float3x4. Non-overwritten fields are from an Identity matrix.
        public this(float3x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a float4x4. Non-overwritten fields are from an Identity matrix.
        public this(float4x4 m)
        {
            values = .(m.m00,m.m01,m.m02,m.m10,m.m11,m.m12);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(float2 c0, float2 c1)
        {
            values = .(c0.x,c0.y,0f,c1.x,c1.y,0f);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(float3 c0, float3 c1)
        {
            values = .(c0.x,c0.y,c0.z,c1.x,c1.y,c1.z);
        }

        #endregion


        #region Properties
        
        /// Column 0, Rows 0
        public float m00
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
        public float m01
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
        public float m02
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
        public float m10
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
        public float m11
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
        public float m12
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
        public float3 Column0
        {
            [Inline]get
            {
                return  float3(m00, m01, m02);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
                m02 = value.z;
            }
        }
        
        /// Gets or sets the column nr 1
        public float3 Column1
        {
            [Inline]get
            {
                return  float3(m10, m11, m12);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
                m12 = value.z;
            }
        }
        
        /// Gets or sets the row nr 0
        public float2 Row0
        {
            [Inline]get
            {
                return  float2(m00, m10);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m10 = value.y;
            }
        }
        
        /// Gets or sets the row nr 1
        public float2 Row1
        {
            [Inline]get
            {
                return  float2(m01, m11);
            }
            [Inline]set mut
            {
                m01 = value.x;
                m11 = value.y;
            }
        }
        
        /// Gets or sets the row nr 2
        public float2 Row2
        {
            [Inline]get
            {
                return  float2(m02, m12);
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
        readonly public static float2x3 Zero  =  float2x3(0f, 0f, 0f, 0f, 0f, 0f);
        
        /// Predefined all-ones matrix
        readonly public static float2x3 Ones  =  float2x3(1f, 1f, 1f, 1f, 1f, 1f);
        
        /// Predefined identity matrix
        readonly public static float2x3 Identity  =  float2x3(1f, 0f, 0f, 0f, 1f, 0f);
        
        /// Predefined all-MaxValue matrix
        readonly public static float2x3 AllMaxValue  =  float2x3(float.MaxValue, float.MaxValue, float.MaxValue, float.MaxValue, float.MaxValue, float.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static float2x3 DiagonalMaxValue  =  float2x3(float.MaxValue, 0f, 0f, 0f, float.MaxValue, 0f);
        
        /// Predefined all-MinValue matrix
        readonly public static float2x3 AllMinValue  =  float2x3(float.MinValue, float.MinValue, float.MinValue, float.MinValue, float.MinValue, float.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static float2x3 DiagonalMinValue  =  float2x3(float.MinValue, 0f, 0f, 0f, float.MinValue, 0f);
        
        /// Predefined all-Epsilon matrix
        readonly public static float2x3 AllEpsilon  =  float2x3(float.Epsilon, float.Epsilon, float.Epsilon, float.Epsilon, float.Epsilon, float.Epsilon);
        
        /// Predefined diagonal-Epsilon matrix
        readonly public static float2x3 DiagonalEpsilon  =  float2x3(float.Epsilon, 0f, 0f, 0f, float.Epsilon, 0f);
        
        /// Predefined all-NaN matrix
        readonly public static float2x3 AllNaN  =  float2x3(float.NaN, float.NaN, float.NaN, float.NaN, float.NaN, float.NaN);
        
        /// Predefined diagonal-NaN matrix
        readonly public static float2x3 DiagonalNaN  =  float2x3(float.NaN, 0f, 0f, 0f, float.NaN, 0f);
        
        /// Predefined all-NegativeInfinity matrix
        readonly public static float2x3 AllNegativeInfinity  =  float2x3(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity);
        
        /// Predefined diagonal-NegativeInfinity matrix
        readonly public static float2x3 DiagonalNegativeInfinity  =  float2x3(float.NegativeInfinity, 0f, 0f, 0f, float.NegativeInfinity, 0f);
        
        /// Predefined all-PositiveInfinity matrix
        readonly public static float2x3 AllPositiveInfinity  =  float2x3(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity);
        
        /// Predefined diagonal-PositiveInfinity matrix
        readonly public static float2x3 DiagonalPositiveInfinity  =  float2x3(float.PositiveInfinity, 0f, 0f, 0f, float.PositiveInfinity, 0f);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public float[,] ToArray() => new .[,] ( ( m00, m01, m02 ), ( m10, m11, m12 ) );
        
        /// Creates a 1D array with all values (internal order)
        public float[] ToArray1D() => new .[] ( m00, m01, m02, m10, m11, m12 );

        #endregion

        
        /// Returns the number of Fields (2 x 3 = 6).
        public int Count => 6;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public float this[int fieldIndex]
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
        public float this[int col, int row]
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
        public bool Equals(float2x3 rhs) => (((m00 == rhs.m00 && m01 == rhs.m01) && m02 == rhs.m02) && ((m10 == rhs.m10 && m11 == rhs.m11) && m12 == rhs.m12));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(float2x3 lhs, float2x3 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(float2x3 lhs, float2x3 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m02.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode()) * 397) ^ m12.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public float3x2 Transposed => float3x2(m00, m10, m01, m11, m02, m12);
        
        /// Returns the minimal component of this matrix.
        public float MinElement => System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m02), m10), m11), m12);
        
        /// Returns the maximal component of this matrix.
        public float MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m02), m10), m11), m12);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => (((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12));
        
        /// Returns the sum of all fields.
        public float Sum => (((m00 + m01) + m02) + ((m10 + m11) + m12));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => (((System.Math.Abs(m00) + System.Math.Abs(m01)) + System.Math.Abs(m02)) + ((System.Math.Abs(m10) + System.Math.Abs(m11)) + System.Math.Abs(m12)));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt((((m00*m00 + m01*m01) + m02*m02) + ((m10*m10 + m11*m11) + m12*m12)));
        
        /// Returns the max-norm of this matrix.
        public float NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m02)), System.Math.Abs(m10)), System.Math.Abs(m11)), System.Math.Abs(m12));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow((((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + System.Math.Pow((double)System.Math.Abs(m02), p)) + ((System.Math.Pow((double)System.Math.Abs(m10), p) + System.Math.Pow((double)System.Math.Abs(m11), p)) + System.Math.Pow((double)System.Math.Abs(m12), p))), 1 / p);
        
        /// Executes a matrix-matrix-multiplication float2x3 * float2x2 -> float2x3.
        public static float2x3 operator*(float2x3 lhs, float2x2 rhs) => float2x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11));
        
        /// Executes a matrix-matrix-multiplication float2x3 * float3x2 -> float3x3.
        public static float3x3 operator*(float2x3 lhs, float3x2 rhs) => float3x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21));
        
        /// Executes a matrix-matrix-multiplication float2x3 * float4x2 -> float4x3.
        public static float4x3 operator*(float2x3 lhs, float4x2 rhs) => float4x3((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m02 * rhs.m00 + lhs.m12 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m02 * rhs.m10 + lhs.m12 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m02 * rhs.m20 + lhs.m12 * rhs.m21), (lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31), (lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31), (lhs.m02 * rhs.m30 + lhs.m12 * rhs.m31));
        
        /// Executes a matrix-vector-multiplication.
        public static float3 operator*(float2x3 m, float2 v) => float3((m.m00 * v.x + m.m10 * v.y), (m.m01 * v.x + m.m11 * v.y), (m.m02 * v.x + m.m12 * v.y));
        
        /// Executes a component-wise * (multiply).
        public static float2x3 CompMul(float2x3 A, float2x3 B) => float2x3(A.m00 * B.m00, A.m01 * B.m01, A.m02 * B.m02, A.m10 * B.m10, A.m11 * B.m11, A.m12 * B.m12);
        
        /// Executes a component-wise / (divide).
        public static float2x3 CompDiv(float2x3 A, float2x3 B) => float2x3(A.m00 / B.m00, A.m01 / B.m01, A.m02 / B.m02, A.m10 / B.m10, A.m11 / B.m11, A.m12 / B.m12);
        
        /// Executes a component-wise + (add).
        public static float2x3 CompAdd(float2x3 A, float2x3 B) => float2x3(A.m00 + B.m00, A.m01 + B.m01, A.m02 + B.m02, A.m10 + B.m10, A.m11 + B.m11, A.m12 + B.m12);
        
        /// Executes a component-wise - (subtract).
        public static float2x3 CompSub(float2x3 A, float2x3 B) => float2x3(A.m00 - B.m00, A.m01 - B.m01, A.m02 - B.m02, A.m10 - B.m10, A.m11 - B.m11, A.m12 - B.m12);
        
        /// Executes a component-wise + (add).
        public static float2x3 operator+(float2x3 lhs, float2x3 rhs) => float2x3(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m02 + rhs.m02, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11, lhs.m12 + rhs.m12);
        
        /// Executes a component-wise + (add) with a scalar.
        public static float2x3 operator+(float2x3 lhs, float rhs) => float2x3(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m02 + rhs, lhs.m10 + rhs, lhs.m11 + rhs, lhs.m12 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static float2x3 operator+(float lhs, float2x3 rhs) => float2x3(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m02, lhs + rhs.m10, lhs + rhs.m11, lhs + rhs.m12);
        
        /// Executes a component-wise - (subtract).
        public static float2x3 operator-(float2x3 lhs, float2x3 rhs) => float2x3(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m02 - rhs.m02, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11, lhs.m12 - rhs.m12);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static float2x3 operator-(float2x3 lhs, float rhs) => float2x3(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m02 - rhs, lhs.m10 - rhs, lhs.m11 - rhs, lhs.m12 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static float2x3 operator-(float lhs, float2x3 rhs) => float2x3(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m02, lhs - rhs.m10, lhs - rhs.m11, lhs - rhs.m12);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static float2x3 operator/(float2x3 lhs, float rhs) => float2x3(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m02 / rhs, lhs.m10 / rhs, lhs.m11 / rhs, lhs.m12 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static float2x3 operator/(float lhs, float2x3 rhs) => float2x3(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m02, lhs / rhs.m10, lhs / rhs.m11, lhs / rhs.m12);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static float2x3 operator*(float2x3 lhs, float rhs) => float2x3(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m02 * rhs, lhs.m10 * rhs, lhs.m11 * rhs, lhs.m12 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static float2x3 operator*(float lhs, float2x3 rhs) => float2x3(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m02, lhs * rhs.m10, lhs * rhs.m11, lhs * rhs.m12);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool2x3 operator<(float2x3 lhs, float2x3 rhs) => bool2x3(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m02 < rhs.m02, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11, lhs.m12 < rhs.m12);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x3 operator<(float2x3 lhs, float rhs) => bool2x3(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m02 < rhs, lhs.m10 < rhs, lhs.m11 < rhs, lhs.m12 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x3 operator<(float lhs, float2x3 rhs) => bool2x3(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m02, lhs < rhs.m10, lhs < rhs.m11, lhs < rhs.m12);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool2x3 operator<=(float2x3 lhs, float2x3 rhs) => bool2x3(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m02 <= rhs.m02, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11, lhs.m12 <= rhs.m12);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x3 operator<=(float2x3 lhs, float rhs) => bool2x3(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m02 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs, lhs.m12 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x3 operator<=(float lhs, float2x3 rhs) => bool2x3(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m02, lhs <= rhs.m10, lhs <= rhs.m11, lhs <= rhs.m12);
        
        /// Executes a component-wise greater-than comparison.
        public static bool2x3 operator>(float2x3 lhs, float2x3 rhs) => bool2x3(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m02 > rhs.m02, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11, lhs.m12 > rhs.m12);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x3 operator>(float2x3 lhs, float rhs) => bool2x3(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m02 > rhs, lhs.m10 > rhs, lhs.m11 > rhs, lhs.m12 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x3 operator>(float lhs, float2x3 rhs) => bool2x3(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m02, lhs > rhs.m10, lhs > rhs.m11, lhs > rhs.m12);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool2x3 operator>=(float2x3 lhs, float2x3 rhs) => bool2x3(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m02 >= rhs.m02, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11, lhs.m12 >= rhs.m12);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x3 operator>=(float2x3 lhs, float rhs) => bool2x3(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m02 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs, lhs.m12 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x3 operator>=(float lhs, float2x3 rhs) => bool2x3(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m02, lhs >= rhs.m10, lhs >= rhs.m11, lhs >= rhs.m12);
    }
}
