using System;
namespace glm
{
    
    /// Temporary vector of type float with 3 components, used for implementing swizzling for float3.
    public struct swizzle_float3
    {

        #region Fields
        
        /// x-component
        private readonly float x;
        
        /// y-component
        private readonly float y;
        
        /// z-component
        private readonly float z;

        #endregion


        #region Properties
        
        /// Returns float3.xx swizzling.
        [Inline]
        public float2 xx =>  float2(x, x);
        
        /// Returns float3.rr swizzling (equivalent to float3.xx).
        [Inline]
        public float2 rr =>  float2(x, x);
        
        /// Returns float3.xxx swizzling.
        [Inline]
        public float3 xxx =>  float3(x, x, x);
        
        /// Returns float3.rrr swizzling (equivalent to float3.xxx).
        [Inline]
        public float3 rrr =>  float3(x, x, x);
        
        /// Returns float3.xxxx swizzling.
        [Inline]
        public float4 xxxx =>  float4(x, x, x, x);
        
        /// Returns float3.rrrr swizzling (equivalent to float3.xxxx).
        [Inline]
        public float4 rrrr =>  float4(x, x, x, x);
        
        /// Returns float3.xxxy swizzling.
        [Inline]
        public float4 xxxy =>  float4(x, x, x, y);
        
        /// Returns float3.rrrg swizzling (equivalent to float3.xxxy).
        [Inline]
        public float4 rrrg =>  float4(x, x, x, y);
        
        /// Returns float3.xxxz swizzling.
        [Inline]
        public float4 xxxz =>  float4(x, x, x, z);
        
        /// Returns float3.rrrb swizzling (equivalent to float3.xxxz).
        [Inline]
        public float4 rrrb =>  float4(x, x, x, z);
        
        /// Returns float3.xxy swizzling.
        [Inline]
        public float3 xxy =>  float3(x, x, y);
        
        /// Returns float3.rrg swizzling (equivalent to float3.xxy).
        [Inline]
        public float3 rrg =>  float3(x, x, y);
        
        /// Returns float3.xxyx swizzling.
        [Inline]
        public float4 xxyx =>  float4(x, x, y, x);
        
        /// Returns float3.rrgr swizzling (equivalent to float3.xxyx).
        [Inline]
        public float4 rrgr =>  float4(x, x, y, x);
        
        /// Returns float3.xxyy swizzling.
        [Inline]
        public float4 xxyy =>  float4(x, x, y, y);
        
        /// Returns float3.rrgg swizzling (equivalent to float3.xxyy).
        [Inline]
        public float4 rrgg =>  float4(x, x, y, y);
        
        /// Returns float3.xxyz swizzling.
        [Inline]
        public float4 xxyz =>  float4(x, x, y, z);
        
        /// Returns float3.rrgb swizzling (equivalent to float3.xxyz).
        [Inline]
        public float4 rrgb =>  float4(x, x, y, z);
        
        /// Returns float3.xxz swizzling.
        [Inline]
        public float3 xxz =>  float3(x, x, z);
        
        /// Returns float3.rrb swizzling (equivalent to float3.xxz).
        [Inline]
        public float3 rrb =>  float3(x, x, z);
        
        /// Returns float3.xxzx swizzling.
        [Inline]
        public float4 xxzx =>  float4(x, x, z, x);
        
        /// Returns float3.rrbr swizzling (equivalent to float3.xxzx).
        [Inline]
        public float4 rrbr =>  float4(x, x, z, x);
        
        /// Returns float3.xxzy swizzling.
        [Inline]
        public float4 xxzy =>  float4(x, x, z, y);
        
        /// Returns float3.rrbg swizzling (equivalent to float3.xxzy).
        [Inline]
        public float4 rrbg =>  float4(x, x, z, y);
        
        /// Returns float3.xxzz swizzling.
        [Inline]
        public float4 xxzz =>  float4(x, x, z, z);
        
        /// Returns float3.rrbb swizzling (equivalent to float3.xxzz).
        [Inline]
        public float4 rrbb =>  float4(x, x, z, z);
        
        /// Returns float3.xy swizzling.
        [Inline]
        public float2 xy =>  float2(x, y);
        
        /// Returns float3.rg swizzling (equivalent to float3.xy).
        [Inline]
        public float2 rg =>  float2(x, y);
        
        /// Returns float3.xyx swizzling.
        [Inline]
        public float3 xyx =>  float3(x, y, x);
        
        /// Returns float3.rgr swizzling (equivalent to float3.xyx).
        [Inline]
        public float3 rgr =>  float3(x, y, x);
        
        /// Returns float3.xyxx swizzling.
        [Inline]
        public float4 xyxx =>  float4(x, y, x, x);
        
        /// Returns float3.rgrr swizzling (equivalent to float3.xyxx).
        [Inline]
        public float4 rgrr =>  float4(x, y, x, x);
        
        /// Returns float3.xyxy swizzling.
        [Inline]
        public float4 xyxy =>  float4(x, y, x, y);
        
        /// Returns float3.rgrg swizzling (equivalent to float3.xyxy).
        [Inline]
        public float4 rgrg =>  float4(x, y, x, y);
        
        /// Returns float3.xyxz swizzling.
        [Inline]
        public float4 xyxz =>  float4(x, y, x, z);
        
        /// Returns float3.rgrb swizzling (equivalent to float3.xyxz).
        [Inline]
        public float4 rgrb =>  float4(x, y, x, z);
        
        /// Returns float3.xyy swizzling.
        [Inline]
        public float3 xyy =>  float3(x, y, y);
        
        /// Returns float3.rgg swizzling (equivalent to float3.xyy).
        [Inline]
        public float3 rgg =>  float3(x, y, y);
        
        /// Returns float3.xyyx swizzling.
        [Inline]
        public float4 xyyx =>  float4(x, y, y, x);
        
        /// Returns float3.rggr swizzling (equivalent to float3.xyyx).
        [Inline]
        public float4 rggr =>  float4(x, y, y, x);
        
        /// Returns float3.xyyy swizzling.
        [Inline]
        public float4 xyyy =>  float4(x, y, y, y);
        
        /// Returns float3.rggg swizzling (equivalent to float3.xyyy).
        [Inline]
        public float4 rggg =>  float4(x, y, y, y);
        
        /// Returns float3.xyyz swizzling.
        [Inline]
        public float4 xyyz =>  float4(x, y, y, z);
        
        /// Returns float3.rggb swizzling (equivalent to float3.xyyz).
        [Inline]
        public float4 rggb =>  float4(x, y, y, z);
        
        /// Returns float3.xyz swizzling.
        [Inline]
        public float3 xyz =>  float3(x, y, z);
        
        /// Returns float3.rgb swizzling (equivalent to float3.xyz).
        [Inline]
        public float3 rgb =>  float3(x, y, z);
        
        /// Returns float3.xyzx swizzling.
        [Inline]
        public float4 xyzx =>  float4(x, y, z, x);
        
        /// Returns float3.rgbr swizzling (equivalent to float3.xyzx).
        [Inline]
        public float4 rgbr =>  float4(x, y, z, x);
        
        /// Returns float3.xyzy swizzling.
        [Inline]
        public float4 xyzy =>  float4(x, y, z, y);
        
        /// Returns float3.rgbg swizzling (equivalent to float3.xyzy).
        [Inline]
        public float4 rgbg =>  float4(x, y, z, y);
        
        /// Returns float3.xyzz swizzling.
        [Inline]
        public float4 xyzz =>  float4(x, y, z, z);
        
        /// Returns float3.rgbb swizzling (equivalent to float3.xyzz).
        [Inline]
        public float4 rgbb =>  float4(x, y, z, z);
        
        /// Returns float3.xz swizzling.
        [Inline]
        public float2 xz =>  float2(x, z);
        
        /// Returns float3.rb swizzling (equivalent to float3.xz).
        [Inline]
        public float2 rb =>  float2(x, z);
        
        /// Returns float3.xzx swizzling.
        [Inline]
        public float3 xzx =>  float3(x, z, x);
        
        /// Returns float3.rbr swizzling (equivalent to float3.xzx).
        [Inline]
        public float3 rbr =>  float3(x, z, x);
        
        /// Returns float3.xzxx swizzling.
        [Inline]
        public float4 xzxx =>  float4(x, z, x, x);
        
        /// Returns float3.rbrr swizzling (equivalent to float3.xzxx).
        [Inline]
        public float4 rbrr =>  float4(x, z, x, x);
        
        /// Returns float3.xzxy swizzling.
        [Inline]
        public float4 xzxy =>  float4(x, z, x, y);
        
        /// Returns float3.rbrg swizzling (equivalent to float3.xzxy).
        [Inline]
        public float4 rbrg =>  float4(x, z, x, y);
        
        /// Returns float3.xzxz swizzling.
        [Inline]
        public float4 xzxz =>  float4(x, z, x, z);
        
        /// Returns float3.rbrb swizzling (equivalent to float3.xzxz).
        [Inline]
        public float4 rbrb =>  float4(x, z, x, z);
        
        /// Returns float3.xzy swizzling.
        [Inline]
        public float3 xzy =>  float3(x, z, y);
        
        /// Returns float3.rbg swizzling (equivalent to float3.xzy).
        [Inline]
        public float3 rbg =>  float3(x, z, y);
        
        /// Returns float3.xzyx swizzling.
        [Inline]
        public float4 xzyx =>  float4(x, z, y, x);
        
        /// Returns float3.rbgr swizzling (equivalent to float3.xzyx).
        [Inline]
        public float4 rbgr =>  float4(x, z, y, x);
        
        /// Returns float3.xzyy swizzling.
        [Inline]
        public float4 xzyy =>  float4(x, z, y, y);
        
        /// Returns float3.rbgg swizzling (equivalent to float3.xzyy).
        [Inline]
        public float4 rbgg =>  float4(x, z, y, y);
        
        /// Returns float3.xzyz swizzling.
        [Inline]
        public float4 xzyz =>  float4(x, z, y, z);
        
        /// Returns float3.rbgb swizzling (equivalent to float3.xzyz).
        [Inline]
        public float4 rbgb =>  float4(x, z, y, z);
        
        /// Returns float3.xzz swizzling.
        [Inline]
        public float3 xzz =>  float3(x, z, z);
        
        /// Returns float3.rbb swizzling (equivalent to float3.xzz).
        [Inline]
        public float3 rbb =>  float3(x, z, z);
        
        /// Returns float3.xzzx swizzling.
        [Inline]
        public float4 xzzx =>  float4(x, z, z, x);
        
        /// Returns float3.rbbr swizzling (equivalent to float3.xzzx).
        [Inline]
        public float4 rbbr =>  float4(x, z, z, x);
        
        /// Returns float3.xzzy swizzling.
        [Inline]
        public float4 xzzy =>  float4(x, z, z, y);
        
        /// Returns float3.rbbg swizzling (equivalent to float3.xzzy).
        [Inline]
        public float4 rbbg =>  float4(x, z, z, y);
        
        /// Returns float3.xzzz swizzling.
        [Inline]
        public float4 xzzz =>  float4(x, z, z, z);
        
        /// Returns float3.rbbb swizzling (equivalent to float3.xzzz).
        [Inline]
        public float4 rbbb =>  float4(x, z, z, z);
        
        /// Returns float3.yx swizzling.
        [Inline]
        public float2 yx =>  float2(y, x);
        
        /// Returns float3.gr swizzling (equivalent to float3.yx).
        [Inline]
        public float2 gr =>  float2(y, x);
        
        /// Returns float3.yxx swizzling.
        [Inline]
        public float3 yxx =>  float3(y, x, x);
        
        /// Returns float3.grr swizzling (equivalent to float3.yxx).
        [Inline]
        public float3 grr =>  float3(y, x, x);
        
        /// Returns float3.yxxx swizzling.
        [Inline]
        public float4 yxxx =>  float4(y, x, x, x);
        
        /// Returns float3.grrr swizzling (equivalent to float3.yxxx).
        [Inline]
        public float4 grrr =>  float4(y, x, x, x);
        
        /// Returns float3.yxxy swizzling.
        [Inline]
        public float4 yxxy =>  float4(y, x, x, y);
        
        /// Returns float3.grrg swizzling (equivalent to float3.yxxy).
        [Inline]
        public float4 grrg =>  float4(y, x, x, y);
        
        /// Returns float3.yxxz swizzling.
        [Inline]
        public float4 yxxz =>  float4(y, x, x, z);
        
        /// Returns float3.grrb swizzling (equivalent to float3.yxxz).
        [Inline]
        public float4 grrb =>  float4(y, x, x, z);
        
        /// Returns float3.yxy swizzling.
        [Inline]
        public float3 yxy =>  float3(y, x, y);
        
        /// Returns float3.grg swizzling (equivalent to float3.yxy).
        [Inline]
        public float3 grg =>  float3(y, x, y);
        
        /// Returns float3.yxyx swizzling.
        [Inline]
        public float4 yxyx =>  float4(y, x, y, x);
        
        /// Returns float3.grgr swizzling (equivalent to float3.yxyx).
        [Inline]
        public float4 grgr =>  float4(y, x, y, x);
        
        /// Returns float3.yxyy swizzling.
        [Inline]
        public float4 yxyy =>  float4(y, x, y, y);
        
        /// Returns float3.grgg swizzling (equivalent to float3.yxyy).
        [Inline]
        public float4 grgg =>  float4(y, x, y, y);
        
        /// Returns float3.yxyz swizzling.
        [Inline]
        public float4 yxyz =>  float4(y, x, y, z);
        
        /// Returns float3.grgb swizzling (equivalent to float3.yxyz).
        [Inline]
        public float4 grgb =>  float4(y, x, y, z);
        
        /// Returns float3.yxz swizzling.
        [Inline]
        public float3 yxz =>  float3(y, x, z);
        
        /// Returns float3.grb swizzling (equivalent to float3.yxz).
        [Inline]
        public float3 grb =>  float3(y, x, z);
        
        /// Returns float3.yxzx swizzling.
        [Inline]
        public float4 yxzx =>  float4(y, x, z, x);
        
        /// Returns float3.grbr swizzling (equivalent to float3.yxzx).
        [Inline]
        public float4 grbr =>  float4(y, x, z, x);
        
        /// Returns float3.yxzy swizzling.
        [Inline]
        public float4 yxzy =>  float4(y, x, z, y);
        
        /// Returns float3.grbg swizzling (equivalent to float3.yxzy).
        [Inline]
        public float4 grbg =>  float4(y, x, z, y);
        
        /// Returns float3.yxzz swizzling.
        [Inline]
        public float4 yxzz =>  float4(y, x, z, z);
        
        /// Returns float3.grbb swizzling (equivalent to float3.yxzz).
        [Inline]
        public float4 grbb =>  float4(y, x, z, z);
        
        /// Returns float3.yy swizzling.
        [Inline]
        public float2 yy =>  float2(y, y);
        
        /// Returns float3.gg swizzling (equivalent to float3.yy).
        [Inline]
        public float2 gg =>  float2(y, y);
        
        /// Returns float3.yyx swizzling.
        [Inline]
        public float3 yyx =>  float3(y, y, x);
        
        /// Returns float3.ggr swizzling (equivalent to float3.yyx).
        [Inline]
        public float3 ggr =>  float3(y, y, x);
        
        /// Returns float3.yyxx swizzling.
        [Inline]
        public float4 yyxx =>  float4(y, y, x, x);
        
        /// Returns float3.ggrr swizzling (equivalent to float3.yyxx).
        [Inline]
        public float4 ggrr =>  float4(y, y, x, x);
        
        /// Returns float3.yyxy swizzling.
        [Inline]
        public float4 yyxy =>  float4(y, y, x, y);
        
        /// Returns float3.ggrg swizzling (equivalent to float3.yyxy).
        [Inline]
        public float4 ggrg =>  float4(y, y, x, y);
        
        /// Returns float3.yyxz swizzling.
        [Inline]
        public float4 yyxz =>  float4(y, y, x, z);
        
        /// Returns float3.ggrb swizzling (equivalent to float3.yyxz).
        [Inline]
        public float4 ggrb =>  float4(y, y, x, z);
        
        /// Returns float3.yyy swizzling.
        [Inline]
        public float3 yyy =>  float3(y, y, y);
        
        /// Returns float3.ggg swizzling (equivalent to float3.yyy).
        [Inline]
        public float3 ggg =>  float3(y, y, y);
        
        /// Returns float3.yyyx swizzling.
        [Inline]
        public float4 yyyx =>  float4(y, y, y, x);
        
        /// Returns float3.gggr swizzling (equivalent to float3.yyyx).
        [Inline]
        public float4 gggr =>  float4(y, y, y, x);
        
        /// Returns float3.yyyy swizzling.
        [Inline]
        public float4 yyyy =>  float4(y, y, y, y);
        
        /// Returns float3.gggg swizzling (equivalent to float3.yyyy).
        [Inline]
        public float4 gggg =>  float4(y, y, y, y);
        
        /// Returns float3.yyyz swizzling.
        [Inline]
        public float4 yyyz =>  float4(y, y, y, z);
        
        /// Returns float3.gggb swizzling (equivalent to float3.yyyz).
        [Inline]
        public float4 gggb =>  float4(y, y, y, z);
        
        /// Returns float3.yyz swizzling.
        [Inline]
        public float3 yyz =>  float3(y, y, z);
        
        /// Returns float3.ggb swizzling (equivalent to float3.yyz).
        [Inline]
        public float3 ggb =>  float3(y, y, z);
        
        /// Returns float3.yyzx swizzling.
        [Inline]
        public float4 yyzx =>  float4(y, y, z, x);
        
        /// Returns float3.ggbr swizzling (equivalent to float3.yyzx).
        [Inline]
        public float4 ggbr =>  float4(y, y, z, x);
        
        /// Returns float3.yyzy swizzling.
        [Inline]
        public float4 yyzy =>  float4(y, y, z, y);
        
        /// Returns float3.ggbg swizzling (equivalent to float3.yyzy).
        [Inline]
        public float4 ggbg =>  float4(y, y, z, y);
        
        /// Returns float3.yyzz swizzling.
        [Inline]
        public float4 yyzz =>  float4(y, y, z, z);
        
        /// Returns float3.ggbb swizzling (equivalent to float3.yyzz).
        [Inline]
        public float4 ggbb =>  float4(y, y, z, z);
        
        /// Returns float3.yz swizzling.
        [Inline]
        public float2 yz =>  float2(y, z);
        
        /// Returns float3.gb swizzling (equivalent to float3.yz).
        [Inline]
        public float2 gb =>  float2(y, z);
        
        /// Returns float3.yzx swizzling.
        [Inline]
        public float3 yzx =>  float3(y, z, x);
        
        /// Returns float3.gbr swizzling (equivalent to float3.yzx).
        [Inline]
        public float3 gbr =>  float3(y, z, x);
        
        /// Returns float3.yzxx swizzling.
        [Inline]
        public float4 yzxx =>  float4(y, z, x, x);
        
        /// Returns float3.gbrr swizzling (equivalent to float3.yzxx).
        [Inline]
        public float4 gbrr =>  float4(y, z, x, x);
        
        /// Returns float3.yzxy swizzling.
        [Inline]
        public float4 yzxy =>  float4(y, z, x, y);
        
        /// Returns float3.gbrg swizzling (equivalent to float3.yzxy).
        [Inline]
        public float4 gbrg =>  float4(y, z, x, y);
        
        /// Returns float3.yzxz swizzling.
        [Inline]
        public float4 yzxz =>  float4(y, z, x, z);
        
        /// Returns float3.gbrb swizzling (equivalent to float3.yzxz).
        [Inline]
        public float4 gbrb =>  float4(y, z, x, z);
        
        /// Returns float3.yzy swizzling.
        [Inline]
        public float3 yzy =>  float3(y, z, y);
        
        /// Returns float3.gbg swizzling (equivalent to float3.yzy).
        [Inline]
        public float3 gbg =>  float3(y, z, y);
        
        /// Returns float3.yzyx swizzling.
        [Inline]
        public float4 yzyx =>  float4(y, z, y, x);
        
        /// Returns float3.gbgr swizzling (equivalent to float3.yzyx).
        [Inline]
        public float4 gbgr =>  float4(y, z, y, x);
        
        /// Returns float3.yzyy swizzling.
        [Inline]
        public float4 yzyy =>  float4(y, z, y, y);
        
        /// Returns float3.gbgg swizzling (equivalent to float3.yzyy).
        [Inline]
        public float4 gbgg =>  float4(y, z, y, y);
        
        /// Returns float3.yzyz swizzling.
        [Inline]
        public float4 yzyz =>  float4(y, z, y, z);
        
        /// Returns float3.gbgb swizzling (equivalent to float3.yzyz).
        [Inline]
        public float4 gbgb =>  float4(y, z, y, z);
        
        /// Returns float3.yzz swizzling.
        [Inline]
        public float3 yzz =>  float3(y, z, z);
        
        /// Returns float3.gbb swizzling (equivalent to float3.yzz).
        [Inline]
        public float3 gbb =>  float3(y, z, z);
        
        /// Returns float3.yzzx swizzling.
        [Inline]
        public float4 yzzx =>  float4(y, z, z, x);
        
        /// Returns float3.gbbr swizzling (equivalent to float3.yzzx).
        [Inline]
        public float4 gbbr =>  float4(y, z, z, x);
        
        /// Returns float3.yzzy swizzling.
        [Inline]
        public float4 yzzy =>  float4(y, z, z, y);
        
        /// Returns float3.gbbg swizzling (equivalent to float3.yzzy).
        [Inline]
        public float4 gbbg =>  float4(y, z, z, y);
        
        /// Returns float3.yzzz swizzling.
        [Inline]
        public float4 yzzz =>  float4(y, z, z, z);
        
        /// Returns float3.gbbb swizzling (equivalent to float3.yzzz).
        [Inline]
        public float4 gbbb =>  float4(y, z, z, z);
        
        /// Returns float3.zx swizzling.
        [Inline]
        public float2 zx =>  float2(z, x);
        
        /// Returns float3.br swizzling (equivalent to float3.zx).
        [Inline]
        public float2 br =>  float2(z, x);
        
        /// Returns float3.zxx swizzling.
        [Inline]
        public float3 zxx =>  float3(z, x, x);
        
        /// Returns float3.brr swizzling (equivalent to float3.zxx).
        [Inline]
        public float3 brr =>  float3(z, x, x);
        
        /// Returns float3.zxxx swizzling.
        [Inline]
        public float4 zxxx =>  float4(z, x, x, x);
        
        /// Returns float3.brrr swizzling (equivalent to float3.zxxx).
        [Inline]
        public float4 brrr =>  float4(z, x, x, x);
        
        /// Returns float3.zxxy swizzling.
        [Inline]
        public float4 zxxy =>  float4(z, x, x, y);
        
        /// Returns float3.brrg swizzling (equivalent to float3.zxxy).
        [Inline]
        public float4 brrg =>  float4(z, x, x, y);
        
        /// Returns float3.zxxz swizzling.
        [Inline]
        public float4 zxxz =>  float4(z, x, x, z);
        
        /// Returns float3.brrb swizzling (equivalent to float3.zxxz).
        [Inline]
        public float4 brrb =>  float4(z, x, x, z);
        
        /// Returns float3.zxy swizzling.
        [Inline]
        public float3 zxy =>  float3(z, x, y);
        
        /// Returns float3.brg swizzling (equivalent to float3.zxy).
        [Inline]
        public float3 brg =>  float3(z, x, y);
        
        /// Returns float3.zxyx swizzling.
        [Inline]
        public float4 zxyx =>  float4(z, x, y, x);
        
        /// Returns float3.brgr swizzling (equivalent to float3.zxyx).
        [Inline]
        public float4 brgr =>  float4(z, x, y, x);
        
        /// Returns float3.zxyy swizzling.
        [Inline]
        public float4 zxyy =>  float4(z, x, y, y);
        
        /// Returns float3.brgg swizzling (equivalent to float3.zxyy).
        [Inline]
        public float4 brgg =>  float4(z, x, y, y);
        
        /// Returns float3.zxyz swizzling.
        [Inline]
        public float4 zxyz =>  float4(z, x, y, z);
        
        /// Returns float3.brgb swizzling (equivalent to float3.zxyz).
        [Inline]
        public float4 brgb =>  float4(z, x, y, z);
        
        /// Returns float3.zxz swizzling.
        [Inline]
        public float3 zxz =>  float3(z, x, z);
        
        /// Returns float3.brb swizzling (equivalent to float3.zxz).
        [Inline]
        public float3 brb =>  float3(z, x, z);
        
        /// Returns float3.zxzx swizzling.
        [Inline]
        public float4 zxzx =>  float4(z, x, z, x);
        
        /// Returns float3.brbr swizzling (equivalent to float3.zxzx).
        [Inline]
        public float4 brbr =>  float4(z, x, z, x);
        
        /// Returns float3.zxzy swizzling.
        [Inline]
        public float4 zxzy =>  float4(z, x, z, y);
        
        /// Returns float3.brbg swizzling (equivalent to float3.zxzy).
        [Inline]
        public float4 brbg =>  float4(z, x, z, y);
        
        /// Returns float3.zxzz swizzling.
        [Inline]
        public float4 zxzz =>  float4(z, x, z, z);
        
        /// Returns float3.brbb swizzling (equivalent to float3.zxzz).
        [Inline]
        public float4 brbb =>  float4(z, x, z, z);
        
        /// Returns float3.zy swizzling.
        [Inline]
        public float2 zy =>  float2(z, y);
        
        /// Returns float3.bg swizzling (equivalent to float3.zy).
        [Inline]
        public float2 bg =>  float2(z, y);
        
        /// Returns float3.zyx swizzling.
        [Inline]
        public float3 zyx =>  float3(z, y, x);
        
        /// Returns float3.bgr swizzling (equivalent to float3.zyx).
        [Inline]
        public float3 bgr =>  float3(z, y, x);
        
        /// Returns float3.zyxx swizzling.
        [Inline]
        public float4 zyxx =>  float4(z, y, x, x);
        
        /// Returns float3.bgrr swizzling (equivalent to float3.zyxx).
        [Inline]
        public float4 bgrr =>  float4(z, y, x, x);
        
        /// Returns float3.zyxy swizzling.
        [Inline]
        public float4 zyxy =>  float4(z, y, x, y);
        
        /// Returns float3.bgrg swizzling (equivalent to float3.zyxy).
        [Inline]
        public float4 bgrg =>  float4(z, y, x, y);
        
        /// Returns float3.zyxz swizzling.
        [Inline]
        public float4 zyxz =>  float4(z, y, x, z);
        
        /// Returns float3.bgrb swizzling (equivalent to float3.zyxz).
        [Inline]
        public float4 bgrb =>  float4(z, y, x, z);
        
        /// Returns float3.zyy swizzling.
        [Inline]
        public float3 zyy =>  float3(z, y, y);
        
        /// Returns float3.bgg swizzling (equivalent to float3.zyy).
        [Inline]
        public float3 bgg =>  float3(z, y, y);
        
        /// Returns float3.zyyx swizzling.
        [Inline]
        public float4 zyyx =>  float4(z, y, y, x);
        
        /// Returns float3.bggr swizzling (equivalent to float3.zyyx).
        [Inline]
        public float4 bggr =>  float4(z, y, y, x);
        
        /// Returns float3.zyyy swizzling.
        [Inline]
        public float4 zyyy =>  float4(z, y, y, y);
        
        /// Returns float3.bggg swizzling (equivalent to float3.zyyy).
        [Inline]
        public float4 bggg =>  float4(z, y, y, y);
        
        /// Returns float3.zyyz swizzling.
        [Inline]
        public float4 zyyz =>  float4(z, y, y, z);
        
        /// Returns float3.bggb swizzling (equivalent to float3.zyyz).
        [Inline]
        public float4 bggb =>  float4(z, y, y, z);
        
        /// Returns float3.zyz swizzling.
        [Inline]
        public float3 zyz =>  float3(z, y, z);
        
        /// Returns float3.bgb swizzling (equivalent to float3.zyz).
        [Inline]
        public float3 bgb =>  float3(z, y, z);
        
        /// Returns float3.zyzx swizzling.
        [Inline]
        public float4 zyzx =>  float4(z, y, z, x);
        
        /// Returns float3.bgbr swizzling (equivalent to float3.zyzx).
        [Inline]
        public float4 bgbr =>  float4(z, y, z, x);
        
        /// Returns float3.zyzy swizzling.
        [Inline]
        public float4 zyzy =>  float4(z, y, z, y);
        
        /// Returns float3.bgbg swizzling (equivalent to float3.zyzy).
        [Inline]
        public float4 bgbg =>  float4(z, y, z, y);
        
        /// Returns float3.zyzz swizzling.
        [Inline]
        public float4 zyzz =>  float4(z, y, z, z);
        
        /// Returns float3.bgbb swizzling (equivalent to float3.zyzz).
        [Inline]
        public float4 bgbb =>  float4(z, y, z, z);
        
        /// Returns float3.zz swizzling.
        [Inline]
        public float2 zz =>  float2(z, z);
        
        /// Returns float3.bb swizzling (equivalent to float3.zz).
        [Inline]
        public float2 bb =>  float2(z, z);
        
        /// Returns float3.zzx swizzling.
        [Inline]
        public float3 zzx =>  float3(z, z, x);
        
        /// Returns float3.bbr swizzling (equivalent to float3.zzx).
        [Inline]
        public float3 bbr =>  float3(z, z, x);
        
        /// Returns float3.zzxx swizzling.
        [Inline]
        public float4 zzxx =>  float4(z, z, x, x);
        
        /// Returns float3.bbrr swizzling (equivalent to float3.zzxx).
        [Inline]
        public float4 bbrr =>  float4(z, z, x, x);
        
        /// Returns float3.zzxy swizzling.
        [Inline]
        public float4 zzxy =>  float4(z, z, x, y);
        
        /// Returns float3.bbrg swizzling (equivalent to float3.zzxy).
        [Inline]
        public float4 bbrg =>  float4(z, z, x, y);
        
        /// Returns float3.zzxz swizzling.
        [Inline]
        public float4 zzxz =>  float4(z, z, x, z);
        
        /// Returns float3.bbrb swizzling (equivalent to float3.zzxz).
        [Inline]
        public float4 bbrb =>  float4(z, z, x, z);
        
        /// Returns float3.zzy swizzling.
        [Inline]
        public float3 zzy =>  float3(z, z, y);
        
        /// Returns float3.bbg swizzling (equivalent to float3.zzy).
        [Inline]
        public float3 bbg =>  float3(z, z, y);
        
        /// Returns float3.zzyx swizzling.
        [Inline]
        public float4 zzyx =>  float4(z, z, y, x);
        
        /// Returns float3.bbgr swizzling (equivalent to float3.zzyx).
        [Inline]
        public float4 bbgr =>  float4(z, z, y, x);
        
        /// Returns float3.zzyy swizzling.
        [Inline]
        public float4 zzyy =>  float4(z, z, y, y);
        
        /// Returns float3.bbgg swizzling (equivalent to float3.zzyy).
        [Inline]
        public float4 bbgg =>  float4(z, z, y, y);
        
        /// Returns float3.zzyz swizzling.
        [Inline]
        public float4 zzyz =>  float4(z, z, y, z);
        
        /// Returns float3.bbgb swizzling (equivalent to float3.zzyz).
        [Inline]
        public float4 bbgb =>  float4(z, z, y, z);
        
        /// Returns float3.zzz swizzling.
        [Inline]
        public float3 zzz =>  float3(z, z, z);
        
        /// Returns float3.bbb swizzling (equivalent to float3.zzz).
        [Inline]
        public float3 bbb =>  float3(z, z, z);
        
        /// Returns float3.zzzx swizzling.
        [Inline]
        public float4 zzzx =>  float4(z, z, z, x);
        
        /// Returns float3.bbbr swizzling (equivalent to float3.zzzx).
        [Inline]
        public float4 bbbr =>  float4(z, z, z, x);
        
        /// Returns float3.zzzy swizzling.
        [Inline]
        public float4 zzzy =>  float4(z, z, z, y);
        
        /// Returns float3.bbbg swizzling (equivalent to float3.zzzy).
        [Inline]
        public float4 bbbg =>  float4(z, z, z, y);
        
        /// Returns float3.zzzz swizzling.
        [Inline]
        public float4 zzzz =>  float4(z, z, z, z);
        
        /// Returns float3.bbbb swizzling (equivalent to float3.zzzz).
        [Inline]
        public float4 bbbb =>  float4(z, z, z, z);

        #endregion

    }
}
