using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static long[,] ToArray(long4x4 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static long[] ToArray1D(long4x4 m) => m.ToArray1D();

    }
}
