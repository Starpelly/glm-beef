using System;
namespace glm
{
    
    /// A matrix of type float with 2 columns and 2 rows.
    public struct float2x2 : IEquatable<float2x2>
    {

        #region Fields
        
        /// component data
        public float[4] values;

        #endregion


        #region Constructors
        
        /// Component-wise constructor
        public this(float m00, float m01, float m10, float m11)
        {
            values = .(m00,m01,m10,m11);
        }
        
        /// Constructs this matrix from a float2x2. Non-overwritten fields are from an Identity matrix.
        public this(float2x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float3x2. Non-overwritten fields are from an Identity matrix.
        public this(float3x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float4x2. Non-overwritten fields are from an Identity matrix.
        public this(float4x2 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float2x3. Non-overwritten fields are from an Identity matrix.
        public this(float2x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float3x3. Non-overwritten fields are from an Identity matrix.
        public this(float3x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float4x3. Non-overwritten fields are from an Identity matrix.
        public this(float4x3 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float2x4. Non-overwritten fields are from an Identity matrix.
        public this(float2x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float3x4. Non-overwritten fields are from an Identity matrix.
        public this(float3x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a float4x4. Non-overwritten fields are from an Identity matrix.
        public this(float4x4 m)
        {
            values = .(m.m00,m.m01,m.m10,m.m11);
        }
        
        /// Constructs this matrix from a series of column vectors. Non-overwritten fields are from an Identity matrix.
        public this(float2 c0, float2 c1)
        {
            values = .(c0.x,c0.y,c1.x,c1.y);
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
        
        /// Column 1, Rows 0
        public float m10
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
        public float m11
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
        public float2 Column0
        {
            [Inline]get
            {
                return  float2(m00, m01);
            }
            [Inline]set mut
            {
                m00 = value.x;
                m01 = value.y;
            }
        }
        
        /// Gets or sets the column nr 1
        public float2 Column1
        {
            [Inline]get
            {
                return  float2(m10, m11);
            }
            [Inline]set mut
            {
                m10 = value.x;
                m11 = value.y;
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

        #endregion


        #region Static Properties
        
        /// Predefined all-zero matrix
        readonly public static float2x2 Zero  =  float2x2(0f, 0f, 0f, 0f);
        
        /// Predefined all-ones matrix
        readonly public static float2x2 Ones  =  float2x2(1f, 1f, 1f, 1f);
        
        /// Predefined identity matrix
        readonly public static float2x2 Identity  =  float2x2(1f, 0f, 0f, 1f);
        
        /// Predefined all-MaxValue matrix
        readonly public static float2x2 AllMaxValue  =  float2x2(float.MaxValue, float.MaxValue, float.MaxValue, float.MaxValue);
        
        /// Predefined diagonal-MaxValue matrix
        readonly public static float2x2 DiagonalMaxValue  =  float2x2(float.MaxValue, 0f, 0f, float.MaxValue);
        
        /// Predefined all-MinValue matrix
        readonly public static float2x2 AllMinValue  =  float2x2(float.MinValue, float.MinValue, float.MinValue, float.MinValue);
        
        /// Predefined diagonal-MinValue matrix
        readonly public static float2x2 DiagonalMinValue  =  float2x2(float.MinValue, 0f, 0f, float.MinValue);
        
        /// Predefined all-Epsilon matrix
        readonly public static float2x2 AllEpsilon  =  float2x2(float.Epsilon, float.Epsilon, float.Epsilon, float.Epsilon);
        
        /// Predefined diagonal-Epsilon matrix
        readonly public static float2x2 DiagonalEpsilon  =  float2x2(float.Epsilon, 0f, 0f, float.Epsilon);
        
        /// Predefined all-NaN matrix
        readonly public static float2x2 AllNaN  =  float2x2(float.NaN, float.NaN, float.NaN, float.NaN);
        
        /// Predefined diagonal-NaN matrix
        readonly public static float2x2 DiagonalNaN  =  float2x2(float.NaN, 0f, 0f, float.NaN);
        
        /// Predefined all-NegativeInfinity matrix
        readonly public static float2x2 AllNegativeInfinity  =  float2x2(float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity, float.NegativeInfinity);
        
        /// Predefined diagonal-NegativeInfinity matrix
        readonly public static float2x2 DiagonalNegativeInfinity  =  float2x2(float.NegativeInfinity, 0f, 0f, float.NegativeInfinity);
        
        /// Predefined all-PositiveInfinity matrix
        readonly public static float2x2 AllPositiveInfinity  =  float2x2(float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity, float.PositiveInfinity);
        
        /// Predefined diagonal-PositiveInfinity matrix
        readonly public static float2x2 DiagonalPositiveInfinity  =  float2x2(float.PositiveInfinity, 0f, 0f, float.PositiveInfinity);

        #endregion


        #region Functions
        
        /// Creates a 2D array with all values (address: Values[x, y])
        public float[,] ToArray() => new .[,] ( ( m00, m01 ), ( m10, m11 ) );
        
        /// Creates a 1D array with all values (internal order)
        public float[] ToArray1D() => new .[] ( m00, m01, m10, m11 );

        #endregion

        
        /// Returns the number of Fields (2 x 2 = 4).
        public int Count => 4;
        
        /// Gets/Sets a specific indexed component (a bit slower than direct access).
        public float this[int fieldIndex]
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
        public float this[int col, int row]
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
        public bool Equals(float2x2 rhs) => ((m00 == rhs.m00 && m01 == rhs.m01) && (m10 == rhs.m10 && m11 == rhs.m11));
        
        /// Returns true iff this equals rhs component-wise.
        public static bool operator ==(float2x2 lhs, float2x2 rhs) => lhs.Equals(rhs);
        
        /// Returns true iff this does not equal rhs (component-wise).
        public static bool operator !=(float2x2 lhs, float2x2 rhs) => !lhs.Equals(rhs);
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((((((m00.GetHashCode()) * 397) ^ m01.GetHashCode()) * 397) ^ m10.GetHashCode()) * 397) ^ m11.GetHashCode();
            }
        }
        
        /// Returns a transposed version of this matrix.
        public float2x2 Transposed => float2x2(m00, m10, m01, m11);
        
        /// Returns the minimal component of this matrix.
        public float MinElement => System.Math.Min(System.Math.Min(System.Math.Min(m00, m01), m10), m11);
        
        /// Returns the maximal component of this matrix.
        public float MaxElement => System.Math.Max(System.Math.Max(System.Math.Max(m00, m01), m10), m11);
        
        /// Returns the euclidean length of this matrix.
        public float Length => (float)System.Math.Sqrt(((m00*m00 + m01*m01) + (m10*m10 + m11*m11)));
        
        /// Returns the squared euclidean length of this matrix.
        public float LengthSqr => ((m00*m00 + m01*m01) + (m10*m10 + m11*m11));
        
        /// Returns the sum of all fields.
        public float Sum => ((m00 + m01) + (m10 + m11));
        
        /// Returns the euclidean norm of this matrix.
        public float Norm => (float)System.Math.Sqrt(((m00*m00 + m01*m01) + (m10*m10 + m11*m11)));
        
        /// Returns the one-norm of this matrix.
        public float Norm1 => ((System.Math.Abs(m00) + System.Math.Abs(m01)) + (System.Math.Abs(m10) + System.Math.Abs(m11)));
        
        /// Returns the two-norm of this matrix.
        public float Norm2 => (float)System.Math.Sqrt(((m00*m00 + m01*m01) + (m10*m10 + m11*m11)));
        
        /// Returns the max-norm of this matrix.
        public float NormMax => System.Math.Max(System.Math.Max(System.Math.Max(System.Math.Abs(m00), System.Math.Abs(m01)), System.Math.Abs(m10)), System.Math.Abs(m11));
        
        /// Returns the p-norm of this matrix.
        public double NormP(double p) => System.Math.Pow(((System.Math.Pow((double)System.Math.Abs(m00), p) + System.Math.Pow((double)System.Math.Abs(m01), p)) + (System.Math.Pow((double)System.Math.Abs(m10), p) + System.Math.Pow((double)System.Math.Abs(m11), p))), 1 / p);
        
        /// Returns determinant of this matrix.
        public float Determinant => m00 * m11 - m10 * m01;
        
        /// Returns the adjunct of this matrix.
        public float2x2 Adjugate => float2x2(m11, -m01, -m10, m00);
        
        /// Returns the inverse of this matrix (use with caution).
        public float2x2 Inverse => Adjugate / Determinant;
        
        /// Executes a matrix-matrix-multiplication float2x2 * float2x2 -> float2x2.
        public static float2x2 operator*(float2x2 lhs, float2x2 rhs) => float2x2((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11));
        
        /// Executes a matrix-matrix-multiplication float2x2 * float3x2 -> float3x2.
        public static float3x2 operator*(float2x2 lhs, float3x2 rhs) => float3x2((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21));
        
        /// Executes a matrix-matrix-multiplication float2x2 * float4x2 -> float4x2.
        public static float4x2 operator*(float2x2 lhs, float4x2 rhs) => float4x2((lhs.m00 * rhs.m00 + lhs.m10 * rhs.m01), (lhs.m01 * rhs.m00 + lhs.m11 * rhs.m01), (lhs.m00 * rhs.m10 + lhs.m10 * rhs.m11), (lhs.m01 * rhs.m10 + lhs.m11 * rhs.m11), (lhs.m00 * rhs.m20 + lhs.m10 * rhs.m21), (lhs.m01 * rhs.m20 + lhs.m11 * rhs.m21), (lhs.m00 * rhs.m30 + lhs.m10 * rhs.m31), (lhs.m01 * rhs.m30 + lhs.m11 * rhs.m31));
        
        /// Executes a matrix-vector-multiplication.
        public static float2 operator*(float2x2 m, float2 v) => float2((m.m00 * v.x + m.m10 * v.y), (m.m01 * v.x + m.m11 * v.y));
        
        /// Executes a matrix-matrix-divison A / B == A * B^-1 (use with caution).
        public static float2x2 operator/(float2x2 A, float2x2 B) => A * B.Inverse;
        
        /// Executes a component-wise * (multiply).
        public static float2x2 CompMul(float2x2 A, float2x2 B) => float2x2(A.m00 * B.m00, A.m01 * B.m01, A.m10 * B.m10, A.m11 * B.m11);
        
        /// Executes a component-wise / (divide).
        public static float2x2 CompDiv(float2x2 A, float2x2 B) => float2x2(A.m00 / B.m00, A.m01 / B.m01, A.m10 / B.m10, A.m11 / B.m11);
        
        /// Executes a component-wise + (add).
        public static float2x2 CompAdd(float2x2 A, float2x2 B) => float2x2(A.m00 + B.m00, A.m01 + B.m01, A.m10 + B.m10, A.m11 + B.m11);
        
        /// Executes a component-wise - (subtract).
        public static float2x2 CompSub(float2x2 A, float2x2 B) => float2x2(A.m00 - B.m00, A.m01 - B.m01, A.m10 - B.m10, A.m11 - B.m11);
        
        /// Executes a component-wise + (add).
        public static float2x2 operator+(float2x2 lhs, float2x2 rhs) => float2x2(lhs.m00 + rhs.m00, lhs.m01 + rhs.m01, lhs.m10 + rhs.m10, lhs.m11 + rhs.m11);
        
        /// Executes a component-wise + (add) with a scalar.
        public static float2x2 operator+(float2x2 lhs, float rhs) => float2x2(lhs.m00 + rhs, lhs.m01 + rhs, lhs.m10 + rhs, lhs.m11 + rhs);
        
        /// Executes a component-wise + (add) with a scalar.
        public static float2x2 operator+(float lhs, float2x2 rhs) => float2x2(lhs + rhs.m00, lhs + rhs.m01, lhs + rhs.m10, lhs + rhs.m11);
        
        /// Executes a component-wise - (subtract).
        public static float2x2 operator-(float2x2 lhs, float2x2 rhs) => float2x2(lhs.m00 - rhs.m00, lhs.m01 - rhs.m01, lhs.m10 - rhs.m10, lhs.m11 - rhs.m11);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static float2x2 operator-(float2x2 lhs, float rhs) => float2x2(lhs.m00 - rhs, lhs.m01 - rhs, lhs.m10 - rhs, lhs.m11 - rhs);
        
        /// Executes a component-wise - (subtract) with a scalar.
        public static float2x2 operator-(float lhs, float2x2 rhs) => float2x2(lhs - rhs.m00, lhs - rhs.m01, lhs - rhs.m10, lhs - rhs.m11);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static float2x2 operator/(float2x2 lhs, float rhs) => float2x2(lhs.m00 / rhs, lhs.m01 / rhs, lhs.m10 / rhs, lhs.m11 / rhs);
        
        /// Executes a component-wise / (divide) with a scalar.
        public static float2x2 operator/(float lhs, float2x2 rhs) => float2x2(lhs / rhs.m00, lhs / rhs.m01, lhs / rhs.m10, lhs / rhs.m11);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static float2x2 operator*(float2x2 lhs, float rhs) => float2x2(lhs.m00 * rhs, lhs.m01 * rhs, lhs.m10 * rhs, lhs.m11 * rhs);
        
        /// Executes a component-wise * (multiply) with a scalar.
        public static float2x2 operator*(float lhs, float2x2 rhs) => float2x2(lhs * rhs.m00, lhs * rhs.m01, lhs * rhs.m10, lhs * rhs.m11);
        
        /// Executes a component-wise lesser-than comparison.
        public static bool2x2 operator<(float2x2 lhs, float2x2 rhs) => bool2x2(lhs.m00 < rhs.m00, lhs.m01 < rhs.m01, lhs.m10 < rhs.m10, lhs.m11 < rhs.m11);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x2 operator<(float2x2 lhs, float rhs) => bool2x2(lhs.m00 < rhs, lhs.m01 < rhs, lhs.m10 < rhs, lhs.m11 < rhs);
        
        /// Executes a component-wise lesser-than comparison with a scalar.
        public static bool2x2 operator<(float lhs, float2x2 rhs) => bool2x2(lhs < rhs.m00, lhs < rhs.m01, lhs < rhs.m10, lhs < rhs.m11);
        
        /// Executes a component-wise lesser-or-equal comparison.
        public static bool2x2 operator<=(float2x2 lhs, float2x2 rhs) => bool2x2(lhs.m00 <= rhs.m00, lhs.m01 <= rhs.m01, lhs.m10 <= rhs.m10, lhs.m11 <= rhs.m11);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x2 operator<=(float2x2 lhs, float rhs) => bool2x2(lhs.m00 <= rhs, lhs.m01 <= rhs, lhs.m10 <= rhs, lhs.m11 <= rhs);
        
        /// Executes a component-wise lesser-or-equal comparison with a scalar.
        public static bool2x2 operator<=(float lhs, float2x2 rhs) => bool2x2(lhs <= rhs.m00, lhs <= rhs.m01, lhs <= rhs.m10, lhs <= rhs.m11);
        
        /// Executes a component-wise greater-than comparison.
        public static bool2x2 operator>(float2x2 lhs, float2x2 rhs) => bool2x2(lhs.m00 > rhs.m00, lhs.m01 > rhs.m01, lhs.m10 > rhs.m10, lhs.m11 > rhs.m11);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x2 operator>(float2x2 lhs, float rhs) => bool2x2(lhs.m00 > rhs, lhs.m01 > rhs, lhs.m10 > rhs, lhs.m11 > rhs);
        
        /// Executes a component-wise greater-than comparison with a scalar.
        public static bool2x2 operator>(float lhs, float2x2 rhs) => bool2x2(lhs > rhs.m00, lhs > rhs.m01, lhs > rhs.m10, lhs > rhs.m11);
        
        /// Executes a component-wise greater-or-equal comparison.
        public static bool2x2 operator>=(float2x2 lhs, float2x2 rhs) => bool2x2(lhs.m00 >= rhs.m00, lhs.m01 >= rhs.m01, lhs.m10 >= rhs.m10, lhs.m11 >= rhs.m11);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x2 operator>=(float2x2 lhs, float rhs) => bool2x2(lhs.m00 >= rhs, lhs.m01 >= rhs, lhs.m10 >= rhs, lhs.m11 >= rhs);
        
        /// Executes a component-wise greater-or-equal comparison with a scalar.
        public static bool2x2 operator>=(float lhs, float2x2 rhs) => bool2x2(lhs >= rhs.m00, lhs >= rhs.m01, lhs >= rhs.m10, lhs >= rhs.m11);
    }
}
