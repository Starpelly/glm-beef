using System;
namespace glm
{
    
    /// Temporary vector of type int with 2 components, used for implementing swizzling for int2.
    public struct swizzle_int2
    {

        #region Fields
        
        /// x-component
        private readonly int x;
        
        /// y-component
        private readonly int y;

        #endregion


        #region Properties
        
        /// Returns int2.xx swizzling.
        [Inline]
        public int2 xx =>  int2(x, x);
        
        /// Returns int2.rr swizzling (equivalent to int2.xx).
        [Inline]
        public int2 rr =>  int2(x, x);
        
        /// Returns int2.xxx swizzling.
        [Inline]
        public int3 xxx =>  int3(x, x, x);
        
        /// Returns int2.rrr swizzling (equivalent to int2.xxx).
        [Inline]
        public int3 rrr =>  int3(x, x, x);
        
        /// Returns int2.xxxx swizzling.
        [Inline]
        public int4 xxxx =>  int4(x, x, x, x);
        
        /// Returns int2.rrrr swizzling (equivalent to int2.xxxx).
        [Inline]
        public int4 rrrr =>  int4(x, x, x, x);
        
        /// Returns int2.xxxy swizzling.
        [Inline]
        public int4 xxxy =>  int4(x, x, x, y);
        
        /// Returns int2.rrrg swizzling (equivalent to int2.xxxy).
        [Inline]
        public int4 rrrg =>  int4(x, x, x, y);
        
        /// Returns int2.xxy swizzling.
        [Inline]
        public int3 xxy =>  int3(x, x, y);
        
        /// Returns int2.rrg swizzling (equivalent to int2.xxy).
        [Inline]
        public int3 rrg =>  int3(x, x, y);
        
        /// Returns int2.xxyx swizzling.
        [Inline]
        public int4 xxyx =>  int4(x, x, y, x);
        
        /// Returns int2.rrgr swizzling (equivalent to int2.xxyx).
        [Inline]
        public int4 rrgr =>  int4(x, x, y, x);
        
        /// Returns int2.xxyy swizzling.
        [Inline]
        public int4 xxyy =>  int4(x, x, y, y);
        
        /// Returns int2.rrgg swizzling (equivalent to int2.xxyy).
        [Inline]
        public int4 rrgg =>  int4(x, x, y, y);
        
        /// Returns int2.xy swizzling.
        [Inline]
        public int2 xy =>  int2(x, y);
        
        /// Returns int2.rg swizzling (equivalent to int2.xy).
        [Inline]
        public int2 rg =>  int2(x, y);
        
        /// Returns int2.xyx swizzling.
        [Inline]
        public int3 xyx =>  int3(x, y, x);
        
        /// Returns int2.rgr swizzling (equivalent to int2.xyx).
        [Inline]
        public int3 rgr =>  int3(x, y, x);
        
        /// Returns int2.xyxx swizzling.
        [Inline]
        public int4 xyxx =>  int4(x, y, x, x);
        
        /// Returns int2.rgrr swizzling (equivalent to int2.xyxx).
        [Inline]
        public int4 rgrr =>  int4(x, y, x, x);
        
        /// Returns int2.xyxy swizzling.
        [Inline]
        public int4 xyxy =>  int4(x, y, x, y);
        
        /// Returns int2.rgrg swizzling (equivalent to int2.xyxy).
        [Inline]
        public int4 rgrg =>  int4(x, y, x, y);
        
        /// Returns int2.xyy swizzling.
        [Inline]
        public int3 xyy =>  int3(x, y, y);
        
        /// Returns int2.rgg swizzling (equivalent to int2.xyy).
        [Inline]
        public int3 rgg =>  int3(x, y, y);
        
        /// Returns int2.xyyx swizzling.
        [Inline]
        public int4 xyyx =>  int4(x, y, y, x);
        
        /// Returns int2.rggr swizzling (equivalent to int2.xyyx).
        [Inline]
        public int4 rggr =>  int4(x, y, y, x);
        
        /// Returns int2.xyyy swizzling.
        [Inline]
        public int4 xyyy =>  int4(x, y, y, y);
        
        /// Returns int2.rggg swizzling (equivalent to int2.xyyy).
        [Inline]
        public int4 rggg =>  int4(x, y, y, y);
        
        /// Returns int2.yx swizzling.
        [Inline]
        public int2 yx =>  int2(y, x);
        
        /// Returns int2.gr swizzling (equivalent to int2.yx).
        [Inline]
        public int2 gr =>  int2(y, x);
        
        /// Returns int2.yxx swizzling.
        [Inline]
        public int3 yxx =>  int3(y, x, x);
        
        /// Returns int2.grr swizzling (equivalent to int2.yxx).
        [Inline]
        public int3 grr =>  int3(y, x, x);
        
        /// Returns int2.yxxx swizzling.
        [Inline]
        public int4 yxxx =>  int4(y, x, x, x);
        
        /// Returns int2.grrr swizzling (equivalent to int2.yxxx).
        [Inline]
        public int4 grrr =>  int4(y, x, x, x);
        
        /// Returns int2.yxxy swizzling.
        [Inline]
        public int4 yxxy =>  int4(y, x, x, y);
        
        /// Returns int2.grrg swizzling (equivalent to int2.yxxy).
        [Inline]
        public int4 grrg =>  int4(y, x, x, y);
        
        /// Returns int2.yxy swizzling.
        [Inline]
        public int3 yxy =>  int3(y, x, y);
        
        /// Returns int2.grg swizzling (equivalent to int2.yxy).
        [Inline]
        public int3 grg =>  int3(y, x, y);
        
        /// Returns int2.yxyx swizzling.
        [Inline]
        public int4 yxyx =>  int4(y, x, y, x);
        
        /// Returns int2.grgr swizzling (equivalent to int2.yxyx).
        [Inline]
        public int4 grgr =>  int4(y, x, y, x);
        
        /// Returns int2.yxyy swizzling.
        [Inline]
        public int4 yxyy =>  int4(y, x, y, y);
        
        /// Returns int2.grgg swizzling (equivalent to int2.yxyy).
        [Inline]
        public int4 grgg =>  int4(y, x, y, y);
        
        /// Returns int2.yy swizzling.
        [Inline]
        public int2 yy =>  int2(y, y);
        
        /// Returns int2.gg swizzling (equivalent to int2.yy).
        [Inline]
        public int2 gg =>  int2(y, y);
        
        /// Returns int2.yyx swizzling.
        [Inline]
        public int3 yyx =>  int3(y, y, x);
        
        /// Returns int2.ggr swizzling (equivalent to int2.yyx).
        [Inline]
        public int3 ggr =>  int3(y, y, x);
        
        /// Returns int2.yyxx swizzling.
        [Inline]
        public int4 yyxx =>  int4(y, y, x, x);
        
        /// Returns int2.ggrr swizzling (equivalent to int2.yyxx).
        [Inline]
        public int4 ggrr =>  int4(y, y, x, x);
        
        /// Returns int2.yyxy swizzling.
        [Inline]
        public int4 yyxy =>  int4(y, y, x, y);
        
        /// Returns int2.ggrg swizzling (equivalent to int2.yyxy).
        [Inline]
        public int4 ggrg =>  int4(y, y, x, y);
        
        /// Returns int2.yyy swizzling.
        [Inline]
        public int3 yyy =>  int3(y, y, y);
        
        /// Returns int2.ggg swizzling (equivalent to int2.yyy).
        [Inline]
        public int3 ggg =>  int3(y, y, y);
        
        /// Returns int2.yyyx swizzling.
        [Inline]
        public int4 yyyx =>  int4(y, y, y, x);
        
        /// Returns int2.gggr swizzling (equivalent to int2.yyyx).
        [Inline]
        public int4 gggr =>  int4(y, y, y, x);
        
        /// Returns int2.yyyy swizzling.
        [Inline]
        public int4 yyyy =>  int4(y, y, y, y);
        
        /// Returns int2.gggg swizzling (equivalent to int2.yyyy).
        [Inline]
        public int4 gggg =>  int4(y, y, y, y);

        #endregion

    }
}
