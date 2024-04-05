using System;
namespace glm
{
    
    /// Temporary vector of type bool with 3 components, used for implementing swizzling for bool3.
    public struct swizzle_bool3
    {

        #region Fields
        
        /// x-component
        private readonly bool x;
        
        /// y-component
        private readonly bool y;
        
        /// z-component
        private readonly bool z;

        #endregion


        #region Properties
        
        /// Returns bool3.xx swizzling.
        [Inline]
        public bool2 xx =>  bool2(x, x);
        
        /// Returns bool3.rr swizzling (equivalent to bool3.xx).
        [Inline]
        public bool2 rr =>  bool2(x, x);
        
        /// Returns bool3.xxx swizzling.
        [Inline]
        public bool3 xxx =>  bool3(x, x, x);
        
        /// Returns bool3.rrr swizzling (equivalent to bool3.xxx).
        [Inline]
        public bool3 rrr =>  bool3(x, x, x);
        
        /// Returns bool3.xxxx swizzling.
        [Inline]
        public bool4 xxxx =>  bool4(x, x, x, x);
        
        /// Returns bool3.rrrr swizzling (equivalent to bool3.xxxx).
        [Inline]
        public bool4 rrrr =>  bool4(x, x, x, x);
        
        /// Returns bool3.xxxy swizzling.
        [Inline]
        public bool4 xxxy =>  bool4(x, x, x, y);
        
        /// Returns bool3.rrrg swizzling (equivalent to bool3.xxxy).
        [Inline]
        public bool4 rrrg =>  bool4(x, x, x, y);
        
        /// Returns bool3.xxxz swizzling.
        [Inline]
        public bool4 xxxz =>  bool4(x, x, x, z);
        
        /// Returns bool3.rrrb swizzling (equivalent to bool3.xxxz).
        [Inline]
        public bool4 rrrb =>  bool4(x, x, x, z);
        
        /// Returns bool3.xxy swizzling.
        [Inline]
        public bool3 xxy =>  bool3(x, x, y);
        
        /// Returns bool3.rrg swizzling (equivalent to bool3.xxy).
        [Inline]
        public bool3 rrg =>  bool3(x, x, y);
        
        /// Returns bool3.xxyx swizzling.
        [Inline]
        public bool4 xxyx =>  bool4(x, x, y, x);
        
        /// Returns bool3.rrgr swizzling (equivalent to bool3.xxyx).
        [Inline]
        public bool4 rrgr =>  bool4(x, x, y, x);
        
        /// Returns bool3.xxyy swizzling.
        [Inline]
        public bool4 xxyy =>  bool4(x, x, y, y);
        
        /// Returns bool3.rrgg swizzling (equivalent to bool3.xxyy).
        [Inline]
        public bool4 rrgg =>  bool4(x, x, y, y);
        
        /// Returns bool3.xxyz swizzling.
        [Inline]
        public bool4 xxyz =>  bool4(x, x, y, z);
        
        /// Returns bool3.rrgb swizzling (equivalent to bool3.xxyz).
        [Inline]
        public bool4 rrgb =>  bool4(x, x, y, z);
        
        /// Returns bool3.xxz swizzling.
        [Inline]
        public bool3 xxz =>  bool3(x, x, z);
        
        /// Returns bool3.rrb swizzling (equivalent to bool3.xxz).
        [Inline]
        public bool3 rrb =>  bool3(x, x, z);
        
        /// Returns bool3.xxzx swizzling.
        [Inline]
        public bool4 xxzx =>  bool4(x, x, z, x);
        
        /// Returns bool3.rrbr swizzling (equivalent to bool3.xxzx).
        [Inline]
        public bool4 rrbr =>  bool4(x, x, z, x);
        
        /// Returns bool3.xxzy swizzling.
        [Inline]
        public bool4 xxzy =>  bool4(x, x, z, y);
        
        /// Returns bool3.rrbg swizzling (equivalent to bool3.xxzy).
        [Inline]
        public bool4 rrbg =>  bool4(x, x, z, y);
        
        /// Returns bool3.xxzz swizzling.
        [Inline]
        public bool4 xxzz =>  bool4(x, x, z, z);
        
        /// Returns bool3.rrbb swizzling (equivalent to bool3.xxzz).
        [Inline]
        public bool4 rrbb =>  bool4(x, x, z, z);
        
        /// Returns bool3.xy swizzling.
        [Inline]
        public bool2 xy =>  bool2(x, y);
        
        /// Returns bool3.rg swizzling (equivalent to bool3.xy).
        [Inline]
        public bool2 rg =>  bool2(x, y);
        
        /// Returns bool3.xyx swizzling.
        [Inline]
        public bool3 xyx =>  bool3(x, y, x);
        
        /// Returns bool3.rgr swizzling (equivalent to bool3.xyx).
        [Inline]
        public bool3 rgr =>  bool3(x, y, x);
        
        /// Returns bool3.xyxx swizzling.
        [Inline]
        public bool4 xyxx =>  bool4(x, y, x, x);
        
        /// Returns bool3.rgrr swizzling (equivalent to bool3.xyxx).
        [Inline]
        public bool4 rgrr =>  bool4(x, y, x, x);
        
        /// Returns bool3.xyxy swizzling.
        [Inline]
        public bool4 xyxy =>  bool4(x, y, x, y);
        
        /// Returns bool3.rgrg swizzling (equivalent to bool3.xyxy).
        [Inline]
        public bool4 rgrg =>  bool4(x, y, x, y);
        
        /// Returns bool3.xyxz swizzling.
        [Inline]
        public bool4 xyxz =>  bool4(x, y, x, z);
        
        /// Returns bool3.rgrb swizzling (equivalent to bool3.xyxz).
        [Inline]
        public bool4 rgrb =>  bool4(x, y, x, z);
        
        /// Returns bool3.xyy swizzling.
        [Inline]
        public bool3 xyy =>  bool3(x, y, y);
        
        /// Returns bool3.rgg swizzling (equivalent to bool3.xyy).
        [Inline]
        public bool3 rgg =>  bool3(x, y, y);
        
        /// Returns bool3.xyyx swizzling.
        [Inline]
        public bool4 xyyx =>  bool4(x, y, y, x);
        
        /// Returns bool3.rggr swizzling (equivalent to bool3.xyyx).
        [Inline]
        public bool4 rggr =>  bool4(x, y, y, x);
        
        /// Returns bool3.xyyy swizzling.
        [Inline]
        public bool4 xyyy =>  bool4(x, y, y, y);
        
        /// Returns bool3.rggg swizzling (equivalent to bool3.xyyy).
        [Inline]
        public bool4 rggg =>  bool4(x, y, y, y);
        
        /// Returns bool3.xyyz swizzling.
        [Inline]
        public bool4 xyyz =>  bool4(x, y, y, z);
        
        /// Returns bool3.rggb swizzling (equivalent to bool3.xyyz).
        [Inline]
        public bool4 rggb =>  bool4(x, y, y, z);
        
        /// Returns bool3.xyz swizzling.
        [Inline]
        public bool3 xyz =>  bool3(x, y, z);
        
        /// Returns bool3.rgb swizzling (equivalent to bool3.xyz).
        [Inline]
        public bool3 rgb =>  bool3(x, y, z);
        
        /// Returns bool3.xyzx swizzling.
        [Inline]
        public bool4 xyzx =>  bool4(x, y, z, x);
        
        /// Returns bool3.rgbr swizzling (equivalent to bool3.xyzx).
        [Inline]
        public bool4 rgbr =>  bool4(x, y, z, x);
        
        /// Returns bool3.xyzy swizzling.
        [Inline]
        public bool4 xyzy =>  bool4(x, y, z, y);
        
        /// Returns bool3.rgbg swizzling (equivalent to bool3.xyzy).
        [Inline]
        public bool4 rgbg =>  bool4(x, y, z, y);
        
        /// Returns bool3.xyzz swizzling.
        [Inline]
        public bool4 xyzz =>  bool4(x, y, z, z);
        
        /// Returns bool3.rgbb swizzling (equivalent to bool3.xyzz).
        [Inline]
        public bool4 rgbb =>  bool4(x, y, z, z);
        
        /// Returns bool3.xz swizzling.
        [Inline]
        public bool2 xz =>  bool2(x, z);
        
        /// Returns bool3.rb swizzling (equivalent to bool3.xz).
        [Inline]
        public bool2 rb =>  bool2(x, z);
        
        /// Returns bool3.xzx swizzling.
        [Inline]
        public bool3 xzx =>  bool3(x, z, x);
        
        /// Returns bool3.rbr swizzling (equivalent to bool3.xzx).
        [Inline]
        public bool3 rbr =>  bool3(x, z, x);
        
        /// Returns bool3.xzxx swizzling.
        [Inline]
        public bool4 xzxx =>  bool4(x, z, x, x);
        
        /// Returns bool3.rbrr swizzling (equivalent to bool3.xzxx).
        [Inline]
        public bool4 rbrr =>  bool4(x, z, x, x);
        
        /// Returns bool3.xzxy swizzling.
        [Inline]
        public bool4 xzxy =>  bool4(x, z, x, y);
        
        /// Returns bool3.rbrg swizzling (equivalent to bool3.xzxy).
        [Inline]
        public bool4 rbrg =>  bool4(x, z, x, y);
        
        /// Returns bool3.xzxz swizzling.
        [Inline]
        public bool4 xzxz =>  bool4(x, z, x, z);
        
        /// Returns bool3.rbrb swizzling (equivalent to bool3.xzxz).
        [Inline]
        public bool4 rbrb =>  bool4(x, z, x, z);
        
        /// Returns bool3.xzy swizzling.
        [Inline]
        public bool3 xzy =>  bool3(x, z, y);
        
        /// Returns bool3.rbg swizzling (equivalent to bool3.xzy).
        [Inline]
        public bool3 rbg =>  bool3(x, z, y);
        
        /// Returns bool3.xzyx swizzling.
        [Inline]
        public bool4 xzyx =>  bool4(x, z, y, x);
        
        /// Returns bool3.rbgr swizzling (equivalent to bool3.xzyx).
        [Inline]
        public bool4 rbgr =>  bool4(x, z, y, x);
        
        /// Returns bool3.xzyy swizzling.
        [Inline]
        public bool4 xzyy =>  bool4(x, z, y, y);
        
        /// Returns bool3.rbgg swizzling (equivalent to bool3.xzyy).
        [Inline]
        public bool4 rbgg =>  bool4(x, z, y, y);
        
        /// Returns bool3.xzyz swizzling.
        [Inline]
        public bool4 xzyz =>  bool4(x, z, y, z);
        
        /// Returns bool3.rbgb swizzling (equivalent to bool3.xzyz).
        [Inline]
        public bool4 rbgb =>  bool4(x, z, y, z);
        
        /// Returns bool3.xzz swizzling.
        [Inline]
        public bool3 xzz =>  bool3(x, z, z);
        
        /// Returns bool3.rbb swizzling (equivalent to bool3.xzz).
        [Inline]
        public bool3 rbb =>  bool3(x, z, z);
        
        /// Returns bool3.xzzx swizzling.
        [Inline]
        public bool4 xzzx =>  bool4(x, z, z, x);
        
        /// Returns bool3.rbbr swizzling (equivalent to bool3.xzzx).
        [Inline]
        public bool4 rbbr =>  bool4(x, z, z, x);
        
        /// Returns bool3.xzzy swizzling.
        [Inline]
        public bool4 xzzy =>  bool4(x, z, z, y);
        
        /// Returns bool3.rbbg swizzling (equivalent to bool3.xzzy).
        [Inline]
        public bool4 rbbg =>  bool4(x, z, z, y);
        
        /// Returns bool3.xzzz swizzling.
        [Inline]
        public bool4 xzzz =>  bool4(x, z, z, z);
        
        /// Returns bool3.rbbb swizzling (equivalent to bool3.xzzz).
        [Inline]
        public bool4 rbbb =>  bool4(x, z, z, z);
        
        /// Returns bool3.yx swizzling.
        [Inline]
        public bool2 yx =>  bool2(y, x);
        
        /// Returns bool3.gr swizzling (equivalent to bool3.yx).
        [Inline]
        public bool2 gr =>  bool2(y, x);
        
        /// Returns bool3.yxx swizzling.
        [Inline]
        public bool3 yxx =>  bool3(y, x, x);
        
        /// Returns bool3.grr swizzling (equivalent to bool3.yxx).
        [Inline]
        public bool3 grr =>  bool3(y, x, x);
        
        /// Returns bool3.yxxx swizzling.
        [Inline]
        public bool4 yxxx =>  bool4(y, x, x, x);
        
        /// Returns bool3.grrr swizzling (equivalent to bool3.yxxx).
        [Inline]
        public bool4 grrr =>  bool4(y, x, x, x);
        
        /// Returns bool3.yxxy swizzling.
        [Inline]
        public bool4 yxxy =>  bool4(y, x, x, y);
        
        /// Returns bool3.grrg swizzling (equivalent to bool3.yxxy).
        [Inline]
        public bool4 grrg =>  bool4(y, x, x, y);
        
        /// Returns bool3.yxxz swizzling.
        [Inline]
        public bool4 yxxz =>  bool4(y, x, x, z);
        
        /// Returns bool3.grrb swizzling (equivalent to bool3.yxxz).
        [Inline]
        public bool4 grrb =>  bool4(y, x, x, z);
        
        /// Returns bool3.yxy swizzling.
        [Inline]
        public bool3 yxy =>  bool3(y, x, y);
        
        /// Returns bool3.grg swizzling (equivalent to bool3.yxy).
        [Inline]
        public bool3 grg =>  bool3(y, x, y);
        
        /// Returns bool3.yxyx swizzling.
        [Inline]
        public bool4 yxyx =>  bool4(y, x, y, x);
        
        /// Returns bool3.grgr swizzling (equivalent to bool3.yxyx).
        [Inline]
        public bool4 grgr =>  bool4(y, x, y, x);
        
        /// Returns bool3.yxyy swizzling.
        [Inline]
        public bool4 yxyy =>  bool4(y, x, y, y);
        
        /// Returns bool3.grgg swizzling (equivalent to bool3.yxyy).
        [Inline]
        public bool4 grgg =>  bool4(y, x, y, y);
        
        /// Returns bool3.yxyz swizzling.
        [Inline]
        public bool4 yxyz =>  bool4(y, x, y, z);
        
        /// Returns bool3.grgb swizzling (equivalent to bool3.yxyz).
        [Inline]
        public bool4 grgb =>  bool4(y, x, y, z);
        
        /// Returns bool3.yxz swizzling.
        [Inline]
        public bool3 yxz =>  bool3(y, x, z);
        
        /// Returns bool3.grb swizzling (equivalent to bool3.yxz).
        [Inline]
        public bool3 grb =>  bool3(y, x, z);
        
        /// Returns bool3.yxzx swizzling.
        [Inline]
        public bool4 yxzx =>  bool4(y, x, z, x);
        
        /// Returns bool3.grbr swizzling (equivalent to bool3.yxzx).
        [Inline]
        public bool4 grbr =>  bool4(y, x, z, x);
        
        /// Returns bool3.yxzy swizzling.
        [Inline]
        public bool4 yxzy =>  bool4(y, x, z, y);
        
        /// Returns bool3.grbg swizzling (equivalent to bool3.yxzy).
        [Inline]
        public bool4 grbg =>  bool4(y, x, z, y);
        
        /// Returns bool3.yxzz swizzling.
        [Inline]
        public bool4 yxzz =>  bool4(y, x, z, z);
        
        /// Returns bool3.grbb swizzling (equivalent to bool3.yxzz).
        [Inline]
        public bool4 grbb =>  bool4(y, x, z, z);
        
        /// Returns bool3.yy swizzling.
        [Inline]
        public bool2 yy =>  bool2(y, y);
        
        /// Returns bool3.gg swizzling (equivalent to bool3.yy).
        [Inline]
        public bool2 gg =>  bool2(y, y);
        
        /// Returns bool3.yyx swizzling.
        [Inline]
        public bool3 yyx =>  bool3(y, y, x);
        
        /// Returns bool3.ggr swizzling (equivalent to bool3.yyx).
        [Inline]
        public bool3 ggr =>  bool3(y, y, x);
        
        /// Returns bool3.yyxx swizzling.
        [Inline]
        public bool4 yyxx =>  bool4(y, y, x, x);
        
        /// Returns bool3.ggrr swizzling (equivalent to bool3.yyxx).
        [Inline]
        public bool4 ggrr =>  bool4(y, y, x, x);
        
        /// Returns bool3.yyxy swizzling.
        [Inline]
        public bool4 yyxy =>  bool4(y, y, x, y);
        
        /// Returns bool3.ggrg swizzling (equivalent to bool3.yyxy).
        [Inline]
        public bool4 ggrg =>  bool4(y, y, x, y);
        
        /// Returns bool3.yyxz swizzling.
        [Inline]
        public bool4 yyxz =>  bool4(y, y, x, z);
        
        /// Returns bool3.ggrb swizzling (equivalent to bool3.yyxz).
        [Inline]
        public bool4 ggrb =>  bool4(y, y, x, z);
        
        /// Returns bool3.yyy swizzling.
        [Inline]
        public bool3 yyy =>  bool3(y, y, y);
        
        /// Returns bool3.ggg swizzling (equivalent to bool3.yyy).
        [Inline]
        public bool3 ggg =>  bool3(y, y, y);
        
        /// Returns bool3.yyyx swizzling.
        [Inline]
        public bool4 yyyx =>  bool4(y, y, y, x);
        
        /// Returns bool3.gggr swizzling (equivalent to bool3.yyyx).
        [Inline]
        public bool4 gggr =>  bool4(y, y, y, x);
        
        /// Returns bool3.yyyy swizzling.
        [Inline]
        public bool4 yyyy =>  bool4(y, y, y, y);
        
        /// Returns bool3.gggg swizzling (equivalent to bool3.yyyy).
        [Inline]
        public bool4 gggg =>  bool4(y, y, y, y);
        
        /// Returns bool3.yyyz swizzling.
        [Inline]
        public bool4 yyyz =>  bool4(y, y, y, z);
        
        /// Returns bool3.gggb swizzling (equivalent to bool3.yyyz).
        [Inline]
        public bool4 gggb =>  bool4(y, y, y, z);
        
        /// Returns bool3.yyz swizzling.
        [Inline]
        public bool3 yyz =>  bool3(y, y, z);
        
        /// Returns bool3.ggb swizzling (equivalent to bool3.yyz).
        [Inline]
        public bool3 ggb =>  bool3(y, y, z);
        
        /// Returns bool3.yyzx swizzling.
        [Inline]
        public bool4 yyzx =>  bool4(y, y, z, x);
        
        /// Returns bool3.ggbr swizzling (equivalent to bool3.yyzx).
        [Inline]
        public bool4 ggbr =>  bool4(y, y, z, x);
        
        /// Returns bool3.yyzy swizzling.
        [Inline]
        public bool4 yyzy =>  bool4(y, y, z, y);
        
        /// Returns bool3.ggbg swizzling (equivalent to bool3.yyzy).
        [Inline]
        public bool4 ggbg =>  bool4(y, y, z, y);
        
        /// Returns bool3.yyzz swizzling.
        [Inline]
        public bool4 yyzz =>  bool4(y, y, z, z);
        
        /// Returns bool3.ggbb swizzling (equivalent to bool3.yyzz).
        [Inline]
        public bool4 ggbb =>  bool4(y, y, z, z);
        
        /// Returns bool3.yz swizzling.
        [Inline]
        public bool2 yz =>  bool2(y, z);
        
        /// Returns bool3.gb swizzling (equivalent to bool3.yz).
        [Inline]
        public bool2 gb =>  bool2(y, z);
        
        /// Returns bool3.yzx swizzling.
        [Inline]
        public bool3 yzx =>  bool3(y, z, x);
        
        /// Returns bool3.gbr swizzling (equivalent to bool3.yzx).
        [Inline]
        public bool3 gbr =>  bool3(y, z, x);
        
        /// Returns bool3.yzxx swizzling.
        [Inline]
        public bool4 yzxx =>  bool4(y, z, x, x);
        
        /// Returns bool3.gbrr swizzling (equivalent to bool3.yzxx).
        [Inline]
        public bool4 gbrr =>  bool4(y, z, x, x);
        
        /// Returns bool3.yzxy swizzling.
        [Inline]
        public bool4 yzxy =>  bool4(y, z, x, y);
        
        /// Returns bool3.gbrg swizzling (equivalent to bool3.yzxy).
        [Inline]
        public bool4 gbrg =>  bool4(y, z, x, y);
        
        /// Returns bool3.yzxz swizzling.
        [Inline]
        public bool4 yzxz =>  bool4(y, z, x, z);
        
        /// Returns bool3.gbrb swizzling (equivalent to bool3.yzxz).
        [Inline]
        public bool4 gbrb =>  bool4(y, z, x, z);
        
        /// Returns bool3.yzy swizzling.
        [Inline]
        public bool3 yzy =>  bool3(y, z, y);
        
        /// Returns bool3.gbg swizzling (equivalent to bool3.yzy).
        [Inline]
        public bool3 gbg =>  bool3(y, z, y);
        
        /// Returns bool3.yzyx swizzling.
        [Inline]
        public bool4 yzyx =>  bool4(y, z, y, x);
        
        /// Returns bool3.gbgr swizzling (equivalent to bool3.yzyx).
        [Inline]
        public bool4 gbgr =>  bool4(y, z, y, x);
        
        /// Returns bool3.yzyy swizzling.
        [Inline]
        public bool4 yzyy =>  bool4(y, z, y, y);
        
        /// Returns bool3.gbgg swizzling (equivalent to bool3.yzyy).
        [Inline]
        public bool4 gbgg =>  bool4(y, z, y, y);
        
        /// Returns bool3.yzyz swizzling.
        [Inline]
        public bool4 yzyz =>  bool4(y, z, y, z);
        
        /// Returns bool3.gbgb swizzling (equivalent to bool3.yzyz).
        [Inline]
        public bool4 gbgb =>  bool4(y, z, y, z);
        
        /// Returns bool3.yzz swizzling.
        [Inline]
        public bool3 yzz =>  bool3(y, z, z);
        
        /// Returns bool3.gbb swizzling (equivalent to bool3.yzz).
        [Inline]
        public bool3 gbb =>  bool3(y, z, z);
        
        /// Returns bool3.yzzx swizzling.
        [Inline]
        public bool4 yzzx =>  bool4(y, z, z, x);
        
        /// Returns bool3.gbbr swizzling (equivalent to bool3.yzzx).
        [Inline]
        public bool4 gbbr =>  bool4(y, z, z, x);
        
        /// Returns bool3.yzzy swizzling.
        [Inline]
        public bool4 yzzy =>  bool4(y, z, z, y);
        
        /// Returns bool3.gbbg swizzling (equivalent to bool3.yzzy).
        [Inline]
        public bool4 gbbg =>  bool4(y, z, z, y);
        
        /// Returns bool3.yzzz swizzling.
        [Inline]
        public bool4 yzzz =>  bool4(y, z, z, z);
        
        /// Returns bool3.gbbb swizzling (equivalent to bool3.yzzz).
        [Inline]
        public bool4 gbbb =>  bool4(y, z, z, z);
        
        /// Returns bool3.zx swizzling.
        [Inline]
        public bool2 zx =>  bool2(z, x);
        
        /// Returns bool3.br swizzling (equivalent to bool3.zx).
        [Inline]
        public bool2 br =>  bool2(z, x);
        
        /// Returns bool3.zxx swizzling.
        [Inline]
        public bool3 zxx =>  bool3(z, x, x);
        
        /// Returns bool3.brr swizzling (equivalent to bool3.zxx).
        [Inline]
        public bool3 brr =>  bool3(z, x, x);
        
        /// Returns bool3.zxxx swizzling.
        [Inline]
        public bool4 zxxx =>  bool4(z, x, x, x);
        
        /// Returns bool3.brrr swizzling (equivalent to bool3.zxxx).
        [Inline]
        public bool4 brrr =>  bool4(z, x, x, x);
        
        /// Returns bool3.zxxy swizzling.
        [Inline]
        public bool4 zxxy =>  bool4(z, x, x, y);
        
        /// Returns bool3.brrg swizzling (equivalent to bool3.zxxy).
        [Inline]
        public bool4 brrg =>  bool4(z, x, x, y);
        
        /// Returns bool3.zxxz swizzling.
        [Inline]
        public bool4 zxxz =>  bool4(z, x, x, z);
        
        /// Returns bool3.brrb swizzling (equivalent to bool3.zxxz).
        [Inline]
        public bool4 brrb =>  bool4(z, x, x, z);
        
        /// Returns bool3.zxy swizzling.
        [Inline]
        public bool3 zxy =>  bool3(z, x, y);
        
        /// Returns bool3.brg swizzling (equivalent to bool3.zxy).
        [Inline]
        public bool3 brg =>  bool3(z, x, y);
        
        /// Returns bool3.zxyx swizzling.
        [Inline]
        public bool4 zxyx =>  bool4(z, x, y, x);
        
        /// Returns bool3.brgr swizzling (equivalent to bool3.zxyx).
        [Inline]
        public bool4 brgr =>  bool4(z, x, y, x);
        
        /// Returns bool3.zxyy swizzling.
        [Inline]
        public bool4 zxyy =>  bool4(z, x, y, y);
        
        /// Returns bool3.brgg swizzling (equivalent to bool3.zxyy).
        [Inline]
        public bool4 brgg =>  bool4(z, x, y, y);
        
        /// Returns bool3.zxyz swizzling.
        [Inline]
        public bool4 zxyz =>  bool4(z, x, y, z);
        
        /// Returns bool3.brgb swizzling (equivalent to bool3.zxyz).
        [Inline]
        public bool4 brgb =>  bool4(z, x, y, z);
        
        /// Returns bool3.zxz swizzling.
        [Inline]
        public bool3 zxz =>  bool3(z, x, z);
        
        /// Returns bool3.brb swizzling (equivalent to bool3.zxz).
        [Inline]
        public bool3 brb =>  bool3(z, x, z);
        
        /// Returns bool3.zxzx swizzling.
        [Inline]
        public bool4 zxzx =>  bool4(z, x, z, x);
        
        /// Returns bool3.brbr swizzling (equivalent to bool3.zxzx).
        [Inline]
        public bool4 brbr =>  bool4(z, x, z, x);
        
        /// Returns bool3.zxzy swizzling.
        [Inline]
        public bool4 zxzy =>  bool4(z, x, z, y);
        
        /// Returns bool3.brbg swizzling (equivalent to bool3.zxzy).
        [Inline]
        public bool4 brbg =>  bool4(z, x, z, y);
        
        /// Returns bool3.zxzz swizzling.
        [Inline]
        public bool4 zxzz =>  bool4(z, x, z, z);
        
        /// Returns bool3.brbb swizzling (equivalent to bool3.zxzz).
        [Inline]
        public bool4 brbb =>  bool4(z, x, z, z);
        
        /// Returns bool3.zy swizzling.
        [Inline]
        public bool2 zy =>  bool2(z, y);
        
        /// Returns bool3.bg swizzling (equivalent to bool3.zy).
        [Inline]
        public bool2 bg =>  bool2(z, y);
        
        /// Returns bool3.zyx swizzling.
        [Inline]
        public bool3 zyx =>  bool3(z, y, x);
        
        /// Returns bool3.bgr swizzling (equivalent to bool3.zyx).
        [Inline]
        public bool3 bgr =>  bool3(z, y, x);
        
        /// Returns bool3.zyxx swizzling.
        [Inline]
        public bool4 zyxx =>  bool4(z, y, x, x);
        
        /// Returns bool3.bgrr swizzling (equivalent to bool3.zyxx).
        [Inline]
        public bool4 bgrr =>  bool4(z, y, x, x);
        
        /// Returns bool3.zyxy swizzling.
        [Inline]
        public bool4 zyxy =>  bool4(z, y, x, y);
        
        /// Returns bool3.bgrg swizzling (equivalent to bool3.zyxy).
        [Inline]
        public bool4 bgrg =>  bool4(z, y, x, y);
        
        /// Returns bool3.zyxz swizzling.
        [Inline]
        public bool4 zyxz =>  bool4(z, y, x, z);
        
        /// Returns bool3.bgrb swizzling (equivalent to bool3.zyxz).
        [Inline]
        public bool4 bgrb =>  bool4(z, y, x, z);
        
        /// Returns bool3.zyy swizzling.
        [Inline]
        public bool3 zyy =>  bool3(z, y, y);
        
        /// Returns bool3.bgg swizzling (equivalent to bool3.zyy).
        [Inline]
        public bool3 bgg =>  bool3(z, y, y);
        
        /// Returns bool3.zyyx swizzling.
        [Inline]
        public bool4 zyyx =>  bool4(z, y, y, x);
        
        /// Returns bool3.bggr swizzling (equivalent to bool3.zyyx).
        [Inline]
        public bool4 bggr =>  bool4(z, y, y, x);
        
        /// Returns bool3.zyyy swizzling.
        [Inline]
        public bool4 zyyy =>  bool4(z, y, y, y);
        
        /// Returns bool3.bggg swizzling (equivalent to bool3.zyyy).
        [Inline]
        public bool4 bggg =>  bool4(z, y, y, y);
        
        /// Returns bool3.zyyz swizzling.
        [Inline]
        public bool4 zyyz =>  bool4(z, y, y, z);
        
        /// Returns bool3.bggb swizzling (equivalent to bool3.zyyz).
        [Inline]
        public bool4 bggb =>  bool4(z, y, y, z);
        
        /// Returns bool3.zyz swizzling.
        [Inline]
        public bool3 zyz =>  bool3(z, y, z);
        
        /// Returns bool3.bgb swizzling (equivalent to bool3.zyz).
        [Inline]
        public bool3 bgb =>  bool3(z, y, z);
        
        /// Returns bool3.zyzx swizzling.
        [Inline]
        public bool4 zyzx =>  bool4(z, y, z, x);
        
        /// Returns bool3.bgbr swizzling (equivalent to bool3.zyzx).
        [Inline]
        public bool4 bgbr =>  bool4(z, y, z, x);
        
        /// Returns bool3.zyzy swizzling.
        [Inline]
        public bool4 zyzy =>  bool4(z, y, z, y);
        
        /// Returns bool3.bgbg swizzling (equivalent to bool3.zyzy).
        [Inline]
        public bool4 bgbg =>  bool4(z, y, z, y);
        
        /// Returns bool3.zyzz swizzling.
        [Inline]
        public bool4 zyzz =>  bool4(z, y, z, z);
        
        /// Returns bool3.bgbb swizzling (equivalent to bool3.zyzz).
        [Inline]
        public bool4 bgbb =>  bool4(z, y, z, z);
        
        /// Returns bool3.zz swizzling.
        [Inline]
        public bool2 zz =>  bool2(z, z);
        
        /// Returns bool3.bb swizzling (equivalent to bool3.zz).
        [Inline]
        public bool2 bb =>  bool2(z, z);
        
        /// Returns bool3.zzx swizzling.
        [Inline]
        public bool3 zzx =>  bool3(z, z, x);
        
        /// Returns bool3.bbr swizzling (equivalent to bool3.zzx).
        [Inline]
        public bool3 bbr =>  bool3(z, z, x);
        
        /// Returns bool3.zzxx swizzling.
        [Inline]
        public bool4 zzxx =>  bool4(z, z, x, x);
        
        /// Returns bool3.bbrr swizzling (equivalent to bool3.zzxx).
        [Inline]
        public bool4 bbrr =>  bool4(z, z, x, x);
        
        /// Returns bool3.zzxy swizzling.
        [Inline]
        public bool4 zzxy =>  bool4(z, z, x, y);
        
        /// Returns bool3.bbrg swizzling (equivalent to bool3.zzxy).
        [Inline]
        public bool4 bbrg =>  bool4(z, z, x, y);
        
        /// Returns bool3.zzxz swizzling.
        [Inline]
        public bool4 zzxz =>  bool4(z, z, x, z);
        
        /// Returns bool3.bbrb swizzling (equivalent to bool3.zzxz).
        [Inline]
        public bool4 bbrb =>  bool4(z, z, x, z);
        
        /// Returns bool3.zzy swizzling.
        [Inline]
        public bool3 zzy =>  bool3(z, z, y);
        
        /// Returns bool3.bbg swizzling (equivalent to bool3.zzy).
        [Inline]
        public bool3 bbg =>  bool3(z, z, y);
        
        /// Returns bool3.zzyx swizzling.
        [Inline]
        public bool4 zzyx =>  bool4(z, z, y, x);
        
        /// Returns bool3.bbgr swizzling (equivalent to bool3.zzyx).
        [Inline]
        public bool4 bbgr =>  bool4(z, z, y, x);
        
        /// Returns bool3.zzyy swizzling.
        [Inline]
        public bool4 zzyy =>  bool4(z, z, y, y);
        
        /// Returns bool3.bbgg swizzling (equivalent to bool3.zzyy).
        [Inline]
        public bool4 bbgg =>  bool4(z, z, y, y);
        
        /// Returns bool3.zzyz swizzling.
        [Inline]
        public bool4 zzyz =>  bool4(z, z, y, z);
        
        /// Returns bool3.bbgb swizzling (equivalent to bool3.zzyz).
        [Inline]
        public bool4 bbgb =>  bool4(z, z, y, z);
        
        /// Returns bool3.zzz swizzling.
        [Inline]
        public bool3 zzz =>  bool3(z, z, z);
        
        /// Returns bool3.bbb swizzling (equivalent to bool3.zzz).
        [Inline]
        public bool3 bbb =>  bool3(z, z, z);
        
        /// Returns bool3.zzzx swizzling.
        [Inline]
        public bool4 zzzx =>  bool4(z, z, z, x);
        
        /// Returns bool3.bbbr swizzling (equivalent to bool3.zzzx).
        [Inline]
        public bool4 bbbr =>  bool4(z, z, z, x);
        
        /// Returns bool3.zzzy swizzling.
        [Inline]
        public bool4 zzzy =>  bool4(z, z, z, y);
        
        /// Returns bool3.bbbg swizzling (equivalent to bool3.zzzy).
        [Inline]
        public bool4 bbbg =>  bool4(z, z, z, y);
        
        /// Returns bool3.zzzz swizzling.
        [Inline]
        public bool4 zzzz =>  bool4(z, z, z, z);
        
        /// Returns bool3.bbbb swizzling (equivalent to bool3.zzzz).
        [Inline]
        public bool4 bbbb =>  bool4(z, z, z, z);

        #endregion

    }
}
