using System;
namespace glm
{
    
    /// Temporary vector of type int with 3 components, used for implementing swizzling for int3.
    public struct swizzle_int3
    {

        #region Fields
        
        /// x-component
        private readonly int x;
        
        /// y-component
        private readonly int y;
        
        /// z-component
        private readonly int z;

        #endregion


        #region Properties
        
        /// Returns int3.xx swizzling.
        [Inline]
        public int2 xx =>  int2(x, x);
        
        /// Returns int3.rr swizzling (equivalent to int3.xx).
        [Inline]
        public int2 rr =>  int2(x, x);
        
        /// Returns int3.xxx swizzling.
        [Inline]
        public int3 xxx =>  int3(x, x, x);
        
        /// Returns int3.rrr swizzling (equivalent to int3.xxx).
        [Inline]
        public int3 rrr =>  int3(x, x, x);
        
        /// Returns int3.xxxx swizzling.
        [Inline]
        public int4 xxxx =>  int4(x, x, x, x);
        
        /// Returns int3.rrrr swizzling (equivalent to int3.xxxx).
        [Inline]
        public int4 rrrr =>  int4(x, x, x, x);
        
        /// Returns int3.xxxy swizzling.
        [Inline]
        public int4 xxxy =>  int4(x, x, x, y);
        
        /// Returns int3.rrrg swizzling (equivalent to int3.xxxy).
        [Inline]
        public int4 rrrg =>  int4(x, x, x, y);
        
        /// Returns int3.xxxz swizzling.
        [Inline]
        public int4 xxxz =>  int4(x, x, x, z);
        
        /// Returns int3.rrrb swizzling (equivalent to int3.xxxz).
        [Inline]
        public int4 rrrb =>  int4(x, x, x, z);
        
        /// Returns int3.xxy swizzling.
        [Inline]
        public int3 xxy =>  int3(x, x, y);
        
        /// Returns int3.rrg swizzling (equivalent to int3.xxy).
        [Inline]
        public int3 rrg =>  int3(x, x, y);
        
        /// Returns int3.xxyx swizzling.
        [Inline]
        public int4 xxyx =>  int4(x, x, y, x);
        
        /// Returns int3.rrgr swizzling (equivalent to int3.xxyx).
        [Inline]
        public int4 rrgr =>  int4(x, x, y, x);
        
        /// Returns int3.xxyy swizzling.
        [Inline]
        public int4 xxyy =>  int4(x, x, y, y);
        
        /// Returns int3.rrgg swizzling (equivalent to int3.xxyy).
        [Inline]
        public int4 rrgg =>  int4(x, x, y, y);
        
        /// Returns int3.xxyz swizzling.
        [Inline]
        public int4 xxyz =>  int4(x, x, y, z);
        
        /// Returns int3.rrgb swizzling (equivalent to int3.xxyz).
        [Inline]
        public int4 rrgb =>  int4(x, x, y, z);
        
        /// Returns int3.xxz swizzling.
        [Inline]
        public int3 xxz =>  int3(x, x, z);
        
        /// Returns int3.rrb swizzling (equivalent to int3.xxz).
        [Inline]
        public int3 rrb =>  int3(x, x, z);
        
        /// Returns int3.xxzx swizzling.
        [Inline]
        public int4 xxzx =>  int4(x, x, z, x);
        
        /// Returns int3.rrbr swizzling (equivalent to int3.xxzx).
        [Inline]
        public int4 rrbr =>  int4(x, x, z, x);
        
        /// Returns int3.xxzy swizzling.
        [Inline]
        public int4 xxzy =>  int4(x, x, z, y);
        
        /// Returns int3.rrbg swizzling (equivalent to int3.xxzy).
        [Inline]
        public int4 rrbg =>  int4(x, x, z, y);
        
        /// Returns int3.xxzz swizzling.
        [Inline]
        public int4 xxzz =>  int4(x, x, z, z);
        
        /// Returns int3.rrbb swizzling (equivalent to int3.xxzz).
        [Inline]
        public int4 rrbb =>  int4(x, x, z, z);
        
        /// Returns int3.xy swizzling.
        [Inline]
        public int2 xy =>  int2(x, y);
        
        /// Returns int3.rg swizzling (equivalent to int3.xy).
        [Inline]
        public int2 rg =>  int2(x, y);
        
        /// Returns int3.xyx swizzling.
        [Inline]
        public int3 xyx =>  int3(x, y, x);
        
        /// Returns int3.rgr swizzling (equivalent to int3.xyx).
        [Inline]
        public int3 rgr =>  int3(x, y, x);
        
        /// Returns int3.xyxx swizzling.
        [Inline]
        public int4 xyxx =>  int4(x, y, x, x);
        
        /// Returns int3.rgrr swizzling (equivalent to int3.xyxx).
        [Inline]
        public int4 rgrr =>  int4(x, y, x, x);
        
        /// Returns int3.xyxy swizzling.
        [Inline]
        public int4 xyxy =>  int4(x, y, x, y);
        
        /// Returns int3.rgrg swizzling (equivalent to int3.xyxy).
        [Inline]
        public int4 rgrg =>  int4(x, y, x, y);
        
        /// Returns int3.xyxz swizzling.
        [Inline]
        public int4 xyxz =>  int4(x, y, x, z);
        
        /// Returns int3.rgrb swizzling (equivalent to int3.xyxz).
        [Inline]
        public int4 rgrb =>  int4(x, y, x, z);
        
        /// Returns int3.xyy swizzling.
        [Inline]
        public int3 xyy =>  int3(x, y, y);
        
        /// Returns int3.rgg swizzling (equivalent to int3.xyy).
        [Inline]
        public int3 rgg =>  int3(x, y, y);
        
        /// Returns int3.xyyx swizzling.
        [Inline]
        public int4 xyyx =>  int4(x, y, y, x);
        
        /// Returns int3.rggr swizzling (equivalent to int3.xyyx).
        [Inline]
        public int4 rggr =>  int4(x, y, y, x);
        
        /// Returns int3.xyyy swizzling.
        [Inline]
        public int4 xyyy =>  int4(x, y, y, y);
        
        /// Returns int3.rggg swizzling (equivalent to int3.xyyy).
        [Inline]
        public int4 rggg =>  int4(x, y, y, y);
        
        /// Returns int3.xyyz swizzling.
        [Inline]
        public int4 xyyz =>  int4(x, y, y, z);
        
        /// Returns int3.rggb swizzling (equivalent to int3.xyyz).
        [Inline]
        public int4 rggb =>  int4(x, y, y, z);
        
        /// Returns int3.xyz swizzling.
        [Inline]
        public int3 xyz =>  int3(x, y, z);
        
        /// Returns int3.rgb swizzling (equivalent to int3.xyz).
        [Inline]
        public int3 rgb =>  int3(x, y, z);
        
        /// Returns int3.xyzx swizzling.
        [Inline]
        public int4 xyzx =>  int4(x, y, z, x);
        
        /// Returns int3.rgbr swizzling (equivalent to int3.xyzx).
        [Inline]
        public int4 rgbr =>  int4(x, y, z, x);
        
        /// Returns int3.xyzy swizzling.
        [Inline]
        public int4 xyzy =>  int4(x, y, z, y);
        
        /// Returns int3.rgbg swizzling (equivalent to int3.xyzy).
        [Inline]
        public int4 rgbg =>  int4(x, y, z, y);
        
        /// Returns int3.xyzz swizzling.
        [Inline]
        public int4 xyzz =>  int4(x, y, z, z);
        
        /// Returns int3.rgbb swizzling (equivalent to int3.xyzz).
        [Inline]
        public int4 rgbb =>  int4(x, y, z, z);
        
        /// Returns int3.xz swizzling.
        [Inline]
        public int2 xz =>  int2(x, z);
        
        /// Returns int3.rb swizzling (equivalent to int3.xz).
        [Inline]
        public int2 rb =>  int2(x, z);
        
        /// Returns int3.xzx swizzling.
        [Inline]
        public int3 xzx =>  int3(x, z, x);
        
        /// Returns int3.rbr swizzling (equivalent to int3.xzx).
        [Inline]
        public int3 rbr =>  int3(x, z, x);
        
        /// Returns int3.xzxx swizzling.
        [Inline]
        public int4 xzxx =>  int4(x, z, x, x);
        
        /// Returns int3.rbrr swizzling (equivalent to int3.xzxx).
        [Inline]
        public int4 rbrr =>  int4(x, z, x, x);
        
        /// Returns int3.xzxy swizzling.
        [Inline]
        public int4 xzxy =>  int4(x, z, x, y);
        
        /// Returns int3.rbrg swizzling (equivalent to int3.xzxy).
        [Inline]
        public int4 rbrg =>  int4(x, z, x, y);
        
        /// Returns int3.xzxz swizzling.
        [Inline]
        public int4 xzxz =>  int4(x, z, x, z);
        
        /// Returns int3.rbrb swizzling (equivalent to int3.xzxz).
        [Inline]
        public int4 rbrb =>  int4(x, z, x, z);
        
        /// Returns int3.xzy swizzling.
        [Inline]
        public int3 xzy =>  int3(x, z, y);
        
        /// Returns int3.rbg swizzling (equivalent to int3.xzy).
        [Inline]
        public int3 rbg =>  int3(x, z, y);
        
        /// Returns int3.xzyx swizzling.
        [Inline]
        public int4 xzyx =>  int4(x, z, y, x);
        
        /// Returns int3.rbgr swizzling (equivalent to int3.xzyx).
        [Inline]
        public int4 rbgr =>  int4(x, z, y, x);
        
        /// Returns int3.xzyy swizzling.
        [Inline]
        public int4 xzyy =>  int4(x, z, y, y);
        
        /// Returns int3.rbgg swizzling (equivalent to int3.xzyy).
        [Inline]
        public int4 rbgg =>  int4(x, z, y, y);
        
        /// Returns int3.xzyz swizzling.
        [Inline]
        public int4 xzyz =>  int4(x, z, y, z);
        
        /// Returns int3.rbgb swizzling (equivalent to int3.xzyz).
        [Inline]
        public int4 rbgb =>  int4(x, z, y, z);
        
        /// Returns int3.xzz swizzling.
        [Inline]
        public int3 xzz =>  int3(x, z, z);
        
        /// Returns int3.rbb swizzling (equivalent to int3.xzz).
        [Inline]
        public int3 rbb =>  int3(x, z, z);
        
        /// Returns int3.xzzx swizzling.
        [Inline]
        public int4 xzzx =>  int4(x, z, z, x);
        
        /// Returns int3.rbbr swizzling (equivalent to int3.xzzx).
        [Inline]
        public int4 rbbr =>  int4(x, z, z, x);
        
        /// Returns int3.xzzy swizzling.
        [Inline]
        public int4 xzzy =>  int4(x, z, z, y);
        
        /// Returns int3.rbbg swizzling (equivalent to int3.xzzy).
        [Inline]
        public int4 rbbg =>  int4(x, z, z, y);
        
        /// Returns int3.xzzz swizzling.
        [Inline]
        public int4 xzzz =>  int4(x, z, z, z);
        
        /// Returns int3.rbbb swizzling (equivalent to int3.xzzz).
        [Inline]
        public int4 rbbb =>  int4(x, z, z, z);
        
        /// Returns int3.yx swizzling.
        [Inline]
        public int2 yx =>  int2(y, x);
        
        /// Returns int3.gr swizzling (equivalent to int3.yx).
        [Inline]
        public int2 gr =>  int2(y, x);
        
        /// Returns int3.yxx swizzling.
        [Inline]
        public int3 yxx =>  int3(y, x, x);
        
        /// Returns int3.grr swizzling (equivalent to int3.yxx).
        [Inline]
        public int3 grr =>  int3(y, x, x);
        
        /// Returns int3.yxxx swizzling.
        [Inline]
        public int4 yxxx =>  int4(y, x, x, x);
        
        /// Returns int3.grrr swizzling (equivalent to int3.yxxx).
        [Inline]
        public int4 grrr =>  int4(y, x, x, x);
        
        /// Returns int3.yxxy swizzling.
        [Inline]
        public int4 yxxy =>  int4(y, x, x, y);
        
        /// Returns int3.grrg swizzling (equivalent to int3.yxxy).
        [Inline]
        public int4 grrg =>  int4(y, x, x, y);
        
        /// Returns int3.yxxz swizzling.
        [Inline]
        public int4 yxxz =>  int4(y, x, x, z);
        
        /// Returns int3.grrb swizzling (equivalent to int3.yxxz).
        [Inline]
        public int4 grrb =>  int4(y, x, x, z);
        
        /// Returns int3.yxy swizzling.
        [Inline]
        public int3 yxy =>  int3(y, x, y);
        
        /// Returns int3.grg swizzling (equivalent to int3.yxy).
        [Inline]
        public int3 grg =>  int3(y, x, y);
        
        /// Returns int3.yxyx swizzling.
        [Inline]
        public int4 yxyx =>  int4(y, x, y, x);
        
        /// Returns int3.grgr swizzling (equivalent to int3.yxyx).
        [Inline]
        public int4 grgr =>  int4(y, x, y, x);
        
        /// Returns int3.yxyy swizzling.
        [Inline]
        public int4 yxyy =>  int4(y, x, y, y);
        
        /// Returns int3.grgg swizzling (equivalent to int3.yxyy).
        [Inline]
        public int4 grgg =>  int4(y, x, y, y);
        
        /// Returns int3.yxyz swizzling.
        [Inline]
        public int4 yxyz =>  int4(y, x, y, z);
        
        /// Returns int3.grgb swizzling (equivalent to int3.yxyz).
        [Inline]
        public int4 grgb =>  int4(y, x, y, z);
        
        /// Returns int3.yxz swizzling.
        [Inline]
        public int3 yxz =>  int3(y, x, z);
        
        /// Returns int3.grb swizzling (equivalent to int3.yxz).
        [Inline]
        public int3 grb =>  int3(y, x, z);
        
        /// Returns int3.yxzx swizzling.
        [Inline]
        public int4 yxzx =>  int4(y, x, z, x);
        
        /// Returns int3.grbr swizzling (equivalent to int3.yxzx).
        [Inline]
        public int4 grbr =>  int4(y, x, z, x);
        
        /// Returns int3.yxzy swizzling.
        [Inline]
        public int4 yxzy =>  int4(y, x, z, y);
        
        /// Returns int3.grbg swizzling (equivalent to int3.yxzy).
        [Inline]
        public int4 grbg =>  int4(y, x, z, y);
        
        /// Returns int3.yxzz swizzling.
        [Inline]
        public int4 yxzz =>  int4(y, x, z, z);
        
        /// Returns int3.grbb swizzling (equivalent to int3.yxzz).
        [Inline]
        public int4 grbb =>  int4(y, x, z, z);
        
        /// Returns int3.yy swizzling.
        [Inline]
        public int2 yy =>  int2(y, y);
        
        /// Returns int3.gg swizzling (equivalent to int3.yy).
        [Inline]
        public int2 gg =>  int2(y, y);
        
        /// Returns int3.yyx swizzling.
        [Inline]
        public int3 yyx =>  int3(y, y, x);
        
        /// Returns int3.ggr swizzling (equivalent to int3.yyx).
        [Inline]
        public int3 ggr =>  int3(y, y, x);
        
        /// Returns int3.yyxx swizzling.
        [Inline]
        public int4 yyxx =>  int4(y, y, x, x);
        
        /// Returns int3.ggrr swizzling (equivalent to int3.yyxx).
        [Inline]
        public int4 ggrr =>  int4(y, y, x, x);
        
        /// Returns int3.yyxy swizzling.
        [Inline]
        public int4 yyxy =>  int4(y, y, x, y);
        
        /// Returns int3.ggrg swizzling (equivalent to int3.yyxy).
        [Inline]
        public int4 ggrg =>  int4(y, y, x, y);
        
        /// Returns int3.yyxz swizzling.
        [Inline]
        public int4 yyxz =>  int4(y, y, x, z);
        
        /// Returns int3.ggrb swizzling (equivalent to int3.yyxz).
        [Inline]
        public int4 ggrb =>  int4(y, y, x, z);
        
        /// Returns int3.yyy swizzling.
        [Inline]
        public int3 yyy =>  int3(y, y, y);
        
        /// Returns int3.ggg swizzling (equivalent to int3.yyy).
        [Inline]
        public int3 ggg =>  int3(y, y, y);
        
        /// Returns int3.yyyx swizzling.
        [Inline]
        public int4 yyyx =>  int4(y, y, y, x);
        
        /// Returns int3.gggr swizzling (equivalent to int3.yyyx).
        [Inline]
        public int4 gggr =>  int4(y, y, y, x);
        
        /// Returns int3.yyyy swizzling.
        [Inline]
        public int4 yyyy =>  int4(y, y, y, y);
        
        /// Returns int3.gggg swizzling (equivalent to int3.yyyy).
        [Inline]
        public int4 gggg =>  int4(y, y, y, y);
        
        /// Returns int3.yyyz swizzling.
        [Inline]
        public int4 yyyz =>  int4(y, y, y, z);
        
        /// Returns int3.gggb swizzling (equivalent to int3.yyyz).
        [Inline]
        public int4 gggb =>  int4(y, y, y, z);
        
        /// Returns int3.yyz swizzling.
        [Inline]
        public int3 yyz =>  int3(y, y, z);
        
        /// Returns int3.ggb swizzling (equivalent to int3.yyz).
        [Inline]
        public int3 ggb =>  int3(y, y, z);
        
        /// Returns int3.yyzx swizzling.
        [Inline]
        public int4 yyzx =>  int4(y, y, z, x);
        
        /// Returns int3.ggbr swizzling (equivalent to int3.yyzx).
        [Inline]
        public int4 ggbr =>  int4(y, y, z, x);
        
        /// Returns int3.yyzy swizzling.
        [Inline]
        public int4 yyzy =>  int4(y, y, z, y);
        
        /// Returns int3.ggbg swizzling (equivalent to int3.yyzy).
        [Inline]
        public int4 ggbg =>  int4(y, y, z, y);
        
        /// Returns int3.yyzz swizzling.
        [Inline]
        public int4 yyzz =>  int4(y, y, z, z);
        
        /// Returns int3.ggbb swizzling (equivalent to int3.yyzz).
        [Inline]
        public int4 ggbb =>  int4(y, y, z, z);
        
        /// Returns int3.yz swizzling.
        [Inline]
        public int2 yz =>  int2(y, z);
        
        /// Returns int3.gb swizzling (equivalent to int3.yz).
        [Inline]
        public int2 gb =>  int2(y, z);
        
        /// Returns int3.yzx swizzling.
        [Inline]
        public int3 yzx =>  int3(y, z, x);
        
        /// Returns int3.gbr swizzling (equivalent to int3.yzx).
        [Inline]
        public int3 gbr =>  int3(y, z, x);
        
        /// Returns int3.yzxx swizzling.
        [Inline]
        public int4 yzxx =>  int4(y, z, x, x);
        
        /// Returns int3.gbrr swizzling (equivalent to int3.yzxx).
        [Inline]
        public int4 gbrr =>  int4(y, z, x, x);
        
        /// Returns int3.yzxy swizzling.
        [Inline]
        public int4 yzxy =>  int4(y, z, x, y);
        
        /// Returns int3.gbrg swizzling (equivalent to int3.yzxy).
        [Inline]
        public int4 gbrg =>  int4(y, z, x, y);
        
        /// Returns int3.yzxz swizzling.
        [Inline]
        public int4 yzxz =>  int4(y, z, x, z);
        
        /// Returns int3.gbrb swizzling (equivalent to int3.yzxz).
        [Inline]
        public int4 gbrb =>  int4(y, z, x, z);
        
        /// Returns int3.yzy swizzling.
        [Inline]
        public int3 yzy =>  int3(y, z, y);
        
        /// Returns int3.gbg swizzling (equivalent to int3.yzy).
        [Inline]
        public int3 gbg =>  int3(y, z, y);
        
        /// Returns int3.yzyx swizzling.
        [Inline]
        public int4 yzyx =>  int4(y, z, y, x);
        
        /// Returns int3.gbgr swizzling (equivalent to int3.yzyx).
        [Inline]
        public int4 gbgr =>  int4(y, z, y, x);
        
        /// Returns int3.yzyy swizzling.
        [Inline]
        public int4 yzyy =>  int4(y, z, y, y);
        
        /// Returns int3.gbgg swizzling (equivalent to int3.yzyy).
        [Inline]
        public int4 gbgg =>  int4(y, z, y, y);
        
        /// Returns int3.yzyz swizzling.
        [Inline]
        public int4 yzyz =>  int4(y, z, y, z);
        
        /// Returns int3.gbgb swizzling (equivalent to int3.yzyz).
        [Inline]
        public int4 gbgb =>  int4(y, z, y, z);
        
        /// Returns int3.yzz swizzling.
        [Inline]
        public int3 yzz =>  int3(y, z, z);
        
        /// Returns int3.gbb swizzling (equivalent to int3.yzz).
        [Inline]
        public int3 gbb =>  int3(y, z, z);
        
        /// Returns int3.yzzx swizzling.
        [Inline]
        public int4 yzzx =>  int4(y, z, z, x);
        
        /// Returns int3.gbbr swizzling (equivalent to int3.yzzx).
        [Inline]
        public int4 gbbr =>  int4(y, z, z, x);
        
        /// Returns int3.yzzy swizzling.
        [Inline]
        public int4 yzzy =>  int4(y, z, z, y);
        
        /// Returns int3.gbbg swizzling (equivalent to int3.yzzy).
        [Inline]
        public int4 gbbg =>  int4(y, z, z, y);
        
        /// Returns int3.yzzz swizzling.
        [Inline]
        public int4 yzzz =>  int4(y, z, z, z);
        
        /// Returns int3.gbbb swizzling (equivalent to int3.yzzz).
        [Inline]
        public int4 gbbb =>  int4(y, z, z, z);
        
        /// Returns int3.zx swizzling.
        [Inline]
        public int2 zx =>  int2(z, x);
        
        /// Returns int3.br swizzling (equivalent to int3.zx).
        [Inline]
        public int2 br =>  int2(z, x);
        
        /// Returns int3.zxx swizzling.
        [Inline]
        public int3 zxx =>  int3(z, x, x);
        
        /// Returns int3.brr swizzling (equivalent to int3.zxx).
        [Inline]
        public int3 brr =>  int3(z, x, x);
        
        /// Returns int3.zxxx swizzling.
        [Inline]
        public int4 zxxx =>  int4(z, x, x, x);
        
        /// Returns int3.brrr swizzling (equivalent to int3.zxxx).
        [Inline]
        public int4 brrr =>  int4(z, x, x, x);
        
        /// Returns int3.zxxy swizzling.
        [Inline]
        public int4 zxxy =>  int4(z, x, x, y);
        
        /// Returns int3.brrg swizzling (equivalent to int3.zxxy).
        [Inline]
        public int4 brrg =>  int4(z, x, x, y);
        
        /// Returns int3.zxxz swizzling.
        [Inline]
        public int4 zxxz =>  int4(z, x, x, z);
        
        /// Returns int3.brrb swizzling (equivalent to int3.zxxz).
        [Inline]
        public int4 brrb =>  int4(z, x, x, z);
        
        /// Returns int3.zxy swizzling.
        [Inline]
        public int3 zxy =>  int3(z, x, y);
        
        /// Returns int3.brg swizzling (equivalent to int3.zxy).
        [Inline]
        public int3 brg =>  int3(z, x, y);
        
        /// Returns int3.zxyx swizzling.
        [Inline]
        public int4 zxyx =>  int4(z, x, y, x);
        
        /// Returns int3.brgr swizzling (equivalent to int3.zxyx).
        [Inline]
        public int4 brgr =>  int4(z, x, y, x);
        
        /// Returns int3.zxyy swizzling.
        [Inline]
        public int4 zxyy =>  int4(z, x, y, y);
        
        /// Returns int3.brgg swizzling (equivalent to int3.zxyy).
        [Inline]
        public int4 brgg =>  int4(z, x, y, y);
        
        /// Returns int3.zxyz swizzling.
        [Inline]
        public int4 zxyz =>  int4(z, x, y, z);
        
        /// Returns int3.brgb swizzling (equivalent to int3.zxyz).
        [Inline]
        public int4 brgb =>  int4(z, x, y, z);
        
        /// Returns int3.zxz swizzling.
        [Inline]
        public int3 zxz =>  int3(z, x, z);
        
        /// Returns int3.brb swizzling (equivalent to int3.zxz).
        [Inline]
        public int3 brb =>  int3(z, x, z);
        
        /// Returns int3.zxzx swizzling.
        [Inline]
        public int4 zxzx =>  int4(z, x, z, x);
        
        /// Returns int3.brbr swizzling (equivalent to int3.zxzx).
        [Inline]
        public int4 brbr =>  int4(z, x, z, x);
        
        /// Returns int3.zxzy swizzling.
        [Inline]
        public int4 zxzy =>  int4(z, x, z, y);
        
        /// Returns int3.brbg swizzling (equivalent to int3.zxzy).
        [Inline]
        public int4 brbg =>  int4(z, x, z, y);
        
        /// Returns int3.zxzz swizzling.
        [Inline]
        public int4 zxzz =>  int4(z, x, z, z);
        
        /// Returns int3.brbb swizzling (equivalent to int3.zxzz).
        [Inline]
        public int4 brbb =>  int4(z, x, z, z);
        
        /// Returns int3.zy swizzling.
        [Inline]
        public int2 zy =>  int2(z, y);
        
        /// Returns int3.bg swizzling (equivalent to int3.zy).
        [Inline]
        public int2 bg =>  int2(z, y);
        
        /// Returns int3.zyx swizzling.
        [Inline]
        public int3 zyx =>  int3(z, y, x);
        
        /// Returns int3.bgr swizzling (equivalent to int3.zyx).
        [Inline]
        public int3 bgr =>  int3(z, y, x);
        
        /// Returns int3.zyxx swizzling.
        [Inline]
        public int4 zyxx =>  int4(z, y, x, x);
        
        /// Returns int3.bgrr swizzling (equivalent to int3.zyxx).
        [Inline]
        public int4 bgrr =>  int4(z, y, x, x);
        
        /// Returns int3.zyxy swizzling.
        [Inline]
        public int4 zyxy =>  int4(z, y, x, y);
        
        /// Returns int3.bgrg swizzling (equivalent to int3.zyxy).
        [Inline]
        public int4 bgrg =>  int4(z, y, x, y);
        
        /// Returns int3.zyxz swizzling.
        [Inline]
        public int4 zyxz =>  int4(z, y, x, z);
        
        /// Returns int3.bgrb swizzling (equivalent to int3.zyxz).
        [Inline]
        public int4 bgrb =>  int4(z, y, x, z);
        
        /// Returns int3.zyy swizzling.
        [Inline]
        public int3 zyy =>  int3(z, y, y);
        
        /// Returns int3.bgg swizzling (equivalent to int3.zyy).
        [Inline]
        public int3 bgg =>  int3(z, y, y);
        
        /// Returns int3.zyyx swizzling.
        [Inline]
        public int4 zyyx =>  int4(z, y, y, x);
        
        /// Returns int3.bggr swizzling (equivalent to int3.zyyx).
        [Inline]
        public int4 bggr =>  int4(z, y, y, x);
        
        /// Returns int3.zyyy swizzling.
        [Inline]
        public int4 zyyy =>  int4(z, y, y, y);
        
        /// Returns int3.bggg swizzling (equivalent to int3.zyyy).
        [Inline]
        public int4 bggg =>  int4(z, y, y, y);
        
        /// Returns int3.zyyz swizzling.
        [Inline]
        public int4 zyyz =>  int4(z, y, y, z);
        
        /// Returns int3.bggb swizzling (equivalent to int3.zyyz).
        [Inline]
        public int4 bggb =>  int4(z, y, y, z);
        
        /// Returns int3.zyz swizzling.
        [Inline]
        public int3 zyz =>  int3(z, y, z);
        
        /// Returns int3.bgb swizzling (equivalent to int3.zyz).
        [Inline]
        public int3 bgb =>  int3(z, y, z);
        
        /// Returns int3.zyzx swizzling.
        [Inline]
        public int4 zyzx =>  int4(z, y, z, x);
        
        /// Returns int3.bgbr swizzling (equivalent to int3.zyzx).
        [Inline]
        public int4 bgbr =>  int4(z, y, z, x);
        
        /// Returns int3.zyzy swizzling.
        [Inline]
        public int4 zyzy =>  int4(z, y, z, y);
        
        /// Returns int3.bgbg swizzling (equivalent to int3.zyzy).
        [Inline]
        public int4 bgbg =>  int4(z, y, z, y);
        
        /// Returns int3.zyzz swizzling.
        [Inline]
        public int4 zyzz =>  int4(z, y, z, z);
        
        /// Returns int3.bgbb swizzling (equivalent to int3.zyzz).
        [Inline]
        public int4 bgbb =>  int4(z, y, z, z);
        
        /// Returns int3.zz swizzling.
        [Inline]
        public int2 zz =>  int2(z, z);
        
        /// Returns int3.bb swizzling (equivalent to int3.zz).
        [Inline]
        public int2 bb =>  int2(z, z);
        
        /// Returns int3.zzx swizzling.
        [Inline]
        public int3 zzx =>  int3(z, z, x);
        
        /// Returns int3.bbr swizzling (equivalent to int3.zzx).
        [Inline]
        public int3 bbr =>  int3(z, z, x);
        
        /// Returns int3.zzxx swizzling.
        [Inline]
        public int4 zzxx =>  int4(z, z, x, x);
        
        /// Returns int3.bbrr swizzling (equivalent to int3.zzxx).
        [Inline]
        public int4 bbrr =>  int4(z, z, x, x);
        
        /// Returns int3.zzxy swizzling.
        [Inline]
        public int4 zzxy =>  int4(z, z, x, y);
        
        /// Returns int3.bbrg swizzling (equivalent to int3.zzxy).
        [Inline]
        public int4 bbrg =>  int4(z, z, x, y);
        
        /// Returns int3.zzxz swizzling.
        [Inline]
        public int4 zzxz =>  int4(z, z, x, z);
        
        /// Returns int3.bbrb swizzling (equivalent to int3.zzxz).
        [Inline]
        public int4 bbrb =>  int4(z, z, x, z);
        
        /// Returns int3.zzy swizzling.
        [Inline]
        public int3 zzy =>  int3(z, z, y);
        
        /// Returns int3.bbg swizzling (equivalent to int3.zzy).
        [Inline]
        public int3 bbg =>  int3(z, z, y);
        
        /// Returns int3.zzyx swizzling.
        [Inline]
        public int4 zzyx =>  int4(z, z, y, x);
        
        /// Returns int3.bbgr swizzling (equivalent to int3.zzyx).
        [Inline]
        public int4 bbgr =>  int4(z, z, y, x);
        
        /// Returns int3.zzyy swizzling.
        [Inline]
        public int4 zzyy =>  int4(z, z, y, y);
        
        /// Returns int3.bbgg swizzling (equivalent to int3.zzyy).
        [Inline]
        public int4 bbgg =>  int4(z, z, y, y);
        
        /// Returns int3.zzyz swizzling.
        [Inline]
        public int4 zzyz =>  int4(z, z, y, z);
        
        /// Returns int3.bbgb swizzling (equivalent to int3.zzyz).
        [Inline]
        public int4 bbgb =>  int4(z, z, y, z);
        
        /// Returns int3.zzz swizzling.
        [Inline]
        public int3 zzz =>  int3(z, z, z);
        
        /// Returns int3.bbb swizzling (equivalent to int3.zzz).
        [Inline]
        public int3 bbb =>  int3(z, z, z);
        
        /// Returns int3.zzzx swizzling.
        [Inline]
        public int4 zzzx =>  int4(z, z, z, x);
        
        /// Returns int3.bbbr swizzling (equivalent to int3.zzzx).
        [Inline]
        public int4 bbbr =>  int4(z, z, z, x);
        
        /// Returns int3.zzzy swizzling.
        [Inline]
        public int4 zzzy =>  int4(z, z, z, y);
        
        /// Returns int3.bbbg swizzling (equivalent to int3.zzzy).
        [Inline]
        public int4 bbbg =>  int4(z, z, z, y);
        
        /// Returns int3.zzzz swizzling.
        [Inline]
        public int4 zzzz =>  int4(z, z, z, z);
        
        /// Returns int3.bbbb swizzling (equivalent to int3.zzzz).
        [Inline]
        public int4 bbbb =>  int4(z, z, z, z);

        #endregion

    }
}
