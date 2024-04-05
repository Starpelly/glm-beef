using System;
namespace glm
{
    
    /// Temporary vector of type uint with 2 components, used for implementing swizzling for uint2.
    public struct swizzle_uint2
    {

        #region Fields
        
        /// x-component
        private readonly uint x;
        
        /// y-component
        private readonly uint y;

        #endregion


        #region Properties
        
        /// Returns uint2.xx swizzling.
        [Inline]
        public uint2 xx =>  uint2(x, x);
        
        /// Returns uint2.rr swizzling (equivalent to uint2.xx).
        [Inline]
        public uint2 rr =>  uint2(x, x);
        
        /// Returns uint2.xxx swizzling.
        [Inline]
        public uint3 xxx =>  uint3(x, x, x);
        
        /// Returns uint2.rrr swizzling (equivalent to uint2.xxx).
        [Inline]
        public uint3 rrr =>  uint3(x, x, x);
        
        /// Returns uint2.xxxx swizzling.
        [Inline]
        public uint4 xxxx =>  uint4(x, x, x, x);
        
        /// Returns uint2.rrrr swizzling (equivalent to uint2.xxxx).
        [Inline]
        public uint4 rrrr =>  uint4(x, x, x, x);
        
        /// Returns uint2.xxxy swizzling.
        [Inline]
        public uint4 xxxy =>  uint4(x, x, x, y);
        
        /// Returns uint2.rrrg swizzling (equivalent to uint2.xxxy).
        [Inline]
        public uint4 rrrg =>  uint4(x, x, x, y);
        
        /// Returns uint2.xxy swizzling.
        [Inline]
        public uint3 xxy =>  uint3(x, x, y);
        
        /// Returns uint2.rrg swizzling (equivalent to uint2.xxy).
        [Inline]
        public uint3 rrg =>  uint3(x, x, y);
        
        /// Returns uint2.xxyx swizzling.
        [Inline]
        public uint4 xxyx =>  uint4(x, x, y, x);
        
        /// Returns uint2.rrgr swizzling (equivalent to uint2.xxyx).
        [Inline]
        public uint4 rrgr =>  uint4(x, x, y, x);
        
        /// Returns uint2.xxyy swizzling.
        [Inline]
        public uint4 xxyy =>  uint4(x, x, y, y);
        
        /// Returns uint2.rrgg swizzling (equivalent to uint2.xxyy).
        [Inline]
        public uint4 rrgg =>  uint4(x, x, y, y);
        
        /// Returns uint2.xy swizzling.
        [Inline]
        public uint2 xy =>  uint2(x, y);
        
        /// Returns uint2.rg swizzling (equivalent to uint2.xy).
        [Inline]
        public uint2 rg =>  uint2(x, y);
        
        /// Returns uint2.xyx swizzling.
        [Inline]
        public uint3 xyx =>  uint3(x, y, x);
        
        /// Returns uint2.rgr swizzling (equivalent to uint2.xyx).
        [Inline]
        public uint3 rgr =>  uint3(x, y, x);
        
        /// Returns uint2.xyxx swizzling.
        [Inline]
        public uint4 xyxx =>  uint4(x, y, x, x);
        
        /// Returns uint2.rgrr swizzling (equivalent to uint2.xyxx).
        [Inline]
        public uint4 rgrr =>  uint4(x, y, x, x);
        
        /// Returns uint2.xyxy swizzling.
        [Inline]
        public uint4 xyxy =>  uint4(x, y, x, y);
        
        /// Returns uint2.rgrg swizzling (equivalent to uint2.xyxy).
        [Inline]
        public uint4 rgrg =>  uint4(x, y, x, y);
        
        /// Returns uint2.xyy swizzling.
        [Inline]
        public uint3 xyy =>  uint3(x, y, y);
        
        /// Returns uint2.rgg swizzling (equivalent to uint2.xyy).
        [Inline]
        public uint3 rgg =>  uint3(x, y, y);
        
        /// Returns uint2.xyyx swizzling.
        [Inline]
        public uint4 xyyx =>  uint4(x, y, y, x);
        
        /// Returns uint2.rggr swizzling (equivalent to uint2.xyyx).
        [Inline]
        public uint4 rggr =>  uint4(x, y, y, x);
        
        /// Returns uint2.xyyy swizzling.
        [Inline]
        public uint4 xyyy =>  uint4(x, y, y, y);
        
        /// Returns uint2.rggg swizzling (equivalent to uint2.xyyy).
        [Inline]
        public uint4 rggg =>  uint4(x, y, y, y);
        
        /// Returns uint2.yx swizzling.
        [Inline]
        public uint2 yx =>  uint2(y, x);
        
        /// Returns uint2.gr swizzling (equivalent to uint2.yx).
        [Inline]
        public uint2 gr =>  uint2(y, x);
        
        /// Returns uint2.yxx swizzling.
        [Inline]
        public uint3 yxx =>  uint3(y, x, x);
        
        /// Returns uint2.grr swizzling (equivalent to uint2.yxx).
        [Inline]
        public uint3 grr =>  uint3(y, x, x);
        
        /// Returns uint2.yxxx swizzling.
        [Inline]
        public uint4 yxxx =>  uint4(y, x, x, x);
        
        /// Returns uint2.grrr swizzling (equivalent to uint2.yxxx).
        [Inline]
        public uint4 grrr =>  uint4(y, x, x, x);
        
        /// Returns uint2.yxxy swizzling.
        [Inline]
        public uint4 yxxy =>  uint4(y, x, x, y);
        
        /// Returns uint2.grrg swizzling (equivalent to uint2.yxxy).
        [Inline]
        public uint4 grrg =>  uint4(y, x, x, y);
        
        /// Returns uint2.yxy swizzling.
        [Inline]
        public uint3 yxy =>  uint3(y, x, y);
        
        /// Returns uint2.grg swizzling (equivalent to uint2.yxy).
        [Inline]
        public uint3 grg =>  uint3(y, x, y);
        
        /// Returns uint2.yxyx swizzling.
        [Inline]
        public uint4 yxyx =>  uint4(y, x, y, x);
        
        /// Returns uint2.grgr swizzling (equivalent to uint2.yxyx).
        [Inline]
        public uint4 grgr =>  uint4(y, x, y, x);
        
        /// Returns uint2.yxyy swizzling.
        [Inline]
        public uint4 yxyy =>  uint4(y, x, y, y);
        
        /// Returns uint2.grgg swizzling (equivalent to uint2.yxyy).
        [Inline]
        public uint4 grgg =>  uint4(y, x, y, y);
        
        /// Returns uint2.yy swizzling.
        [Inline]
        public uint2 yy =>  uint2(y, y);
        
        /// Returns uint2.gg swizzling (equivalent to uint2.yy).
        [Inline]
        public uint2 gg =>  uint2(y, y);
        
        /// Returns uint2.yyx swizzling.
        [Inline]
        public uint3 yyx =>  uint3(y, y, x);
        
        /// Returns uint2.ggr swizzling (equivalent to uint2.yyx).
        [Inline]
        public uint3 ggr =>  uint3(y, y, x);
        
        /// Returns uint2.yyxx swizzling.
        [Inline]
        public uint4 yyxx =>  uint4(y, y, x, x);
        
        /// Returns uint2.ggrr swizzling (equivalent to uint2.yyxx).
        [Inline]
        public uint4 ggrr =>  uint4(y, y, x, x);
        
        /// Returns uint2.yyxy swizzling.
        [Inline]
        public uint4 yyxy =>  uint4(y, y, x, y);
        
        /// Returns uint2.ggrg swizzling (equivalent to uint2.yyxy).
        [Inline]
        public uint4 ggrg =>  uint4(y, y, x, y);
        
        /// Returns uint2.yyy swizzling.
        [Inline]
        public uint3 yyy =>  uint3(y, y, y);
        
        /// Returns uint2.ggg swizzling (equivalent to uint2.yyy).
        [Inline]
        public uint3 ggg =>  uint3(y, y, y);
        
        /// Returns uint2.yyyx swizzling.
        [Inline]
        public uint4 yyyx =>  uint4(y, y, y, x);
        
        /// Returns uint2.gggr swizzling (equivalent to uint2.yyyx).
        [Inline]
        public uint4 gggr =>  uint4(y, y, y, x);
        
        /// Returns uint2.yyyy swizzling.
        [Inline]
        public uint4 yyyy =>  uint4(y, y, y, y);
        
        /// Returns uint2.gggg swizzling (equivalent to uint2.yyyy).
        [Inline]
        public uint4 gggg =>  uint4(y, y, y, y);

        #endregion

    }
}
