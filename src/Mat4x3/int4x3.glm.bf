using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static int[,] ToArray(int4x3 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static int[] ToArray1D(int4x3 m) => m.ToArray1D();

    }
}
