using System;
namespace glm
{
    
    /// Temporary vector of type bool with 2 components, used for implementing swizzling for bool2.
    public struct swizzle_bool2
    {

        //#region Fields
        
        /// x-component
        private readonly bool x;
        
        /// y-component
        private readonly bool y;

        //#endregion


        //#region Properties
        
        /// Returns bool2.xx swizzling.
        [Inline]
        public bool2 xx =>  bool2(x, x);
        
        /// Returns bool2.rr swizzling (equivalent to bool2.xx).
        [Inline]
        public bool2 rr =>  bool2(x, x);
        
        /// Returns bool2.xxx swizzling.
        [Inline]
        public bool3 xxx =>  bool3(x, x, x);
        
        /// Returns bool2.rrr swizzling (equivalent to bool2.xxx).
        [Inline]
        public bool3 rrr =>  bool3(x, x, x);
        
        /// Returns bool2.xxxx swizzling.
        [Inline]
        public bool4 xxxx =>  bool4(x, x, x, x);
        
        /// Returns bool2.rrrr swizzling (equivalent to bool2.xxxx).
        [Inline]
        public bool4 rrrr =>  bool4(x, x, x, x);
        
        /// Returns bool2.xxxy swizzling.
        [Inline]
        public bool4 xxxy =>  bool4(x, x, x, y);
        
        /// Returns bool2.rrrg swizzling (equivalent to bool2.xxxy).
        [Inline]
        public bool4 rrrg =>  bool4(x, x, x, y);
        
        /// Returns bool2.xxy swizzling.
        [Inline]
        public bool3 xxy =>  bool3(x, x, y);
        
        /// Returns bool2.rrg swizzling (equivalent to bool2.xxy).
        [Inline]
        public bool3 rrg =>  bool3(x, x, y);
        
        /// Returns bool2.xxyx swizzling.
        [Inline]
        public bool4 xxyx =>  bool4(x, x, y, x);
        
        /// Returns bool2.rrgr swizzling (equivalent to bool2.xxyx).
        [Inline]
        public bool4 rrgr =>  bool4(x, x, y, x);
        
        /// Returns bool2.xxyy swizzling.
        [Inline]
        public bool4 xxyy =>  bool4(x, x, y, y);
        
        /// Returns bool2.rrgg swizzling (equivalent to bool2.xxyy).
        [Inline]
        public bool4 rrgg =>  bool4(x, x, y, y);
        
        /// Returns bool2.xy swizzling.
        [Inline]
        public bool2 xy =>  bool2(x, y);
        
        /// Returns bool2.rg swizzling (equivalent to bool2.xy).
        [Inline]
        public bool2 rg =>  bool2(x, y);
        
        /// Returns bool2.xyx swizzling.
        [Inline]
        public bool3 xyx =>  bool3(x, y, x);
        
        /// Returns bool2.rgr swizzling (equivalent to bool2.xyx).
        [Inline]
        public bool3 rgr =>  bool3(x, y, x);
        
        /// Returns bool2.xyxx swizzling.
        [Inline]
        public bool4 xyxx =>  bool4(x, y, x, x);
        
        /// Returns bool2.rgrr swizzling (equivalent to bool2.xyxx).
        [Inline]
        public bool4 rgrr =>  bool4(x, y, x, x);
        
        /// Returns bool2.xyxy swizzling.
        [Inline]
        public bool4 xyxy =>  bool4(x, y, x, y);
        
        /// Returns bool2.rgrg swizzling (equivalent to bool2.xyxy).
        [Inline]
        public bool4 rgrg =>  bool4(x, y, x, y);
        
        /// Returns bool2.xyy swizzling.
        [Inline]
        public bool3 xyy =>  bool3(x, y, y);
        
        /// Returns bool2.rgg swizzling (equivalent to bool2.xyy).
        [Inline]
        public bool3 rgg =>  bool3(x, y, y);
        
        /// Returns bool2.xyyx swizzling.
        [Inline]
        public bool4 xyyx =>  bool4(x, y, y, x);
        
        /// Returns bool2.rggr swizzling (equivalent to bool2.xyyx).
        [Inline]
        public bool4 rggr =>  bool4(x, y, y, x);
        
        /// Returns bool2.xyyy swizzling.
        [Inline]
        public bool4 xyyy =>  bool4(x, y, y, y);
        
        /// Returns bool2.rggg swizzling (equivalent to bool2.xyyy).
        [Inline]
        public bool4 rggg =>  bool4(x, y, y, y);
        
        /// Returns bool2.yx swizzling.
        [Inline]
        public bool2 yx =>  bool2(y, x);
        
        /// Returns bool2.gr swizzling (equivalent to bool2.yx).
        [Inline]
        public bool2 gr =>  bool2(y, x);
        
        /// Returns bool2.yxx swizzling.
        [Inline]
        public bool3 yxx =>  bool3(y, x, x);
        
        /// Returns bool2.grr swizzling (equivalent to bool2.yxx).
        [Inline]
        public bool3 grr =>  bool3(y, x, x);
        
        /// Returns bool2.yxxx swizzling.
        [Inline]
        public bool4 yxxx =>  bool4(y, x, x, x);
        
        /// Returns bool2.grrr swizzling (equivalent to bool2.yxxx).
        [Inline]
        public bool4 grrr =>  bool4(y, x, x, x);
        
        /// Returns bool2.yxxy swizzling.
        [Inline]
        public bool4 yxxy =>  bool4(y, x, x, y);
        
        /// Returns bool2.grrg swizzling (equivalent to bool2.yxxy).
        [Inline]
        public bool4 grrg =>  bool4(y, x, x, y);
        
        /// Returns bool2.yxy swizzling.
        [Inline]
        public bool3 yxy =>  bool3(y, x, y);
        
        /// Returns bool2.grg swizzling (equivalent to bool2.yxy).
        [Inline]
        public bool3 grg =>  bool3(y, x, y);
        
        /// Returns bool2.yxyx swizzling.
        [Inline]
        public bool4 yxyx =>  bool4(y, x, y, x);
        
        /// Returns bool2.grgr swizzling (equivalent to bool2.yxyx).
        [Inline]
        public bool4 grgr =>  bool4(y, x, y, x);
        
        /// Returns bool2.yxyy swizzling.
        [Inline]
        public bool4 yxyy =>  bool4(y, x, y, y);
        
        /// Returns bool2.grgg swizzling (equivalent to bool2.yxyy).
        [Inline]
        public bool4 grgg =>  bool4(y, x, y, y);
        
        /// Returns bool2.yy swizzling.
        [Inline]
        public bool2 yy =>  bool2(y, y);
        
        /// Returns bool2.gg swizzling (equivalent to bool2.yy).
        [Inline]
        public bool2 gg =>  bool2(y, y);
        
        /// Returns bool2.yyx swizzling.
        [Inline]
        public bool3 yyx =>  bool3(y, y, x);
        
        /// Returns bool2.ggr swizzling (equivalent to bool2.yyx).
        [Inline]
        public bool3 ggr =>  bool3(y, y, x);
        
        /// Returns bool2.yyxx swizzling.
        [Inline]
        public bool4 yyxx =>  bool4(y, y, x, x);
        
        /// Returns bool2.ggrr swizzling (equivalent to bool2.yyxx).
        [Inline]
        public bool4 ggrr =>  bool4(y, y, x, x);
        
        /// Returns bool2.yyxy swizzling.
        [Inline]
        public bool4 yyxy =>  bool4(y, y, x, y);
        
        /// Returns bool2.ggrg swizzling (equivalent to bool2.yyxy).
        [Inline]
        public bool4 ggrg =>  bool4(y, y, x, y);
        
        /// Returns bool2.yyy swizzling.
        [Inline]
        public bool3 yyy =>  bool3(y, y, y);
        
        /// Returns bool2.ggg swizzling (equivalent to bool2.yyy).
        [Inline]
        public bool3 ggg =>  bool3(y, y, y);
        
        /// Returns bool2.yyyx swizzling.
        [Inline]
        public bool4 yyyx =>  bool4(y, y, y, x);
        
        /// Returns bool2.gggr swizzling (equivalent to bool2.yyyx).
        [Inline]
        public bool4 gggr =>  bool4(y, y, y, x);
        
        /// Returns bool2.yyyy swizzling.
        [Inline]
        public bool4 yyyy =>  bool4(y, y, y, y);
        
        /// Returns bool2.gggg swizzling (equivalent to bool2.yyyy).
        [Inline]
        public bool4 gggg =>  bool4(y, y, y, y);

        //#endregion

    }
}
