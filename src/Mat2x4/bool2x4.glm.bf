using System;
namespace glm
{
    /// Static class that contains static glm functions
    static
    {
        
        /// Creates a 2D array with all values (address: Values[x, y])
        [Inline]
        public static bool[,] ToArray(bool2x4 m) => m.ToArray();
        
        /// Creates a 1D array with all values (internal order)
        [Inline]
        public static bool[] ToArray1D(bool2x4 m) => m.ToArray1D();

    }
}
