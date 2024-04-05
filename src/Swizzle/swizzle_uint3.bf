using System;
namespace glm
{
    
    /// Temporary vector of type uint with 3 components, used for implementing swizzling for uint3.
    public struct swizzle_uint3
    {

        #region Fields
        
        /// x-component
        private readonly uint x;
        
        /// y-component
        private readonly uint y;
        
        /// z-component
        private readonly uint z;

        #endregion


        #region Properties
        
        /// Returns uint3.xx swizzling.
        [Inline]
        public uint2 xx =>  uint2(x, x);
        
        /// Returns uint3.rr swizzling (equivalent to uint3.xx).
        [Inline]
        public uint2 rr =>  uint2(x, x);
        
        /// Returns uint3.xxx swizzling.
        [Inline]
        public uint3 xxx =>  uint3(x, x, x);
        
        /// Returns uint3.rrr swizzling (equivalent to uint3.xxx).
        [Inline]
        public uint3 rrr =>  uint3(x, x, x);
        
        /// Returns uint3.xxxx swizzling.
        [Inline]
        public uint4 xxxx =>  uint4(x, x, x, x);
        
        /// Returns uint3.rrrr swizzling (equivalent to uint3.xxxx).
        [Inline]
        public uint4 rrrr =>  uint4(x, x, x, x);
        
        /// Returns uint3.xxxy swizzling.
        [Inline]
        public uint4 xxxy =>  uint4(x, x, x, y);
        
        /// Returns uint3.rrrg swizzling (equivalent to uint3.xxxy).
        [Inline]
        public uint4 rrrg =>  uint4(x, x, x, y);
        
        /// Returns uint3.xxxz swizzling.
        [Inline]
        public uint4 xxxz =>  uint4(x, x, x, z);
        
        /// Returns uint3.rrrb swizzling (equivalent to uint3.xxxz).
        [Inline]
        public uint4 rrrb =>  uint4(x, x, x, z);
        
        /// Returns uint3.xxy swizzling.
        [Inline]
        public uint3 xxy =>  uint3(x, x, y);
        
        /// Returns uint3.rrg swizzling (equivalent to uint3.xxy).
        [Inline]
        public uint3 rrg =>  uint3(x, x, y);
        
        /// Returns uint3.xxyx swizzling.
        [Inline]
        public uint4 xxyx =>  uint4(x, x, y, x);
        
        /// Returns uint3.rrgr swizzling (equivalent to uint3.xxyx).
        [Inline]
        public uint4 rrgr =>  uint4(x, x, y, x);
        
        /// Returns uint3.xxyy swizzling.
        [Inline]
        public uint4 xxyy =>  uint4(x, x, y, y);
        
        /// Returns uint3.rrgg swizzling (equivalent to uint3.xxyy).
        [Inline]
        public uint4 rrgg =>  uint4(x, x, y, y);
        
        /// Returns uint3.xxyz swizzling.
        [Inline]
        public uint4 xxyz =>  uint4(x, x, y, z);
        
        /// Returns uint3.rrgb swizzling (equivalent to uint3.xxyz).
        [Inline]
        public uint4 rrgb =>  uint4(x, x, y, z);
        
        /// Returns uint3.xxz swizzling.
        [Inline]
        public uint3 xxz =>  uint3(x, x, z);
        
        /// Returns uint3.rrb swizzling (equivalent to uint3.xxz).
        [Inline]
        public uint3 rrb =>  uint3(x, x, z);
        
        /// Returns uint3.xxzx swizzling.
        [Inline]
        public uint4 xxzx =>  uint4(x, x, z, x);
        
        /// Returns uint3.rrbr swizzling (equivalent to uint3.xxzx).
        [Inline]
        public uint4 rrbr =>  uint4(x, x, z, x);
        
        /// Returns uint3.xxzy swizzling.
        [Inline]
        public uint4 xxzy =>  uint4(x, x, z, y);
        
        /// Returns uint3.rrbg swizzling (equivalent to uint3.xxzy).
        [Inline]
        public uint4 rrbg =>  uint4(x, x, z, y);
        
        /// Returns uint3.xxzz swizzling.
        [Inline]
        public uint4 xxzz =>  uint4(x, x, z, z);
        
        /// Returns uint3.rrbb swizzling (equivalent to uint3.xxzz).
        [Inline]
        public uint4 rrbb =>  uint4(x, x, z, z);
        
        /// Returns uint3.xy swizzling.
        [Inline]
        public uint2 xy =>  uint2(x, y);
        
        /// Returns uint3.rg swizzling (equivalent to uint3.xy).
        [Inline]
        public uint2 rg =>  uint2(x, y);
        
        /// Returns uint3.xyx swizzling.
        [Inline]
        public uint3 xyx =>  uint3(x, y, x);
        
        /// Returns uint3.rgr swizzling (equivalent to uint3.xyx).
        [Inline]
        public uint3 rgr =>  uint3(x, y, x);
        
        /// Returns uint3.xyxx swizzling.
        [Inline]
        public uint4 xyxx =>  uint4(x, y, x, x);
        
        /// Returns uint3.rgrr swizzling (equivalent to uint3.xyxx).
        [Inline]
        public uint4 rgrr =>  uint4(x, y, x, x);
        
        /// Returns uint3.xyxy swizzling.
        [Inline]
        public uint4 xyxy =>  uint4(x, y, x, y);
        
        /// Returns uint3.rgrg swizzling (equivalent to uint3.xyxy).
        [Inline]
        public uint4 rgrg =>  uint4(x, y, x, y);
        
        /// Returns uint3.xyxz swizzling.
        [Inline]
        public uint4 xyxz =>  uint4(x, y, x, z);
        
        /// Returns uint3.rgrb swizzling (equivalent to uint3.xyxz).
        [Inline]
        public uint4 rgrb =>  uint4(x, y, x, z);
        
        /// Returns uint3.xyy swizzling.
        [Inline]
        public uint3 xyy =>  uint3(x, y, y);
        
        /// Returns uint3.rgg swizzling (equivalent to uint3.xyy).
        [Inline]
        public uint3 rgg =>  uint3(x, y, y);
        
        /// Returns uint3.xyyx swizzling.
        [Inline]
        public uint4 xyyx =>  uint4(x, y, y, x);
        
        /// Returns uint3.rggr swizzling (equivalent to uint3.xyyx).
        [Inline]
        public uint4 rggr =>  uint4(x, y, y, x);
        
        /// Returns uint3.xyyy swizzling.
        [Inline]
        public uint4 xyyy =>  uint4(x, y, y, y);
        
        /// Returns uint3.rggg swizzling (equivalent to uint3.xyyy).
        [Inline]
        public uint4 rggg =>  uint4(x, y, y, y);
        
        /// Returns uint3.xyyz swizzling.
        [Inline]
        public uint4 xyyz =>  uint4(x, y, y, z);
        
        /// Returns uint3.rggb swizzling (equivalent to uint3.xyyz).
        [Inline]
        public uint4 rggb =>  uint4(x, y, y, z);
        
        /// Returns uint3.xyz swizzling.
        [Inline]
        public uint3 xyz =>  uint3(x, y, z);
        
        /// Returns uint3.rgb swizzling (equivalent to uint3.xyz).
        [Inline]
        public uint3 rgb =>  uint3(x, y, z);
        
        /// Returns uint3.xyzx swizzling.
        [Inline]
        public uint4 xyzx =>  uint4(x, y, z, x);
        
        /// Returns uint3.rgbr swizzling (equivalent to uint3.xyzx).
        [Inline]
        public uint4 rgbr =>  uint4(x, y, z, x);
        
        /// Returns uint3.xyzy swizzling.
        [Inline]
        public uint4 xyzy =>  uint4(x, y, z, y);
        
        /// Returns uint3.rgbg swizzling (equivalent to uint3.xyzy).
        [Inline]
        public uint4 rgbg =>  uint4(x, y, z, y);
        
        /// Returns uint3.xyzz swizzling.
        [Inline]
        public uint4 xyzz =>  uint4(x, y, z, z);
        
        /// Returns uint3.rgbb swizzling (equivalent to uint3.xyzz).
        [Inline]
        public uint4 rgbb =>  uint4(x, y, z, z);
        
        /// Returns uint3.xz swizzling.
        [Inline]
        public uint2 xz =>  uint2(x, z);
        
        /// Returns uint3.rb swizzling (equivalent to uint3.xz).
        [Inline]
        public uint2 rb =>  uint2(x, z);
        
        /// Returns uint3.xzx swizzling.
        [Inline]
        public uint3 xzx =>  uint3(x, z, x);
        
        /// Returns uint3.rbr swizzling (equivalent to uint3.xzx).
        [Inline]
        public uint3 rbr =>  uint3(x, z, x);
        
        /// Returns uint3.xzxx swizzling.
        [Inline]
        public uint4 xzxx =>  uint4(x, z, x, x);
        
        /// Returns uint3.rbrr swizzling (equivalent to uint3.xzxx).
        [Inline]
        public uint4 rbrr =>  uint4(x, z, x, x);
        
        /// Returns uint3.xzxy swizzling.
        [Inline]
        public uint4 xzxy =>  uint4(x, z, x, y);
        
        /// Returns uint3.rbrg swizzling (equivalent to uint3.xzxy).
        [Inline]
        public uint4 rbrg =>  uint4(x, z, x, y);
        
        /// Returns uint3.xzxz swizzling.
        [Inline]
        public uint4 xzxz =>  uint4(x, z, x, z);
        
        /// Returns uint3.rbrb swizzling (equivalent to uint3.xzxz).
        [Inline]
        public uint4 rbrb =>  uint4(x, z, x, z);
        
        /// Returns uint3.xzy swizzling.
        [Inline]
        public uint3 xzy =>  uint3(x, z, y);
        
        /// Returns uint3.rbg swizzling (equivalent to uint3.xzy).
        [Inline]
        public uint3 rbg =>  uint3(x, z, y);
        
        /// Returns uint3.xzyx swizzling.
        [Inline]
        public uint4 xzyx =>  uint4(x, z, y, x);
        
        /// Returns uint3.rbgr swizzling (equivalent to uint3.xzyx).
        [Inline]
        public uint4 rbgr =>  uint4(x, z, y, x);
        
        /// Returns uint3.xzyy swizzling.
        [Inline]
        public uint4 xzyy =>  uint4(x, z, y, y);
        
        /// Returns uint3.rbgg swizzling (equivalent to uint3.xzyy).
        [Inline]
        public uint4 rbgg =>  uint4(x, z, y, y);
        
        /// Returns uint3.xzyz swizzling.
        [Inline]
        public uint4 xzyz =>  uint4(x, z, y, z);
        
        /// Returns uint3.rbgb swizzling (equivalent to uint3.xzyz).
        [Inline]
        public uint4 rbgb =>  uint4(x, z, y, z);
        
        /// Returns uint3.xzz swizzling.
        [Inline]
        public uint3 xzz =>  uint3(x, z, z);
        
        /// Returns uint3.rbb swizzling (equivalent to uint3.xzz).
        [Inline]
        public uint3 rbb =>  uint3(x, z, z);
        
        /// Returns uint3.xzzx swizzling.
        [Inline]
        public uint4 xzzx =>  uint4(x, z, z, x);
        
        /// Returns uint3.rbbr swizzling (equivalent to uint3.xzzx).
        [Inline]
        public uint4 rbbr =>  uint4(x, z, z, x);
        
        /// Returns uint3.xzzy swizzling.
        [Inline]
        public uint4 xzzy =>  uint4(x, z, z, y);
        
        /// Returns uint3.rbbg swizzling (equivalent to uint3.xzzy).
        [Inline]
        public uint4 rbbg =>  uint4(x, z, z, y);
        
        /// Returns uint3.xzzz swizzling.
        [Inline]
        public uint4 xzzz =>  uint4(x, z, z, z);
        
        /// Returns uint3.rbbb swizzling (equivalent to uint3.xzzz).
        [Inline]
        public uint4 rbbb =>  uint4(x, z, z, z);
        
        /// Returns uint3.yx swizzling.
        [Inline]
        public uint2 yx =>  uint2(y, x);
        
        /// Returns uint3.gr swizzling (equivalent to uint3.yx).
        [Inline]
        public uint2 gr =>  uint2(y, x);
        
        /// Returns uint3.yxx swizzling.
        [Inline]
        public uint3 yxx =>  uint3(y, x, x);
        
        /// Returns uint3.grr swizzling (equivalent to uint3.yxx).
        [Inline]
        public uint3 grr =>  uint3(y, x, x);
        
        /// Returns uint3.yxxx swizzling.
        [Inline]
        public uint4 yxxx =>  uint4(y, x, x, x);
        
        /// Returns uint3.grrr swizzling (equivalent to uint3.yxxx).
        [Inline]
        public uint4 grrr =>  uint4(y, x, x, x);
        
        /// Returns uint3.yxxy swizzling.
        [Inline]
        public uint4 yxxy =>  uint4(y, x, x, y);
        
        /// Returns uint3.grrg swizzling (equivalent to uint3.yxxy).
        [Inline]
        public uint4 grrg =>  uint4(y, x, x, y);
        
        /// Returns uint3.yxxz swizzling.
        [Inline]
        public uint4 yxxz =>  uint4(y, x, x, z);
        
        /// Returns uint3.grrb swizzling (equivalent to uint3.yxxz).
        [Inline]
        public uint4 grrb =>  uint4(y, x, x, z);
        
        /// Returns uint3.yxy swizzling.
        [Inline]
        public uint3 yxy =>  uint3(y, x, y);
        
        /// Returns uint3.grg swizzling (equivalent to uint3.yxy).
        [Inline]
        public uint3 grg =>  uint3(y, x, y);
        
        /// Returns uint3.yxyx swizzling.
        [Inline]
        public uint4 yxyx =>  uint4(y, x, y, x);
        
        /// Returns uint3.grgr swizzling (equivalent to uint3.yxyx).
        [Inline]
        public uint4 grgr =>  uint4(y, x, y, x);
        
        /// Returns uint3.yxyy swizzling.
        [Inline]
        public uint4 yxyy =>  uint4(y, x, y, y);
        
        /// Returns uint3.grgg swizzling (equivalent to uint3.yxyy).
        [Inline]
        public uint4 grgg =>  uint4(y, x, y, y);
        
        /// Returns uint3.yxyz swizzling.
        [Inline]
        public uint4 yxyz =>  uint4(y, x, y, z);
        
        /// Returns uint3.grgb swizzling (equivalent to uint3.yxyz).
        [Inline]
        public uint4 grgb =>  uint4(y, x, y, z);
        
        /// Returns uint3.yxz swizzling.
        [Inline]
        public uint3 yxz =>  uint3(y, x, z);
        
        /// Returns uint3.grb swizzling (equivalent to uint3.yxz).
        [Inline]
        public uint3 grb =>  uint3(y, x, z);
        
        /// Returns uint3.yxzx swizzling.
        [Inline]
        public uint4 yxzx =>  uint4(y, x, z, x);
        
        /// Returns uint3.grbr swizzling (equivalent to uint3.yxzx).
        [Inline]
        public uint4 grbr =>  uint4(y, x, z, x);
        
        /// Returns uint3.yxzy swizzling.
        [Inline]
        public uint4 yxzy =>  uint4(y, x, z, y);
        
        /// Returns uint3.grbg swizzling (equivalent to uint3.yxzy).
        [Inline]
        public uint4 grbg =>  uint4(y, x, z, y);
        
        /// Returns uint3.yxzz swizzling.
        [Inline]
        public uint4 yxzz =>  uint4(y, x, z, z);
        
        /// Returns uint3.grbb swizzling (equivalent to uint3.yxzz).
        [Inline]
        public uint4 grbb =>  uint4(y, x, z, z);
        
        /// Returns uint3.yy swizzling.
        [Inline]
        public uint2 yy =>  uint2(y, y);
        
        /// Returns uint3.gg swizzling (equivalent to uint3.yy).
        [Inline]
        public uint2 gg =>  uint2(y, y);
        
        /// Returns uint3.yyx swizzling.
        [Inline]
        public uint3 yyx =>  uint3(y, y, x);
        
        /// Returns uint3.ggr swizzling (equivalent to uint3.yyx).
        [Inline]
        public uint3 ggr =>  uint3(y, y, x);
        
        /// Returns uint3.yyxx swizzling.
        [Inline]
        public uint4 yyxx =>  uint4(y, y, x, x);
        
        /// Returns uint3.ggrr swizzling (equivalent to uint3.yyxx).
        [Inline]
        public uint4 ggrr =>  uint4(y, y, x, x);
        
        /// Returns uint3.yyxy swizzling.
        [Inline]
        public uint4 yyxy =>  uint4(y, y, x, y);
        
        /// Returns uint3.ggrg swizzling (equivalent to uint3.yyxy).
        [Inline]
        public uint4 ggrg =>  uint4(y, y, x, y);
        
        /// Returns uint3.yyxz swizzling.
        [Inline]
        public uint4 yyxz =>  uint4(y, y, x, z);
        
        /// Returns uint3.ggrb swizzling (equivalent to uint3.yyxz).
        [Inline]
        public uint4 ggrb =>  uint4(y, y, x, z);
        
        /// Returns uint3.yyy swizzling.
        [Inline]
        public uint3 yyy =>  uint3(y, y, y);
        
        /// Returns uint3.ggg swizzling (equivalent to uint3.yyy).
        [Inline]
        public uint3 ggg =>  uint3(y, y, y);
        
        /// Returns uint3.yyyx swizzling.
        [Inline]
        public uint4 yyyx =>  uint4(y, y, y, x);
        
        /// Returns uint3.gggr swizzling (equivalent to uint3.yyyx).
        [Inline]
        public uint4 gggr =>  uint4(y, y, y, x);
        
        /// Returns uint3.yyyy swizzling.
        [Inline]
        public uint4 yyyy =>  uint4(y, y, y, y);
        
        /// Returns uint3.gggg swizzling (equivalent to uint3.yyyy).
        [Inline]
        public uint4 gggg =>  uint4(y, y, y, y);
        
        /// Returns uint3.yyyz swizzling.
        [Inline]
        public uint4 yyyz =>  uint4(y, y, y, z);
        
        /// Returns uint3.gggb swizzling (equivalent to uint3.yyyz).
        [Inline]
        public uint4 gggb =>  uint4(y, y, y, z);
        
        /// Returns uint3.yyz swizzling.
        [Inline]
        public uint3 yyz =>  uint3(y, y, z);
        
        /// Returns uint3.ggb swizzling (equivalent to uint3.yyz).
        [Inline]
        public uint3 ggb =>  uint3(y, y, z);
        
        /// Returns uint3.yyzx swizzling.
        [Inline]
        public uint4 yyzx =>  uint4(y, y, z, x);
        
        /// Returns uint3.ggbr swizzling (equivalent to uint3.yyzx).
        [Inline]
        public uint4 ggbr =>  uint4(y, y, z, x);
        
        /// Returns uint3.yyzy swizzling.
        [Inline]
        public uint4 yyzy =>  uint4(y, y, z, y);
        
        /// Returns uint3.ggbg swizzling (equivalent to uint3.yyzy).
        [Inline]
        public uint4 ggbg =>  uint4(y, y, z, y);
        
        /// Returns uint3.yyzz swizzling.
        [Inline]
        public uint4 yyzz =>  uint4(y, y, z, z);
        
        /// Returns uint3.ggbb swizzling (equivalent to uint3.yyzz).
        [Inline]
        public uint4 ggbb =>  uint4(y, y, z, z);
        
        /// Returns uint3.yz swizzling.
        [Inline]
        public uint2 yz =>  uint2(y, z);
        
        /// Returns uint3.gb swizzling (equivalent to uint3.yz).
        [Inline]
        public uint2 gb =>  uint2(y, z);
        
        /// Returns uint3.yzx swizzling.
        [Inline]
        public uint3 yzx =>  uint3(y, z, x);
        
        /// Returns uint3.gbr swizzling (equivalent to uint3.yzx).
        [Inline]
        public uint3 gbr =>  uint3(y, z, x);
        
        /// Returns uint3.yzxx swizzling.
        [Inline]
        public uint4 yzxx =>  uint4(y, z, x, x);
        
        /// Returns uint3.gbrr swizzling (equivalent to uint3.yzxx).
        [Inline]
        public uint4 gbrr =>  uint4(y, z, x, x);
        
        /// Returns uint3.yzxy swizzling.
        [Inline]
        public uint4 yzxy =>  uint4(y, z, x, y);
        
        /// Returns uint3.gbrg swizzling (equivalent to uint3.yzxy).
        [Inline]
        public uint4 gbrg =>  uint4(y, z, x, y);
        
        /// Returns uint3.yzxz swizzling.
        [Inline]
        public uint4 yzxz =>  uint4(y, z, x, z);
        
        /// Returns uint3.gbrb swizzling (equivalent to uint3.yzxz).
        [Inline]
        public uint4 gbrb =>  uint4(y, z, x, z);
        
        /// Returns uint3.yzy swizzling.
        [Inline]
        public uint3 yzy =>  uint3(y, z, y);
        
        /// Returns uint3.gbg swizzling (equivalent to uint3.yzy).
        [Inline]
        public uint3 gbg =>  uint3(y, z, y);
        
        /// Returns uint3.yzyx swizzling.
        [Inline]
        public uint4 yzyx =>  uint4(y, z, y, x);
        
        /// Returns uint3.gbgr swizzling (equivalent to uint3.yzyx).
        [Inline]
        public uint4 gbgr =>  uint4(y, z, y, x);
        
        /// Returns uint3.yzyy swizzling.
        [Inline]
        public uint4 yzyy =>  uint4(y, z, y, y);
        
        /// Returns uint3.gbgg swizzling (equivalent to uint3.yzyy).
        [Inline]
        public uint4 gbgg =>  uint4(y, z, y, y);
        
        /// Returns uint3.yzyz swizzling.
        [Inline]
        public uint4 yzyz =>  uint4(y, z, y, z);
        
        /// Returns uint3.gbgb swizzling (equivalent to uint3.yzyz).
        [Inline]
        public uint4 gbgb =>  uint4(y, z, y, z);
        
        /// Returns uint3.yzz swizzling.
        [Inline]
        public uint3 yzz =>  uint3(y, z, z);
        
        /// Returns uint3.gbb swizzling (equivalent to uint3.yzz).
        [Inline]
        public uint3 gbb =>  uint3(y, z, z);
        
        /// Returns uint3.yzzx swizzling.
        [Inline]
        public uint4 yzzx =>  uint4(y, z, z, x);
        
        /// Returns uint3.gbbr swizzling (equivalent to uint3.yzzx).
        [Inline]
        public uint4 gbbr =>  uint4(y, z, z, x);
        
        /// Returns uint3.yzzy swizzling.
        [Inline]
        public uint4 yzzy =>  uint4(y, z, z, y);
        
        /// Returns uint3.gbbg swizzling (equivalent to uint3.yzzy).
        [Inline]
        public uint4 gbbg =>  uint4(y, z, z, y);
        
        /// Returns uint3.yzzz swizzling.
        [Inline]
        public uint4 yzzz =>  uint4(y, z, z, z);
        
        /// Returns uint3.gbbb swizzling (equivalent to uint3.yzzz).
        [Inline]
        public uint4 gbbb =>  uint4(y, z, z, z);
        
        /// Returns uint3.zx swizzling.
        [Inline]
        public uint2 zx =>  uint2(z, x);
        
        /// Returns uint3.br swizzling (equivalent to uint3.zx).
        [Inline]
        public uint2 br =>  uint2(z, x);
        
        /// Returns uint3.zxx swizzling.
        [Inline]
        public uint3 zxx =>  uint3(z, x, x);
        
        /// Returns uint3.brr swizzling (equivalent to uint3.zxx).
        [Inline]
        public uint3 brr =>  uint3(z, x, x);
        
        /// Returns uint3.zxxx swizzling.
        [Inline]
        public uint4 zxxx =>  uint4(z, x, x, x);
        
        /// Returns uint3.brrr swizzling (equivalent to uint3.zxxx).
        [Inline]
        public uint4 brrr =>  uint4(z, x, x, x);
        
        /// Returns uint3.zxxy swizzling.
        [Inline]
        public uint4 zxxy =>  uint4(z, x, x, y);
        
        /// Returns uint3.brrg swizzling (equivalent to uint3.zxxy).
        [Inline]
        public uint4 brrg =>  uint4(z, x, x, y);
        
        /// Returns uint3.zxxz swizzling.
        [Inline]
        public uint4 zxxz =>  uint4(z, x, x, z);
        
        /// Returns uint3.brrb swizzling (equivalent to uint3.zxxz).
        [Inline]
        public uint4 brrb =>  uint4(z, x, x, z);
        
        /// Returns uint3.zxy swizzling.
        [Inline]
        public uint3 zxy =>  uint3(z, x, y);
        
        /// Returns uint3.brg swizzling (equivalent to uint3.zxy).
        [Inline]
        public uint3 brg =>  uint3(z, x, y);
        
        /// Returns uint3.zxyx swizzling.
        [Inline]
        public uint4 zxyx =>  uint4(z, x, y, x);
        
        /// Returns uint3.brgr swizzling (equivalent to uint3.zxyx).
        [Inline]
        public uint4 brgr =>  uint4(z, x, y, x);
        
        /// Returns uint3.zxyy swizzling.
        [Inline]
        public uint4 zxyy =>  uint4(z, x, y, y);
        
        /// Returns uint3.brgg swizzling (equivalent to uint3.zxyy).
        [Inline]
        public uint4 brgg =>  uint4(z, x, y, y);
        
        /// Returns uint3.zxyz swizzling.
        [Inline]
        public uint4 zxyz =>  uint4(z, x, y, z);
        
        /// Returns uint3.brgb swizzling (equivalent to uint3.zxyz).
        [Inline]
        public uint4 brgb =>  uint4(z, x, y, z);
        
        /// Returns uint3.zxz swizzling.
        [Inline]
        public uint3 zxz =>  uint3(z, x, z);
        
        /// Returns uint3.brb swizzling (equivalent to uint3.zxz).
        [Inline]
        public uint3 brb =>  uint3(z, x, z);
        
        /// Returns uint3.zxzx swizzling.
        [Inline]
        public uint4 zxzx =>  uint4(z, x, z, x);
        
        /// Returns uint3.brbr swizzling (equivalent to uint3.zxzx).
        [Inline]
        public uint4 brbr =>  uint4(z, x, z, x);
        
        /// Returns uint3.zxzy swizzling.
        [Inline]
        public uint4 zxzy =>  uint4(z, x, z, y);
        
        /// Returns uint3.brbg swizzling (equivalent to uint3.zxzy).
        [Inline]
        public uint4 brbg =>  uint4(z, x, z, y);
        
        /// Returns uint3.zxzz swizzling.
        [Inline]
        public uint4 zxzz =>  uint4(z, x, z, z);
        
        /// Returns uint3.brbb swizzling (equivalent to uint3.zxzz).
        [Inline]
        public uint4 brbb =>  uint4(z, x, z, z);
        
        /// Returns uint3.zy swizzling.
        [Inline]
        public uint2 zy =>  uint2(z, y);
        
        /// Returns uint3.bg swizzling (equivalent to uint3.zy).
        [Inline]
        public uint2 bg =>  uint2(z, y);
        
        /// Returns uint3.zyx swizzling.
        [Inline]
        public uint3 zyx =>  uint3(z, y, x);
        
        /// Returns uint3.bgr swizzling (equivalent to uint3.zyx).
        [Inline]
        public uint3 bgr =>  uint3(z, y, x);
        
        /// Returns uint3.zyxx swizzling.
        [Inline]
        public uint4 zyxx =>  uint4(z, y, x, x);
        
        /// Returns uint3.bgrr swizzling (equivalent to uint3.zyxx).
        [Inline]
        public uint4 bgrr =>  uint4(z, y, x, x);
        
        /// Returns uint3.zyxy swizzling.
        [Inline]
        public uint4 zyxy =>  uint4(z, y, x, y);
        
        /// Returns uint3.bgrg swizzling (equivalent to uint3.zyxy).
        [Inline]
        public uint4 bgrg =>  uint4(z, y, x, y);
        
        /// Returns uint3.zyxz swizzling.
        [Inline]
        public uint4 zyxz =>  uint4(z, y, x, z);
        
        /// Returns uint3.bgrb swizzling (equivalent to uint3.zyxz).
        [Inline]
        public uint4 bgrb =>  uint4(z, y, x, z);
        
        /// Returns uint3.zyy swizzling.
        [Inline]
        public uint3 zyy =>  uint3(z, y, y);
        
        /// Returns uint3.bgg swizzling (equivalent to uint3.zyy).
        [Inline]
        public uint3 bgg =>  uint3(z, y, y);
        
        /// Returns uint3.zyyx swizzling.
        [Inline]
        public uint4 zyyx =>  uint4(z, y, y, x);
        
        /// Returns uint3.bggr swizzling (equivalent to uint3.zyyx).
        [Inline]
        public uint4 bggr =>  uint4(z, y, y, x);
        
        /// Returns uint3.zyyy swizzling.
        [Inline]
        public uint4 zyyy =>  uint4(z, y, y, y);
        
        /// Returns uint3.bggg swizzling (equivalent to uint3.zyyy).
        [Inline]
        public uint4 bggg =>  uint4(z, y, y, y);
        
        /// Returns uint3.zyyz swizzling.
        [Inline]
        public uint4 zyyz =>  uint4(z, y, y, z);
        
        /// Returns uint3.bggb swizzling (equivalent to uint3.zyyz).
        [Inline]
        public uint4 bggb =>  uint4(z, y, y, z);
        
        /// Returns uint3.zyz swizzling.
        [Inline]
        public uint3 zyz =>  uint3(z, y, z);
        
        /// Returns uint3.bgb swizzling (equivalent to uint3.zyz).
        [Inline]
        public uint3 bgb =>  uint3(z, y, z);
        
        /// Returns uint3.zyzx swizzling.
        [Inline]
        public uint4 zyzx =>  uint4(z, y, z, x);
        
        /// Returns uint3.bgbr swizzling (equivalent to uint3.zyzx).
        [Inline]
        public uint4 bgbr =>  uint4(z, y, z, x);
        
        /// Returns uint3.zyzy swizzling.
        [Inline]
        public uint4 zyzy =>  uint4(z, y, z, y);
        
        /// Returns uint3.bgbg swizzling (equivalent to uint3.zyzy).
        [Inline]
        public uint4 bgbg =>  uint4(z, y, z, y);
        
        /// Returns uint3.zyzz swizzling.
        [Inline]
        public uint4 zyzz =>  uint4(z, y, z, z);
        
        /// Returns uint3.bgbb swizzling (equivalent to uint3.zyzz).
        [Inline]
        public uint4 bgbb =>  uint4(z, y, z, z);
        
        /// Returns uint3.zz swizzling.
        [Inline]
        public uint2 zz =>  uint2(z, z);
        
        /// Returns uint3.bb swizzling (equivalent to uint3.zz).
        [Inline]
        public uint2 bb =>  uint2(z, z);
        
        /// Returns uint3.zzx swizzling.
        [Inline]
        public uint3 zzx =>  uint3(z, z, x);
        
        /// Returns uint3.bbr swizzling (equivalent to uint3.zzx).
        [Inline]
        public uint3 bbr =>  uint3(z, z, x);
        
        /// Returns uint3.zzxx swizzling.
        [Inline]
        public uint4 zzxx =>  uint4(z, z, x, x);
        
        /// Returns uint3.bbrr swizzling (equivalent to uint3.zzxx).
        [Inline]
        public uint4 bbrr =>  uint4(z, z, x, x);
        
        /// Returns uint3.zzxy swizzling.
        [Inline]
        public uint4 zzxy =>  uint4(z, z, x, y);
        
        /// Returns uint3.bbrg swizzling (equivalent to uint3.zzxy).
        [Inline]
        public uint4 bbrg =>  uint4(z, z, x, y);
        
        /// Returns uint3.zzxz swizzling.
        [Inline]
        public uint4 zzxz =>  uint4(z, z, x, z);
        
        /// Returns uint3.bbrb swizzling (equivalent to uint3.zzxz).
        [Inline]
        public uint4 bbrb =>  uint4(z, z, x, z);
        
        /// Returns uint3.zzy swizzling.
        [Inline]
        public uint3 zzy =>  uint3(z, z, y);
        
        /// Returns uint3.bbg swizzling (equivalent to uint3.zzy).
        [Inline]
        public uint3 bbg =>  uint3(z, z, y);
        
        /// Returns uint3.zzyx swizzling.
        [Inline]
        public uint4 zzyx =>  uint4(z, z, y, x);
        
        /// Returns uint3.bbgr swizzling (equivalent to uint3.zzyx).
        [Inline]
        public uint4 bbgr =>  uint4(z, z, y, x);
        
        /// Returns uint3.zzyy swizzling.
        [Inline]
        public uint4 zzyy =>  uint4(z, z, y, y);
        
        /// Returns uint3.bbgg swizzling (equivalent to uint3.zzyy).
        [Inline]
        public uint4 bbgg =>  uint4(z, z, y, y);
        
        /// Returns uint3.zzyz swizzling.
        [Inline]
        public uint4 zzyz =>  uint4(z, z, y, z);
        
        /// Returns uint3.bbgb swizzling (equivalent to uint3.zzyz).
        [Inline]
        public uint4 bbgb =>  uint4(z, z, y, z);
        
        /// Returns uint3.zzz swizzling.
        [Inline]
        public uint3 zzz =>  uint3(z, z, z);
        
        /// Returns uint3.bbb swizzling (equivalent to uint3.zzz).
        [Inline]
        public uint3 bbb =>  uint3(z, z, z);
        
        /// Returns uint3.zzzx swizzling.
        [Inline]
        public uint4 zzzx =>  uint4(z, z, z, x);
        
        /// Returns uint3.bbbr swizzling (equivalent to uint3.zzzx).
        [Inline]
        public uint4 bbbr =>  uint4(z, z, z, x);
        
        /// Returns uint3.zzzy swizzling.
        [Inline]
        public uint4 zzzy =>  uint4(z, z, z, y);
        
        /// Returns uint3.bbbg swizzling (equivalent to uint3.zzzy).
        [Inline]
        public uint4 bbbg =>  uint4(z, z, z, y);
        
        /// Returns uint3.zzzz swizzling.
        [Inline]
        public uint4 zzzz =>  uint4(z, z, z, z);
        
        /// Returns uint3.bbbb swizzling (equivalent to uint3.zzzz).
        [Inline]
        public uint4 bbbb =>  uint4(z, z, z, z);

        #endregion

    }
}
