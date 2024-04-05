using System;
namespace glm
{
    
    /// Temporary vector of type long with 3 components, used for implementing swizzling for long3.
    public struct swizzle_long3
    {

        //#region Fields
        
        /// x-component
        private readonly long x;
        
        /// y-component
        private readonly long y;
        
        /// z-component
        private readonly long z;

        //#endregion


        //#region Properties
        
        /// Returns long3.xx swizzling.
        [Inline]
        public long2 xx =>  long2(x, x);
        
        /// Returns long3.rr swizzling (equivalent to long3.xx).
        [Inline]
        public long2 rr =>  long2(x, x);
        
        /// Returns long3.xxx swizzling.
        [Inline]
        public long3 xxx =>  long3(x, x, x);
        
        /// Returns long3.rrr swizzling (equivalent to long3.xxx).
        [Inline]
        public long3 rrr =>  long3(x, x, x);
        
        /// Returns long3.xxxx swizzling.
        [Inline]
        public long4 xxxx =>  long4(x, x, x, x);
        
        /// Returns long3.rrrr swizzling (equivalent to long3.xxxx).
        [Inline]
        public long4 rrrr =>  long4(x, x, x, x);
        
        /// Returns long3.xxxy swizzling.
        [Inline]
        public long4 xxxy =>  long4(x, x, x, y);
        
        /// Returns long3.rrrg swizzling (equivalent to long3.xxxy).
        [Inline]
        public long4 rrrg =>  long4(x, x, x, y);
        
        /// Returns long3.xxxz swizzling.
        [Inline]
        public long4 xxxz =>  long4(x, x, x, z);
        
        /// Returns long3.rrrb swizzling (equivalent to long3.xxxz).
        [Inline]
        public long4 rrrb =>  long4(x, x, x, z);
        
        /// Returns long3.xxy swizzling.
        [Inline]
        public long3 xxy =>  long3(x, x, y);
        
        /// Returns long3.rrg swizzling (equivalent to long3.xxy).
        [Inline]
        public long3 rrg =>  long3(x, x, y);
        
        /// Returns long3.xxyx swizzling.
        [Inline]
        public long4 xxyx =>  long4(x, x, y, x);
        
        /// Returns long3.rrgr swizzling (equivalent to long3.xxyx).
        [Inline]
        public long4 rrgr =>  long4(x, x, y, x);
        
        /// Returns long3.xxyy swizzling.
        [Inline]
        public long4 xxyy =>  long4(x, x, y, y);
        
        /// Returns long3.rrgg swizzling (equivalent to long3.xxyy).
        [Inline]
        public long4 rrgg =>  long4(x, x, y, y);
        
        /// Returns long3.xxyz swizzling.
        [Inline]
        public long4 xxyz =>  long4(x, x, y, z);
        
        /// Returns long3.rrgb swizzling (equivalent to long3.xxyz).
        [Inline]
        public long4 rrgb =>  long4(x, x, y, z);
        
        /// Returns long3.xxz swizzling.
        [Inline]
        public long3 xxz =>  long3(x, x, z);
        
        /// Returns long3.rrb swizzling (equivalent to long3.xxz).
        [Inline]
        public long3 rrb =>  long3(x, x, z);
        
        /// Returns long3.xxzx swizzling.
        [Inline]
        public long4 xxzx =>  long4(x, x, z, x);
        
        /// Returns long3.rrbr swizzling (equivalent to long3.xxzx).
        [Inline]
        public long4 rrbr =>  long4(x, x, z, x);
        
        /// Returns long3.xxzy swizzling.
        [Inline]
        public long4 xxzy =>  long4(x, x, z, y);
        
        /// Returns long3.rrbg swizzling (equivalent to long3.xxzy).
        [Inline]
        public long4 rrbg =>  long4(x, x, z, y);
        
        /// Returns long3.xxzz swizzling.
        [Inline]
        public long4 xxzz =>  long4(x, x, z, z);
        
        /// Returns long3.rrbb swizzling (equivalent to long3.xxzz).
        [Inline]
        public long4 rrbb =>  long4(x, x, z, z);
        
        /// Returns long3.xy swizzling.
        [Inline]
        public long2 xy =>  long2(x, y);
        
        /// Returns long3.rg swizzling (equivalent to long3.xy).
        [Inline]
        public long2 rg =>  long2(x, y);
        
        /// Returns long3.xyx swizzling.
        [Inline]
        public long3 xyx =>  long3(x, y, x);
        
        /// Returns long3.rgr swizzling (equivalent to long3.xyx).
        [Inline]
        public long3 rgr =>  long3(x, y, x);
        
        /// Returns long3.xyxx swizzling.
        [Inline]
        public long4 xyxx =>  long4(x, y, x, x);
        
        /// Returns long3.rgrr swizzling (equivalent to long3.xyxx).
        [Inline]
        public long4 rgrr =>  long4(x, y, x, x);
        
        /// Returns long3.xyxy swizzling.
        [Inline]
        public long4 xyxy =>  long4(x, y, x, y);
        
        /// Returns long3.rgrg swizzling (equivalent to long3.xyxy).
        [Inline]
        public long4 rgrg =>  long4(x, y, x, y);
        
        /// Returns long3.xyxz swizzling.
        [Inline]
        public long4 xyxz =>  long4(x, y, x, z);
        
        /// Returns long3.rgrb swizzling (equivalent to long3.xyxz).
        [Inline]
        public long4 rgrb =>  long4(x, y, x, z);
        
        /// Returns long3.xyy swizzling.
        [Inline]
        public long3 xyy =>  long3(x, y, y);
        
        /// Returns long3.rgg swizzling (equivalent to long3.xyy).
        [Inline]
        public long3 rgg =>  long3(x, y, y);
        
        /// Returns long3.xyyx swizzling.
        [Inline]
        public long4 xyyx =>  long4(x, y, y, x);
        
        /// Returns long3.rggr swizzling (equivalent to long3.xyyx).
        [Inline]
        public long4 rggr =>  long4(x, y, y, x);
        
        /// Returns long3.xyyy swizzling.
        [Inline]
        public long4 xyyy =>  long4(x, y, y, y);
        
        /// Returns long3.rggg swizzling (equivalent to long3.xyyy).
        [Inline]
        public long4 rggg =>  long4(x, y, y, y);
        
        /// Returns long3.xyyz swizzling.
        [Inline]
        public long4 xyyz =>  long4(x, y, y, z);
        
        /// Returns long3.rggb swizzling (equivalent to long3.xyyz).
        [Inline]
        public long4 rggb =>  long4(x, y, y, z);
        
        /// Returns long3.xyz swizzling.
        [Inline]
        public long3 xyz =>  long3(x, y, z);
        
        /// Returns long3.rgb swizzling (equivalent to long3.xyz).
        [Inline]
        public long3 rgb =>  long3(x, y, z);
        
        /// Returns long3.xyzx swizzling.
        [Inline]
        public long4 xyzx =>  long4(x, y, z, x);
        
        /// Returns long3.rgbr swizzling (equivalent to long3.xyzx).
        [Inline]
        public long4 rgbr =>  long4(x, y, z, x);
        
        /// Returns long3.xyzy swizzling.
        [Inline]
        public long4 xyzy =>  long4(x, y, z, y);
        
        /// Returns long3.rgbg swizzling (equivalent to long3.xyzy).
        [Inline]
        public long4 rgbg =>  long4(x, y, z, y);
        
        /// Returns long3.xyzz swizzling.
        [Inline]
        public long4 xyzz =>  long4(x, y, z, z);
        
        /// Returns long3.rgbb swizzling (equivalent to long3.xyzz).
        [Inline]
        public long4 rgbb =>  long4(x, y, z, z);
        
        /// Returns long3.xz swizzling.
        [Inline]
        public long2 xz =>  long2(x, z);
        
        /// Returns long3.rb swizzling (equivalent to long3.xz).
        [Inline]
        public long2 rb =>  long2(x, z);
        
        /// Returns long3.xzx swizzling.
        [Inline]
        public long3 xzx =>  long3(x, z, x);
        
        /// Returns long3.rbr swizzling (equivalent to long3.xzx).
        [Inline]
        public long3 rbr =>  long3(x, z, x);
        
        /// Returns long3.xzxx swizzling.
        [Inline]
        public long4 xzxx =>  long4(x, z, x, x);
        
        /// Returns long3.rbrr swizzling (equivalent to long3.xzxx).
        [Inline]
        public long4 rbrr =>  long4(x, z, x, x);
        
        /// Returns long3.xzxy swizzling.
        [Inline]
        public long4 xzxy =>  long4(x, z, x, y);
        
        /// Returns long3.rbrg swizzling (equivalent to long3.xzxy).
        [Inline]
        public long4 rbrg =>  long4(x, z, x, y);
        
        /// Returns long3.xzxz swizzling.
        [Inline]
        public long4 xzxz =>  long4(x, z, x, z);
        
        /// Returns long3.rbrb swizzling (equivalent to long3.xzxz).
        [Inline]
        public long4 rbrb =>  long4(x, z, x, z);
        
        /// Returns long3.xzy swizzling.
        [Inline]
        public long3 xzy =>  long3(x, z, y);
        
        /// Returns long3.rbg swizzling (equivalent to long3.xzy).
        [Inline]
        public long3 rbg =>  long3(x, z, y);
        
        /// Returns long3.xzyx swizzling.
        [Inline]
        public long4 xzyx =>  long4(x, z, y, x);
        
        /// Returns long3.rbgr swizzling (equivalent to long3.xzyx).
        [Inline]
        public long4 rbgr =>  long4(x, z, y, x);
        
        /// Returns long3.xzyy swizzling.
        [Inline]
        public long4 xzyy =>  long4(x, z, y, y);
        
        /// Returns long3.rbgg swizzling (equivalent to long3.xzyy).
        [Inline]
        public long4 rbgg =>  long4(x, z, y, y);
        
        /// Returns long3.xzyz swizzling.
        [Inline]
        public long4 xzyz =>  long4(x, z, y, z);
        
        /// Returns long3.rbgb swizzling (equivalent to long3.xzyz).
        [Inline]
        public long4 rbgb =>  long4(x, z, y, z);
        
        /// Returns long3.xzz swizzling.
        [Inline]
        public long3 xzz =>  long3(x, z, z);
        
        /// Returns long3.rbb swizzling (equivalent to long3.xzz).
        [Inline]
        public long3 rbb =>  long3(x, z, z);
        
        /// Returns long3.xzzx swizzling.
        [Inline]
        public long4 xzzx =>  long4(x, z, z, x);
        
        /// Returns long3.rbbr swizzling (equivalent to long3.xzzx).
        [Inline]
        public long4 rbbr =>  long4(x, z, z, x);
        
        /// Returns long3.xzzy swizzling.
        [Inline]
        public long4 xzzy =>  long4(x, z, z, y);
        
        /// Returns long3.rbbg swizzling (equivalent to long3.xzzy).
        [Inline]
        public long4 rbbg =>  long4(x, z, z, y);
        
        /// Returns long3.xzzz swizzling.
        [Inline]
        public long4 xzzz =>  long4(x, z, z, z);
        
        /// Returns long3.rbbb swizzling (equivalent to long3.xzzz).
        [Inline]
        public long4 rbbb =>  long4(x, z, z, z);
        
        /// Returns long3.yx swizzling.
        [Inline]
        public long2 yx =>  long2(y, x);
        
        /// Returns long3.gr swizzling (equivalent to long3.yx).
        [Inline]
        public long2 gr =>  long2(y, x);
        
        /// Returns long3.yxx swizzling.
        [Inline]
        public long3 yxx =>  long3(y, x, x);
        
        /// Returns long3.grr swizzling (equivalent to long3.yxx).
        [Inline]
        public long3 grr =>  long3(y, x, x);
        
        /// Returns long3.yxxx swizzling.
        [Inline]
        public long4 yxxx =>  long4(y, x, x, x);
        
        /// Returns long3.grrr swizzling (equivalent to long3.yxxx).
        [Inline]
        public long4 grrr =>  long4(y, x, x, x);
        
        /// Returns long3.yxxy swizzling.
        [Inline]
        public long4 yxxy =>  long4(y, x, x, y);
        
        /// Returns long3.grrg swizzling (equivalent to long3.yxxy).
        [Inline]
        public long4 grrg =>  long4(y, x, x, y);
        
        /// Returns long3.yxxz swizzling.
        [Inline]
        public long4 yxxz =>  long4(y, x, x, z);
        
        /// Returns long3.grrb swizzling (equivalent to long3.yxxz).
        [Inline]
        public long4 grrb =>  long4(y, x, x, z);
        
        /// Returns long3.yxy swizzling.
        [Inline]
        public long3 yxy =>  long3(y, x, y);
        
        /// Returns long3.grg swizzling (equivalent to long3.yxy).
        [Inline]
        public long3 grg =>  long3(y, x, y);
        
        /// Returns long3.yxyx swizzling.
        [Inline]
        public long4 yxyx =>  long4(y, x, y, x);
        
        /// Returns long3.grgr swizzling (equivalent to long3.yxyx).
        [Inline]
        public long4 grgr =>  long4(y, x, y, x);
        
        /// Returns long3.yxyy swizzling.
        [Inline]
        public long4 yxyy =>  long4(y, x, y, y);
        
        /// Returns long3.grgg swizzling (equivalent to long3.yxyy).
        [Inline]
        public long4 grgg =>  long4(y, x, y, y);
        
        /// Returns long3.yxyz swizzling.
        [Inline]
        public long4 yxyz =>  long4(y, x, y, z);
        
        /// Returns long3.grgb swizzling (equivalent to long3.yxyz).
        [Inline]
        public long4 grgb =>  long4(y, x, y, z);
        
        /// Returns long3.yxz swizzling.
        [Inline]
        public long3 yxz =>  long3(y, x, z);
        
        /// Returns long3.grb swizzling (equivalent to long3.yxz).
        [Inline]
        public long3 grb =>  long3(y, x, z);
        
        /// Returns long3.yxzx swizzling.
        [Inline]
        public long4 yxzx =>  long4(y, x, z, x);
        
        /// Returns long3.grbr swizzling (equivalent to long3.yxzx).
        [Inline]
        public long4 grbr =>  long4(y, x, z, x);
        
        /// Returns long3.yxzy swizzling.
        [Inline]
        public long4 yxzy =>  long4(y, x, z, y);
        
        /// Returns long3.grbg swizzling (equivalent to long3.yxzy).
        [Inline]
        public long4 grbg =>  long4(y, x, z, y);
        
        /// Returns long3.yxzz swizzling.
        [Inline]
        public long4 yxzz =>  long4(y, x, z, z);
        
        /// Returns long3.grbb swizzling (equivalent to long3.yxzz).
        [Inline]
        public long4 grbb =>  long4(y, x, z, z);
        
        /// Returns long3.yy swizzling.
        [Inline]
        public long2 yy =>  long2(y, y);
        
        /// Returns long3.gg swizzling (equivalent to long3.yy).
        [Inline]
        public long2 gg =>  long2(y, y);
        
        /// Returns long3.yyx swizzling.
        [Inline]
        public long3 yyx =>  long3(y, y, x);
        
        /// Returns long3.ggr swizzling (equivalent to long3.yyx).
        [Inline]
        public long3 ggr =>  long3(y, y, x);
        
        /// Returns long3.yyxx swizzling.
        [Inline]
        public long4 yyxx =>  long4(y, y, x, x);
        
        /// Returns long3.ggrr swizzling (equivalent to long3.yyxx).
        [Inline]
        public long4 ggrr =>  long4(y, y, x, x);
        
        /// Returns long3.yyxy swizzling.
        [Inline]
        public long4 yyxy =>  long4(y, y, x, y);
        
        /// Returns long3.ggrg swizzling (equivalent to long3.yyxy).
        [Inline]
        public long4 ggrg =>  long4(y, y, x, y);
        
        /// Returns long3.yyxz swizzling.
        [Inline]
        public long4 yyxz =>  long4(y, y, x, z);
        
        /// Returns long3.ggrb swizzling (equivalent to long3.yyxz).
        [Inline]
        public long4 ggrb =>  long4(y, y, x, z);
        
        /// Returns long3.yyy swizzling.
        [Inline]
        public long3 yyy =>  long3(y, y, y);
        
        /// Returns long3.ggg swizzling (equivalent to long3.yyy).
        [Inline]
        public long3 ggg =>  long3(y, y, y);
        
        /// Returns long3.yyyx swizzling.
        [Inline]
        public long4 yyyx =>  long4(y, y, y, x);
        
        /// Returns long3.gggr swizzling (equivalent to long3.yyyx).
        [Inline]
        public long4 gggr =>  long4(y, y, y, x);
        
        /// Returns long3.yyyy swizzling.
        [Inline]
        public long4 yyyy =>  long4(y, y, y, y);
        
        /// Returns long3.gggg swizzling (equivalent to long3.yyyy).
        [Inline]
        public long4 gggg =>  long4(y, y, y, y);
        
        /// Returns long3.yyyz swizzling.
        [Inline]
        public long4 yyyz =>  long4(y, y, y, z);
        
        /// Returns long3.gggb swizzling (equivalent to long3.yyyz).
        [Inline]
        public long4 gggb =>  long4(y, y, y, z);
        
        /// Returns long3.yyz swizzling.
        [Inline]
        public long3 yyz =>  long3(y, y, z);
        
        /// Returns long3.ggb swizzling (equivalent to long3.yyz).
        [Inline]
        public long3 ggb =>  long3(y, y, z);
        
        /// Returns long3.yyzx swizzling.
        [Inline]
        public long4 yyzx =>  long4(y, y, z, x);
        
        /// Returns long3.ggbr swizzling (equivalent to long3.yyzx).
        [Inline]
        public long4 ggbr =>  long4(y, y, z, x);
        
        /// Returns long3.yyzy swizzling.
        [Inline]
        public long4 yyzy =>  long4(y, y, z, y);
        
        /// Returns long3.ggbg swizzling (equivalent to long3.yyzy).
        [Inline]
        public long4 ggbg =>  long4(y, y, z, y);
        
        /// Returns long3.yyzz swizzling.
        [Inline]
        public long4 yyzz =>  long4(y, y, z, z);
        
        /// Returns long3.ggbb swizzling (equivalent to long3.yyzz).
        [Inline]
        public long4 ggbb =>  long4(y, y, z, z);
        
        /// Returns long3.yz swizzling.
        [Inline]
        public long2 yz =>  long2(y, z);
        
        /// Returns long3.gb swizzling (equivalent to long3.yz).
        [Inline]
        public long2 gb =>  long2(y, z);
        
        /// Returns long3.yzx swizzling.
        [Inline]
        public long3 yzx =>  long3(y, z, x);
        
        /// Returns long3.gbr swizzling (equivalent to long3.yzx).
        [Inline]
        public long3 gbr =>  long3(y, z, x);
        
        /// Returns long3.yzxx swizzling.
        [Inline]
        public long4 yzxx =>  long4(y, z, x, x);
        
        /// Returns long3.gbrr swizzling (equivalent to long3.yzxx).
        [Inline]
        public long4 gbrr =>  long4(y, z, x, x);
        
        /// Returns long3.yzxy swizzling.
        [Inline]
        public long4 yzxy =>  long4(y, z, x, y);
        
        /// Returns long3.gbrg swizzling (equivalent to long3.yzxy).
        [Inline]
        public long4 gbrg =>  long4(y, z, x, y);
        
        /// Returns long3.yzxz swizzling.
        [Inline]
        public long4 yzxz =>  long4(y, z, x, z);
        
        /// Returns long3.gbrb swizzling (equivalent to long3.yzxz).
        [Inline]
        public long4 gbrb =>  long4(y, z, x, z);
        
        /// Returns long3.yzy swizzling.
        [Inline]
        public long3 yzy =>  long3(y, z, y);
        
        /// Returns long3.gbg swizzling (equivalent to long3.yzy).
        [Inline]
        public long3 gbg =>  long3(y, z, y);
        
        /// Returns long3.yzyx swizzling.
        [Inline]
        public long4 yzyx =>  long4(y, z, y, x);
        
        /// Returns long3.gbgr swizzling (equivalent to long3.yzyx).
        [Inline]
        public long4 gbgr =>  long4(y, z, y, x);
        
        /// Returns long3.yzyy swizzling.
        [Inline]
        public long4 yzyy =>  long4(y, z, y, y);
        
        /// Returns long3.gbgg swizzling (equivalent to long3.yzyy).
        [Inline]
        public long4 gbgg =>  long4(y, z, y, y);
        
        /// Returns long3.yzyz swizzling.
        [Inline]
        public long4 yzyz =>  long4(y, z, y, z);
        
        /// Returns long3.gbgb swizzling (equivalent to long3.yzyz).
        [Inline]
        public long4 gbgb =>  long4(y, z, y, z);
        
        /// Returns long3.yzz swizzling.
        [Inline]
        public long3 yzz =>  long3(y, z, z);
        
        /// Returns long3.gbb swizzling (equivalent to long3.yzz).
        [Inline]
        public long3 gbb =>  long3(y, z, z);
        
        /// Returns long3.yzzx swizzling.
        [Inline]
        public long4 yzzx =>  long4(y, z, z, x);
        
        /// Returns long3.gbbr swizzling (equivalent to long3.yzzx).
        [Inline]
        public long4 gbbr =>  long4(y, z, z, x);
        
        /// Returns long3.yzzy swizzling.
        [Inline]
        public long4 yzzy =>  long4(y, z, z, y);
        
        /// Returns long3.gbbg swizzling (equivalent to long3.yzzy).
        [Inline]
        public long4 gbbg =>  long4(y, z, z, y);
        
        /// Returns long3.yzzz swizzling.
        [Inline]
        public long4 yzzz =>  long4(y, z, z, z);
        
        /// Returns long3.gbbb swizzling (equivalent to long3.yzzz).
        [Inline]
        public long4 gbbb =>  long4(y, z, z, z);
        
        /// Returns long3.zx swizzling.
        [Inline]
        public long2 zx =>  long2(z, x);
        
        /// Returns long3.br swizzling (equivalent to long3.zx).
        [Inline]
        public long2 br =>  long2(z, x);
        
        /// Returns long3.zxx swizzling.
        [Inline]
        public long3 zxx =>  long3(z, x, x);
        
        /// Returns long3.brr swizzling (equivalent to long3.zxx).
        [Inline]
        public long3 brr =>  long3(z, x, x);
        
        /// Returns long3.zxxx swizzling.
        [Inline]
        public long4 zxxx =>  long4(z, x, x, x);
        
        /// Returns long3.brrr swizzling (equivalent to long3.zxxx).
        [Inline]
        public long4 brrr =>  long4(z, x, x, x);
        
        /// Returns long3.zxxy swizzling.
        [Inline]
        public long4 zxxy =>  long4(z, x, x, y);
        
        /// Returns long3.brrg swizzling (equivalent to long3.zxxy).
        [Inline]
        public long4 brrg =>  long4(z, x, x, y);
        
        /// Returns long3.zxxz swizzling.
        [Inline]
        public long4 zxxz =>  long4(z, x, x, z);
        
        /// Returns long3.brrb swizzling (equivalent to long3.zxxz).
        [Inline]
        public long4 brrb =>  long4(z, x, x, z);
        
        /// Returns long3.zxy swizzling.
        [Inline]
        public long3 zxy =>  long3(z, x, y);
        
        /// Returns long3.brg swizzling (equivalent to long3.zxy).
        [Inline]
        public long3 brg =>  long3(z, x, y);
        
        /// Returns long3.zxyx swizzling.
        [Inline]
        public long4 zxyx =>  long4(z, x, y, x);
        
        /// Returns long3.brgr swizzling (equivalent to long3.zxyx).
        [Inline]
        public long4 brgr =>  long4(z, x, y, x);
        
        /// Returns long3.zxyy swizzling.
        [Inline]
        public long4 zxyy =>  long4(z, x, y, y);
        
        /// Returns long3.brgg swizzling (equivalent to long3.zxyy).
        [Inline]
        public long4 brgg =>  long4(z, x, y, y);
        
        /// Returns long3.zxyz swizzling.
        [Inline]
        public long4 zxyz =>  long4(z, x, y, z);
        
        /// Returns long3.brgb swizzling (equivalent to long3.zxyz).
        [Inline]
        public long4 brgb =>  long4(z, x, y, z);
        
        /// Returns long3.zxz swizzling.
        [Inline]
        public long3 zxz =>  long3(z, x, z);
        
        /// Returns long3.brb swizzling (equivalent to long3.zxz).
        [Inline]
        public long3 brb =>  long3(z, x, z);
        
        /// Returns long3.zxzx swizzling.
        [Inline]
        public long4 zxzx =>  long4(z, x, z, x);
        
        /// Returns long3.brbr swizzling (equivalent to long3.zxzx).
        [Inline]
        public long4 brbr =>  long4(z, x, z, x);
        
        /// Returns long3.zxzy swizzling.
        [Inline]
        public long4 zxzy =>  long4(z, x, z, y);
        
        /// Returns long3.brbg swizzling (equivalent to long3.zxzy).
        [Inline]
        public long4 brbg =>  long4(z, x, z, y);
        
        /// Returns long3.zxzz swizzling.
        [Inline]
        public long4 zxzz =>  long4(z, x, z, z);
        
        /// Returns long3.brbb swizzling (equivalent to long3.zxzz).
        [Inline]
        public long4 brbb =>  long4(z, x, z, z);
        
        /// Returns long3.zy swizzling.
        [Inline]
        public long2 zy =>  long2(z, y);
        
        /// Returns long3.bg swizzling (equivalent to long3.zy).
        [Inline]
        public long2 bg =>  long2(z, y);
        
        /// Returns long3.zyx swizzling.
        [Inline]
        public long3 zyx =>  long3(z, y, x);
        
        /// Returns long3.bgr swizzling (equivalent to long3.zyx).
        [Inline]
        public long3 bgr =>  long3(z, y, x);
        
        /// Returns long3.zyxx swizzling.
        [Inline]
        public long4 zyxx =>  long4(z, y, x, x);
        
        /// Returns long3.bgrr swizzling (equivalent to long3.zyxx).
        [Inline]
        public long4 bgrr =>  long4(z, y, x, x);
        
        /// Returns long3.zyxy swizzling.
        [Inline]
        public long4 zyxy =>  long4(z, y, x, y);
        
        /// Returns long3.bgrg swizzling (equivalent to long3.zyxy).
        [Inline]
        public long4 bgrg =>  long4(z, y, x, y);
        
        /// Returns long3.zyxz swizzling.
        [Inline]
        public long4 zyxz =>  long4(z, y, x, z);
        
        /// Returns long3.bgrb swizzling (equivalent to long3.zyxz).
        [Inline]
        public long4 bgrb =>  long4(z, y, x, z);
        
        /// Returns long3.zyy swizzling.
        [Inline]
        public long3 zyy =>  long3(z, y, y);
        
        /// Returns long3.bgg swizzling (equivalent to long3.zyy).
        [Inline]
        public long3 bgg =>  long3(z, y, y);
        
        /// Returns long3.zyyx swizzling.
        [Inline]
        public long4 zyyx =>  long4(z, y, y, x);
        
        /// Returns long3.bggr swizzling (equivalent to long3.zyyx).
        [Inline]
        public long4 bggr =>  long4(z, y, y, x);
        
        /// Returns long3.zyyy swizzling.
        [Inline]
        public long4 zyyy =>  long4(z, y, y, y);
        
        /// Returns long3.bggg swizzling (equivalent to long3.zyyy).
        [Inline]
        public long4 bggg =>  long4(z, y, y, y);
        
        /// Returns long3.zyyz swizzling.
        [Inline]
        public long4 zyyz =>  long4(z, y, y, z);
        
        /// Returns long3.bggb swizzling (equivalent to long3.zyyz).
        [Inline]
        public long4 bggb =>  long4(z, y, y, z);
        
        /// Returns long3.zyz swizzling.
        [Inline]
        public long3 zyz =>  long3(z, y, z);
        
        /// Returns long3.bgb swizzling (equivalent to long3.zyz).
        [Inline]
        public long3 bgb =>  long3(z, y, z);
        
        /// Returns long3.zyzx swizzling.
        [Inline]
        public long4 zyzx =>  long4(z, y, z, x);
        
        /// Returns long3.bgbr swizzling (equivalent to long3.zyzx).
        [Inline]
        public long4 bgbr =>  long4(z, y, z, x);
        
        /// Returns long3.zyzy swizzling.
        [Inline]
        public long4 zyzy =>  long4(z, y, z, y);
        
        /// Returns long3.bgbg swizzling (equivalent to long3.zyzy).
        [Inline]
        public long4 bgbg =>  long4(z, y, z, y);
        
        /// Returns long3.zyzz swizzling.
        [Inline]
        public long4 zyzz =>  long4(z, y, z, z);
        
        /// Returns long3.bgbb swizzling (equivalent to long3.zyzz).
        [Inline]
        public long4 bgbb =>  long4(z, y, z, z);
        
        /// Returns long3.zz swizzling.
        [Inline]
        public long2 zz =>  long2(z, z);
        
        /// Returns long3.bb swizzling (equivalent to long3.zz).
        [Inline]
        public long2 bb =>  long2(z, z);
        
        /// Returns long3.zzx swizzling.
        [Inline]
        public long3 zzx =>  long3(z, z, x);
        
        /// Returns long3.bbr swizzling (equivalent to long3.zzx).
        [Inline]
        public long3 bbr =>  long3(z, z, x);
        
        /// Returns long3.zzxx swizzling.
        [Inline]
        public long4 zzxx =>  long4(z, z, x, x);
        
        /// Returns long3.bbrr swizzling (equivalent to long3.zzxx).
        [Inline]
        public long4 bbrr =>  long4(z, z, x, x);
        
        /// Returns long3.zzxy swizzling.
        [Inline]
        public long4 zzxy =>  long4(z, z, x, y);
        
        /// Returns long3.bbrg swizzling (equivalent to long3.zzxy).
        [Inline]
        public long4 bbrg =>  long4(z, z, x, y);
        
        /// Returns long3.zzxz swizzling.
        [Inline]
        public long4 zzxz =>  long4(z, z, x, z);
        
        /// Returns long3.bbrb swizzling (equivalent to long3.zzxz).
        [Inline]
        public long4 bbrb =>  long4(z, z, x, z);
        
        /// Returns long3.zzy swizzling.
        [Inline]
        public long3 zzy =>  long3(z, z, y);
        
        /// Returns long3.bbg swizzling (equivalent to long3.zzy).
        [Inline]
        public long3 bbg =>  long3(z, z, y);
        
        /// Returns long3.zzyx swizzling.
        [Inline]
        public long4 zzyx =>  long4(z, z, y, x);
        
        /// Returns long3.bbgr swizzling (equivalent to long3.zzyx).
        [Inline]
        public long4 bbgr =>  long4(z, z, y, x);
        
        /// Returns long3.zzyy swizzling.
        [Inline]
        public long4 zzyy =>  long4(z, z, y, y);
        
        /// Returns long3.bbgg swizzling (equivalent to long3.zzyy).
        [Inline]
        public long4 bbgg =>  long4(z, z, y, y);
        
        /// Returns long3.zzyz swizzling.
        [Inline]
        public long4 zzyz =>  long4(z, z, y, z);
        
        /// Returns long3.bbgb swizzling (equivalent to long3.zzyz).
        [Inline]
        public long4 bbgb =>  long4(z, z, y, z);
        
        /// Returns long3.zzz swizzling.
        [Inline]
        public long3 zzz =>  long3(z, z, z);
        
        /// Returns long3.bbb swizzling (equivalent to long3.zzz).
        [Inline]
        public long3 bbb =>  long3(z, z, z);
        
        /// Returns long3.zzzx swizzling.
        [Inline]
        public long4 zzzx =>  long4(z, z, z, x);
        
        /// Returns long3.bbbr swizzling (equivalent to long3.zzzx).
        [Inline]
        public long4 bbbr =>  long4(z, z, z, x);
        
        /// Returns long3.zzzy swizzling.
        [Inline]
        public long4 zzzy =>  long4(z, z, z, y);
        
        /// Returns long3.bbbg swizzling (equivalent to long3.zzzy).
        [Inline]
        public long4 bbbg =>  long4(z, z, z, y);
        
        /// Returns long3.zzzz swizzling.
        [Inline]
        public long4 zzzz =>  long4(z, z, z, z);
        
        /// Returns long3.bbbb swizzling (equivalent to long3.zzzz).
        [Inline]
        public long4 bbbb =>  long4(z, z, z, z);

        //#endregion

    }
}
