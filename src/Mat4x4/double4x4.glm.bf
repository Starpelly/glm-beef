using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static double[,] ToArray(double4x4 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static double[] ToArray1D(double4x4 m) => m.ToArray1D();
        
        /// Creates a quaternion from the rotational part of this matrix.
        [Inline]
        public static qdouble ToQuaternion(double4x4 m) => m.ToQuaternion;

    }
}
