using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static float[,] ToArray(float3x3 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static float[] ToArray1D(float3x3 m) => m.ToArray1D();
        
        /// Creates a quaternion from the rotational part of this matrix.
        [Inline]
        public static qfloat ToQuaternion(float3x3 m) => m.ToQuaternion;

    }
}