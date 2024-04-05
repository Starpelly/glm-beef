using System;
namespace glm
{
    
    /// A vector of type double with 2 components.
    [Union]
    public struct double2 : IHashable
    {

        //#region Fields
        
        /// component data
        public double[2] values;
        
        /// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
        public readonly swizzle_double2 swizzle;

        //#endregion


        //#region Constructors
        
        /// Component-wise constructor
        public this(double x, double y)
        {
            values = .(x,y);
        }
        
        /// all-same-value constructor
        public this(double v)
        {
            values = .(v,v);
        }
        
        /// from-vector constructor
        public this(double2 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(double3 v)
        {
            values = .(v.x,v.y);
        }
        
        /// from-vector constructor (additional fields are truncated)
        public this(double4 v)
        {
            values = .(v.x,v.y);
        }
        
        /// From-array constructor (superfluous values are ignored, missing values are zero-filled).
        public this(double[] v)
        {
            let c = v.Count;
            values = .((c < 0) ? 0.0 : v[0],(c < 1) ? 0.0 : v[1]);
        }
        
        /// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
        public this(double[] v, int startIndex)
        {
            let c = v.Count;
            values = .((c + startIndex < 0) ? 0.0 : v[0 + startIndex],(c + startIndex < 1) ? 0.0 : v[1 + startIndex]);
        }

        //#endregion


        //#region Explicit Operators
        
        /// Explicitly converts this to a int2.
        public static explicit operator int2(double2 v) =>  int2((int)v.x, (int)v.y);
        
        /// Explicitly converts this to a int3. (Higher components are zeroed)
        public static explicit operator int3(double2 v) =>  int3((int)v.x, (int)v.y, 0);
        
        /// Explicitly converts this to a int4. (Higher components are zeroed)
        public static explicit operator int4(double2 v) =>  int4((int)v.x, (int)v.y, 0, 0);
        
        /// Explicitly converts this to a uint2.
        public static explicit operator uint2(double2 v) =>  uint2((uint)v.x, (uint)v.y);
        
        /// Explicitly converts this to a uint3. (Higher components are zeroed)
        public static explicit operator uint3(double2 v) =>  uint3((uint)v.x, (uint)v.y, 0u);
        
        /// Explicitly converts this to a uint4. (Higher components are zeroed)
        public static explicit operator uint4(double2 v) =>  uint4((uint)v.x, (uint)v.y, 0u, 0u);
        
        /// Explicitly converts this to a float2.
        public static explicit operator float2(double2 v) =>  float2((float)v.x, (float)v.y);
        
        /// Explicitly converts this to a float3. (Higher components are zeroed)
        public static explicit operator float3(double2 v) =>  float3((float)v.x, (float)v.y, 0f);
        
        /// Explicitly converts this to a float4. (Higher components are zeroed)
        public static explicit operator float4(double2 v) =>  float4((float)v.x, (float)v.y, 0f, 0f);
        
        /// Explicitly converts this to a double3. (Higher components are zeroed)
        public static explicit operator double3(double2 v) =>  double3((double)v.x, (double)v.y, 0.0);
        
        /// Explicitly converts this to a double4. (Higher components are zeroed)
        public static explicit operator double4(double2 v) =>  double4((double)v.x, (double)v.y, 0.0, 0.0);
        
        /// Explicitly converts this to a long2.
        public static explicit operator long2(double2 v) =>  long2((long)v.x, (long)v.y);
        
        /// Explicitly converts this to a long3. (Higher components are zeroed)
        public static explicit operator long3(double2 v) =>  long3((long)v.x, (long)v.y, 0);
        
        /// Explicitly converts this to a long4. (Higher components are zeroed)
        public static explicit operator long4(double2 v) =>  long4((long)v.x, (long)v.y, 0, 0);
        
        /// Explicitly converts this to a bool2.
        public static explicit operator bool2(double2 v) =>  bool2(v.x != 0.0, v.y != 0.0);
        
        /// Explicitly converts this to a bool3. (Higher components are zeroed)
        public static explicit operator bool3(double2 v) =>  bool3(v.x != 0.0, v.y != 0.0, false);
        
        /// Explicitly converts this to a bool4. (Higher components are zeroed)
        public static explicit operator bool4(double2 v) =>  bool4(v.x != 0.0, v.y != 0.0, false, false);

        //#endregion


        //#region Properties
        
        /// x-component
        public double x
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
        
        /// y-component
        public double y
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
        
        /// 0-component
        public double width
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
        
        /// 1-component
        public double height
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
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public double2 xy
        {
            [Inline]get
            {
                return  double2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle property.
        public double2 rg
        {
            [Inline]get
            {
                return  double2(x, y);
            }
            [Inline]set mut
            {
                x = value.x;
                y = value.y;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public double r
        {
            [Inline]get
            {
                return x;
            }
            [Inline]set mut
            {
                x = value;
            }
        }
        
        /// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle property.
        public double g
        {
            [Inline]get
            {
                return y;
            }
            [Inline]set mut
            {
                y = value;
            }
        }
        
        /// Returns the number of components (2).
        public int Count => 2;
        
        /// Returns the minimal component of this vector.
        public double MinElement => System.Math.Min(x, y);
        
        /// Returns the maximal component of this vector.
        public double MaxElement => System.Math.Max(x, y);
        
        /// Returns the euclidean length of this vector.
        public double Length => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the squared euclidean length of this vector.
        public double LengthSqr => (x*x + y*y);
        
        /// Returns the sum of all components.
        public double Sum => (x + y);
        
        /// Returns the euclidean norm of this vector.
        public double Norm => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the one-norm of this vector.
        public double Norm1 => (System.Math.Abs(x) + System.Math.Abs(y));
        
        /// Returns the two-norm (euclidean length) of this vector.
        public double Norm2 => (double)System.Math.Sqrt((x*x + y*y));
        
        /// Returns the max-norm of this vector.
        public double NormMax => System.Math.Max(System.Math.Abs(x), System.Math.Abs(y));
        
        /// Returns a copy of this vector with length one (undefined if this has zero length).
        public double2 Normalized => this / (double)Length;
        
        /// Returns a copy of this vector with length one (returns zero if length is zero).
        public double2 NormalizedSafe => this == Zero ? Zero : this / (double)Length;
        
        /// Returns the vector angle (atan2(y, x)) in radians.
        public double Angle => System.Math.Atan2((double)y, (double)x);
        
        /// Returns a perpendicular vector.
        public double2 Perpendicular => double2(y, -x);

        //#endregion


        //#region Static Properties
        
        /// Predefined all-zero vector
        readonly public static double2 Zero  =  double2(0.0, 0.0);
        
        /// Predefined all-ones vector
        readonly public static double2 Ones  =  double2(1.0, 1.0);
        
        /// Predefined unit-X vector
        readonly public static double2 UnitX  =  double2(1.0, 0.0);
        
        /// Predefined unit-X vector
        readonly public static double2 NegativeUnitX  =  double2(-1.0, 0.0);
        
        /// Predefined unit-Y vector
        readonly public static double2 UnitY  =  double2(0.0, 1.0);
        
        /// Predefined unit-Y vector
        readonly public static double2 NegativeUnitY  =  double2(0.0, -1.0);
        
        /// Predefined all-MaxValue vector
        readonly public static double2 MaxValue  =  double2(double.MaxValue, double.MaxValue);
        
        /// Predefined all-MinValue vector
        readonly public static double2 MinValue  =  double2(double.MinValue, double.MinValue);
        
        /// Predefined all-Epsilon vector
        readonly public static double2 Epsilon  =  double2(double.Epsilon, double.Epsilon);
        
        /// Predefined all-NaN vector
        readonly public static double2 NaN  =  double2(double.NaN, double.NaN);
        
        /// Predefined all-NegativeInfinity vector
        readonly public static double2 NegativeInfinity  =  double2(double.NegativeInfinity, double.NegativeInfinity);
        
        /// Predefined all-PositiveInfinity vector
        readonly public static double2 PositiveInfinity  =  double2(double.PositiveInfinity, double.PositiveInfinity);

        //#endregion


        //#region Operators
        
        /// Returns true if this equals rhs component-wise.
        public static bool operator==(double2 lhs, double2 rhs) => (lhs.x == rhs.x && lhs.y == rhs.y);
        
        /// Returns true if this does not equal rhs (component-wise).
        public static bool operator!=(double2 lhs, double2 rhs) => !(lhs.x == rhs.x && lhs.y == rhs.y);

        //#endregion


        //#region Functions
        
        /// Returns an array with all values
        public double[] ToArray() => new .[] ( x, y );
        
        /// Returns a string representation of this vector using ', ' as a seperator.
        public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");
        
        /// Returns a string representation of this vector using a provided seperator.
        public void ToString(String stringBuffer, String sep)
        {
            let _x = scope String(); values[0].ToString(_x);
            let _y = scope String(); values[1].ToString(_y);
             stringBuffer.Join(sep, _x,_y );
        }
        
        /// Returns a hash code for this instance.
        public int GetHashCode()
        {
            unchecked
            {
                return ((x.GetHashCode()) * 397) ^ y.GetHashCode();
            }
        }
        
        /// Returns the p-norm of this vector.
        public double NormP(double p) => System.Math.Pow((System.Math.Pow((double)System.Math.Abs(x), p) + System.Math.Pow((double)System.Math.Abs(y), p)), 1 / p);
        
        /// Returns a 2D vector that was rotated by a given angle in radians (CAUTION: result is casted and may be truncated).
        public double2 Rotated(double angleInRad) => (double2)(double2.FromAngle(Angle + angleInRad) * (double)Length);

        //#endregion


        //#region Static Functions
        
        /// Returns true iff distance between lhs and rhs is less than or equal to epsilon
        public static bool ApproxEqual(double2 lhs, double2 rhs, double eps = 0.1d) => Distance(lhs, rhs) <= eps;
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static double2x2 OuterProduct(double2 c, double2 r) =>  double2x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static double2x3 OuterProduct(double3 c, double2 r) =>  double2x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static double3x2 OuterProduct(double2 c, double3 r) =>  double3x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static double2x4 OuterProduct(double4 c, double2 r) =>  double2x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y);
        
        /// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding a matrix whose number of rows is the number of components in c and whose number of columns is the number of components in r.
        public static double4x2 OuterProduct(double2 c, double4 r) =>  double4x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z, c.x * r.w, c.y * r.w);
        
        /// Returns a unit 2D vector with a given angle in radians (CAUTION: result may be truncated for integer types).
        public static double2 FromAngle(double angleInRad) =>  double2((double)System.Math.Cos(angleInRad), (double)System.Math.Sin(angleInRad));
        
        /// Returns the inner product (dot product, scalar product) of the two vectors.
        public static double Dot(double2 lhs, double2 rhs) => (lhs.x * rhs.x + lhs.y * rhs.y);
        
        /// Returns the euclidean distance between the two vectors.
        public static double Distance(double2 lhs, double2 rhs) => (lhs - rhs).Length;
        
        /// Returns the squared euclidean distance between the two vectors.
        public static double DistanceSqr(double2 lhs, double2 rhs) => (lhs - rhs).LengthSqr;
        
        /// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the desired result).
        public static double2 Reflect(double2 I, double2 N) => I - 2 * Dot(N, I) * N;
        
        /// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized in order to achieve the desired result).
        public static double2 Refract(double2 I, double2 N, double eta)
        {
            let dNI = Dot(N, I);
            let k = 1 - eta * eta * (1 - dNI * dNI);
            if (k < 0) return Zero;
            return eta * I - (eta * dNI + (double)System.Math.Sqrt(k)) * N;
        }
        
        /// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns -N).
        public static double2 FaceForward(double2 N, double2 I, double2 Nref) => Dot(Nref, I) < 0 ? N : -N;
        
        /// Returns the length of the outer product (cross product, vector product) of the two vectors.
        public static double Cross(double2 l, double2 r) => l.x * r.y - l.y * r.x;
        
        /// Returns a double2 with independent and identically distributed uniform values between 0.0 and 1.0.
        public static double2 Random(Random random) =>  double2((double)random.NextDouble(), (double)random.NextDouble());
        
        /// Returns a double2 with independent and identically distributed uniform values between -1.0 and 1.0.
        public static double2 RandomSigned(Random random) =>  double2((double)(random.NextDouble() * 2.0 - 1.0), (double)(random.NextDouble() * 2.0 - 1.0));
        
        /// Returns a double2 with independent and identically distributed values according to a normal distribution (zero mean, unit variance).
        public static double2 RandomNormal(Random random) =>  double2((double)(System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))), (double)(System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))));

        //#endregion


        //#region Component-Wise Static Functions
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(double2 lhs, double2 rhs) => bool2(lhs.x == rhs.x, lhs.y == rhs.y);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(double2 lhs, double rhs) => bool2(lhs.x == rhs, lhs.y == rhs);
        
        /// Returns a bool2 from component-wise application of Equal (lhs == rhs).
        public static bool2 Equal(double lhs, double2 rhs) => bool2(lhs == rhs.x, lhs == rhs.y);
        
        /// Returns a bool from the application of Equal (lhs == rhs).
        public static bool2 Equal(double lhs, double rhs) => bool2(lhs == rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(double2 lhs, double2 rhs) => bool2(lhs.x != rhs.x, lhs.y != rhs.y);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(double2 lhs, double rhs) => bool2(lhs.x != rhs, lhs.y != rhs);
        
        /// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(double lhs, double2 rhs) => bool2(lhs != rhs.x, lhs != rhs.y);
        
        /// Returns a bool from the application of NotEqual (lhs != rhs).
        public static bool2 NotEqual(double lhs, double rhs) => bool2(lhs != rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(double2 lhs, double2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(double2 lhs, double rhs) => bool2(lhs.x > rhs, lhs.y > rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(double lhs, double2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);
        
        /// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
        public static bool2 GreaterThan(double lhs, double rhs) => bool2(lhs > rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(double2 lhs, double2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(double2 lhs, double rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);
        
        /// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(double lhs, double2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);
        
        /// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
        public static bool2 GreaterThanEqual(double lhs, double rhs) => bool2(lhs >= rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(double2 lhs, double2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(double2 lhs, double rhs) => bool2(lhs.x < rhs, lhs.y < rhs);
        
        /// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(double lhs, double2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);
        
        /// Returns a bool from the application of LesserThan (lhs &lt; rhs).
        public static bool2 LesserThan(double lhs, double rhs) => bool2(lhs < rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(double2 lhs, double2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(double2 lhs, double rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);
        
        /// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(double lhs, double2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);
        
        /// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
        public static bool2 LesserThanEqual(double lhs, double rhs) => bool2(lhs <= rhs);
        
        /// Returns a bool2 from component-wise application of IsInfinity (v.IsInfinity).
        public static bool2 IsInfinity(double2 v) => bool2(v.x.IsInfinity, v.y.IsInfinity);
        
        /// Returns a bool from the application of IsInfinity (v.IsInfinity).
        public static bool2 IsInfinity(double v) => bool2(v.IsInfinity);
        
        /// Returns a bool2 from component-wise application of IsNaN (v.IsNaN).
        public static bool2 IsNaN(double2 v) => bool2(v.x.IsNaN, v.y.IsNaN);
        
        /// Returns a bool from the application of IsNaN (v.IsNaN).
        public static bool2 IsNaN(double v) => bool2(v.IsNaN);
        
        /// Returns a bool2 from component-wise application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool2 IsNegativeInfinity(double2 v) => bool2(v.x.IsNegativeInfinity, v.y.IsNegativeInfinity);
        
        /// Returns a bool from the application of IsNegativeInfinity (v.IsNegativeInfinity).
        public static bool2 IsNegativeInfinity(double v) => bool2(v.IsNegativeInfinity);
        
        /// Returns a bool2 from component-wise application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool2 IsPositiveInfinity(double2 v) => bool2(v.x.IsPositiveInfinity, v.y.IsPositiveInfinity);
        
        /// Returns a bool from the application of IsPositiveInfinity (v.IsPositiveInfinity).
        public static bool2 IsPositiveInfinity(double v) => bool2(v.IsPositiveInfinity);
        
        /// Returns a double2 from component-wise application of Abs (System.Math.Abs(v)).
        public static double2 Abs(double2 v) => double2(System.Math.Abs(v.x), System.Math.Abs(v.y));
        
        /// Returns a double from the application of Abs (System.Math.Abs(v)).
        public static double2 Abs(double v) => double2(System.Math.Abs(v));
        
        /// Returns a double2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static double2 HermiteInterpolationOrder3(double2 v) => double2((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y);
        
        /// Returns a double from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
        public static double2 HermiteInterpolationOrder3(double v) => double2((3 - 2 * v) * v * v);
        
        /// Returns a double2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static double2 HermiteInterpolationOrder5(double2 v) => double2(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y);
        
        /// Returns a double from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
        public static double2 HermiteInterpolationOrder5(double v) => double2(((6 * v - 15) * v + 10) * v * v * v);
        
        /// Returns a double2 from component-wise application of Sqr (v * v).
        public static double2 Sqr(double2 v) => double2(v.x * v.x, v.y * v.y);
        
        /// Returns a double from the application of Sqr (v * v).
        public static double2 Sqr(double v) => double2(v * v);
        
        /// Returns a double2 from component-wise application of Pow2 (v * v).
        public static double2 Pow2(double2 v) => double2(v.x * v.x, v.y * v.y);
        
        /// Returns a double from the application of Pow2 (v * v).
        public static double2 Pow2(double v) => double2(v * v);
        
        /// Returns a double2 from component-wise application of Pow3 (v * v * v).
        public static double2 Pow3(double2 v) => double2(v.x * v.x * v.x, v.y * v.y * v.y);
        
        /// Returns a double from the application of Pow3 (v * v * v).
        public static double2 Pow3(double v) => double2(v * v * v);
        
        /// Returns a double2 from component-wise application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        public static double2 Step(double2 v) => double2(v.x >= 0.0 ? 1.0 : 0.0, v.y >= 0.0 ? 1.0 : 0.0);
        
        /// Returns a double from the application of Step (v &gt;= 0.0 ? 1.0 : 0.0).
        public static double2 Step(double v) => double2(v >= 0.0 ? 1.0 : 0.0);
        
        /// Returns a double2 from component-wise application of Sqrt ((double)System.Math.Sqrt((double)v)).
        public static double2 Sqrt(double2 v) => double2((double)System.Math.Sqrt((double)v.x), (double)System.Math.Sqrt((double)v.y));
        
        /// Returns a double from the application of Sqrt ((double)System.Math.Sqrt((double)v)).
        public static double2 Sqrt(double v) => double2((double)System.Math.Sqrt((double)v));
        
        /// Returns a double2 from component-wise application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        public static double2 InverseSqrt(double2 v) => double2((double)(1.0 / System.Math.Sqrt((double)v.x)), (double)(1.0 / System.Math.Sqrt((double)v.y)));
        
        /// Returns a double from the application of InverseSqrt ((double)(1.0 / System.Math.Sqrt((double)v))).
        public static double2 InverseSqrt(double v) => double2((double)(1.0 / System.Math.Sqrt((double)v)));
        
        /// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
        public static int2 Sign(double2 v) => int2(System.Math.Sign(v.x), System.Math.Sign(v.y));
        
        /// Returns a int from the application of Sign (System.Math.Sign(v)).
        public static int2 Sign(double v) => int2(System.Math.Sign(v));
        
        /// Returns a double2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static double2 Max(double2 lhs, double2 rhs) => double2(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y));
        
        /// Returns a double2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static double2 Max(double2 lhs, double rhs) => double2(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs));
        
        /// Returns a double2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
        public static double2 Max(double lhs, double2 rhs) => double2(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y));
        
        /// Returns a double from the application of Max (System.Math.Max(lhs, rhs)).
        public static double2 Max(double lhs, double rhs) => double2(System.Math.Max(lhs, rhs));
        
        /// Returns a double2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static double2 Min(double2 lhs, double2 rhs) => double2(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y));
        
        /// Returns a double2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static double2 Min(double2 lhs, double rhs) => double2(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs));
        
        /// Returns a double2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
        public static double2 Min(double lhs, double2 rhs) => double2(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y));
        
        /// Returns a double from the application of Min (System.Math.Min(lhs, rhs)).
        public static double2 Min(double lhs, double rhs) => double2(System.Math.Min(lhs, rhs));
        
        /// Returns a double2 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        public static double2 Pow(double2 lhs, double2 rhs) => double2((double)System.Math.Pow((double)lhs.x, (double)rhs.x), (double)System.Math.Pow((double)lhs.y, (double)rhs.y));
        
        /// Returns a double2 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        public static double2 Pow(double2 lhs, double rhs) => double2((double)System.Math.Pow((double)lhs.x, (double)rhs), (double)System.Math.Pow((double)lhs.y, (double)rhs));
        
        /// Returns a double2 from component-wise application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        public static double2 Pow(double lhs, double2 rhs) => double2((double)System.Math.Pow((double)lhs, (double)rhs.x), (double)System.Math.Pow((double)lhs, (double)rhs.y));
        
        /// Returns a double from the application of Pow ((double)System.Math.Pow((double)lhs, (double)rhs)).
        public static double2 Pow(double lhs, double rhs) => double2((double)System.Math.Pow((double)lhs, (double)rhs));
        
        /// Returns a double2 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        public static double2 Log(double2 lhs, double2 rhs) => double2((double)System.Math.Log((double)lhs.x, (double)rhs.x), (double)System.Math.Log((double)lhs.y, (double)rhs.y));
        
        /// Returns a double2 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        public static double2 Log(double2 lhs, double rhs) => double2((double)System.Math.Log((double)lhs.x, (double)rhs), (double)System.Math.Log((double)lhs.y, (double)rhs));
        
        /// Returns a double2 from component-wise application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        public static double2 Log(double lhs, double2 rhs) => double2((double)System.Math.Log((double)lhs, (double)rhs.x), (double)System.Math.Log((double)lhs, (double)rhs.y));
        
        /// Returns a double from the application of Log ((double)System.Math.Log((double)lhs, (double)rhs)).
        public static double2 Log(double lhs, double rhs) => double2((double)System.Math.Log((double)lhs, (double)rhs));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double2 v, double2 min, double2 max) => double2(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double2 v, double2 min, double max) => double2(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double2 v, double min, double2 max) => double2(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double2 v, double min, double max) => double2(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double v, double2 min, double2 max) => double2(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double v, double2 min, double max) => double2(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max));
        
        /// Returns a double2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double v, double min, double2 max) => double2(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y));
        
        /// Returns a double from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
        public static double2 Clamp(double v, double min, double max) => double2(System.Math.Min(System.Math.Max(v, min), max));
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double2 min, double2 max, double2 a) => double2(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double2 min, double2 max, double a) => double2(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double2 min, double max, double2 a) => double2(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double2 min, double max, double a) => double2(min.x * (1-a) + max * a, min.y * (1-a) + max * a);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double min, double2 max, double2 a) => double2(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double min, double2 max, double a) => double2(min * (1-a) + max.x * a, min * (1-a) + max.y * a);
        
        /// Returns a double2 from component-wise application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double min, double max, double2 a) => double2(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y);
        
        /// Returns a double from the application of Mix (min * (1-a) + max * a).
        public static double2 Mix(double min, double max, double a) => double2(min * (1-a) + max * a);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double2 min, double2 max, double2 a) => double2(min.x * (1-a.x) + max.x * a.x, min.y * (1-a.y) + max.y * a.y);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double2 min, double2 max, double a) => double2(min.x * (1-a) + max.x * a, min.y * (1-a) + max.y * a);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double2 min, double max, double2 a) => double2(min.x * (1-a.x) + max * a.x, min.y * (1-a.y) + max * a.y);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double2 min, double max, double a) => double2(min.x * (1-a) + max * a, min.y * (1-a) + max * a);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double min, double2 max, double2 a) => double2(min * (1-a.x) + max.x * a.x, min * (1-a.y) + max.y * a.y);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double min, double2 max, double a) => double2(min * (1-a) + max.x * a, min * (1-a) + max.y * a);
        
        /// Returns a double2 from component-wise application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double min, double max, double2 a) => double2(min * (1-a.x) + max * a.x, min * (1-a.y) + max * a.y);
        
        /// Returns a double from the application of Lerp (min * (1-a) + max * a).
        public static double2 Lerp(double min, double max, double a) => double2(min * (1-a) + max * a);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double2 a, double2 b, double2 c) => double2(a.x * b.x + c.x, a.y * b.y + c.y);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double2 a, double2 b, double c) => double2(a.x * b.x + c, a.y * b.y + c);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double2 a, double b, double2 c) => double2(a.x * b + c.x, a.y * b + c.y);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double2 a, double b, double c) => double2(a.x * b + c, a.y * b + c);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double a, double2 b, double2 c) => double2(a * b.x + c.x, a * b.y + c.y);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double a, double2 b, double c) => double2(a * b.x + c, a * b.y + c);
        
        /// Returns a double2 from component-wise application of Fma (a * b + c).
        public static double2 Fma(double a, double b, double2 c) => double2(a * b + c.x, a * b + c.y);
        
        /// Returns a double from the application of Fma (a * b + c).
        public static double2 Fma(double a, double b, double c) => double2(a * b + c);
        
        /// Returns a double2 from component-wise application of Add (lhs + rhs).
        public static double2 Add(double2 lhs, double2 rhs) => double2(lhs.x + rhs.x, lhs.y + rhs.y);
        
        /// Returns a double2 from component-wise application of Add (lhs + rhs).
        public static double2 Add(double2 lhs, double rhs) => double2(lhs.x + rhs, lhs.y + rhs);
        
        /// Returns a double2 from component-wise application of Add (lhs + rhs).
        public static double2 Add(double lhs, double2 rhs) => double2(lhs + rhs.x, lhs + rhs.y);
        
        /// Returns a double from the application of Add (lhs + rhs).
        public static double2 Add(double lhs, double rhs) => double2(lhs + rhs);
        
        /// Returns a double2 from component-wise application of Sub (lhs - rhs).
        public static double2 Sub(double2 lhs, double2 rhs) => double2(lhs.x - rhs.x, lhs.y - rhs.y);
        
        /// Returns a double2 from component-wise application of Sub (lhs - rhs).
        public static double2 Sub(double2 lhs, double rhs) => double2(lhs.x - rhs, lhs.y - rhs);
        
        /// Returns a double2 from component-wise application of Sub (lhs - rhs).
        public static double2 Sub(double lhs, double2 rhs) => double2(lhs - rhs.x, lhs - rhs.y);
        
        /// Returns a double from the application of Sub (lhs - rhs).
        public static double2 Sub(double lhs, double rhs) => double2(lhs - rhs);
        
        /// Returns a double2 from component-wise application of Mul (lhs * rhs).
        public static double2 Mul(double2 lhs, double2 rhs) => double2(lhs.x * rhs.x, lhs.y * rhs.y);
        
        /// Returns a double2 from component-wise application of Mul (lhs * rhs).
        public static double2 Mul(double2 lhs, double rhs) => double2(lhs.x * rhs, lhs.y * rhs);
        
        /// Returns a double2 from component-wise application of Mul (lhs * rhs).
        public static double2 Mul(double lhs, double2 rhs) => double2(lhs * rhs.x, lhs * rhs.y);
        
        /// Returns a double from the application of Mul (lhs * rhs).
        public static double2 Mul(double lhs, double rhs) => double2(lhs * rhs);
        
        /// Returns a double2 from component-wise application of Div (lhs / rhs).
        public static double2 Div(double2 lhs, double2 rhs) => double2(lhs.x / rhs.x, lhs.y / rhs.y);
        
        /// Returns a double2 from component-wise application of Div (lhs / rhs).
        public static double2 Div(double2 lhs, double rhs) => double2(lhs.x / rhs, lhs.y / rhs);
        
        /// Returns a double2 from component-wise application of Div (lhs / rhs).
        public static double2 Div(double lhs, double2 rhs) => double2(lhs / rhs.x, lhs / rhs.y);
        
        /// Returns a double from the application of Div (lhs / rhs).
        public static double2 Div(double lhs, double rhs) => double2(lhs / rhs);
        
        /// Returns a double2 from component-wise application of Modulo (lhs % rhs).
        public static double2 Modulo(double2 lhs, double2 rhs) => double2(lhs.x % rhs.x, lhs.y % rhs.y);
        
        /// Returns a double2 from component-wise application of Modulo (lhs % rhs).
        public static double2 Modulo(double2 lhs, double rhs) => double2(lhs.x % rhs, lhs.y % rhs);
        
        /// Returns a double2 from component-wise application of Modulo (lhs % rhs).
        public static double2 Modulo(double lhs, double2 rhs) => double2(lhs % rhs.x, lhs % rhs.y);
        
        /// Returns a double from the application of Modulo (lhs % rhs).
        public static double2 Modulo(double lhs, double rhs) => double2(lhs % rhs);
        
        /// Returns a double2 from component-wise application of Degrees (Radians-To-Degrees Conversion).
        public static double2 Degrees(double2 v) => double2((double)(v.x * 57.295779513082320876798154814105170332405472466564321d), (double)(v.y * 57.295779513082320876798154814105170332405472466564321d));
        
        /// Returns a double from the application of Degrees (Radians-To-Degrees Conversion).
        public static double2 Degrees(double v) => double2((double)(v * 57.295779513082320876798154814105170332405472466564321d));
        
        /// Returns a double2 from component-wise application of Radians (Degrees-To-Radians Conversion).
        public static double2 Radians(double2 v) => double2((double)(v.x * 0.0174532925199432957692369076848861271344287188854172d), (double)(v.y * 0.0174532925199432957692369076848861271344287188854172d));
        
        /// Returns a double from the application of Radians (Degrees-To-Radians Conversion).
        public static double2 Radians(double v) => double2((double)(v * 0.0174532925199432957692369076848861271344287188854172d));
        
        /// Returns a double2 from component-wise application of Acos (System.Math.Acos(v)).
        public static double2 Acos(double2 v) => double2(System.Math.Acos(v.x), System.Math.Acos(v.y));
        
        /// Returns a double from the application of Acos (System.Math.Acos(v)).
        public static double2 Acos(double v) => double2(System.Math.Acos(v));
        
        /// Returns a double2 from component-wise application of Asin (System.Math.Asin(v)).
        public static double2 Asin(double2 v) => double2(System.Math.Asin(v.x), System.Math.Asin(v.y));
        
        /// Returns a double from the application of Asin (System.Math.Asin(v)).
        public static double2 Asin(double v) => double2(System.Math.Asin(v));
        
        /// Returns a double2 from component-wise application of Atan (System.Math.Atan(v)).
        public static double2 Atan(double2 v) => double2(System.Math.Atan(v.x), System.Math.Atan(v.y));
        
        /// Returns a double from the application of Atan (System.Math.Atan(v)).
        public static double2 Atan(double v) => double2(System.Math.Atan(v));
        
        /// Returns a double2 from component-wise application of Cos (System.Math.Cos(v)).
        public static double2 Cos(double2 v) => double2(System.Math.Cos(v.x), System.Math.Cos(v.y));
        
        /// Returns a double from the application of Cos (System.Math.Cos(v)).
        public static double2 Cos(double v) => double2(System.Math.Cos(v));
        
        /// Returns a double2 from component-wise application of Cosh (System.Math.Cosh(v)).
        public static double2 Cosh(double2 v) => double2(System.Math.Cosh(v.x), System.Math.Cosh(v.y));
        
        /// Returns a double from the application of Cosh (System.Math.Cosh(v)).
        public static double2 Cosh(double v) => double2(System.Math.Cosh(v));
        
        /// Returns a double2 from component-wise application of Exp (System.Math.Exp(v)).
        public static double2 Exp(double2 v) => double2(System.Math.Exp(v.x), System.Math.Exp(v.y));
        
        /// Returns a double from the application of Exp (System.Math.Exp(v)).
        public static double2 Exp(double v) => double2(System.Math.Exp(v));
        
        /// Returns a double2 from component-wise application of Log (System.Math.Log(v)).
        public static double2 Log(double2 v) => double2(System.Math.Log(v.x), System.Math.Log(v.y));
        
        /// Returns a double from the application of Log (System.Math.Log(v)).
        public static double2 Log(double v) => double2(System.Math.Log(v));
        
        /// Returns a double2 from component-wise application of Log2 (System.Math.Log(v, 2)).
        public static double2 Log2(double2 v) => double2(System.Math.Log(v.x, 2), System.Math.Log(v.y, 2));
        
        /// Returns a double from the application of Log2 (System.Math.Log(v, 2)).
        public static double2 Log2(double v) => double2(System.Math.Log(v, 2));
        
        /// Returns a double2 from component-wise application of Log10 (System.Math.Log10(v)).
        public static double2 Log10(double2 v) => double2(System.Math.Log10(v.x), System.Math.Log10(v.y));
        
        /// Returns a double from the application of Log10 (System.Math.Log10(v)).
        public static double2 Log10(double v) => double2(System.Math.Log10(v));
        
        /// Returns a double2 from component-wise application of Floor (System.Math.Floor(v)).
        public static double2 Floor(double2 v) => double2(System.Math.Floor(v.x), System.Math.Floor(v.y));
        
        /// Returns a double from the application of Floor (System.Math.Floor(v)).
        public static double2 Floor(double v) => double2(System.Math.Floor(v));
        
        /// Returns a double2 from component-wise application of Ceiling (System.Math.Ceiling(v)).
        public static double2 Ceiling(double2 v) => double2(System.Math.Ceiling(v.x), System.Math.Ceiling(v.y));
        
        /// Returns a double from the application of Ceiling (System.Math.Ceiling(v)).
        public static double2 Ceiling(double v) => double2(System.Math.Ceiling(v));
        
        /// Returns a double2 from component-wise application of Round (System.Math.Round(v)).
        public static double2 Round(double2 v) => double2(System.Math.Round(v.x), System.Math.Round(v.y));
        
        /// Returns a double from the application of Round (System.Math.Round(v)).
        public static double2 Round(double v) => double2(System.Math.Round(v));
        
        /// Returns a double2 from component-wise application of Sin (System.Math.Sin(v)).
        public static double2 Sin(double2 v) => double2(System.Math.Sin(v.x), System.Math.Sin(v.y));
        
        /// Returns a double from the application of Sin (System.Math.Sin(v)).
        public static double2 Sin(double v) => double2(System.Math.Sin(v));
        
        /// Returns a double2 from component-wise application of Sinh (System.Math.Sinh(v)).
        public static double2 Sinh(double2 v) => double2(System.Math.Sinh(v.x), System.Math.Sinh(v.y));
        
        /// Returns a double from the application of Sinh (System.Math.Sinh(v)).
        public static double2 Sinh(double v) => double2(System.Math.Sinh(v));
        
        /// Returns a double2 from component-wise application of Tan (System.Math.Tan(v)).
        public static double2 Tan(double2 v) => double2(System.Math.Tan(v.x), System.Math.Tan(v.y));
        
        /// Returns a double from the application of Tan (System.Math.Tan(v)).
        public static double2 Tan(double v) => double2(System.Math.Tan(v));
        
        /// Returns a double2 from component-wise application of Tanh (System.Math.Tanh(v)).
        public static double2 Tanh(double2 v) => double2(System.Math.Tanh(v.x), System.Math.Tanh(v.y));
        
        /// Returns a double from the application of Tanh (System.Math.Tanh(v)).
        public static double2 Tanh(double v) => double2(System.Math.Tanh(v));
        
        /// Returns a double2 from component-wise application of Truncate (System.Math.Truncate(v)).
        public static double2 Truncate(double2 v) => double2(System.Math.Truncate(v.x), System.Math.Truncate(v.y));
        
        /// Returns a double from the application of Truncate (System.Math.Truncate(v)).
        public static double2 Truncate(double v) => double2(System.Math.Truncate(v));
        
        /// Returns a double2 from component-wise application of Fract ((v - System.Math.Floor(v))).
        public static double2 Fract(double2 v) => double2((v.x - System.Math.Floor(v.x)), (v.y - System.Math.Floor(v.y)));
        
        /// Returns a double from the application of Fract ((v - System.Math.Floor(v))).
        public static double2 Fract(double v) => double2((v - System.Math.Floor(v)));
        
        /// Returns a double2 from component-wise application of TruncateFast ((int64)(v)).
        public static double2 TruncateFast(double2 v) => double2((int64)(v.x), (int64)(v.y));
        
        /// Returns a double from the application of TruncateFast ((int64)(v)).
        public static double2 TruncateFast(double v) => double2((int64)(v));
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 Random(Random random, double2 minValue, double2 maxValue) => double2((double)random.NextDouble() * (maxValue.x - minValue.x) + minValue.x, (double)random.NextDouble() * (maxValue.y - minValue.y) + minValue.y);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 Random(Random random, double2 minValue, double maxValue) => double2((double)random.NextDouble() * (maxValue - minValue.x) + minValue.x, (double)random.NextDouble() * (maxValue - minValue.y) + minValue.y);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 Random(Random random, double minValue, double2 maxValue) => double2((double)random.NextDouble() * (maxValue.x - minValue) + minValue, (double)random.NextDouble() * (maxValue.y - minValue) + minValue);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 Random(Random random, double minValue, double maxValue) => double2((double)random.NextDouble() * (maxValue - minValue) + minValue);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 RandomUniform(Random random, double2 minValue, double2 maxValue) => double2((double)random.NextDouble() * (maxValue.x - minValue.x) + minValue.x, (double)random.NextDouble() * (maxValue.y - minValue.y) + minValue.y);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 RandomUniform(Random random, double2 minValue, double maxValue) => double2((double)random.NextDouble() * (maxValue - minValue.x) + minValue.x, (double)random.NextDouble() * (maxValue - minValue.y) + minValue.y);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 RandomUniform(Random random, double minValue, double2 maxValue) => double2((double)random.NextDouble() * (maxValue.x - minValue) + minValue, (double)random.NextDouble() * (maxValue.y - minValue) + minValue);
        
        /// Returns a double2 with independent and identically distributed uniform values between 'minValue' and 'maxValue'.
        public static double2 RandomUniform(Random random, double minValue, double maxValue) => double2((double)random.NextDouble() * (maxValue - minValue) + minValue);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomNormal(Random random, double2 mean, double2 variance) => double2((double)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (double)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomNormal(Random random, double2 mean, double variance) => double2((double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomNormal(Random random, double mean, double2 variance) => double2((double)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (double)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomNormal(Random random, double mean, double variance) => double2((double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomGaussian(Random random, double2 mean, double2 variance) => double2((double)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (double)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomGaussian(Random random, double2 mean, double variance) => double2((double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.x, (double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean.y);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomGaussian(Random random, double mean, double2 variance) => double2((double)(System.Math.Sqrt((double)variance.x) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean, (double)(System.Math.Sqrt((double)variance.y) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);
        
        /// Returns a double2 with independent and identically distributed values according to a normal/Gaussian distribution with specified mean and variance.
        public static double2 RandomGaussian(Random random, double mean, double variance) => double2((double)(System.Math.Sqrt((double)variance) * System.Math.Cos(2 * System.Math.PI_d * random.NextDouble()) * System.Math.Sqrt(-2.0 * System.Math.Log(random.NextDouble()))) + mean);

        //#endregion


        //#region Component-Wise Operator Overloads
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(double2 lhs, double2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(double2 lhs, double rhs) => bool2(lhs.x < rhs, lhs.y < rhs);
        
        /// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
        public static bool2 operator<(double lhs, double2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(double2 lhs, double2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(double2 lhs, double rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);
        
        /// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
        public static bool2 operator<=(double lhs, double2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(double2 lhs, double2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(double2 lhs, double rhs) => bool2(lhs.x > rhs, lhs.y > rhs);
        
        /// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
        public static bool2 operator>(double lhs, double2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(double2 lhs, double2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(double2 lhs, double rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);
        
        /// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
        public static bool2 operator>=(double lhs, double2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);
        
        /// Returns a double2 from component-wise application of operator+ (lhs + rhs).
        public static double2 operator+(double2 lhs, double2 rhs) => double2(lhs.x + rhs.x, lhs.y + rhs.y);
        
        /// Returns a double2 from component-wise application of operator+ (lhs + rhs).
        public static double2 operator+(double2 lhs, double rhs) => double2(lhs.x + rhs, lhs.y + rhs);
        
        /// Returns a double2 from component-wise application of operator+ (lhs + rhs).
        public static double2 operator+(double lhs, double2 rhs) => double2(lhs + rhs.x, lhs + rhs.y);
        
        /// Returns a double2 from component-wise application of operator- (lhs - rhs).
        public static double2 operator-(double2 lhs, double2 rhs) => double2(lhs.x - rhs.x, lhs.y - rhs.y);
        
        /// Returns a double2 from component-wise application of operator- (lhs - rhs).
        public static double2 operator-(double2 lhs, double rhs) => double2(lhs.x - rhs, lhs.y - rhs);
        
        /// Returns a double2 from component-wise application of operator- (lhs - rhs).
        public static double2 operator-(double lhs, double2 rhs) => double2(lhs - rhs.x, lhs - rhs.y);
        
        /// Returns a double2 from component-wise application of operator* (lhs * rhs).
        public static double2 operator*(double2 lhs, double2 rhs) => double2(lhs.x * rhs.x, lhs.y * rhs.y);
        
        /// Returns a double2 from component-wise application of operator* (lhs * rhs).
        public static double2 operator*(double2 lhs, double rhs) => double2(lhs.x * rhs, lhs.y * rhs);
        
        /// Returns a double2 from component-wise application of operator* (lhs * rhs).
        public static double2 operator*(double lhs, double2 rhs) => double2(lhs * rhs.x, lhs * rhs.y);
        
        /// Returns a double2 from component-wise application of operator/ (lhs / rhs).
        public static double2 operator/(double2 lhs, double2 rhs) => double2(lhs.x / rhs.x, lhs.y / rhs.y);
        
        /// Returns a double2 from component-wise application of operator/ (lhs / rhs).
        public static double2 operator/(double2 lhs, double rhs) => double2(lhs.x / rhs, lhs.y / rhs);
        
        /// Returns a double2 from component-wise application of operator/ (lhs / rhs).
        public static double2 operator/(double lhs, double2 rhs) => double2(lhs / rhs.x, lhs / rhs.y);
        
        /// Returns a double2 from component-wise application of operator- (-v).
        public static double2 operator-(double2 v) => double2(-v.x, -v.y);
        
        /// Returns a double2 from component-wise application of operator% (lhs % rhs).
        public static double2 operator%(double2 lhs, double2 rhs) => double2(lhs.x % rhs.x, lhs.y % rhs.y);
        
        /// Returns a double2 from component-wise application of operator% (lhs % rhs).
        public static double2 operator%(double2 lhs, double rhs) => double2(lhs.x % rhs, lhs.y % rhs);
        
        /// Returns a double2 from component-wise application of operator% (lhs % rhs).
        public static double2 operator%(double lhs, double2 rhs) => double2(lhs % rhs.x, lhs % rhs.y);

        //#endregion

    }
}
