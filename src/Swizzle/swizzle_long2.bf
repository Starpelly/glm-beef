using System;
namespace glm
{
    
    /// Temporary vector of type long with 2 components, used for implementing swizzling for long2.
    public struct swizzle_long2
    {

        #region Fields
        
        /// x-component
        private readonly long x;
        
        /// y-component
        private readonly long y;

        #endregion


        #region Properties
        
        /// Returns long2.xx swizzling.
        [Inline]
        public long2 xx =>  long2(x, x);
        
        /// Returns long2.rr swizzling (equivalent to long2.xx).
        [Inline]
        public long2 rr =>  long2(x, x);
        
        /// Returns long2.xxx swizzling.
        [Inline]
        public long3 xxx =>  long3(x, x, x);
        
        /// Returns long2.rrr swizzling (equivalent to long2.xxx).
        [Inline]
        public long3 rrr =>  long3(x, x, x);
        
        /// Returns long2.xxxx swizzling.
        [Inline]
        public long4 xxxx =>  long4(x, x, x, x);
        
        /// Returns long2.rrrr swizzling (equivalent to long2.xxxx).
        [Inline]
        public long4 rrrr =>  long4(x, x, x, x);
        
        /// Returns long2.xxxy swizzling.
        [Inline]
        public long4 xxxy =>  long4(x, x, x, y);
        
        /// Returns long2.rrrg swizzling (equivalent to long2.xxxy).
        [Inline]
        public long4 rrrg =>  long4(x, x, x, y);
        
        /// Returns long2.xxy swizzling.
        [Inline]
        public long3 xxy =>  long3(x, x, y);
        
        /// Returns long2.rrg swizzling (equivalent to long2.xxy).
        [Inline]
        public long3 rrg =>  long3(x, x, y);
        
        /// Returns long2.xxyx swizzling.
        [Inline]
        public long4 xxyx =>  long4(x, x, y, x);
        
        /// Returns long2.rrgr swizzling (equivalent to long2.xxyx).
        [Inline]
        public long4 rrgr =>  long4(x, x, y, x);
        
        /// Returns long2.xxyy swizzling.
        [Inline]
        public long4 xxyy =>  long4(x, x, y, y);
        
        /// Returns long2.rrgg swizzling (equivalent to long2.xxyy).
        [Inline]
        public long4 rrgg =>  long4(x, x, y, y);
        
        /// Returns long2.xy swizzling.
        [Inline]
        public long2 xy =>  long2(x, y);
        
        /// Returns long2.rg swizzling (equivalent to long2.xy).
        [Inline]
        public long2 rg =>  long2(x, y);
        
        /// Returns long2.xyx swizzling.
        [Inline]
        public long3 xyx =>  long3(x, y, x);
        
        /// Returns long2.rgr swizzling (equivalent to long2.xyx).
        [Inline]
        public long3 rgr =>  long3(x, y, x);
        
        /// Returns long2.xyxx swizzling.
        [Inline]
        public long4 xyxx =>  long4(x, y, x, x);
        
        /// Returns long2.rgrr swizzling (equivalent to long2.xyxx).
        [Inline]
        public long4 rgrr =>  long4(x, y, x, x);
        
        /// Returns long2.xyxy swizzling.
        [Inline]
        public long4 xyxy =>  long4(x, y, x, y);
        
        /// Returns long2.rgrg swizzling (equivalent to long2.xyxy).
        [Inline]
        public long4 rgrg =>  long4(x, y, x, y);
        
        /// Returns long2.xyy swizzling.
        [Inline]
        public long3 xyy =>  long3(x, y, y);
        
        /// Returns long2.rgg swizzling (equivalent to long2.xyy).
        [Inline]
        public long3 rgg =>  long3(x, y, y);
        
        /// Returns long2.xyyx swizzling.
        [Inline]
        public long4 xyyx =>  long4(x, y, y, x);
        
        /// Returns long2.rggr swizzling (equivalent to long2.xyyx).
        [Inline]
        public long4 rggr =>  long4(x, y, y, x);
        
        /// Returns long2.xyyy swizzling.
        [Inline]
        public long4 xyyy =>  long4(x, y, y, y);
        
        /// Returns long2.rggg swizzling (equivalent to long2.xyyy).
        [Inline]
        public long4 rggg =>  long4(x, y, y, y);
        
        /// Returns long2.yx swizzling.
        [Inline]
        public long2 yx =>  long2(y, x);
        
        /// Returns long2.gr swizzling (equivalent to long2.yx).
        [Inline]
        public long2 gr =>  long2(y, x);
        
        /// Returns long2.yxx swizzling.
        [Inline]
        public long3 yxx =>  long3(y, x, x);
        
        /// Returns long2.grr swizzling (equivalent to long2.yxx).
        [Inline]
        public long3 grr =>  long3(y, x, x);
        
        /// Returns long2.yxxx swizzling.
        [Inline]
        public long4 yxxx =>  long4(y, x, x, x);
        
        /// Returns long2.grrr swizzling (equivalent to long2.yxxx).
        [Inline]
        public long4 grrr =>  long4(y, x, x, x);
        
        /// Returns long2.yxxy swizzling.
        [Inline]
        public long4 yxxy =>  long4(y, x, x, y);
        
        /// Returns long2.grrg swizzling (equivalent to long2.yxxy).
        [Inline]
        public long4 grrg =>  long4(y, x, x, y);
        
        /// Returns long2.yxy swizzling.
        [Inline]
        public long3 yxy =>  long3(y, x, y);
        
        /// Returns long2.grg swizzling (equivalent to long2.yxy).
        [Inline]
        public long3 grg =>  long3(y, x, y);
        
        /// Returns long2.yxyx swizzling.
        [Inline]
        public long4 yxyx =>  long4(y, x, y, x);
        
        /// Returns long2.grgr swizzling (equivalent to long2.yxyx).
        [Inline]
        public long4 grgr =>  long4(y, x, y, x);
        
        /// Returns long2.yxyy swizzling.
        [Inline]
        public long4 yxyy =>  long4(y, x, y, y);
        
        /// Returns long2.grgg swizzling (equivalent to long2.yxyy).
        [Inline]
        public long4 grgg =>  long4(y, x, y, y);
        
        /// Returns long2.yy swizzling.
        [Inline]
        public long2 yy =>  long2(y, y);
        
        /// Returns long2.gg swizzling (equivalent to long2.yy).
        [Inline]
        public long2 gg =>  long2(y, y);
        
        /// Returns long2.yyx swizzling.
        [Inline]
        public long3 yyx =>  long3(y, y, x);
        
        /// Returns long2.ggr swizzling (equivalent to long2.yyx).
        [Inline]
        public long3 ggr =>  long3(y, y, x);
        
        /// Returns long2.yyxx swizzling.
        [Inline]
        public long4 yyxx =>  long4(y, y, x, x);
        
        /// Returns long2.ggrr swizzling (equivalent to long2.yyxx).
        [Inline]
        public long4 ggrr =>  long4(y, y, x, x);
        
        /// Returns long2.yyxy swizzling.
        [Inline]
        public long4 yyxy =>  long4(y, y, x, y);
        
        /// Returns long2.ggrg swizzling (equivalent to long2.yyxy).
        [Inline]
        public long4 ggrg =>  long4(y, y, x, y);
        
        /// Returns long2.yyy swizzling.
        [Inline]
        public long3 yyy =>  long3(y, y, y);
        
        /// Returns long2.ggg swizzling (equivalent to long2.yyy).
        [Inline]
        public long3 ggg =>  long3(y, y, y);
        
        /// Returns long2.yyyx swizzling.
        [Inline]
        public long4 yyyx =>  long4(y, y, y, x);
        
        /// Returns long2.gggr swizzling (equivalent to long2.yyyx).
        [Inline]
        public long4 gggr =>  long4(y, y, y, x);
        
        /// Returns long2.yyyy swizzling.
        [Inline]
        public long4 yyyy =>  long4(y, y, y, y);
        
        /// Returns long2.gggg swizzling (equivalent to long2.yyyy).
        [Inline]
        public long4 gggg =>  long4(y, y, y, y);

        #endregion

    }
}
