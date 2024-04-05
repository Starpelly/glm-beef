using System;
namespace glm
{
    
    /// Temporary vector of type double with 2 components, used for implementing swizzling for double2.
    public struct swizzle_double2
    {

        #region Fields
        
        /// x-component
        private readonly double x;
        
        /// y-component
        private readonly double y;

        #endregion


        #region Properties
        
        /// Returns double2.xx swizzling.
        [Inline]
        public double2 xx =>  double2(x, x);
        
        /// Returns double2.rr swizzling (equivalent to double2.xx).
        [Inline]
        public double2 rr =>  double2(x, x);
        
        /// Returns double2.xxx swizzling.
        [Inline]
        public double3 xxx =>  double3(x, x, x);
        
        /// Returns double2.rrr swizzling (equivalent to double2.xxx).
        [Inline]
        public double3 rrr =>  double3(x, x, x);
        
        /// Returns double2.xxxx swizzling.
        [Inline]
        public double4 xxxx =>  double4(x, x, x, x);
        
        /// Returns double2.rrrr swizzling (equivalent to double2.xxxx).
        [Inline]
        public double4 rrrr =>  double4(x, x, x, x);
        
        /// Returns double2.xxxy swizzling.
        [Inline]
        public double4 xxxy =>  double4(x, x, x, y);
        
        /// Returns double2.rrrg swizzling (equivalent to double2.xxxy).
        [Inline]
        public double4 rrrg =>  double4(x, x, x, y);
        
        /// Returns double2.xxy swizzling.
        [Inline]
        public double3 xxy =>  double3(x, x, y);
        
        /// Returns double2.rrg swizzling (equivalent to double2.xxy).
        [Inline]
        public double3 rrg =>  double3(x, x, y);
        
        /// Returns double2.xxyx swizzling.
        [Inline]
        public double4 xxyx =>  double4(x, x, y, x);
        
        /// Returns double2.rrgr swizzling (equivalent to double2.xxyx).
        [Inline]
        public double4 rrgr =>  double4(x, x, y, x);
        
        /// Returns double2.xxyy swizzling.
        [Inline]
        public double4 xxyy =>  double4(x, x, y, y);
        
        /// Returns double2.rrgg swizzling (equivalent to double2.xxyy).
        [Inline]
        public double4 rrgg =>  double4(x, x, y, y);
        
        /// Returns double2.xy swizzling.
        [Inline]
        public double2 xy =>  double2(x, y);
        
        /// Returns double2.rg swizzling (equivalent to double2.xy).
        [Inline]
        public double2 rg =>  double2(x, y);
        
        /// Returns double2.xyx swizzling.
        [Inline]
        public double3 xyx =>  double3(x, y, x);
        
        /// Returns double2.rgr swizzling (equivalent to double2.xyx).
        [Inline]
        public double3 rgr =>  double3(x, y, x);
        
        /// Returns double2.xyxx swizzling.
        [Inline]
        public double4 xyxx =>  double4(x, y, x, x);
        
        /// Returns double2.rgrr swizzling (equivalent to double2.xyxx).
        [Inline]
        public double4 rgrr =>  double4(x, y, x, x);
        
        /// Returns double2.xyxy swizzling.
        [Inline]
        public double4 xyxy =>  double4(x, y, x, y);
        
        /// Returns double2.rgrg swizzling (equivalent to double2.xyxy).
        [Inline]
        public double4 rgrg =>  double4(x, y, x, y);
        
        /// Returns double2.xyy swizzling.
        [Inline]
        public double3 xyy =>  double3(x, y, y);
        
        /// Returns double2.rgg swizzling (equivalent to double2.xyy).
        [Inline]
        public double3 rgg =>  double3(x, y, y);
        
        /// Returns double2.xyyx swizzling.
        [Inline]
        public double4 xyyx =>  double4(x, y, y, x);
        
        /// Returns double2.rggr swizzling (equivalent to double2.xyyx).
        [Inline]
        public double4 rggr =>  double4(x, y, y, x);
        
        /// Returns double2.xyyy swizzling.
        [Inline]
        public double4 xyyy =>  double4(x, y, y, y);
        
        /// Returns double2.rggg swizzling (equivalent to double2.xyyy).
        [Inline]
        public double4 rggg =>  double4(x, y, y, y);
        
        /// Returns double2.yx swizzling.
        [Inline]
        public double2 yx =>  double2(y, x);
        
        /// Returns double2.gr swizzling (equivalent to double2.yx).
        [Inline]
        public double2 gr =>  double2(y, x);
        
        /// Returns double2.yxx swizzling.
        [Inline]
        public double3 yxx =>  double3(y, x, x);
        
        /// Returns double2.grr swizzling (equivalent to double2.yxx).
        [Inline]
        public double3 grr =>  double3(y, x, x);
        
        /// Returns double2.yxxx swizzling.
        [Inline]
        public double4 yxxx =>  double4(y, x, x, x);
        
        /// Returns double2.grrr swizzling (equivalent to double2.yxxx).
        [Inline]
        public double4 grrr =>  double4(y, x, x, x);
        
        /// Returns double2.yxxy swizzling.
        [Inline]
        public double4 yxxy =>  double4(y, x, x, y);
        
        /// Returns double2.grrg swizzling (equivalent to double2.yxxy).
        [Inline]
        public double4 grrg =>  double4(y, x, x, y);
        
        /// Returns double2.yxy swizzling.
        [Inline]
        public double3 yxy =>  double3(y, x, y);
        
        /// Returns double2.grg swizzling (equivalent to double2.yxy).
        [Inline]
        public double3 grg =>  double3(y, x, y);
        
        /// Returns double2.yxyx swizzling.
        [Inline]
        public double4 yxyx =>  double4(y, x, y, x);
        
        /// Returns double2.grgr swizzling (equivalent to double2.yxyx).
        [Inline]
        public double4 grgr =>  double4(y, x, y, x);
        
        /// Returns double2.yxyy swizzling.
        [Inline]
        public double4 yxyy =>  double4(y, x, y, y);
        
        /// Returns double2.grgg swizzling (equivalent to double2.yxyy).
        [Inline]
        public double4 grgg =>  double4(y, x, y, y);
        
        /// Returns double2.yy swizzling.
        [Inline]
        public double2 yy =>  double2(y, y);
        
        /// Returns double2.gg swizzling (equivalent to double2.yy).
        [Inline]
        public double2 gg =>  double2(y, y);
        
        /// Returns double2.yyx swizzling.
        [Inline]
        public double3 yyx =>  double3(y, y, x);
        
        /// Returns double2.ggr swizzling (equivalent to double2.yyx).
        [Inline]
        public double3 ggr =>  double3(y, y, x);
        
        /// Returns double2.yyxx swizzling.
        [Inline]
        public double4 yyxx =>  double4(y, y, x, x);
        
        /// Returns double2.ggrr swizzling (equivalent to double2.yyxx).
        [Inline]
        public double4 ggrr =>  double4(y, y, x, x);
        
        /// Returns double2.yyxy swizzling.
        [Inline]
        public double4 yyxy =>  double4(y, y, x, y);
        
        /// Returns double2.ggrg swizzling (equivalent to double2.yyxy).
        [Inline]
        public double4 ggrg =>  double4(y, y, x, y);
        
        /// Returns double2.yyy swizzling.
        [Inline]
        public double3 yyy =>  double3(y, y, y);
        
        /// Returns double2.ggg swizzling (equivalent to double2.yyy).
        [Inline]
        public double3 ggg =>  double3(y, y, y);
        
        /// Returns double2.yyyx swizzling.
        [Inline]
        public double4 yyyx =>  double4(y, y, y, x);
        
        /// Returns double2.gggr swizzling (equivalent to double2.yyyx).
        [Inline]
        public double4 gggr =>  double4(y, y, y, x);
        
        /// Returns double2.yyyy swizzling.
        [Inline]
        public double4 yyyy =>  double4(y, y, y, y);
        
        /// Returns double2.gggg swizzling (equivalent to double2.yyyy).
        [Inline]
        public double4 gggg =>  double4(y, y, y, y);

        #endregion

    }
}
