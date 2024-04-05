using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static uint[,] ToArray(uint4x2 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static uint[] ToArray1D(uint4x2 m) => m.ToArray1D();

    }
}
