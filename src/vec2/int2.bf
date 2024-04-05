using System;
namespace glm
{

	/// A vector of type int with 2 components.
	[Union]
	public struct int2 : IHashable
	{

		#region Fields

		/// component data
		public int[2] values;

		/// Returns an object that can be used for arbitrary swizzling (e.g. swizzle.zy)
		public readonly swizzle_int2 swizzle;

		#endregion


		#region Constructors

		/// Component-wise constructor
		public this(int x, int y)
		{
			values = .(x, y);
		}

		/// all-same-value constructor
		public this(int v)
		{
			values = .(v, v);
		}

		/// from-vector constructor
		public this(int2 v)
		{
			values = .(v.x, v.y);
		}

		/// from-vector constructor (additional fields are truncated)
		public this(int3 v)
		{
			values = .(v.x, v.y);
		}

		/// from-vector constructor (additional fields are truncated)
		public this(int4 v)
		{
			values = .(v.x, v.y);
		}

		/// From-array constructor (superfluous values are ignored, missing values are zero-filled).
		public this(int[] v)
		{
			let c = v.Count;
			values = .((c < 0) ? 0 : v[0], (c < 1) ? 0 : v[1]);
		}

		/// From-array constructor with base index (superfluous values are ignored, missing values are zero-filled).
		public this(int[] v, int startIndex)
		{
			let c = v.Count;
			values = .((c + startIndex < 0) ? 0 : v[0 + startIndex], (c + startIndex < 1) ? 0 : v[1 + startIndex]);
		}

		#endregion


		#region Implicit Operators

		/// Implicitly converts this to a long2.
		public static implicit operator long2(int2 v) => long2((long)v.x, (long)v.y);

		/// Implicitly converts this to a float2.
		public static implicit operator float2(int2 v) => float2((float)v.x, (float)v.y);

		/// Implicitly converts this to a double2.
		public static implicit operator double2(int2 v) => double2((double)v.x, (double)v.y);

		#endregion


		#region Explicit Operators

		/// Explicitly converts this to a int3. (Higher components are zeroed)
		public static explicit operator int3(int2 v) => int3((int)v.x, (int)v.y, 0);

		/// Explicitly converts this to a int4. (Higher components are zeroed)
		public static explicit operator int4(int2 v) => int4((int)v.x, (int)v.y, 0, 0);

		/// Explicitly converts this to a uint2.
		public static explicit operator uint2(int2 v) => uint2((uint)v.x, (uint)v.y);

		/// Explicitly converts this to a uint3. (Higher components are zeroed)
		public static explicit operator uint3(int2 v) => uint3((uint)v.x, (uint)v.y, 0u);

		/// Explicitly converts this to a uint4. (Higher components are zeroed)
		public static explicit operator uint4(int2 v) => uint4((uint)v.x, (uint)v.y, 0u, 0u);

		/// Explicitly converts this to a float3. (Higher components are zeroed)
		public static explicit operator float3(int2 v) => float3((float)v.x, (float)v.y, 0f);

		/// Explicitly converts this to a float4. (Higher components are zeroed)
		public static explicit operator float4(int2 v) => float4((float)v.x, (float)v.y, 0f, 0f);

		/// Explicitly converts this to a double3. (Higher components are zeroed)
		public static explicit operator double3(int2 v) => double3((double)v.x, (double)v.y, 0.0);

		/// Explicitly converts this to a double4. (Higher components are zeroed)
		public static explicit operator double4(int2 v) => double4((double)v.x, (double)v.y, 0.0, 0.0);

		/// Explicitly converts this to a long3. (Higher components are zeroed)
		public static explicit operator long3(int2 v) => long3((long)v.x, (long)v.y, 0);

		/// Explicitly converts this to a long4. (Higher components are zeroed)
		public static explicit operator long4(int2 v) => long4((long)v.x, (long)v.y, 0, 0);

		/// Explicitly converts this to a bool2.
		public static explicit operator bool2(int2 v) => bool2(v.x != 0, v.y != 0);

		/// Explicitly converts this to a bool3. (Higher components are zeroed)
		public static explicit operator bool3(int2 v) => bool3(v.x != 0, v.y != 0, false);

		/// Explicitly converts this to a bool4. (Higher components are zeroed)
		public static explicit operator bool4(int2 v) => bool4(v.x != 0, v.y != 0, false, false);

		#endregion


		#region Indexer

		/// Gets/Sets a specific indexed component (a bit slower than direct access).
		public int this[int index]
		{
			[Inline] get
			{
				System.Diagnostics.Debug.Assert(index >= 0 && index < 2, "index out of range"); { return values[index]; }
			}
			[Inline] set mut
			{
				System.Diagnostics.Debug.Assert(index >= 0 && index < 2, "index out of range"); { values[index] = value; }
			}
		}

		#endregion


		#region Properties

		/// x-component
		public int x
		{
			[Inline] get
			{
				return values[0];
			}
			[Inline] set mut
			{
				values[0] = value;
			}
		}

		/// y-component
		public int y
		{
			[Inline] get
			{
				return values[1];
			}
			[Inline] set mut
			{
				values[1] = value;
			}
		}

		/// 0-component
		public int width
		{
			[Inline] get
			{
				return values[0];
			}
			[Inline] set mut
			{
				values[0] = value;
			}
		}

		/// 1-component
		public int height
		{
			[Inline] get
			{
				return values[1];
			}
			[Inline] set mut
			{
				values[1] = value;
			}
		}

		/// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle
		public int2 xy
		{
			[Inline] get
			{
				return int2(x, y);
			}
			[Inline] set mut
			{
				x = value.x;
				y = value.y;
			}
		}

		/// Gets or sets the specified subset of components. For more advanced (read-only) swizzling, use the .swizzle
		public int2 rg
		{
			[Inline] get
			{
				return int2(x, y);
			}
			[Inline] set mut
			{
				x = value.x;
				y = value.y;
			}
		}

		/// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle
		public int r
		{
			[Inline] get
			{
				return x;
			}
			[Inline] set mut
			{
				x = value;
			}
		}

		/// Gets or sets the specified RGBA component. For more advanced (read-only) swizzling, use the .swizzle
		public int g
		{
			[Inline] get
			{
				return y;
			}
			[Inline] set mut
			{
				y = value;
			}
		}

		/// Returns the number of components (2).
		public int Count => 2;

		/// Returns the minimal component of this vector.
		public int MinElement => System.Math.Min(x, y);

		/// Returns the maximal component of this vector.
		public int MaxElement => System.Math.Max(x, y);

		/// Returns the euclidean length of this vector.
		public float Length => (float)System.Math.Sqrt((x * x + y * y));

		/// Returns the squared euclidean length of this vector.
		public int LengthSqr => (x * x + y * y);

		/// Returns the sum of all components.
		public int Sum => (x + y);

		/// Returns the euclidean norm of this vector.
		public float Norm => (float)System.Math.Sqrt((x * x + y * y));

		/// Returns the one-norm of this vector.
		public float Norm1 => (System.Math.Abs(x) + System.Math.Abs(y));

		/// Returns the two-norm (euclidean length) of this vector.
		public float Norm2 => (float)System.Math.Sqrt((x * x + y * y));

		/// Returns the max-norm of this vector.
		public float NormMax => System.Math.Max(System.Math.Abs(x), System.Math.Abs(y));

		/// Returns a perpendicular vector.
		public int2 Perpendicular => int2(y, -x);

		#endregion


		#region Static Properties

		/// Predefined all-zero vector
		readonly public static int2 Zero = int2(0, 0);

		/// Predefined all-ones vector
		readonly public static int2 Ones = int2(1, 1);

		/// Predefined unit-X vector
		readonly public static int2 UnitX = int2(1, 0);

		/// Predefined unit-X vector
		readonly public static int2 NegativeUnitX = int2(-1, 0);

		/// Predefined unit-Y vector
		readonly public static int2 UnitY = int2(0, 1);

		/// Predefined unit-Y vector
		readonly public static int2 NegativeUnitY = int2(0, -1);

		/// Predefined all-MaxValue vector
		readonly public static int2 MaxValue = int2(int.MaxValue, int.MaxValue);

		/// Predefined all-MinValue vector
		readonly public static int2 MinValue = int2(int.MinValue, int.MinValue);

		#endregion


		#region Operators

		/// Returns true if this equals rhs component-wise.
		public static bool operator==(int2 lhs, int2 rhs) => (lhs.x == rhs.x && lhs.y == rhs.y);

		/// Returns true if this does not equal rhs (component-wise).
		public static bool operator!=(int2 lhs, int2 rhs) => !(lhs.x == rhs.x && lhs.y == rhs.y);

		#endregion


		#region Functions

		/// Returns an array with all values
		public int[] ToArray() => new .[](x, y);

		/// Returns a string representation of this vector using ', ' as a seperator.
		public override void ToString(String stringBuffer) => ToString(stringBuffer, ", ");

		/// Returns a string representation of this vector using a provided seperator.
		public void ToString(String stringBuffer, String sep)
		{
			let _x = scope String(); values[0].ToString(_x);
			let _y = scope String(); values[1].ToString(_y);
			stringBuffer.Join(sep, _x, _y);
		}

		/// Returns a hash code for this instance.
		public int GetHashCode()
		{
			{
				return ((x.GetHashCode()) * 397) ^ y.GetHashCode();
			}
		}

		/// Returns the p-norm of this vector.
		public double NormP(double p) => System.Math.Pow((System.Math.Pow((double)System.Math.Abs(x), p) + System.Math.Pow((double)System.Math.Abs(y), p)), 1 / p);

		#endregion


		#region Static Functions

		/// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second
		// parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding
		// a matrix whose number of rows is the number of components in c and whose number of columns is the number of
		public static int2x2 OuterProduct(int2 c, int2 r) => int2x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y);

		/// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second
		// parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding
		// a matrix whose number of rows is the number of components in c and whose number of columns is the number of
		public static int2x3 OuterProduct(int3 c, int2 r) => int2x3(c.x * r.x, c.y * r.x, c.z * r.x, c.x * r.y, c.y * r.y, c.z * r.y);

		/// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second
		// parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding
		// a matrix whose number of rows is the number of components in c and whose number of columns is the number of
		public static int3x2 OuterProduct(int2 c, int3 r) => int3x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z);

		/// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second
		// parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding
		// a matrix whose number of rows is the number of components in c and whose number of columns is the number of
		public static int2x4 OuterProduct(int4 c, int2 r) => int2x4(c.x * r.x, c.y * r.x, c.z * r.x, c.w * r.x, c.x * r.y, c.y * r.y, c.z * r.y, c.w * r.y);

		/// OuterProduct treats the first parameter c as a column vector (matrix with one column) and the second
		// parameter r as a row vector (matrix with one row) and does a linear algebraic matrix multiply c * r, yielding
		// a matrix whose number of rows is the number of components in c and whose number of columns is the number of
		public static int4x2 OuterProduct(int2 c, int4 r) => int4x2(c.x * r.x, c.y * r.x, c.x * r.y, c.y * r.y, c.x * r.z, c.y * r.z, c.x * r.w, c.y * r.w);

		/// Returns the inner product (dot product, scalar product) of the two vectors.
		public static int Dot(int2 lhs, int2 rhs) => (lhs.x * rhs.x + lhs.y * rhs.y);

		/// Returns the euclidean distance between the two vectors.
		public static float Distance(int2 lhs, int2 rhs) => (lhs - rhs).Length;

		/// Returns the squared euclidean distance between the two vectors.
		public static float DistanceSqr(int2 lhs, int2 rhs) => (lhs - rhs).LengthSqr;

		/// Calculate the reflection direction for an incident vector (N should be normalized in order to achieve the
		public static int2 Reflect(int2 I, int2 N) => I - 2 * Dot(N, I) * N;

		/// Calculate the refraction direction for an incident vector (The input parameters I and N should be normalized
		public static int2 Refract(int2 I, int2 N, int eta)
		{
			let dNI = Dot(N, I);
			let k = 1 - eta * eta * (1 - dNI * dNI);
			if (k < 0) return Zero;
			return eta * I - (eta * dNI + (int)System.Math.Sqrt(k)) * N;
		}

		/// Returns a vector pointing in the same direction as another (faceforward orients a vector to point away from
		// a surface as defined by its normal. If dot(Nref, I) is negative faceforward returns N, otherwise it returns
		public static int2 FaceForward(int2 N, int2 I, int2 Nref) => Dot(Nref, I) < 0 ? N : -N;

		/// Returns the length of the outer product (cross product, vector product) of the two vectors.
		public static int Cross(int2 l, int2 r) => l.x * r.y - l.y * r.x;

		/// Returns a int2 with independent and identically distributed uniform integer values between 0 (inclusive) and
		public static int2 Random(Random random) => int2((int)random.Next(int64.MaxValue), (int)random.Next(int64.MaxValue));

		#endregion


		#region Component-Wise Static Functions

		/// Returns a bool2 from component-wise application of Equal (lhs == rhs).
		public static bool2 Equal(int2 lhs, int2 rhs) => bool2(lhs.x == rhs.x, lhs.y == rhs.y);

		/// Returns a bool2 from component-wise application of Equal (lhs == rhs).
		public static bool2 Equal(int2 lhs, int rhs) => bool2(lhs.x == rhs, lhs.y == rhs);

		/// Returns a bool2 from component-wise application of Equal (lhs == rhs).
		public static bool2 Equal(int lhs, int2 rhs) => bool2(lhs == rhs.x, lhs == rhs.y);

		/// Returns a bool from the application of Equal (lhs == rhs).
		public static bool2 Equal(int lhs, int rhs) => bool2(lhs == rhs);

		/// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
		public static bool2 NotEqual(int2 lhs, int2 rhs) => bool2(lhs.x != rhs.x, lhs.y != rhs.y);

		/// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
		public static bool2 NotEqual(int2 lhs, int rhs) => bool2(lhs.x != rhs, lhs.y != rhs);

		/// Returns a bool2 from component-wise application of NotEqual (lhs != rhs).
		public static bool2 NotEqual(int lhs, int2 rhs) => bool2(lhs != rhs.x, lhs != rhs.y);

		/// Returns a bool from the application of NotEqual (lhs != rhs).
		public static bool2 NotEqual(int lhs, int rhs) => bool2(lhs != rhs);

		/// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
		public static bool2 GreaterThan(int2 lhs, int2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);

		/// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
		public static bool2 GreaterThan(int2 lhs, int rhs) => bool2(lhs.x > rhs, lhs.y > rhs);

		/// Returns a bool2 from component-wise application of GreaterThan (lhs &gt; rhs).
		public static bool2 GreaterThan(int lhs, int2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);

		/// Returns a bool from the application of GreaterThan (lhs &gt; rhs).
		public static bool2 GreaterThan(int lhs, int rhs) => bool2(lhs > rhs);

		/// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
		public static bool2 GreaterThanEqual(int2 lhs, int2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);

		/// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
		public static bool2 GreaterThanEqual(int2 lhs, int rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);

		/// Returns a bool2 from component-wise application of GreaterThanEqual (lhs &gt;= rhs).
		public static bool2 GreaterThanEqual(int lhs, int2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);

		/// Returns a bool from the application of GreaterThanEqual (lhs &gt;= rhs).
		public static bool2 GreaterThanEqual(int lhs, int rhs) => bool2(lhs >= rhs);

		/// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
		public static bool2 LesserThan(int2 lhs, int2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);

		/// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
		public static bool2 LesserThan(int2 lhs, int rhs) => bool2(lhs.x < rhs, lhs.y < rhs);

		/// Returns a bool2 from component-wise application of LesserThan (lhs &lt; rhs).
		public static bool2 LesserThan(int lhs, int2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);

		/// Returns a bool from the application of LesserThan (lhs &lt; rhs).
		public static bool2 LesserThan(int lhs, int rhs) => bool2(lhs < rhs);

		/// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
		public static bool2 LesserThanEqual(int2 lhs, int2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);

		/// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
		public static bool2 LesserThanEqual(int2 lhs, int rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);

		/// Returns a bool2 from component-wise application of LesserThanEqual (lhs &lt;= rhs).
		public static bool2 LesserThanEqual(int lhs, int2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);

		/// Returns a bool from the application of LesserThanEqual (lhs &lt;= rhs).
		public static bool2 LesserThanEqual(int lhs, int rhs) => bool2(lhs <= rhs);

		/// Returns a int2 from component-wise application of Abs (System.Math.Abs(v)).
		public static int2 Abs(int2 v) => int2(System.Math.Abs(v.x), System.Math.Abs(v.y));

		/// Returns a int from the application of Abs (System.Math.Abs(v)).
		public static int2 Abs(int v) => int2(System.Math.Abs(v));

		/// Returns a int2 from component-wise application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
		public static int2 HermiteInterpolationOrder3(int2 v) => int2((3 - 2 * v.x) * v.x * v.x, (3 - 2 * v.y) * v.y * v.y);

		/// Returns a int from the application of HermiteInterpolationOrder3 ((3 - 2 * v) * v * v).
		public static int2 HermiteInterpolationOrder3(int v) => int2((3 - 2 * v) * v * v);

		/// Returns a int2 from component-wise application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v *
		public static int2 HermiteInterpolationOrder5(int2 v) => int2(((6 * v.x - 15) * v.x + 10) * v.x * v.x * v.x, ((6 * v.y - 15) * v.y + 10) * v.y * v.y * v.y);

		/// Returns a int from the application of HermiteInterpolationOrder5 (((6 * v - 15) * v + 10) * v * v * v).
		public static int2 HermiteInterpolationOrder5(int v) => int2(((6 * v - 15) * v + 10) * v * v * v);

		/// Returns a int2 from component-wise application of Sqr (v * v).
		public static int2 Sqr(int2 v) => int2(v.x * v.x, v.y * v.y);

		/// Returns a int from the application of Sqr (v * v).
		public static int2 Sqr(int v) => int2(v * v);

		/// Returns a int2 from component-wise application of Pow2 (v * v).
		public static int2 Pow2(int2 v) => int2(v.x * v.x, v.y * v.y);

		/// Returns a int from the application of Pow2 (v * v).
		public static int2 Pow2(int v) => int2(v * v);

		/// Returns a int2 from component-wise application of Pow3 (v * v * v).
		public static int2 Pow3(int2 v) => int2(v.x * v.x * v.x, v.y * v.y * v.y);

		/// Returns a int from the application of Pow3 (v * v * v).
		public static int2 Pow3(int v) => int2(v * v * v);

		/// Returns a int2 from component-wise application of Step (v &gt;= 0 ? 1 : 0).
		public static int2 Step(int2 v) => int2(v.x >= 0 ? 1 : 0, v.y >= 0 ? 1 : 0);

		/// Returns a int from the application of Step (v &gt;= 0 ? 1 : 0).
		public static int2 Step(int v) => int2(v >= 0 ? 1 : 0);

		/// Returns a int2 from component-wise application of Sqrt ((int)System.Math.Sqrt((double)v)).
		public static int2 Sqrt(int2 v) => int2((int)System.Math.Sqrt((double)v.x), (int)System.Math.Sqrt((double)v.y));

		/// Returns a int from the application of Sqrt ((int)System.Math.Sqrt((double)v)).
		public static int2 Sqrt(int v) => int2((int)System.Math.Sqrt((double)v));

		/// Returns a int2 from component-wise application of InverseSqrt ((int)(1.0 / System.Math.Sqrt((double)v))).
		public static int2 InverseSqrt(int2 v) => int2((int)(1.0 / System.Math.Sqrt((double)v.x)), (int)(1.0 / System.Math.Sqrt((double)v.y)));

		/// Returns a int from the application of InverseSqrt ((int)(1.0 / System.Math.Sqrt((double)v))).
		public static int2 InverseSqrt(int v) => int2((int)(1.0 / System.Math.Sqrt((double)v)));

		/// Returns a int2 from component-wise application of Sign (System.Math.Sign(v)).
		public static int2 Sign(int2 v) => int2(System.Math.Sign(v.x), System.Math.Sign(v.y));

		/// Returns a int from the application of Sign (System.Math.Sign(v)).
		public static int2 Sign(int v) => int2(System.Math.Sign(v));

		/// Returns a int2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
		public static int2 Max(int2 lhs, int2 rhs) => int2(System.Math.Max(lhs.x, rhs.x), System.Math.Max(lhs.y, rhs.y));

		/// Returns a int2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
		public static int2 Max(int2 lhs, int rhs) => int2(System.Math.Max(lhs.x, rhs), System.Math.Max(lhs.y, rhs));

		/// Returns a int2 from component-wise application of Max (System.Math.Max(lhs, rhs)).
		public static int2 Max(int lhs, int2 rhs) => int2(System.Math.Max(lhs, rhs.x), System.Math.Max(lhs, rhs.y));

		/// Returns a int from the application of Max (System.Math.Max(lhs, rhs)).
		public static int2 Max(int lhs, int rhs) => int2(System.Math.Max(lhs, rhs));

		/// Returns a int2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
		public static int2 Min(int2 lhs, int2 rhs) => int2(System.Math.Min(lhs.x, rhs.x), System.Math.Min(lhs.y, rhs.y));

		/// Returns a int2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
		public static int2 Min(int2 lhs, int rhs) => int2(System.Math.Min(lhs.x, rhs), System.Math.Min(lhs.y, rhs));

		/// Returns a int2 from component-wise application of Min (System.Math.Min(lhs, rhs)).
		public static int2 Min(int lhs, int2 rhs) => int2(System.Math.Min(lhs, rhs.x), System.Math.Min(lhs, rhs.y));

		/// Returns a int from the application of Min (System.Math.Min(lhs, rhs)).
		public static int2 Min(int lhs, int rhs) => int2(System.Math.Min(lhs, rhs));

		/// Returns a int2 from component-wise application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
		public static int2 Pow(int2 lhs, int2 rhs) => int2((int)System.Math.Pow((double)lhs.x, (double)rhs.x), (int)System.Math.Pow((double)lhs.y, (double)rhs.y));

		/// Returns a int2 from component-wise application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
		public static int2 Pow(int2 lhs, int rhs) => int2((int)System.Math.Pow((double)lhs.x, (double)rhs), (int)System.Math.Pow((double)lhs.y, (double)rhs));

		/// Returns a int2 from component-wise application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
		public static int2 Pow(int lhs, int2 rhs) => int2((int)System.Math.Pow((double)lhs, (double)rhs.x), (int)System.Math.Pow((double)lhs, (double)rhs.y));

		/// Returns a int from the application of Pow ((int)System.Math.Pow((double)lhs, (double)rhs)).
		public static int2 Pow(int lhs, int rhs) => int2((int)System.Math.Pow((double)lhs, (double)rhs));

		/// Returns a int2 from component-wise application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
		public static int2 Log(int2 lhs, int2 rhs) => int2((int)System.Math.Log((double)lhs.x, (double)rhs.x), (int)System.Math.Log((double)lhs.y, (double)rhs.y));

		/// Returns a int2 from component-wise application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
		public static int2 Log(int2 lhs, int rhs) => int2((int)System.Math.Log((double)lhs.x, (double)rhs), (int)System.Math.Log((double)lhs.y, (double)rhs));

		/// Returns a int2 from component-wise application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
		public static int2 Log(int lhs, int2 rhs) => int2((int)System.Math.Log((double)lhs, (double)rhs.x), (int)System.Math.Log((double)lhs, (double)rhs.y));

		/// Returns a int from the application of Log ((int)System.Math.Log((double)lhs, (double)rhs)).
		public static int2 Log(int lhs, int rhs) => int2((int)System.Math.Log((double)lhs, (double)rhs));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int2 v, int2 min, int2 max) => int2(System.Math.Min(System.Math.Max(v.x, min.x), max.x), System.Math.Min(System.Math.Max(v.y, min.y), max.y));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int2 v, int2 min, int max) => int2(System.Math.Min(System.Math.Max(v.x, min.x), max), System.Math.Min(System.Math.Max(v.y, min.y), max));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int2 v, int min, int2 max) => int2(System.Math.Min(System.Math.Max(v.x, min), max.x), System.Math.Min(System.Math.Max(v.y, min), max.y));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int2 v, int min, int max) => int2(System.Math.Min(System.Math.Max(v.x, min), max), System.Math.Min(System.Math.Max(v.y, min), max));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int v, int2 min, int2 max) => int2(System.Math.Min(System.Math.Max(v, min.x), max.x), System.Math.Min(System.Math.Max(v, min.y), max.y));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int v, int2 min, int max) => int2(System.Math.Min(System.Math.Max(v, min.x), max), System.Math.Min(System.Math.Max(v, min.y), max));

		/// Returns a int2 from component-wise application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int v, int min, int2 max) => int2(System.Math.Min(System.Math.Max(v, min), max.x), System.Math.Min(System.Math.Max(v, min), max.y));

		/// Returns a int from the application of Clamp (System.Math.Min(System.Math.Max(v, min), max)).
		public static int2 Clamp(int v, int min, int max) => int2(System.Math.Min(System.Math.Max(v, min), max));

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int2 min, int2 max, int2 a) => int2(min.x * (1 - a.x) + max.x * a.x, min.y * (1 - a.y) + max.y * a.y);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int2 min, int2 max, int a) => int2(min.x * (1 - a) + max.x * a, min.y * (1 - a) + max.y * a);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int2 min, int max, int2 a) => int2(min.x * (1 - a.x) + max * a.x, min.y * (1 - a.y) + max * a.y);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int2 min, int max, int a) => int2(min.x * (1 - a) + max * a, min.y * (1 - a) + max * a);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int min, int2 max, int2 a) => int2(min * (1 - a.x) + max.x * a.x, min * (1 - a.y) + max.y * a.y);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int min, int2 max, int a) => int2(min * (1 - a) + max.x * a, min * (1 - a) + max.y * a);

		/// Returns a int2 from component-wise application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int min, int max, int2 a) => int2(min * (1 - a.x) + max * a.x, min * (1 - a.y) + max * a.y);

		/// Returns a int from the application of Mix (min * (1-a) + max * a).
		public static int2 Mix(int min, int max, int a) => int2(min * (1 - a) + max * a);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int2 min, int2 max, int2 a) => int2(min.x * (1 - a.x) + max.x * a.x, min.y * (1 - a.y) + max.y * a.y);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int2 min, int2 max, int a) => int2(min.x * (1 - a) + max.x * a, min.y * (1 - a) + max.y * a);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int2 min, int max, int2 a) => int2(min.x * (1 - a.x) + max * a.x, min.y * (1 - a.y) + max * a.y);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int2 min, int max, int a) => int2(min.x * (1 - a) + max * a, min.y * (1 - a) + max * a);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int min, int2 max, int2 a) => int2(min * (1 - a.x) + max.x * a.x, min * (1 - a.y) + max.y * a.y);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int min, int2 max, int a) => int2(min * (1 - a) + max.x * a, min * (1 - a) + max.y * a);

		/// Returns a int2 from component-wise application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int min, int max, int2 a) => int2(min * (1 - a.x) + max * a.x, min * (1 - a.y) + max * a.y);

		/// Returns a int from the application of Lerp (min * (1-a) + max * a).
		public static int2 Lerp(int min, int max, int a) => int2(min * (1 - a) + max * a);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int2 a, int2 b, int2 c) => int2(a.x * b.x + c.x, a.y * b.y + c.y);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int2 a, int2 b, int c) => int2(a.x * b.x + c, a.y * b.y + c);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int2 a, int b, int2 c) => int2(a.x * b + c.x, a.y * b + c.y);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int2 a, int b, int c) => int2(a.x * b + c, a.y * b + c);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int a, int2 b, int2 c) => int2(a * b.x + c.x, a * b.y + c.y);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int a, int2 b, int c) => int2(a * b.x + c, a * b.y + c);

		/// Returns a int2 from component-wise application of Fma (a * b + c).
		public static int2 Fma(int a, int b, int2 c) => int2(a * b + c.x, a * b + c.y);

		/// Returns a int from the application of Fma (a * b + c).
		public static int2 Fma(int a, int b, int c) => int2(a * b + c);

		/// Returns a int2 from component-wise application of Add (lhs + rhs).
		public static int2 Add(int2 lhs, int2 rhs) => int2(lhs.x + rhs.x, lhs.y + rhs.y);

		/// Returns a int2 from component-wise application of Add (lhs + rhs).
		public static int2 Add(int2 lhs, int rhs) => int2(lhs.x + rhs, lhs.y + rhs);

		/// Returns a int2 from component-wise application of Add (lhs + rhs).
		public static int2 Add(int lhs, int2 rhs) => int2(lhs + rhs.x, lhs + rhs.y);

		/// Returns a int from the application of Add (lhs + rhs).
		public static int2 Add(int lhs, int rhs) => int2(lhs + rhs);

		/// Returns a int2 from component-wise application of Sub (lhs - rhs).
		public static int2 Sub(int2 lhs, int2 rhs) => int2(lhs.x - rhs.x, lhs.y - rhs.y);

		/// Returns a int2 from component-wise application of Sub (lhs - rhs).
		public static int2 Sub(int2 lhs, int rhs) => int2(lhs.x - rhs, lhs.y - rhs);

		/// Returns a int2 from component-wise application of Sub (lhs - rhs).
		public static int2 Sub(int lhs, int2 rhs) => int2(lhs - rhs.x, lhs - rhs.y);

		/// Returns a int from the application of Sub (lhs - rhs).
		public static int2 Sub(int lhs, int rhs) => int2(lhs - rhs);

		/// Returns a int2 from component-wise application of Mul (lhs * rhs).
		public static int2 Mul(int2 lhs, int2 rhs) => int2(lhs.x * rhs.x, lhs.y * rhs.y);

		/// Returns a int2 from component-wise application of Mul (lhs * rhs).
		public static int2 Mul(int2 lhs, int rhs) => int2(lhs.x * rhs, lhs.y * rhs);

		/// Returns a int2 from component-wise application of Mul (lhs * rhs).
		public static int2 Mul(int lhs, int2 rhs) => int2(lhs * rhs.x, lhs * rhs.y);

		/// Returns a int from the application of Mul (lhs * rhs).
		public static int2 Mul(int lhs, int rhs) => int2(lhs * rhs);

		/// Returns a int2 from component-wise application of Div (lhs / rhs).
		public static int2 Div(int2 lhs, int2 rhs) => int2(lhs.x / rhs.x, lhs.y / rhs.y);

		/// Returns a int2 from component-wise application of Div (lhs / rhs).
		public static int2 Div(int2 lhs, int rhs) => int2(lhs.x / rhs, lhs.y / rhs);

		/// Returns a int2 from component-wise application of Div (lhs / rhs).
		public static int2 Div(int lhs, int2 rhs) => int2(lhs / rhs.x, lhs / rhs.y);

		/// Returns a int from the application of Div (lhs / rhs).
		public static int2 Div(int lhs, int rhs) => int2(lhs / rhs);

		/// Returns a int2 from component-wise application of Xor (lhs ^ rhs).
		public static int2 Xor(int2 lhs, int2 rhs) => int2(lhs.x ^ rhs.x, lhs.y ^ rhs.y);

		/// Returns a int2 from component-wise application of Xor (lhs ^ rhs).
		public static int2 Xor(int2 lhs, int rhs) => int2(lhs.x ^ rhs, lhs.y ^ rhs);

		/// Returns a int2 from component-wise application of Xor (lhs ^ rhs).
		public static int2 Xor(int lhs, int2 rhs) => int2(lhs ^ rhs.x, lhs ^ rhs.y);

		/// Returns a int from the application of Xor (lhs ^ rhs).
		public static int2 Xor(int lhs, int rhs) => int2(lhs ^ rhs);

		/// Returns a int2 from component-wise application of BitwiseOr (lhs | rhs).
		public static int2 BitwiseOr(int2 lhs, int2 rhs) => int2(lhs.x | rhs.x, lhs.y | rhs.y);

		/// Returns a int2 from component-wise application of BitwiseOr (lhs | rhs).
		public static int2 BitwiseOr(int2 lhs, int rhs) => int2(lhs.x | rhs, lhs.y | rhs);

		/// Returns a int2 from component-wise application of BitwiseOr (lhs | rhs).
		public static int2 BitwiseOr(int lhs, int2 rhs) => int2(lhs | rhs.x, lhs | rhs.y);

		/// Returns a int from the application of BitwiseOr (lhs | rhs).
		public static int2 BitwiseOr(int lhs, int rhs) => int2(lhs | rhs);

		/// Returns a int2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
		public static int2 BitwiseAnd(int2 lhs, int2 rhs) => int2(lhs.x & rhs.x, lhs.y & rhs.y);

		/// Returns a int2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
		public static int2 BitwiseAnd(int2 lhs, int rhs) => int2(lhs.x & rhs, lhs.y & rhs);

		/// Returns a int2 from component-wise application of BitwiseAnd (lhs &amp; rhs).
		public static int2 BitwiseAnd(int lhs, int2 rhs) => int2(lhs & rhs.x, lhs & rhs.y);

		/// Returns a int from the application of BitwiseAnd (lhs &amp; rhs).
		public static int2 BitwiseAnd(int lhs, int rhs) => int2(lhs & rhs);

		/// Returns a int2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
		public static int2 LeftShift(int2 lhs, int2 rhs) => int2(lhs.x << rhs.x, lhs.y << rhs.y);

		/// Returns a int2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
		public static int2 LeftShift(int2 lhs, int rhs) => int2(lhs.x << rhs, lhs.y << rhs);

		/// Returns a int2 from component-wise application of LeftShift (lhs &lt;&lt; rhs).
		public static int2 LeftShift(int lhs, int2 rhs) => int2(lhs << rhs.x, lhs << rhs.y);

		/// Returns a int from the application of LeftShift (lhs &lt;&lt; rhs).
		public static int2 LeftShift(int lhs, int rhs) => int2(lhs << rhs);

		/// Returns a int2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
		public static int2 RightShift(int2 lhs, int2 rhs) => int2(lhs.x >> rhs.x, lhs.y >> rhs.y);

		/// Returns a int2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
		public static int2 RightShift(int2 lhs, int rhs) => int2(lhs.x >> rhs, lhs.y >> rhs);

		/// Returns a int2 from component-wise application of RightShift (lhs &gt;&gt; rhs).
		public static int2 RightShift(int lhs, int2 rhs) => int2(lhs >> rhs.x, lhs >> rhs.y);

		/// Returns a int from the application of RightShift (lhs &gt;&gt; rhs).
		public static int2 RightShift(int lhs, int rhs) => int2(lhs >> rhs);

		/// Returns a int2 with independent and identically distributed uniform integer values between 0 (inclusive) and
		public static int2 Random(Random random, int2 maxValue) => int2((int)random.Next((int)maxValue.x), (int)random.Next((int)maxValue.y));

		/// Returns a int2 with independent and identically distributed uniform integer values between 0 (inclusive) and
		public static int2 Random(Random random, int maxValue) => int2((int)random.Next((int)maxValue));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 Random(Random random, int2 minValue, int2 maxValue) => int2((int)random.Next((int)minValue.x, (int)maxValue.x), (int)random.Next((int)minValue.y, (int)maxValue.y));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 Random(Random random, int2 minValue, int maxValue) => int2((int)random.Next((int)minValue.x, (int)maxValue), (int)random.Next((int)minValue.y, (int)maxValue));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 Random(Random random, int minValue, int2 maxValue) => int2((int)random.Next((int)minValue, (int)maxValue.x), (int)random.Next((int)minValue, (int)maxValue.y));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 Random(Random random, int minValue, int maxValue) => int2((int)random.Next((int)minValue, (int)maxValue));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 RandomUniform(Random random, int2 minValue, int2 maxValue) => int2((int)random.Next((int)minValue.x, (int)maxValue.x), (int)random.Next((int)minValue.y, (int)maxValue.y));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 RandomUniform(Random random, int2 minValue, int maxValue) => int2((int)random.Next((int)minValue.x, (int)maxValue), (int)random.Next((int)minValue.y, (int)maxValue));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 RandomUniform(Random random, int minValue, int2 maxValue) => int2((int)random.Next((int)minValue, (int)maxValue.x), (int)random.Next((int)minValue, (int)maxValue.y));

		/// Returns a int2 with independent and identically distributed uniform integer values between minValue
		// (inclusive) and maxValue (exclusive). (minValue == maxValue is allowed and returns minValue. Negative values
		public static int2 RandomUniform(Random random, int minValue, int maxValue) => int2((int)random.Next((int)minValue, (int)maxValue));

		#endregion


		#region Component-Wise Operator Overloads

		/// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
		public static bool2 operator<(int2 lhs, int2 rhs) => bool2(lhs.x < rhs.x, lhs.y < rhs.y);

		/// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
		public static bool2 operator<(int2 lhs, int rhs) => bool2(lhs.x < rhs, lhs.y < rhs);

		/// Returns a bool2 from component-wise application of operator&lt; (lhs &lt; rhs).
		public static bool2 operator<(int lhs, int2 rhs) => bool2(lhs < rhs.x, lhs < rhs.y);

		/// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
		public static bool2 operator<=(int2 lhs, int2 rhs) => bool2(lhs.x <= rhs.x, lhs.y <= rhs.y);

		/// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
		public static bool2 operator<=(int2 lhs, int rhs) => bool2(lhs.x <= rhs, lhs.y <= rhs);

		/// Returns a bool2 from component-wise application of operator&lt;= (lhs &lt;= rhs).
		public static bool2 operator<=(int lhs, int2 rhs) => bool2(lhs <= rhs.x, lhs <= rhs.y);

		/// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
		public static bool2 operator>(int2 lhs, int2 rhs) => bool2(lhs.x > rhs.x, lhs.y > rhs.y);

		/// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
		public static bool2 operator>(int2 lhs, int rhs) => bool2(lhs.x > rhs, lhs.y > rhs);

		/// Returns a bool2 from component-wise application of operator&gt; (lhs &gt; rhs).
		public static bool2 operator>(int lhs, int2 rhs) => bool2(lhs > rhs.x, lhs > rhs.y);

		/// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
		public static bool2 operator>=(int2 lhs, int2 rhs) => bool2(lhs.x >= rhs.x, lhs.y >= rhs.y);

		/// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
		public static bool2 operator>=(int2 lhs, int rhs) => bool2(lhs.x >= rhs, lhs.y >= rhs);

		/// Returns a bool2 from component-wise application of operator&gt;= (lhs &gt;= rhs).
		public static bool2 operator>=(int lhs, int2 rhs) => bool2(lhs >= rhs.x, lhs >= rhs.y);

		/// Returns a int2 from component-wise application of operator+ (lhs + rhs).
		public static int2 operator+(int2 lhs, int2 rhs) => int2(lhs.x + rhs.x, lhs.y + rhs.y);

		/// Returns a int2 from component-wise application of operator+ (lhs + rhs).
		public static int2 operator+(int2 lhs, int rhs) => int2(lhs.x + rhs, lhs.y + rhs);

		/// Returns a int2 from component-wise application of operator+ (lhs + rhs).
		public static int2 operator+(int lhs, int2 rhs) => int2(lhs + rhs.x, lhs + rhs.y);

		/// Returns a int2 from component-wise application of operator- (lhs - rhs).
		public static int2 operator-(int2 lhs, int2 rhs) => int2(lhs.x - rhs.x, lhs.y - rhs.y);

		/// Returns a int2 from component-wise application of operator- (lhs - rhs).
		public static int2 operator-(int2 lhs, int rhs) => int2(lhs.x - rhs, lhs.y - rhs);

		/// Returns a int2 from component-wise application of operator- (lhs - rhs).
		public static int2 operator-(int lhs, int2 rhs) => int2(lhs - rhs.x, lhs - rhs.y);

		/// Returns a int2 from component-wise application of operator* (lhs * rhs).
		public static int2 operator*(int2 lhs, int2 rhs) => int2(lhs.x * rhs.x, lhs.y * rhs.y);

		/// Returns a int2 from component-wise application of operator* (lhs * rhs).
		public static int2 operator*(int2 lhs, int rhs) => int2(lhs.x * rhs, lhs.y * rhs);

		/// Returns a int2 from component-wise application of operator* (lhs * rhs).
		public static int2 operator*(int lhs, int2 rhs) => int2(lhs * rhs.x, lhs * rhs.y);

		/// Returns a int2 from component-wise application of operator/ (lhs / rhs).
		public static int2 operator/(int2 lhs, int2 rhs) => int2(lhs.x / rhs.x, lhs.y / rhs.y);

		/// Returns a int2 from component-wise application of operator/ (lhs / rhs).
		public static int2 operator/(int2 lhs, int rhs) => int2(lhs.x / rhs, lhs.y / rhs);

		/// Returns a int2 from component-wise application of operator/ (lhs / rhs).
		public static int2 operator/(int lhs, int2 rhs) => int2(lhs / rhs.x, lhs / rhs.y);

		/// Returns a int2 from component-wise application of operator- (-v).
		public static int2 operator-(int2 v) => int2(-v.x, -v.y);

		/// Returns a int2 from component-wise application of operator~ (~v).
		public static int2 operator~(int2 v) => int2(~v.x, ~v.y);

		/// Returns a int2 from component-wise application of operator^ (lhs ^ rhs).
		public static int2 operator^(int2 lhs, int2 rhs) => int2(lhs.x ^ rhs.x, lhs.y ^ rhs.y);

		/// Returns a int2 from component-wise application of operator^ (lhs ^ rhs).
		public static int2 operator^(int2 lhs, int rhs) => int2(lhs.x ^ rhs, lhs.y ^ rhs);

		/// Returns a int2 from component-wise application of operator^ (lhs ^ rhs).
		public static int2 operator^(int lhs, int2 rhs) => int2(lhs ^ rhs.x, lhs ^ rhs.y);

		/// Returns a int2 from component-wise application of operator| (lhs | rhs).
		public static int2 operator|(int2 lhs, int2 rhs) => int2(lhs.x | rhs.x, lhs.y | rhs.y);

		/// Returns a int2 from component-wise application of operator| (lhs | rhs).
		public static int2 operator|(int2 lhs, int rhs) => int2(lhs.x | rhs, lhs.y | rhs);

		/// Returns a int2 from component-wise application of operator| (lhs | rhs).
		public static int2 operator|(int lhs, int2 rhs) => int2(lhs | rhs.x, lhs | rhs.y);

		/// Returns a int2 from component-wise application of operator&amp; (lhs &amp; rhs).
		public static int2 operator&(int2 lhs, int2 rhs) => int2(lhs.x & rhs.x, lhs.y & rhs.y);

		/// Returns a int2 from component-wise application of operator&amp; (lhs &amp; rhs).
		public static int2 operator&(int2 lhs, int rhs) => int2(lhs.x & rhs, lhs.y & rhs);

		/// Returns a int2 from component-wise application of operator&amp; (lhs &amp; rhs).
		public static int2 operator&(int lhs, int2 rhs) => int2(lhs & rhs.x, lhs & rhs.y);

		/// Returns a int2 from component-wise application of operator&lt;&lt; (lhs &lt;&lt; rhs).
		public static int2 operator<<(int2 lhs, int rhs) => int2(lhs.x << rhs, lhs.y << rhs);

		/// Returns a int2 from component-wise application of operator&gt;&gt; (lhs &gt;&gt; rhs).
		public static int2 operator>>(int2 lhs, int rhs) => int2(lhs.x >> rhs, lhs.y >> rhs);

		#endregion

	}
}
