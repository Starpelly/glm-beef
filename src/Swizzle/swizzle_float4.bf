using System;
namespace glm
{
    
    /// Temporary vector of type float with 4 components, used for implementing swizzling for float4.
    public struct swizzle_float4
    {

        #region Fields
        
        /// x-component
        private readonly float x;
        
        /// y-component
        private readonly float y;
        
        /// z-component
        private readonly float z;
        
        /// w-component
        private readonly float w;

        #endregion


        #region Properties
        
        /// Returns float4.xx swizzling.
        [Inline]
        public float2 xx =>  float2(x, x);
        
        /// Returns float4.rr swizzling (equivalent to float4.xx).
        [Inline]
        public float2 rr =>  float2(x, x);
        
        /// Returns float4.xxx swizzling.
        [Inline]
        public float3 xxx =>  float3(x, x, x);
        
        /// Returns float4.rrr swizzling (equivalent to float4.xxx).
        [Inline]
        public float3 rrr =>  float3(x, x, x);
        
        /// Returns float4.xxxx swizzling.
        [Inline]
        public float4 xxxx =>  float4(x, x, x, x);
        
        /// Returns float4.rrrr swizzling (equivalent to float4.xxxx).
        [Inline]
        public float4 rrrr =>  float4(x, x, x, x);
        
        /// Returns float4.xxxy swizzling.
        [Inline]
        public float4 xxxy =>  float4(x, x, x, y);
        
        /// Returns float4.rrrg swizzling (equivalent to float4.xxxy).
        [Inline]
        public float4 rrrg =>  float4(x, x, x, y);
        
        /// Returns float4.xxxz swizzling.
        [Inline]
        public float4 xxxz =>  float4(x, x, x, z);
        
        /// Returns float4.rrrb swizzling (equivalent to float4.xxxz).
        [Inline]
        public float4 rrrb =>  float4(x, x, x, z);
        
        /// Returns float4.xxxw swizzling.
        [Inline]
        public float4 xxxw =>  float4(x, x, x, w);
        
        /// Returns float4.rrra swizzling (equivalent to float4.xxxw).
        [Inline]
        public float4 rrra =>  float4(x, x, x, w);
        
        /// Returns float4.xxy swizzling.
        [Inline]
        public float3 xxy =>  float3(x, x, y);
        
        /// Returns float4.rrg swizzling (equivalent to float4.xxy).
        [Inline]
        public float3 rrg =>  float3(x, x, y);
        
        /// Returns float4.xxyx swizzling.
        [Inline]
        public float4 xxyx =>  float4(x, x, y, x);
        
        /// Returns float4.rrgr swizzling (equivalent to float4.xxyx).
        [Inline]
        public float4 rrgr =>  float4(x, x, y, x);
        
        /// Returns float4.xxyy swizzling.
        [Inline]
        public float4 xxyy =>  float4(x, x, y, y);
        
        /// Returns float4.rrgg swizzling (equivalent to float4.xxyy).
        [Inline]
        public float4 rrgg =>  float4(x, x, y, y);
        
        /// Returns float4.xxyz swizzling.
        [Inline]
        public float4 xxyz =>  float4(x, x, y, z);
        
        /// Returns float4.rrgb swizzling (equivalent to float4.xxyz).
        [Inline]
        public float4 rrgb =>  float4(x, x, y, z);
        
        /// Returns float4.xxyw swizzling.
        [Inline]
        public float4 xxyw =>  float4(x, x, y, w);
        
        /// Returns float4.rrga swizzling (equivalent to float4.xxyw).
        [Inline]
        public float4 rrga =>  float4(x, x, y, w);
        
        /// Returns float4.xxz swizzling.
        [Inline]
        public float3 xxz =>  float3(x, x, z);
        
        /// Returns float4.rrb swizzling (equivalent to float4.xxz).
        [Inline]
        public float3 rrb =>  float3(x, x, z);
        
        /// Returns float4.xxzx swizzling.
        [Inline]
        public float4 xxzx =>  float4(x, x, z, x);
        
        /// Returns float4.rrbr swizzling (equivalent to float4.xxzx).
        [Inline]
        public float4 rrbr =>  float4(x, x, z, x);
        
        /// Returns float4.xxzy swizzling.
        [Inline]
        public float4 xxzy =>  float4(x, x, z, y);
        
        /// Returns float4.rrbg swizzling (equivalent to float4.xxzy).
        [Inline]
        public float4 rrbg =>  float4(x, x, z, y);
        
        /// Returns float4.xxzz swizzling.
        [Inline]
        public float4 xxzz =>  float4(x, x, z, z);
        
        /// Returns float4.rrbb swizzling (equivalent to float4.xxzz).
        [Inline]
        public float4 rrbb =>  float4(x, x, z, z);
        
        /// Returns float4.xxzw swizzling.
        [Inline]
        public float4 xxzw =>  float4(x, x, z, w);
        
        /// Returns float4.rrba swizzling (equivalent to float4.xxzw).
        [Inline]
        public float4 rrba =>  float4(x, x, z, w);
        
        /// Returns float4.xxw swizzling.
        [Inline]
        public float3 xxw =>  float3(x, x, w);
        
        /// Returns float4.rra swizzling (equivalent to float4.xxw).
        [Inline]
        public float3 rra =>  float3(x, x, w);
        
        /// Returns float4.xxwx swizzling.
        [Inline]
        public float4 xxwx =>  float4(x, x, w, x);
        
        /// Returns float4.rrar swizzling (equivalent to float4.xxwx).
        [Inline]
        public float4 rrar =>  float4(x, x, w, x);
        
        /// Returns float4.xxwy swizzling.
        [Inline]
        public float4 xxwy =>  float4(x, x, w, y);
        
        /// Returns float4.rrag swizzling (equivalent to float4.xxwy).
        [Inline]
        public float4 rrag =>  float4(x, x, w, y);
        
        /// Returns float4.xxwz swizzling.
        [Inline]
        public float4 xxwz =>  float4(x, x, w, z);
        
        /// Returns float4.rrab swizzling (equivalent to float4.xxwz).
        [Inline]
        public float4 rrab =>  float4(x, x, w, z);
        
        /// Returns float4.xxww swizzling.
        [Inline]
        public float4 xxww =>  float4(x, x, w, w);
        
        /// Returns float4.rraa swizzling (equivalent to float4.xxww).
        [Inline]
        public float4 rraa =>  float4(x, x, w, w);
        
        /// Returns float4.xy swizzling.
        [Inline]
        public float2 xy =>  float2(x, y);
        
        /// Returns float4.rg swizzling (equivalent to float4.xy).
        [Inline]
        public float2 rg =>  float2(x, y);
        
        /// Returns float4.xyx swizzling.
        [Inline]
        public float3 xyx =>  float3(x, y, x);
        
        /// Returns float4.rgr swizzling (equivalent to float4.xyx).
        [Inline]
        public float3 rgr =>  float3(x, y, x);
        
        /// Returns float4.xyxx swizzling.
        [Inline]
        public float4 xyxx =>  float4(x, y, x, x);
        
        /// Returns float4.rgrr swizzling (equivalent to float4.xyxx).
        [Inline]
        public float4 rgrr =>  float4(x, y, x, x);
        
        /// Returns float4.xyxy swizzling.
        [Inline]
        public float4 xyxy =>  float4(x, y, x, y);
        
        /// Returns float4.rgrg swizzling (equivalent to float4.xyxy).
        [Inline]
        public float4 rgrg =>  float4(x, y, x, y);
        
        /// Returns float4.xyxz swizzling.
        [Inline]
        public float4 xyxz =>  float4(x, y, x, z);
        
        /// Returns float4.rgrb swizzling (equivalent to float4.xyxz).
        [Inline]
        public float4 rgrb =>  float4(x, y, x, z);
        
        /// Returns float4.xyxw swizzling.
        [Inline]
        public float4 xyxw =>  float4(x, y, x, w);
        
        /// Returns float4.rgra swizzling (equivalent to float4.xyxw).
        [Inline]
        public float4 rgra =>  float4(x, y, x, w);
        
        /// Returns float4.xyy swizzling.
        [Inline]
        public float3 xyy =>  float3(x, y, y);
        
        /// Returns float4.rgg swizzling (equivalent to float4.xyy).
        [Inline]
        public float3 rgg =>  float3(x, y, y);
        
        /// Returns float4.xyyx swizzling.
        [Inline]
        public float4 xyyx =>  float4(x, y, y, x);
        
        /// Returns float4.rggr swizzling (equivalent to float4.xyyx).
        [Inline]
        public float4 rggr =>  float4(x, y, y, x);
        
        /// Returns float4.xyyy swizzling.
        [Inline]
        public float4 xyyy =>  float4(x, y, y, y);
        
        /// Returns float4.rggg swizzling (equivalent to float4.xyyy).
        [Inline]
        public float4 rggg =>  float4(x, y, y, y);
        
        /// Returns float4.xyyz swizzling.
        [Inline]
        public float4 xyyz =>  float4(x, y, y, z);
        
        /// Returns float4.rggb swizzling (equivalent to float4.xyyz).
        [Inline]
        public float4 rggb =>  float4(x, y, y, z);
        
        /// Returns float4.xyyw swizzling.
        [Inline]
        public float4 xyyw =>  float4(x, y, y, w);
        
        /// Returns float4.rgga swizzling (equivalent to float4.xyyw).
        [Inline]
        public float4 rgga =>  float4(x, y, y, w);
        
        /// Returns float4.xyz swizzling.
        [Inline]
        public float3 xyz =>  float3(x, y, z);
        
        /// Returns float4.rgb swizzling (equivalent to float4.xyz).
        [Inline]
        public float3 rgb =>  float3(x, y, z);
        
        /// Returns float4.xyzx swizzling.
        [Inline]
        public float4 xyzx =>  float4(x, y, z, x);
        
        /// Returns float4.rgbr swizzling (equivalent to float4.xyzx).
        [Inline]
        public float4 rgbr =>  float4(x, y, z, x);
        
        /// Returns float4.xyzy swizzling.
        [Inline]
        public float4 xyzy =>  float4(x, y, z, y);
        
        /// Returns float4.rgbg swizzling (equivalent to float4.xyzy).
        [Inline]
        public float4 rgbg =>  float4(x, y, z, y);
        
        /// Returns float4.xyzz swizzling.
        [Inline]
        public float4 xyzz =>  float4(x, y, z, z);
        
        /// Returns float4.rgbb swizzling (equivalent to float4.xyzz).
        [Inline]
        public float4 rgbb =>  float4(x, y, z, z);
        
        /// Returns float4.xyzw swizzling.
        [Inline]
        public float4 xyzw =>  float4(x, y, z, w);
        
        /// Returns float4.rgba swizzling (equivalent to float4.xyzw).
        [Inline]
        public float4 rgba =>  float4(x, y, z, w);
        
        /// Returns float4.xyw swizzling.
        [Inline]
        public float3 xyw =>  float3(x, y, w);
        
        /// Returns float4.rga swizzling (equivalent to float4.xyw).
        [Inline]
        public float3 rga =>  float3(x, y, w);
        
        /// Returns float4.xywx swizzling.
        [Inline]
        public float4 xywx =>  float4(x, y, w, x);
        
        /// Returns float4.rgar swizzling (equivalent to float4.xywx).
        [Inline]
        public float4 rgar =>  float4(x, y, w, x);
        
        /// Returns float4.xywy swizzling.
        [Inline]
        public float4 xywy =>  float4(x, y, w, y);
        
        /// Returns float4.rgag swizzling (equivalent to float4.xywy).
        [Inline]
        public float4 rgag =>  float4(x, y, w, y);
        
        /// Returns float4.xywz swizzling.
        [Inline]
        public float4 xywz =>  float4(x, y, w, z);
        
        /// Returns float4.rgab swizzling (equivalent to float4.xywz).
        [Inline]
        public float4 rgab =>  float4(x, y, w, z);
        
        /// Returns float4.xyww swizzling.
        [Inline]
        public float4 xyww =>  float4(x, y, w, w);
        
        /// Returns float4.rgaa swizzling (equivalent to float4.xyww).
        [Inline]
        public float4 rgaa =>  float4(x, y, w, w);
        
        /// Returns float4.xz swizzling.
        [Inline]
        public float2 xz =>  float2(x, z);
        
        /// Returns float4.rb swizzling (equivalent to float4.xz).
        [Inline]
        public float2 rb =>  float2(x, z);
        
        /// Returns float4.xzx swizzling.
        [Inline]
        public float3 xzx =>  float3(x, z, x);
        
        /// Returns float4.rbr swizzling (equivalent to float4.xzx).
        [Inline]
        public float3 rbr =>  float3(x, z, x);
        
        /// Returns float4.xzxx swizzling.
        [Inline]
        public float4 xzxx =>  float4(x, z, x, x);
        
        /// Returns float4.rbrr swizzling (equivalent to float4.xzxx).
        [Inline]
        public float4 rbrr =>  float4(x, z, x, x);
        
        /// Returns float4.xzxy swizzling.
        [Inline]
        public float4 xzxy =>  float4(x, z, x, y);
        
        /// Returns float4.rbrg swizzling (equivalent to float4.xzxy).
        [Inline]
        public float4 rbrg =>  float4(x, z, x, y);
        
        /// Returns float4.xzxz swizzling.
        [Inline]
        public float4 xzxz =>  float4(x, z, x, z);
        
        /// Returns float4.rbrb swizzling (equivalent to float4.xzxz).
        [Inline]
        public float4 rbrb =>  float4(x, z, x, z);
        
        /// Returns float4.xzxw swizzling.
        [Inline]
        public float4 xzxw =>  float4(x, z, x, w);
        
        /// Returns float4.rbra swizzling (equivalent to float4.xzxw).
        [Inline]
        public float4 rbra =>  float4(x, z, x, w);
        
        /// Returns float4.xzy swizzling.
        [Inline]
        public float3 xzy =>  float3(x, z, y);
        
        /// Returns float4.rbg swizzling (equivalent to float4.xzy).
        [Inline]
        public float3 rbg =>  float3(x, z, y);
        
        /// Returns float4.xzyx swizzling.
        [Inline]
        public float4 xzyx =>  float4(x, z, y, x);
        
        /// Returns float4.rbgr swizzling (equivalent to float4.xzyx).
        [Inline]
        public float4 rbgr =>  float4(x, z, y, x);
        
        /// Returns float4.xzyy swizzling.
        [Inline]
        public float4 xzyy =>  float4(x, z, y, y);
        
        /// Returns float4.rbgg swizzling (equivalent to float4.xzyy).
        [Inline]
        public float4 rbgg =>  float4(x, z, y, y);
        
        /// Returns float4.xzyz swizzling.
        [Inline]
        public float4 xzyz =>  float4(x, z, y, z);
        
        /// Returns float4.rbgb swizzling (equivalent to float4.xzyz).
        [Inline]
        public float4 rbgb =>  float4(x, z, y, z);
        
        /// Returns float4.xzyw swizzling.
        [Inline]
        public float4 xzyw =>  float4(x, z, y, w);
        
        /// Returns float4.rbga swizzling (equivalent to float4.xzyw).
        [Inline]
        public float4 rbga =>  float4(x, z, y, w);
        
        /// Returns float4.xzz swizzling.
        [Inline]
        public float3 xzz =>  float3(x, z, z);
        
        /// Returns float4.rbb swizzling (equivalent to float4.xzz).
        [Inline]
        public float3 rbb =>  float3(x, z, z);
        
        /// Returns float4.xzzx swizzling.
        [Inline]
        public float4 xzzx =>  float4(x, z, z, x);
        
        /// Returns float4.rbbr swizzling (equivalent to float4.xzzx).
        [Inline]
        public float4 rbbr =>  float4(x, z, z, x);
        
        /// Returns float4.xzzy swizzling.
        [Inline]
        public float4 xzzy =>  float4(x, z, z, y);
        
        /// Returns float4.rbbg swizzling (equivalent to float4.xzzy).
        [Inline]
        public float4 rbbg =>  float4(x, z, z, y);
        
        /// Returns float4.xzzz swizzling.
        [Inline]
        public float4 xzzz =>  float4(x, z, z, z);
        
        /// Returns float4.rbbb swizzling (equivalent to float4.xzzz).
        [Inline]
        public float4 rbbb =>  float4(x, z, z, z);
        
        /// Returns float4.xzzw swizzling.
        [Inline]
        public float4 xzzw =>  float4(x, z, z, w);
        
        /// Returns float4.rbba swizzling (equivalent to float4.xzzw).
        [Inline]
        public float4 rbba =>  float4(x, z, z, w);
        
        /// Returns float4.xzw swizzling.
        [Inline]
        public float3 xzw =>  float3(x, z, w);
        
        /// Returns float4.rba swizzling (equivalent to float4.xzw).
        [Inline]
        public float3 rba =>  float3(x, z, w);
        
        /// Returns float4.xzwx swizzling.
        [Inline]
        public float4 xzwx =>  float4(x, z, w, x);
        
        /// Returns float4.rbar swizzling (equivalent to float4.xzwx).
        [Inline]
        public float4 rbar =>  float4(x, z, w, x);
        
        /// Returns float4.xzwy swizzling.
        [Inline]
        public float4 xzwy =>  float4(x, z, w, y);
        
        /// Returns float4.rbag swizzling (equivalent to float4.xzwy).
        [Inline]
        public float4 rbag =>  float4(x, z, w, y);
        
        /// Returns float4.xzwz swizzling.
        [Inline]
        public float4 xzwz =>  float4(x, z, w, z);
        
        /// Returns float4.rbab swizzling (equivalent to float4.xzwz).
        [Inline]
        public float4 rbab =>  float4(x, z, w, z);
        
        /// Returns float4.xzww swizzling.
        [Inline]
        public float4 xzww =>  float4(x, z, w, w);
        
        /// Returns float4.rbaa swizzling (equivalent to float4.xzww).
        [Inline]
        public float4 rbaa =>  float4(x, z, w, w);
        
        /// Returns float4.xw swizzling.
        [Inline]
        public float2 xw =>  float2(x, w);
        
        /// Returns float4.ra swizzling (equivalent to float4.xw).
        [Inline]
        public float2 ra =>  float2(x, w);
        
        /// Returns float4.xwx swizzling.
        [Inline]
        public float3 xwx =>  float3(x, w, x);
        
        /// Returns float4.rar swizzling (equivalent to float4.xwx).
        [Inline]
        public float3 rar =>  float3(x, w, x);
        
        /// Returns float4.xwxx swizzling.
        [Inline]
        public float4 xwxx =>  float4(x, w, x, x);
        
        /// Returns float4.rarr swizzling (equivalent to float4.xwxx).
        [Inline]
        public float4 rarr =>  float4(x, w, x, x);
        
        /// Returns float4.xwxy swizzling.
        [Inline]
        public float4 xwxy =>  float4(x, w, x, y);
        
        /// Returns float4.rarg swizzling (equivalent to float4.xwxy).
        [Inline]
        public float4 rarg =>  float4(x, w, x, y);
        
        /// Returns float4.xwxz swizzling.
        [Inline]
        public float4 xwxz =>  float4(x, w, x, z);
        
        /// Returns float4.rarb swizzling (equivalent to float4.xwxz).
        [Inline]
        public float4 rarb =>  float4(x, w, x, z);
        
        /// Returns float4.xwxw swizzling.
        [Inline]
        public float4 xwxw =>  float4(x, w, x, w);
        
        /// Returns float4.rara swizzling (equivalent to float4.xwxw).
        [Inline]
        public float4 rara =>  float4(x, w, x, w);
        
        /// Returns float4.xwy swizzling.
        [Inline]
        public float3 xwy =>  float3(x, w, y);
        
        /// Returns float4.rag swizzling (equivalent to float4.xwy).
        [Inline]
        public float3 rag =>  float3(x, w, y);
        
        /// Returns float4.xwyx swizzling.
        [Inline]
        public float4 xwyx =>  float4(x, w, y, x);
        
        /// Returns float4.ragr swizzling (equivalent to float4.xwyx).
        [Inline]
        public float4 ragr =>  float4(x, w, y, x);
        
        /// Returns float4.xwyy swizzling.
        [Inline]
        public float4 xwyy =>  float4(x, w, y, y);
        
        /// Returns float4.ragg swizzling (equivalent to float4.xwyy).
        [Inline]
        public float4 ragg =>  float4(x, w, y, y);
        
        /// Returns float4.xwyz swizzling.
        [Inline]
        public float4 xwyz =>  float4(x, w, y, z);
        
        /// Returns float4.ragb swizzling (equivalent to float4.xwyz).
        [Inline]
        public float4 ragb =>  float4(x, w, y, z);
        
        /// Returns float4.xwyw swizzling.
        [Inline]
        public float4 xwyw =>  float4(x, w, y, w);
        
        /// Returns float4.raga swizzling (equivalent to float4.xwyw).
        [Inline]
        public float4 raga =>  float4(x, w, y, w);
        
        /// Returns float4.xwz swizzling.
        [Inline]
        public float3 xwz =>  float3(x, w, z);
        
        /// Returns float4.rab swizzling (equivalent to float4.xwz).
        [Inline]
        public float3 rab =>  float3(x, w, z);
        
        /// Returns float4.xwzx swizzling.
        [Inline]
        public float4 xwzx =>  float4(x, w, z, x);
        
        /// Returns float4.rabr swizzling (equivalent to float4.xwzx).
        [Inline]
        public float4 rabr =>  float4(x, w, z, x);
        
        /// Returns float4.xwzy swizzling.
        [Inline]
        public float4 xwzy =>  float4(x, w, z, y);
        
        /// Returns float4.rabg swizzling (equivalent to float4.xwzy).
        [Inline]
        public float4 rabg =>  float4(x, w, z, y);
        
        /// Returns float4.xwzz swizzling.
        [Inline]
        public float4 xwzz =>  float4(x, w, z, z);
        
        /// Returns float4.rabb swizzling (equivalent to float4.xwzz).
        [Inline]
        public float4 rabb =>  float4(x, w, z, z);
        
        /// Returns float4.xwzw swizzling.
        [Inline]
        public float4 xwzw =>  float4(x, w, z, w);
        
        /// Returns float4.raba swizzling (equivalent to float4.xwzw).
        [Inline]
        public float4 raba =>  float4(x, w, z, w);
        
        /// Returns float4.xww swizzling.
        [Inline]
        public float3 xww =>  float3(x, w, w);
        
        /// Returns float4.raa swizzling (equivalent to float4.xww).
        [Inline]
        public float3 raa =>  float3(x, w, w);
        
        /// Returns float4.xwwx swizzling.
        [Inline]
        public float4 xwwx =>  float4(x, w, w, x);
        
        /// Returns float4.raar swizzling (equivalent to float4.xwwx).
        [Inline]
        public float4 raar =>  float4(x, w, w, x);
        
        /// Returns float4.xwwy swizzling.
        [Inline]
        public float4 xwwy =>  float4(x, w, w, y);
        
        /// Returns float4.raag swizzling (equivalent to float4.xwwy).
        [Inline]
        public float4 raag =>  float4(x, w, w, y);
        
        /// Returns float4.xwwz swizzling.
        [Inline]
        public float4 xwwz =>  float4(x, w, w, z);
        
        /// Returns float4.raab swizzling (equivalent to float4.xwwz).
        [Inline]
        public float4 raab =>  float4(x, w, w, z);
        
        /// Returns float4.xwww swizzling.
        [Inline]
        public float4 xwww =>  float4(x, w, w, w);
        
        /// Returns float4.raaa swizzling (equivalent to float4.xwww).
        [Inline]
        public float4 raaa =>  float4(x, w, w, w);
        
        /// Returns float4.yx swizzling.
        [Inline]
        public float2 yx =>  float2(y, x);
        
        /// Returns float4.gr swizzling (equivalent to float4.yx).
        [Inline]
        public float2 gr =>  float2(y, x);
        
        /// Returns float4.yxx swizzling.
        [Inline]
        public float3 yxx =>  float3(y, x, x);
        
        /// Returns float4.grr swizzling (equivalent to float4.yxx).
        [Inline]
        public float3 grr =>  float3(y, x, x);
        
        /// Returns float4.yxxx swizzling.
        [Inline]
        public float4 yxxx =>  float4(y, x, x, x);
        
        /// Returns float4.grrr swizzling (equivalent to float4.yxxx).
        [Inline]
        public float4 grrr =>  float4(y, x, x, x);
        
        /// Returns float4.yxxy swizzling.
        [Inline]
        public float4 yxxy =>  float4(y, x, x, y);
        
        /// Returns float4.grrg swizzling (equivalent to float4.yxxy).
        [Inline]
        public float4 grrg =>  float4(y, x, x, y);
        
        /// Returns float4.yxxz swizzling.
        [Inline]
        public float4 yxxz =>  float4(y, x, x, z);
        
        /// Returns float4.grrb swizzling (equivalent to float4.yxxz).
        [Inline]
        public float4 grrb =>  float4(y, x, x, z);
        
        /// Returns float4.yxxw swizzling.
        [Inline]
        public float4 yxxw =>  float4(y, x, x, w);
        
        /// Returns float4.grra swizzling (equivalent to float4.yxxw).
        [Inline]
        public float4 grra =>  float4(y, x, x, w);
        
        /// Returns float4.yxy swizzling.
        [Inline]
        public float3 yxy =>  float3(y, x, y);
        
        /// Returns float4.grg swizzling (equivalent to float4.yxy).
        [Inline]
        public float3 grg =>  float3(y, x, y);
        
        /// Returns float4.yxyx swizzling.
        [Inline]
        public float4 yxyx =>  float4(y, x, y, x);
        
        /// Returns float4.grgr swizzling (equivalent to float4.yxyx).
        [Inline]
        public float4 grgr =>  float4(y, x, y, x);
        
        /// Returns float4.yxyy swizzling.
        [Inline]
        public float4 yxyy =>  float4(y, x, y, y);
        
        /// Returns float4.grgg swizzling (equivalent to float4.yxyy).
        [Inline]
        public float4 grgg =>  float4(y, x, y, y);
        
        /// Returns float4.yxyz swizzling.
        [Inline]
        public float4 yxyz =>  float4(y, x, y, z);
        
        /// Returns float4.grgb swizzling (equivalent to float4.yxyz).
        [Inline]
        public float4 grgb =>  float4(y, x, y, z);
        
        /// Returns float4.yxyw swizzling.
        [Inline]
        public float4 yxyw =>  float4(y, x, y, w);
        
        /// Returns float4.grga swizzling (equivalent to float4.yxyw).
        [Inline]
        public float4 grga =>  float4(y, x, y, w);
        
        /// Returns float4.yxz swizzling.
        [Inline]
        public float3 yxz =>  float3(y, x, z);
        
        /// Returns float4.grb swizzling (equivalent to float4.yxz).
        [Inline]
        public float3 grb =>  float3(y, x, z);
        
        /// Returns float4.yxzx swizzling.
        [Inline]
        public float4 yxzx =>  float4(y, x, z, x);
        
        /// Returns float4.grbr swizzling (equivalent to float4.yxzx).
        [Inline]
        public float4 grbr =>  float4(y, x, z, x);
        
        /// Returns float4.yxzy swizzling.
        [Inline]
        public float4 yxzy =>  float4(y, x, z, y);
        
        /// Returns float4.grbg swizzling (equivalent to float4.yxzy).
        [Inline]
        public float4 grbg =>  float4(y, x, z, y);
        
        /// Returns float4.yxzz swizzling.
        [Inline]
        public float4 yxzz =>  float4(y, x, z, z);
        
        /// Returns float4.grbb swizzling (equivalent to float4.yxzz).
        [Inline]
        public float4 grbb =>  float4(y, x, z, z);
        
        /// Returns float4.yxzw swizzling.
        [Inline]
        public float4 yxzw =>  float4(y, x, z, w);
        
        /// Returns float4.grba swizzling (equivalent to float4.yxzw).
        [Inline]
        public float4 grba =>  float4(y, x, z, w);
        
        /// Returns float4.yxw swizzling.
        [Inline]
        public float3 yxw =>  float3(y, x, w);
        
        /// Returns float4.gra swizzling (equivalent to float4.yxw).
        [Inline]
        public float3 gra =>  float3(y, x, w);
        
        /// Returns float4.yxwx swizzling.
        [Inline]
        public float4 yxwx =>  float4(y, x, w, x);
        
        /// Returns float4.grar swizzling (equivalent to float4.yxwx).
        [Inline]
        public float4 grar =>  float4(y, x, w, x);
        
        /// Returns float4.yxwy swizzling.
        [Inline]
        public float4 yxwy =>  float4(y, x, w, y);
        
        /// Returns float4.grag swizzling (equivalent to float4.yxwy).
        [Inline]
        public float4 grag =>  float4(y, x, w, y);
        
        /// Returns float4.yxwz swizzling.
        [Inline]
        public float4 yxwz =>  float4(y, x, w, z);
        
        /// Returns float4.grab swizzling (equivalent to float4.yxwz).
        [Inline]
        public float4 grab =>  float4(y, x, w, z);
        
        /// Returns float4.yxww swizzling.
        [Inline]
        public float4 yxww =>  float4(y, x, w, w);
        
        /// Returns float4.graa swizzling (equivalent to float4.yxww).
        [Inline]
        public float4 graa =>  float4(y, x, w, w);
        
        /// Returns float4.yy swizzling.
        [Inline]
        public float2 yy =>  float2(y, y);
        
        /// Returns float4.gg swizzling (equivalent to float4.yy).
        [Inline]
        public float2 gg =>  float2(y, y);
        
        /// Returns float4.yyx swizzling.
        [Inline]
        public float3 yyx =>  float3(y, y, x);
        
        /// Returns float4.ggr swizzling (equivalent to float4.yyx).
        [Inline]
        public float3 ggr =>  float3(y, y, x);
        
        /// Returns float4.yyxx swizzling.
        [Inline]
        public float4 yyxx =>  float4(y, y, x, x);
        
        /// Returns float4.ggrr swizzling (equivalent to float4.yyxx).
        [Inline]
        public float4 ggrr =>  float4(y, y, x, x);
        
        /// Returns float4.yyxy swizzling.
        [Inline]
        public float4 yyxy =>  float4(y, y, x, y);
        
        /// Returns float4.ggrg swizzling (equivalent to float4.yyxy).
        [Inline]
        public float4 ggrg =>  float4(y, y, x, y);
        
        /// Returns float4.yyxz swizzling.
        [Inline]
        public float4 yyxz =>  float4(y, y, x, z);
        
        /// Returns float4.ggrb swizzling (equivalent to float4.yyxz).
        [Inline]
        public float4 ggrb =>  float4(y, y, x, z);
        
        /// Returns float4.yyxw swizzling.
        [Inline]
        public float4 yyxw =>  float4(y, y, x, w);
        
        /// Returns float4.ggra swizzling (equivalent to float4.yyxw).
        [Inline]
        public float4 ggra =>  float4(y, y, x, w);
        
        /// Returns float4.yyy swizzling.
        [Inline]
        public float3 yyy =>  float3(y, y, y);
        
        /// Returns float4.ggg swizzling (equivalent to float4.yyy).
        [Inline]
        public float3 ggg =>  float3(y, y, y);
        
        /// Returns float4.yyyx swizzling.
        [Inline]
        public float4 yyyx =>  float4(y, y, y, x);
        
        /// Returns float4.gggr swizzling (equivalent to float4.yyyx).
        [Inline]
        public float4 gggr =>  float4(y, y, y, x);
        
        /// Returns float4.yyyy swizzling.
        [Inline]
        public float4 yyyy =>  float4(y, y, y, y);
        
        /// Returns float4.gggg swizzling (equivalent to float4.yyyy).
        [Inline]
        public float4 gggg =>  float4(y, y, y, y);
        
        /// Returns float4.yyyz swizzling.
        [Inline]
        public float4 yyyz =>  float4(y, y, y, z);
        
        /// Returns float4.gggb swizzling (equivalent to float4.yyyz).
        [Inline]
        public float4 gggb =>  float4(y, y, y, z);
        
        /// Returns float4.yyyw swizzling.
        [Inline]
        public float4 yyyw =>  float4(y, y, y, w);
        
        /// Returns float4.ggga swizzling (equivalent to float4.yyyw).
        [Inline]
        public float4 ggga =>  float4(y, y, y, w);
        
        /// Returns float4.yyz swizzling.
        [Inline]
        public float3 yyz =>  float3(y, y, z);
        
        /// Returns float4.ggb swizzling (equivalent to float4.yyz).
        [Inline]
        public float3 ggb =>  float3(y, y, z);
        
        /// Returns float4.yyzx swizzling.
        [Inline]
        public float4 yyzx =>  float4(y, y, z, x);
        
        /// Returns float4.ggbr swizzling (equivalent to float4.yyzx).
        [Inline]
        public float4 ggbr =>  float4(y, y, z, x);
        
        /// Returns float4.yyzy swizzling.
        [Inline]
        public float4 yyzy =>  float4(y, y, z, y);
        
        /// Returns float4.ggbg swizzling (equivalent to float4.yyzy).
        [Inline]
        public float4 ggbg =>  float4(y, y, z, y);
        
        /// Returns float4.yyzz swizzling.
        [Inline]
        public float4 yyzz =>  float4(y, y, z, z);
        
        /// Returns float4.ggbb swizzling (equivalent to float4.yyzz).
        [Inline]
        public float4 ggbb =>  float4(y, y, z, z);
        
        /// Returns float4.yyzw swizzling.
        [Inline]
        public float4 yyzw =>  float4(y, y, z, w);
        
        /// Returns float4.ggba swizzling (equivalent to float4.yyzw).
        [Inline]
        public float4 ggba =>  float4(y, y, z, w);
        
        /// Returns float4.yyw swizzling.
        [Inline]
        public float3 yyw =>  float3(y, y, w);
        
        /// Returns float4.gga swizzling (equivalent to float4.yyw).
        [Inline]
        public float3 gga =>  float3(y, y, w);
        
        /// Returns float4.yywx swizzling.
        [Inline]
        public float4 yywx =>  float4(y, y, w, x);
        
        /// Returns float4.ggar swizzling (equivalent to float4.yywx).
        [Inline]
        public float4 ggar =>  float4(y, y, w, x);
        
        /// Returns float4.yywy swizzling.
        [Inline]
        public float4 yywy =>  float4(y, y, w, y);
        
        /// Returns float4.ggag swizzling (equivalent to float4.yywy).
        [Inline]
        public float4 ggag =>  float4(y, y, w, y);
        
        /// Returns float4.yywz swizzling.
        [Inline]
        public float4 yywz =>  float4(y, y, w, z);
        
        /// Returns float4.ggab swizzling (equivalent to float4.yywz).
        [Inline]
        public float4 ggab =>  float4(y, y, w, z);
        
        /// Returns float4.yyww swizzling.
        [Inline]
        public float4 yyww =>  float4(y, y, w, w);
        
        /// Returns float4.ggaa swizzling (equivalent to float4.yyww).
        [Inline]
        public float4 ggaa =>  float4(y, y, w, w);
        
        /// Returns float4.yz swizzling.
        [Inline]
        public float2 yz =>  float2(y, z);
        
        /// Returns float4.gb swizzling (equivalent to float4.yz).
        [Inline]
        public float2 gb =>  float2(y, z);
        
        /// Returns float4.yzx swizzling.
        [Inline]
        public float3 yzx =>  float3(y, z, x);
        
        /// Returns float4.gbr swizzling (equivalent to float4.yzx).
        [Inline]
        public float3 gbr =>  float3(y, z, x);
        
        /// Returns float4.yzxx swizzling.
        [Inline]
        public float4 yzxx =>  float4(y, z, x, x);
        
        /// Returns float4.gbrr swizzling (equivalent to float4.yzxx).
        [Inline]
        public float4 gbrr =>  float4(y, z, x, x);
        
        /// Returns float4.yzxy swizzling.
        [Inline]
        public float4 yzxy =>  float4(y, z, x, y);
        
        /// Returns float4.gbrg swizzling (equivalent to float4.yzxy).
        [Inline]
        public float4 gbrg =>  float4(y, z, x, y);
        
        /// Returns float4.yzxz swizzling.
        [Inline]
        public float4 yzxz =>  float4(y, z, x, z);
        
        /// Returns float4.gbrb swizzling (equivalent to float4.yzxz).
        [Inline]
        public float4 gbrb =>  float4(y, z, x, z);
        
        /// Returns float4.yzxw swizzling.
        [Inline]
        public float4 yzxw =>  float4(y, z, x, w);
        
        /// Returns float4.gbra swizzling (equivalent to float4.yzxw).
        [Inline]
        public float4 gbra =>  float4(y, z, x, w);
        
        /// Returns float4.yzy swizzling.
        [Inline]
        public float3 yzy =>  float3(y, z, y);
        
        /// Returns float4.gbg swizzling (equivalent to float4.yzy).
        [Inline]
        public float3 gbg =>  float3(y, z, y);
        
        /// Returns float4.yzyx swizzling.
        [Inline]
        public float4 yzyx =>  float4(y, z, y, x);
        
        /// Returns float4.gbgr swizzling (equivalent to float4.yzyx).
        [Inline]
        public float4 gbgr =>  float4(y, z, y, x);
        
        /// Returns float4.yzyy swizzling.
        [Inline]
        public float4 yzyy =>  float4(y, z, y, y);
        
        /// Returns float4.gbgg swizzling (equivalent to float4.yzyy).
        [Inline]
        public float4 gbgg =>  float4(y, z, y, y);
        
        /// Returns float4.yzyz swizzling.
        [Inline]
        public float4 yzyz =>  float4(y, z, y, z);
        
        /// Returns float4.gbgb swizzling (equivalent to float4.yzyz).
        [Inline]
        public float4 gbgb =>  float4(y, z, y, z);
        
        /// Returns float4.yzyw swizzling.
        [Inline]
        public float4 yzyw =>  float4(y, z, y, w);
        
        /// Returns float4.gbga swizzling (equivalent to float4.yzyw).
        [Inline]
        public float4 gbga =>  float4(y, z, y, w);
        
        /// Returns float4.yzz swizzling.
        [Inline]
        public float3 yzz =>  float3(y, z, z);
        
        /// Returns float4.gbb swizzling (equivalent to float4.yzz).
        [Inline]
        public float3 gbb =>  float3(y, z, z);
        
        /// Returns float4.yzzx swizzling.
        [Inline]
        public float4 yzzx =>  float4(y, z, z, x);
        
        /// Returns float4.gbbr swizzling (equivalent to float4.yzzx).
        [Inline]
        public float4 gbbr =>  float4(y, z, z, x);
        
        /// Returns float4.yzzy swizzling.
        [Inline]
        public float4 yzzy =>  float4(y, z, z, y);
        
        /// Returns float4.gbbg swizzling (equivalent to float4.yzzy).
        [Inline]
        public float4 gbbg =>  float4(y, z, z, y);
        
        /// Returns float4.yzzz swizzling.
        [Inline]
        public float4 yzzz =>  float4(y, z, z, z);
        
        /// Returns float4.gbbb swizzling (equivalent to float4.yzzz).
        [Inline]
        public float4 gbbb =>  float4(y, z, z, z);
        
        /// Returns float4.yzzw swizzling.
        [Inline]
        public float4 yzzw =>  float4(y, z, z, w);
        
        /// Returns float4.gbba swizzling (equivalent to float4.yzzw).
        [Inline]
        public float4 gbba =>  float4(y, z, z, w);
        
        /// Returns float4.yzw swizzling.
        [Inline]
        public float3 yzw =>  float3(y, z, w);
        
        /// Returns float4.gba swizzling (equivalent to float4.yzw).
        [Inline]
        public float3 gba =>  float3(y, z, w);
        
        /// Returns float4.yzwx swizzling.
        [Inline]
        public float4 yzwx =>  float4(y, z, w, x);
        
        /// Returns float4.gbar swizzling (equivalent to float4.yzwx).
        [Inline]
        public float4 gbar =>  float4(y, z, w, x);
        
        /// Returns float4.yzwy swizzling.
        [Inline]
        public float4 yzwy =>  float4(y, z, w, y);
        
        /// Returns float4.gbag swizzling (equivalent to float4.yzwy).
        [Inline]
        public float4 gbag =>  float4(y, z, w, y);
        
        /// Returns float4.yzwz swizzling.
        [Inline]
        public float4 yzwz =>  float4(y, z, w, z);
        
        /// Returns float4.gbab swizzling (equivalent to float4.yzwz).
        [Inline]
        public float4 gbab =>  float4(y, z, w, z);
        
        /// Returns float4.yzww swizzling.
        [Inline]
        public float4 yzww =>  float4(y, z, w, w);
        
        /// Returns float4.gbaa swizzling (equivalent to float4.yzww).
        [Inline]
        public float4 gbaa =>  float4(y, z, w, w);
        
        /// Returns float4.yw swizzling.
        [Inline]
        public float2 yw =>  float2(y, w);
        
        /// Returns float4.ga swizzling (equivalent to float4.yw).
        [Inline]
        public float2 ga =>  float2(y, w);
        
        /// Returns float4.ywx swizzling.
        [Inline]
        public float3 ywx =>  float3(y, w, x);
        
        /// Returns float4.gar swizzling (equivalent to float4.ywx).
        [Inline]
        public float3 gar =>  float3(y, w, x);
        
        /// Returns float4.ywxx swizzling.
        [Inline]
        public float4 ywxx =>  float4(y, w, x, x);
        
        /// Returns float4.garr swizzling (equivalent to float4.ywxx).
        [Inline]
        public float4 garr =>  float4(y, w, x, x);
        
        /// Returns float4.ywxy swizzling.
        [Inline]
        public float4 ywxy =>  float4(y, w, x, y);
        
        /// Returns float4.garg swizzling (equivalent to float4.ywxy).
        [Inline]
        public float4 garg =>  float4(y, w, x, y);
        
        /// Returns float4.ywxz swizzling.
        [Inline]
        public float4 ywxz =>  float4(y, w, x, z);
        
        /// Returns float4.garb swizzling (equivalent to float4.ywxz).
        [Inline]
        public float4 garb =>  float4(y, w, x, z);
        
        /// Returns float4.ywxw swizzling.
        [Inline]
        public float4 ywxw =>  float4(y, w, x, w);
        
        /// Returns float4.gara swizzling (equivalent to float4.ywxw).
        [Inline]
        public float4 gara =>  float4(y, w, x, w);
        
        /// Returns float4.ywy swizzling.
        [Inline]
        public float3 ywy =>  float3(y, w, y);
        
        /// Returns float4.gag swizzling (equivalent to float4.ywy).
        [Inline]
        public float3 gag =>  float3(y, w, y);
        
        /// Returns float4.ywyx swizzling.
        [Inline]
        public float4 ywyx =>  float4(y, w, y, x);
        
        /// Returns float4.gagr swizzling (equivalent to float4.ywyx).
        [Inline]
        public float4 gagr =>  float4(y, w, y, x);
        
        /// Returns float4.ywyy swizzling.
        [Inline]
        public float4 ywyy =>  float4(y, w, y, y);
        
        /// Returns float4.gagg swizzling (equivalent to float4.ywyy).
        [Inline]
        public float4 gagg =>  float4(y, w, y, y);
        
        /// Returns float4.ywyz swizzling.
        [Inline]
        public float4 ywyz =>  float4(y, w, y, z);
        
        /// Returns float4.gagb swizzling (equivalent to float4.ywyz).
        [Inline]
        public float4 gagb =>  float4(y, w, y, z);
        
        /// Returns float4.ywyw swizzling.
        [Inline]
        public float4 ywyw =>  float4(y, w, y, w);
        
        /// Returns float4.gaga swizzling (equivalent to float4.ywyw).
        [Inline]
        public float4 gaga =>  float4(y, w, y, w);
        
        /// Returns float4.ywz swizzling.
        [Inline]
        public float3 ywz =>  float3(y, w, z);
        
        /// Returns float4.gab swizzling (equivalent to float4.ywz).
        [Inline]
        public float3 gab =>  float3(y, w, z);
        
        /// Returns float4.ywzx swizzling.
        [Inline]
        public float4 ywzx =>  float4(y, w, z, x);
        
        /// Returns float4.gabr swizzling (equivalent to float4.ywzx).
        [Inline]
        public float4 gabr =>  float4(y, w, z, x);
        
        /// Returns float4.ywzy swizzling.
        [Inline]
        public float4 ywzy =>  float4(y, w, z, y);
        
        /// Returns float4.gabg swizzling (equivalent to float4.ywzy).
        [Inline]
        public float4 gabg =>  float4(y, w, z, y);
        
        /// Returns float4.ywzz swizzling.
        [Inline]
        public float4 ywzz =>  float4(y, w, z, z);
        
        /// Returns float4.gabb swizzling (equivalent to float4.ywzz).
        [Inline]
        public float4 gabb =>  float4(y, w, z, z);
        
        /// Returns float4.ywzw swizzling.
        [Inline]
        public float4 ywzw =>  float4(y, w, z, w);
        
        /// Returns float4.gaba swizzling (equivalent to float4.ywzw).
        [Inline]
        public float4 gaba =>  float4(y, w, z, w);
        
        /// Returns float4.yww swizzling.
        [Inline]
        public float3 yww =>  float3(y, w, w);
        
        /// Returns float4.gaa swizzling (equivalent to float4.yww).
        [Inline]
        public float3 gaa =>  float3(y, w, w);
        
        /// Returns float4.ywwx swizzling.
        [Inline]
        public float4 ywwx =>  float4(y, w, w, x);
        
        /// Returns float4.gaar swizzling (equivalent to float4.ywwx).
        [Inline]
        public float4 gaar =>  float4(y, w, w, x);
        
        /// Returns float4.ywwy swizzling.
        [Inline]
        public float4 ywwy =>  float4(y, w, w, y);
        
        /// Returns float4.gaag swizzling (equivalent to float4.ywwy).
        [Inline]
        public float4 gaag =>  float4(y, w, w, y);
        
        /// Returns float4.ywwz swizzling.
        [Inline]
        public float4 ywwz =>  float4(y, w, w, z);
        
        /// Returns float4.gaab swizzling (equivalent to float4.ywwz).
        [Inline]
        public float4 gaab =>  float4(y, w, w, z);
        
        /// Returns float4.ywww swizzling.
        [Inline]
        public float4 ywww =>  float4(y, w, w, w);
        
        /// Returns float4.gaaa swizzling (equivalent to float4.ywww).
        [Inline]
        public float4 gaaa =>  float4(y, w, w, w);
        
        /// Returns float4.zx swizzling.
        [Inline]
        public float2 zx =>  float2(z, x);
        
        /// Returns float4.br swizzling (equivalent to float4.zx).
        [Inline]
        public float2 br =>  float2(z, x);
        
        /// Returns float4.zxx swizzling.
        [Inline]
        public float3 zxx =>  float3(z, x, x);
        
        /// Returns float4.brr swizzling (equivalent to float4.zxx).
        [Inline]
        public float3 brr =>  float3(z, x, x);
        
        /// Returns float4.zxxx swizzling.
        [Inline]
        public float4 zxxx =>  float4(z, x, x, x);
        
        /// Returns float4.brrr swizzling (equivalent to float4.zxxx).
        [Inline]
        public float4 brrr =>  float4(z, x, x, x);
        
        /// Returns float4.zxxy swizzling.
        [Inline]
        public float4 zxxy =>  float4(z, x, x, y);
        
        /// Returns float4.brrg swizzling (equivalent to float4.zxxy).
        [Inline]
        public float4 brrg =>  float4(z, x, x, y);
        
        /// Returns float4.zxxz swizzling.
        [Inline]
        public float4 zxxz =>  float4(z, x, x, z);
        
        /// Returns float4.brrb swizzling (equivalent to float4.zxxz).
        [Inline]
        public float4 brrb =>  float4(z, x, x, z);
        
        /// Returns float4.zxxw swizzling.
        [Inline]
        public float4 zxxw =>  float4(z, x, x, w);
        
        /// Returns float4.brra swizzling (equivalent to float4.zxxw).
        [Inline]
        public float4 brra =>  float4(z, x, x, w);
        
        /// Returns float4.zxy swizzling.
        [Inline]
        public float3 zxy =>  float3(z, x, y);
        
        /// Returns float4.brg swizzling (equivalent to float4.zxy).
        [Inline]
        public float3 brg =>  float3(z, x, y);
        
        /// Returns float4.zxyx swizzling.
        [Inline]
        public float4 zxyx =>  float4(z, x, y, x);
        
        /// Returns float4.brgr swizzling (equivalent to float4.zxyx).
        [Inline]
        public float4 brgr =>  float4(z, x, y, x);
        
        /// Returns float4.zxyy swizzling.
        [Inline]
        public float4 zxyy =>  float4(z, x, y, y);
        
        /// Returns float4.brgg swizzling (equivalent to float4.zxyy).
        [Inline]
        public float4 brgg =>  float4(z, x, y, y);
        
        /// Returns float4.zxyz swizzling.
        [Inline]
        public float4 zxyz =>  float4(z, x, y, z);
        
        /// Returns float4.brgb swizzling (equivalent to float4.zxyz).
        [Inline]
        public float4 brgb =>  float4(z, x, y, z);
        
        /// Returns float4.zxyw swizzling.
        [Inline]
        public float4 zxyw =>  float4(z, x, y, w);
        
        /// Returns float4.brga swizzling (equivalent to float4.zxyw).
        [Inline]
        public float4 brga =>  float4(z, x, y, w);
        
        /// Returns float4.zxz swizzling.
        [Inline]
        public float3 zxz =>  float3(z, x, z);
        
        /// Returns float4.brb swizzling (equivalent to float4.zxz).
        [Inline]
        public float3 brb =>  float3(z, x, z);
        
        /// Returns float4.zxzx swizzling.
        [Inline]
        public float4 zxzx =>  float4(z, x, z, x);
        
        /// Returns float4.brbr swizzling (equivalent to float4.zxzx).
        [Inline]
        public float4 brbr =>  float4(z, x, z, x);
        
        /// Returns float4.zxzy swizzling.
        [Inline]
        public float4 zxzy =>  float4(z, x, z, y);
        
        /// Returns float4.brbg swizzling (equivalent to float4.zxzy).
        [Inline]
        public float4 brbg =>  float4(z, x, z, y);
        
        /// Returns float4.zxzz swizzling.
        [Inline]
        public float4 zxzz =>  float4(z, x, z, z);
        
        /// Returns float4.brbb swizzling (equivalent to float4.zxzz).
        [Inline]
        public float4 brbb =>  float4(z, x, z, z);
        
        /// Returns float4.zxzw swizzling.
        [Inline]
        public float4 zxzw =>  float4(z, x, z, w);
        
        /// Returns float4.brba swizzling (equivalent to float4.zxzw).
        [Inline]
        public float4 brba =>  float4(z, x, z, w);
        
        /// Returns float4.zxw swizzling.
        [Inline]
        public float3 zxw =>  float3(z, x, w);
        
        /// Returns float4.bra swizzling (equivalent to float4.zxw).
        [Inline]
        public float3 bra =>  float3(z, x, w);
        
        /// Returns float4.zxwx swizzling.
        [Inline]
        public float4 zxwx =>  float4(z, x, w, x);
        
        /// Returns float4.brar swizzling (equivalent to float4.zxwx).
        [Inline]
        public float4 brar =>  float4(z, x, w, x);
        
        /// Returns float4.zxwy swizzling.
        [Inline]
        public float4 zxwy =>  float4(z, x, w, y);
        
        /// Returns float4.brag swizzling (equivalent to float4.zxwy).
        [Inline]
        public float4 brag =>  float4(z, x, w, y);
        
        /// Returns float4.zxwz swizzling.
        [Inline]
        public float4 zxwz =>  float4(z, x, w, z);
        
        /// Returns float4.brab swizzling (equivalent to float4.zxwz).
        [Inline]
        public float4 brab =>  float4(z, x, w, z);
        
        /// Returns float4.zxww swizzling.
        [Inline]
        public float4 zxww =>  float4(z, x, w, w);
        
        /// Returns float4.braa swizzling (equivalent to float4.zxww).
        [Inline]
        public float4 braa =>  float4(z, x, w, w);
        
        /// Returns float4.zy swizzling.
        [Inline]
        public float2 zy =>  float2(z, y);
        
        /// Returns float4.bg swizzling (equivalent to float4.zy).
        [Inline]
        public float2 bg =>  float2(z, y);
        
        /// Returns float4.zyx swizzling.
        [Inline]
        public float3 zyx =>  float3(z, y, x);
        
        /// Returns float4.bgr swizzling (equivalent to float4.zyx).
        [Inline]
        public float3 bgr =>  float3(z, y, x);
        
        /// Returns float4.zyxx swizzling.
        [Inline]
        public float4 zyxx =>  float4(z, y, x, x);
        
        /// Returns float4.bgrr swizzling (equivalent to float4.zyxx).
        [Inline]
        public float4 bgrr =>  float4(z, y, x, x);
        
        /// Returns float4.zyxy swizzling.
        [Inline]
        public float4 zyxy =>  float4(z, y, x, y);
        
        /// Returns float4.bgrg swizzling (equivalent to float4.zyxy).
        [Inline]
        public float4 bgrg =>  float4(z, y, x, y);
        
        /// Returns float4.zyxz swizzling.
        [Inline]
        public float4 zyxz =>  float4(z, y, x, z);
        
        /// Returns float4.bgrb swizzling (equivalent to float4.zyxz).
        [Inline]
        public float4 bgrb =>  float4(z, y, x, z);
        
        /// Returns float4.zyxw swizzling.
        [Inline]
        public float4 zyxw =>  float4(z, y, x, w);
        
        /// Returns float4.bgra swizzling (equivalent to float4.zyxw).
        [Inline]
        public float4 bgra =>  float4(z, y, x, w);
        
        /// Returns float4.zyy swizzling.
        [Inline]
        public float3 zyy =>  float3(z, y, y);
        
        /// Returns float4.bgg swizzling (equivalent to float4.zyy).
        [Inline]
        public float3 bgg =>  float3(z, y, y);
        
        /// Returns float4.zyyx swizzling.
        [Inline]
        public float4 zyyx =>  float4(z, y, y, x);
        
        /// Returns float4.bggr swizzling (equivalent to float4.zyyx).
        [Inline]
        public float4 bggr =>  float4(z, y, y, x);
        
        /// Returns float4.zyyy swizzling.
        [Inline]
        public float4 zyyy =>  float4(z, y, y, y);
        
        /// Returns float4.bggg swizzling (equivalent to float4.zyyy).
        [Inline]
        public float4 bggg =>  float4(z, y, y, y);
        
        /// Returns float4.zyyz swizzling.
        [Inline]
        public float4 zyyz =>  float4(z, y, y, z);
        
        /// Returns float4.bggb swizzling (equivalent to float4.zyyz).
        [Inline]
        public float4 bggb =>  float4(z, y, y, z);
        
        /// Returns float4.zyyw swizzling.
        [Inline]
        public float4 zyyw =>  float4(z, y, y, w);
        
        /// Returns float4.bgga swizzling (equivalent to float4.zyyw).
        [Inline]
        public float4 bgga =>  float4(z, y, y, w);
        
        /// Returns float4.zyz swizzling.
        [Inline]
        public float3 zyz =>  float3(z, y, z);
        
        /// Returns float4.bgb swizzling (equivalent to float4.zyz).
        [Inline]
        public float3 bgb =>  float3(z, y, z);
        
        /// Returns float4.zyzx swizzling.
        [Inline]
        public float4 zyzx =>  float4(z, y, z, x);
        
        /// Returns float4.bgbr swizzling (equivalent to float4.zyzx).
        [Inline]
        public float4 bgbr =>  float4(z, y, z, x);
        
        /// Returns float4.zyzy swizzling.
        [Inline]
        public float4 zyzy =>  float4(z, y, z, y);
        
        /// Returns float4.bgbg swizzling (equivalent to float4.zyzy).
        [Inline]
        public float4 bgbg =>  float4(z, y, z, y);
        
        /// Returns float4.zyzz swizzling.
        [Inline]
        public float4 zyzz =>  float4(z, y, z, z);
        
        /// Returns float4.bgbb swizzling (equivalent to float4.zyzz).
        [Inline]
        public float4 bgbb =>  float4(z, y, z, z);
        
        /// Returns float4.zyzw swizzling.
        [Inline]
        public float4 zyzw =>  float4(z, y, z, w);
        
        /// Returns float4.bgba swizzling (equivalent to float4.zyzw).
        [Inline]
        public float4 bgba =>  float4(z, y, z, w);
        
        /// Returns float4.zyw swizzling.
        [Inline]
        public float3 zyw =>  float3(z, y, w);
        
        /// Returns float4.bga swizzling (equivalent to float4.zyw).
        [Inline]
        public float3 bga =>  float3(z, y, w);
        
        /// Returns float4.zywx swizzling.
        [Inline]
        public float4 zywx =>  float4(z, y, w, x);
        
        /// Returns float4.bgar swizzling (equivalent to float4.zywx).
        [Inline]
        public float4 bgar =>  float4(z, y, w, x);
        
        /// Returns float4.zywy swizzling.
        [Inline]
        public float4 zywy =>  float4(z, y, w, y);
        
        /// Returns float4.bgag swizzling (equivalent to float4.zywy).
        [Inline]
        public float4 bgag =>  float4(z, y, w, y);
        
        /// Returns float4.zywz swizzling.
        [Inline]
        public float4 zywz =>  float4(z, y, w, z);
        
        /// Returns float4.bgab swizzling (equivalent to float4.zywz).
        [Inline]
        public float4 bgab =>  float4(z, y, w, z);
        
        /// Returns float4.zyww swizzling.
        [Inline]
        public float4 zyww =>  float4(z, y, w, w);
        
        /// Returns float4.bgaa swizzling (equivalent to float4.zyww).
        [Inline]
        public float4 bgaa =>  float4(z, y, w, w);
        
        /// Returns float4.zz swizzling.
        [Inline]
        public float2 zz =>  float2(z, z);
        
        /// Returns float4.bb swizzling (equivalent to float4.zz).
        [Inline]
        public float2 bb =>  float2(z, z);
        
        /// Returns float4.zzx swizzling.
        [Inline]
        public float3 zzx =>  float3(z, z, x);
        
        /// Returns float4.bbr swizzling (equivalent to float4.zzx).
        [Inline]
        public float3 bbr =>  float3(z, z, x);
        
        /// Returns float4.zzxx swizzling.
        [Inline]
        public float4 zzxx =>  float4(z, z, x, x);
        
        /// Returns float4.bbrr swizzling (equivalent to float4.zzxx).
        [Inline]
        public float4 bbrr =>  float4(z, z, x, x);
        
        /// Returns float4.zzxy swizzling.
        [Inline]
        public float4 zzxy =>  float4(z, z, x, y);
        
        /// Returns float4.bbrg swizzling (equivalent to float4.zzxy).
        [Inline]
        public float4 bbrg =>  float4(z, z, x, y);
        
        /// Returns float4.zzxz swizzling.
        [Inline]
        public float4 zzxz =>  float4(z, z, x, z);
        
        /// Returns float4.bbrb swizzling (equivalent to float4.zzxz).
        [Inline]
        public float4 bbrb =>  float4(z, z, x, z);
        
        /// Returns float4.zzxw swizzling.
        [Inline]
        public float4 zzxw =>  float4(z, z, x, w);
        
        /// Returns float4.bbra swizzling (equivalent to float4.zzxw).
        [Inline]
        public float4 bbra =>  float4(z, z, x, w);
        
        /// Returns float4.zzy swizzling.
        [Inline]
        public float3 zzy =>  float3(z, z, y);
        
        /// Returns float4.bbg swizzling (equivalent to float4.zzy).
        [Inline]
        public float3 bbg =>  float3(z, z, y);
        
        /// Returns float4.zzyx swizzling.
        [Inline]
        public float4 zzyx =>  float4(z, z, y, x);
        
        /// Returns float4.bbgr swizzling (equivalent to float4.zzyx).
        [Inline]
        public float4 bbgr =>  float4(z, z, y, x);
        
        /// Returns float4.zzyy swizzling.
        [Inline]
        public float4 zzyy =>  float4(z, z, y, y);
        
        /// Returns float4.bbgg swizzling (equivalent to float4.zzyy).
        [Inline]
        public float4 bbgg =>  float4(z, z, y, y);
        
        /// Returns float4.zzyz swizzling.
        [Inline]
        public float4 zzyz =>  float4(z, z, y, z);
        
        /// Returns float4.bbgb swizzling (equivalent to float4.zzyz).
        [Inline]
        public float4 bbgb =>  float4(z, z, y, z);
        
        /// Returns float4.zzyw swizzling.
        [Inline]
        public float4 zzyw =>  float4(z, z, y, w);
        
        /// Returns float4.bbga swizzling (equivalent to float4.zzyw).
        [Inline]
        public float4 bbga =>  float4(z, z, y, w);
        
        /// Returns float4.zzz swizzling.
        [Inline]
        public float3 zzz =>  float3(z, z, z);
        
        /// Returns float4.bbb swizzling (equivalent to float4.zzz).
        [Inline]
        public float3 bbb =>  float3(z, z, z);
        
        /// Returns float4.zzzx swizzling.
        [Inline]
        public float4 zzzx =>  float4(z, z, z, x);
        
        /// Returns float4.bbbr swizzling (equivalent to float4.zzzx).
        [Inline]
        public float4 bbbr =>  float4(z, z, z, x);
        
        /// Returns float4.zzzy swizzling.
        [Inline]
        public float4 zzzy =>  float4(z, z, z, y);
        
        /// Returns float4.bbbg swizzling (equivalent to float4.zzzy).
        [Inline]
        public float4 bbbg =>  float4(z, z, z, y);
        
        /// Returns float4.zzzz swizzling.
        [Inline]
        public float4 zzzz =>  float4(z, z, z, z);
        
        /// Returns float4.bbbb swizzling (equivalent to float4.zzzz).
        [Inline]
        public float4 bbbb =>  float4(z, z, z, z);
        
        /// Returns float4.zzzw swizzling.
        [Inline]
        public float4 zzzw =>  float4(z, z, z, w);
        
        /// Returns float4.bbba swizzling (equivalent to float4.zzzw).
        [Inline]
        public float4 bbba =>  float4(z, z, z, w);
        
        /// Returns float4.zzw swizzling.
        [Inline]
        public float3 zzw =>  float3(z, z, w);
        
        /// Returns float4.bba swizzling (equivalent to float4.zzw).
        [Inline]
        public float3 bba =>  float3(z, z, w);
        
        /// Returns float4.zzwx swizzling.
        [Inline]
        public float4 zzwx =>  float4(z, z, w, x);
        
        /// Returns float4.bbar swizzling (equivalent to float4.zzwx).
        [Inline]
        public float4 bbar =>  float4(z, z, w, x);
        
        /// Returns float4.zzwy swizzling.
        [Inline]
        public float4 zzwy =>  float4(z, z, w, y);
        
        /// Returns float4.bbag swizzling (equivalent to float4.zzwy).
        [Inline]
        public float4 bbag =>  float4(z, z, w, y);
        
        /// Returns float4.zzwz swizzling.
        [Inline]
        public float4 zzwz =>  float4(z, z, w, z);
        
        /// Returns float4.bbab swizzling (equivalent to float4.zzwz).
        [Inline]
        public float4 bbab =>  float4(z, z, w, z);
        
        /// Returns float4.zzww swizzling.
        [Inline]
        public float4 zzww =>  float4(z, z, w, w);
        
        /// Returns float4.bbaa swizzling (equivalent to float4.zzww).
        [Inline]
        public float4 bbaa =>  float4(z, z, w, w);
        
        /// Returns float4.zw swizzling.
        [Inline]
        public float2 zw =>  float2(z, w);
        
        /// Returns float4.ba swizzling (equivalent to float4.zw).
        [Inline]
        public float2 ba =>  float2(z, w);
        
        /// Returns float4.zwx swizzling.
        [Inline]
        public float3 zwx =>  float3(z, w, x);
        
        /// Returns float4.bar swizzling (equivalent to float4.zwx).
        [Inline]
        public float3 bar =>  float3(z, w, x);
        
        /// Returns float4.zwxx swizzling.
        [Inline]
        public float4 zwxx =>  float4(z, w, x, x);
        
        /// Returns float4.barr swizzling (equivalent to float4.zwxx).
        [Inline]
        public float4 barr =>  float4(z, w, x, x);
        
        /// Returns float4.zwxy swizzling.
        [Inline]
        public float4 zwxy =>  float4(z, w, x, y);
        
        /// Returns float4.barg swizzling (equivalent to float4.zwxy).
        [Inline]
        public float4 barg =>  float4(z, w, x, y);
        
        /// Returns float4.zwxz swizzling.
        [Inline]
        public float4 zwxz =>  float4(z, w, x, z);
        
        /// Returns float4.barb swizzling (equivalent to float4.zwxz).
        [Inline]
        public float4 barb =>  float4(z, w, x, z);
        
        /// Returns float4.zwxw swizzling.
        [Inline]
        public float4 zwxw =>  float4(z, w, x, w);
        
        /// Returns float4.bara swizzling (equivalent to float4.zwxw).
        [Inline]
        public float4 bara =>  float4(z, w, x, w);
        
        /// Returns float4.zwy swizzling.
        [Inline]
        public float3 zwy =>  float3(z, w, y);
        
        /// Returns float4.bag swizzling (equivalent to float4.zwy).
        [Inline]
        public float3 bag =>  float3(z, w, y);
        
        /// Returns float4.zwyx swizzling.
        [Inline]
        public float4 zwyx =>  float4(z, w, y, x);
        
        /// Returns float4.bagr swizzling (equivalent to float4.zwyx).
        [Inline]
        public float4 bagr =>  float4(z, w, y, x);
        
        /// Returns float4.zwyy swizzling.
        [Inline]
        public float4 zwyy =>  float4(z, w, y, y);
        
        /// Returns float4.bagg swizzling (equivalent to float4.zwyy).
        [Inline]
        public float4 bagg =>  float4(z, w, y, y);
        
        /// Returns float4.zwyz swizzling.
        [Inline]
        public float4 zwyz =>  float4(z, w, y, z);
        
        /// Returns float4.bagb swizzling (equivalent to float4.zwyz).
        [Inline]
        public float4 bagb =>  float4(z, w, y, z);
        
        /// Returns float4.zwyw swizzling.
        [Inline]
        public float4 zwyw =>  float4(z, w, y, w);
        
        /// Returns float4.baga swizzling (equivalent to float4.zwyw).
        [Inline]
        public float4 baga =>  float4(z, w, y, w);
        
        /// Returns float4.zwz swizzling.
        [Inline]
        public float3 zwz =>  float3(z, w, z);
        
        /// Returns float4.bab swizzling (equivalent to float4.zwz).
        [Inline]
        public float3 bab =>  float3(z, w, z);
        
        /// Returns float4.zwzx swizzling.
        [Inline]
        public float4 zwzx =>  float4(z, w, z, x);
        
        /// Returns float4.babr swizzling (equivalent to float4.zwzx).
        [Inline]
        public float4 babr =>  float4(z, w, z, x);
        
        /// Returns float4.zwzy swizzling.
        [Inline]
        public float4 zwzy =>  float4(z, w, z, y);
        
        /// Returns float4.babg swizzling (equivalent to float4.zwzy).
        [Inline]
        public float4 babg =>  float4(z, w, z, y);
        
        /// Returns float4.zwzz swizzling.
        [Inline]
        public float4 zwzz =>  float4(z, w, z, z);
        
        /// Returns float4.babb swizzling (equivalent to float4.zwzz).
        [Inline]
        public float4 babb =>  float4(z, w, z, z);
        
        /// Returns float4.zwzw swizzling.
        [Inline]
        public float4 zwzw =>  float4(z, w, z, w);
        
        /// Returns float4.baba swizzling (equivalent to float4.zwzw).
        [Inline]
        public float4 baba =>  float4(z, w, z, w);
        
        /// Returns float4.zww swizzling.
        [Inline]
        public float3 zww =>  float3(z, w, w);
        
        /// Returns float4.baa swizzling (equivalent to float4.zww).
        [Inline]
        public float3 baa =>  float3(z, w, w);
        
        /// Returns float4.zwwx swizzling.
        [Inline]
        public float4 zwwx =>  float4(z, w, w, x);
        
        /// Returns float4.baar swizzling (equivalent to float4.zwwx).
        [Inline]
        public float4 baar =>  float4(z, w, w, x);
        
        /// Returns float4.zwwy swizzling.
        [Inline]
        public float4 zwwy =>  float4(z, w, w, y);
        
        /// Returns float4.baag swizzling (equivalent to float4.zwwy).
        [Inline]
        public float4 baag =>  float4(z, w, w, y);
        
        /// Returns float4.zwwz swizzling.
        [Inline]
        public float4 zwwz =>  float4(z, w, w, z);
        
        /// Returns float4.baab swizzling (equivalent to float4.zwwz).
        [Inline]
        public float4 baab =>  float4(z, w, w, z);
        
        /// Returns float4.zwww swizzling.
        [Inline]
        public float4 zwww =>  float4(z, w, w, w);
        
        /// Returns float4.baaa swizzling (equivalent to float4.zwww).
        [Inline]
        public float4 baaa =>  float4(z, w, w, w);
        
        /// Returns float4.wx swizzling.
        [Inline]
        public float2 wx =>  float2(w, x);
        
        /// Returns float4.ar swizzling (equivalent to float4.wx).
        [Inline]
        public float2 ar =>  float2(w, x);
        
        /// Returns float4.wxx swizzling.
        [Inline]
        public float3 wxx =>  float3(w, x, x);
        
        /// Returns float4.arr swizzling (equivalent to float4.wxx).
        [Inline]
        public float3 arr =>  float3(w, x, x);
        
        /// Returns float4.wxxx swizzling.
        [Inline]
        public float4 wxxx =>  float4(w, x, x, x);
        
        /// Returns float4.arrr swizzling (equivalent to float4.wxxx).
        [Inline]
        public float4 arrr =>  float4(w, x, x, x);
        
        /// Returns float4.wxxy swizzling.
        [Inline]
        public float4 wxxy =>  float4(w, x, x, y);
        
        /// Returns float4.arrg swizzling (equivalent to float4.wxxy).
        [Inline]
        public float4 arrg =>  float4(w, x, x, y);
        
        /// Returns float4.wxxz swizzling.
        [Inline]
        public float4 wxxz =>  float4(w, x, x, z);
        
        /// Returns float4.arrb swizzling (equivalent to float4.wxxz).
        [Inline]
        public float4 arrb =>  float4(w, x, x, z);
        
        /// Returns float4.wxxw swizzling.
        [Inline]
        public float4 wxxw =>  float4(w, x, x, w);
        
        /// Returns float4.arra swizzling (equivalent to float4.wxxw).
        [Inline]
        public float4 arra =>  float4(w, x, x, w);
        
        /// Returns float4.wxy swizzling.
        [Inline]
        public float3 wxy =>  float3(w, x, y);
        
        /// Returns float4.arg swizzling (equivalent to float4.wxy).
        [Inline]
        public float3 arg =>  float3(w, x, y);
        
        /// Returns float4.wxyx swizzling.
        [Inline]
        public float4 wxyx =>  float4(w, x, y, x);
        
        /// Returns float4.argr swizzling (equivalent to float4.wxyx).
        [Inline]
        public float4 argr =>  float4(w, x, y, x);
        
        /// Returns float4.wxyy swizzling.
        [Inline]
        public float4 wxyy =>  float4(w, x, y, y);
        
        /// Returns float4.argg swizzling (equivalent to float4.wxyy).
        [Inline]
        public float4 argg =>  float4(w, x, y, y);
        
        /// Returns float4.wxyz swizzling.
        [Inline]
        public float4 wxyz =>  float4(w, x, y, z);
        
        /// Returns float4.argb swizzling (equivalent to float4.wxyz).
        [Inline]
        public float4 argb =>  float4(w, x, y, z);
        
        /// Returns float4.wxyw swizzling.
        [Inline]
        public float4 wxyw =>  float4(w, x, y, w);
        
        /// Returns float4.arga swizzling (equivalent to float4.wxyw).
        [Inline]
        public float4 arga =>  float4(w, x, y, w);
        
        /// Returns float4.wxz swizzling.
        [Inline]
        public float3 wxz =>  float3(w, x, z);
        
        /// Returns float4.arb swizzling (equivalent to float4.wxz).
        [Inline]
        public float3 arb =>  float3(w, x, z);
        
        /// Returns float4.wxzx swizzling.
        [Inline]
        public float4 wxzx =>  float4(w, x, z, x);
        
        /// Returns float4.arbr swizzling (equivalent to float4.wxzx).
        [Inline]
        public float4 arbr =>  float4(w, x, z, x);
        
        /// Returns float4.wxzy swizzling.
        [Inline]
        public float4 wxzy =>  float4(w, x, z, y);
        
        /// Returns float4.arbg swizzling (equivalent to float4.wxzy).
        [Inline]
        public float4 arbg =>  float4(w, x, z, y);
        
        /// Returns float4.wxzz swizzling.
        [Inline]
        public float4 wxzz =>  float4(w, x, z, z);
        
        /// Returns float4.arbb swizzling (equivalent to float4.wxzz).
        [Inline]
        public float4 arbb =>  float4(w, x, z, z);
        
        /// Returns float4.wxzw swizzling.
        [Inline]
        public float4 wxzw =>  float4(w, x, z, w);
        
        /// Returns float4.arba swizzling (equivalent to float4.wxzw).
        [Inline]
        public float4 arba =>  float4(w, x, z, w);
        
        /// Returns float4.wxw swizzling.
        [Inline]
        public float3 wxw =>  float3(w, x, w);
        
        /// Returns float4.ara swizzling (equivalent to float4.wxw).
        [Inline]
        public float3 ara =>  float3(w, x, w);
        
        /// Returns float4.wxwx swizzling.
        [Inline]
        public float4 wxwx =>  float4(w, x, w, x);
        
        /// Returns float4.arar swizzling (equivalent to float4.wxwx).
        [Inline]
        public float4 arar =>  float4(w, x, w, x);
        
        /// Returns float4.wxwy swizzling.
        [Inline]
        public float4 wxwy =>  float4(w, x, w, y);
        
        /// Returns float4.arag swizzling (equivalent to float4.wxwy).
        [Inline]
        public float4 arag =>  float4(w, x, w, y);
        
        /// Returns float4.wxwz swizzling.
        [Inline]
        public float4 wxwz =>  float4(w, x, w, z);
        
        /// Returns float4.arab swizzling (equivalent to float4.wxwz).
        [Inline]
        public float4 arab =>  float4(w, x, w, z);
        
        /// Returns float4.wxww swizzling.
        [Inline]
        public float4 wxww =>  float4(w, x, w, w);
        
        /// Returns float4.araa swizzling (equivalent to float4.wxww).
        [Inline]
        public float4 araa =>  float4(w, x, w, w);
        
        /// Returns float4.wy swizzling.
        [Inline]
        public float2 wy =>  float2(w, y);
        
        /// Returns float4.ag swizzling (equivalent to float4.wy).
        [Inline]
        public float2 ag =>  float2(w, y);
        
        /// Returns float4.wyx swizzling.
        [Inline]
        public float3 wyx =>  float3(w, y, x);
        
        /// Returns float4.agr swizzling (equivalent to float4.wyx).
        [Inline]
        public float3 agr =>  float3(w, y, x);
        
        /// Returns float4.wyxx swizzling.
        [Inline]
        public float4 wyxx =>  float4(w, y, x, x);
        
        /// Returns float4.agrr swizzling (equivalent to float4.wyxx).
        [Inline]
        public float4 agrr =>  float4(w, y, x, x);
        
        /// Returns float4.wyxy swizzling.
        [Inline]
        public float4 wyxy =>  float4(w, y, x, y);
        
        /// Returns float4.agrg swizzling (equivalent to float4.wyxy).
        [Inline]
        public float4 agrg =>  float4(w, y, x, y);
        
        /// Returns float4.wyxz swizzling.
        [Inline]
        public float4 wyxz =>  float4(w, y, x, z);
        
        /// Returns float4.agrb swizzling (equivalent to float4.wyxz).
        [Inline]
        public float4 agrb =>  float4(w, y, x, z);
        
        /// Returns float4.wyxw swizzling.
        [Inline]
        public float4 wyxw =>  float4(w, y, x, w);
        
        /// Returns float4.agra swizzling (equivalent to float4.wyxw).
        [Inline]
        public float4 agra =>  float4(w, y, x, w);
        
        /// Returns float4.wyy swizzling.
        [Inline]
        public float3 wyy =>  float3(w, y, y);
        
        /// Returns float4.agg swizzling (equivalent to float4.wyy).
        [Inline]
        public float3 agg =>  float3(w, y, y);
        
        /// Returns float4.wyyx swizzling.
        [Inline]
        public float4 wyyx =>  float4(w, y, y, x);
        
        /// Returns float4.aggr swizzling (equivalent to float4.wyyx).
        [Inline]
        public float4 aggr =>  float4(w, y, y, x);
        
        /// Returns float4.wyyy swizzling.
        [Inline]
        public float4 wyyy =>  float4(w, y, y, y);
        
        /// Returns float4.aggg swizzling (equivalent to float4.wyyy).
        [Inline]
        public float4 aggg =>  float4(w, y, y, y);
        
        /// Returns float4.wyyz swizzling.
        [Inline]
        public float4 wyyz =>  float4(w, y, y, z);
        
        /// Returns float4.aggb swizzling (equivalent to float4.wyyz).
        [Inline]
        public float4 aggb =>  float4(w, y, y, z);
        
        /// Returns float4.wyyw swizzling.
        [Inline]
        public float4 wyyw =>  float4(w, y, y, w);
        
        /// Returns float4.agga swizzling (equivalent to float4.wyyw).
        [Inline]
        public float4 agga =>  float4(w, y, y, w);
        
        /// Returns float4.wyz swizzling.
        [Inline]
        public float3 wyz =>  float3(w, y, z);
        
        /// Returns float4.agb swizzling (equivalent to float4.wyz).
        [Inline]
        public float3 agb =>  float3(w, y, z);
        
        /// Returns float4.wyzx swizzling.
        [Inline]
        public float4 wyzx =>  float4(w, y, z, x);
        
        /// Returns float4.agbr swizzling (equivalent to float4.wyzx).
        [Inline]
        public float4 agbr =>  float4(w, y, z, x);
        
        /// Returns float4.wyzy swizzling.
        [Inline]
        public float4 wyzy =>  float4(w, y, z, y);
        
        /// Returns float4.agbg swizzling (equivalent to float4.wyzy).
        [Inline]
        public float4 agbg =>  float4(w, y, z, y);
        
        /// Returns float4.wyzz swizzling.
        [Inline]
        public float4 wyzz =>  float4(w, y, z, z);
        
        /// Returns float4.agbb swizzling (equivalent to float4.wyzz).
        [Inline]
        public float4 agbb =>  float4(w, y, z, z);
        
        /// Returns float4.wyzw swizzling.
        [Inline]
        public float4 wyzw =>  float4(w, y, z, w);
        
        /// Returns float4.agba swizzling (equivalent to float4.wyzw).
        [Inline]
        public float4 agba =>  float4(w, y, z, w);
        
        /// Returns float4.wyw swizzling.
        [Inline]
        public float3 wyw =>  float3(w, y, w);
        
        /// Returns float4.aga swizzling (equivalent to float4.wyw).
        [Inline]
        public float3 aga =>  float3(w, y, w);
        
        /// Returns float4.wywx swizzling.
        [Inline]
        public float4 wywx =>  float4(w, y, w, x);
        
        /// Returns float4.agar swizzling (equivalent to float4.wywx).
        [Inline]
        public float4 agar =>  float4(w, y, w, x);
        
        /// Returns float4.wywy swizzling.
        [Inline]
        public float4 wywy =>  float4(w, y, w, y);
        
        /// Returns float4.agag swizzling (equivalent to float4.wywy).
        [Inline]
        public float4 agag =>  float4(w, y, w, y);
        
        /// Returns float4.wywz swizzling.
        [Inline]
        public float4 wywz =>  float4(w, y, w, z);
        
        /// Returns float4.agab swizzling (equivalent to float4.wywz).
        [Inline]
        public float4 agab =>  float4(w, y, w, z);
        
        /// Returns float4.wyww swizzling.
        [Inline]
        public float4 wyww =>  float4(w, y, w, w);
        
        /// Returns float4.agaa swizzling (equivalent to float4.wyww).
        [Inline]
        public float4 agaa =>  float4(w, y, w, w);
        
        /// Returns float4.wz swizzling.
        [Inline]
        public float2 wz =>  float2(w, z);
        
        /// Returns float4.ab swizzling (equivalent to float4.wz).
        [Inline]
        public float2 ab =>  float2(w, z);
        
        /// Returns float4.wzx swizzling.
        [Inline]
        public float3 wzx =>  float3(w, z, x);
        
        /// Returns float4.abr swizzling (equivalent to float4.wzx).
        [Inline]
        public float3 abr =>  float3(w, z, x);
        
        /// Returns float4.wzxx swizzling.
        [Inline]
        public float4 wzxx =>  float4(w, z, x, x);
        
        /// Returns float4.abrr swizzling (equivalent to float4.wzxx).
        [Inline]
        public float4 abrr =>  float4(w, z, x, x);
        
        /// Returns float4.wzxy swizzling.
        [Inline]
        public float4 wzxy =>  float4(w, z, x, y);
        
        /// Returns float4.abrg swizzling (equivalent to float4.wzxy).
        [Inline]
        public float4 abrg =>  float4(w, z, x, y);
        
        /// Returns float4.wzxz swizzling.
        [Inline]
        public float4 wzxz =>  float4(w, z, x, z);
        
        /// Returns float4.abrb swizzling (equivalent to float4.wzxz).
        [Inline]
        public float4 abrb =>  float4(w, z, x, z);
        
        /// Returns float4.wzxw swizzling.
        [Inline]
        public float4 wzxw =>  float4(w, z, x, w);
        
        /// Returns float4.abra swizzling (equivalent to float4.wzxw).
        [Inline]
        public float4 abra =>  float4(w, z, x, w);
        
        /// Returns float4.wzy swizzling.
        [Inline]
        public float3 wzy =>  float3(w, z, y);
        
        /// Returns float4.abg swizzling (equivalent to float4.wzy).
        [Inline]
        public float3 abg =>  float3(w, z, y);
        
        /// Returns float4.wzyx swizzling.
        [Inline]
        public float4 wzyx =>  float4(w, z, y, x);
        
        /// Returns float4.abgr swizzling (equivalent to float4.wzyx).
        [Inline]
        public float4 abgr =>  float4(w, z, y, x);
        
        /// Returns float4.wzyy swizzling.
        [Inline]
        public float4 wzyy =>  float4(w, z, y, y);
        
        /// Returns float4.abgg swizzling (equivalent to float4.wzyy).
        [Inline]
        public float4 abgg =>  float4(w, z, y, y);
        
        /// Returns float4.wzyz swizzling.
        [Inline]
        public float4 wzyz =>  float4(w, z, y, z);
        
        /// Returns float4.abgb swizzling (equivalent to float4.wzyz).
        [Inline]
        public float4 abgb =>  float4(w, z, y, z);
        
        /// Returns float4.wzyw swizzling.
        [Inline]
        public float4 wzyw =>  float4(w, z, y, w);
        
        /// Returns float4.abga swizzling (equivalent to float4.wzyw).
        [Inline]
        public float4 abga =>  float4(w, z, y, w);
        
        /// Returns float4.wzz swizzling.
        [Inline]
        public float3 wzz =>  float3(w, z, z);
        
        /// Returns float4.abb swizzling (equivalent to float4.wzz).
        [Inline]
        public float3 abb =>  float3(w, z, z);
        
        /// Returns float4.wzzx swizzling.
        [Inline]
        public float4 wzzx =>  float4(w, z, z, x);
        
        /// Returns float4.abbr swizzling (equivalent to float4.wzzx).
        [Inline]
        public float4 abbr =>  float4(w, z, z, x);
        
        /// Returns float4.wzzy swizzling.
        [Inline]
        public float4 wzzy =>  float4(w, z, z, y);
        
        /// Returns float4.abbg swizzling (equivalent to float4.wzzy).
        [Inline]
        public float4 abbg =>  float4(w, z, z, y);
        
        /// Returns float4.wzzz swizzling.
        [Inline]
        public float4 wzzz =>  float4(w, z, z, z);
        
        /// Returns float4.abbb swizzling (equivalent to float4.wzzz).
        [Inline]
        public float4 abbb =>  float4(w, z, z, z);
        
        /// Returns float4.wzzw swizzling.
        [Inline]
        public float4 wzzw =>  float4(w, z, z, w);
        
        /// Returns float4.abba swizzling (equivalent to float4.wzzw).
        [Inline]
        public float4 abba =>  float4(w, z, z, w);
        
        /// Returns float4.wzw swizzling.
        [Inline]
        public float3 wzw =>  float3(w, z, w);
        
        /// Returns float4.aba swizzling (equivalent to float4.wzw).
        [Inline]
        public float3 aba =>  float3(w, z, w);
        
        /// Returns float4.wzwx swizzling.
        [Inline]
        public float4 wzwx =>  float4(w, z, w, x);
        
        /// Returns float4.abar swizzling (equivalent to float4.wzwx).
        [Inline]
        public float4 abar =>  float4(w, z, w, x);
        
        /// Returns float4.wzwy swizzling.
        [Inline]
        public float4 wzwy =>  float4(w, z, w, y);
        
        /// Returns float4.abag swizzling (equivalent to float4.wzwy).
        [Inline]
        public float4 abag =>  float4(w, z, w, y);
        
        /// Returns float4.wzwz swizzling.
        [Inline]
        public float4 wzwz =>  float4(w, z, w, z);
        
        /// Returns float4.abab swizzling (equivalent to float4.wzwz).
        [Inline]
        public float4 abab =>  float4(w, z, w, z);
        
        /// Returns float4.wzww swizzling.
        [Inline]
        public float4 wzww =>  float4(w, z, w, w);
        
        /// Returns float4.abaa swizzling (equivalent to float4.wzww).
        [Inline]
        public float4 abaa =>  float4(w, z, w, w);
        
        /// Returns float4.ww swizzling.
        [Inline]
        public float2 ww =>  float2(w, w);
        
        /// Returns float4.aa swizzling (equivalent to float4.ww).
        [Inline]
        public float2 aa =>  float2(w, w);
        
        /// Returns float4.wwx swizzling.
        [Inline]
        public float3 wwx =>  float3(w, w, x);
        
        /// Returns float4.aar swizzling (equivalent to float4.wwx).
        [Inline]
        public float3 aar =>  float3(w, w, x);
        
        /// Returns float4.wwxx swizzling.
        [Inline]
        public float4 wwxx =>  float4(w, w, x, x);
        
        /// Returns float4.aarr swizzling (equivalent to float4.wwxx).
        [Inline]
        public float4 aarr =>  float4(w, w, x, x);
        
        /// Returns float4.wwxy swizzling.
        [Inline]
        public float4 wwxy =>  float4(w, w, x, y);
        
        /// Returns float4.aarg swizzling (equivalent to float4.wwxy).
        [Inline]
        public float4 aarg =>  float4(w, w, x, y);
        
        /// Returns float4.wwxz swizzling.
        [Inline]
        public float4 wwxz =>  float4(w, w, x, z);
        
        /// Returns float4.aarb swizzling (equivalent to float4.wwxz).
        [Inline]
        public float4 aarb =>  float4(w, w, x, z);
        
        /// Returns float4.wwxw swizzling.
        [Inline]
        public float4 wwxw =>  float4(w, w, x, w);
        
        /// Returns float4.aara swizzling (equivalent to float4.wwxw).
        [Inline]
        public float4 aara =>  float4(w, w, x, w);
        
        /// Returns float4.wwy swizzling.
        [Inline]
        public float3 wwy =>  float3(w, w, y);
        
        /// Returns float4.aag swizzling (equivalent to float4.wwy).
        [Inline]
        public float3 aag =>  float3(w, w, y);
        
        /// Returns float4.wwyx swizzling.
        [Inline]
        public float4 wwyx =>  float4(w, w, y, x);
        
        /// Returns float4.aagr swizzling (equivalent to float4.wwyx).
        [Inline]
        public float4 aagr =>  float4(w, w, y, x);
        
        /// Returns float4.wwyy swizzling.
        [Inline]
        public float4 wwyy =>  float4(w, w, y, y);
        
        /// Returns float4.aagg swizzling (equivalent to float4.wwyy).
        [Inline]
        public float4 aagg =>  float4(w, w, y, y);
        
        /// Returns float4.wwyz swizzling.
        [Inline]
        public float4 wwyz =>  float4(w, w, y, z);
        
        /// Returns float4.aagb swizzling (equivalent to float4.wwyz).
        [Inline]
        public float4 aagb =>  float4(w, w, y, z);
        
        /// Returns float4.wwyw swizzling.
        [Inline]
        public float4 wwyw =>  float4(w, w, y, w);
        
        /// Returns float4.aaga swizzling (equivalent to float4.wwyw).
        [Inline]
        public float4 aaga =>  float4(w, w, y, w);
        
        /// Returns float4.wwz swizzling.
        [Inline]
        public float3 wwz =>  float3(w, w, z);
        
        /// Returns float4.aab swizzling (equivalent to float4.wwz).
        [Inline]
        public float3 aab =>  float3(w, w, z);
        
        /// Returns float4.wwzx swizzling.
        [Inline]
        public float4 wwzx =>  float4(w, w, z, x);
        
        /// Returns float4.aabr swizzling (equivalent to float4.wwzx).
        [Inline]
        public float4 aabr =>  float4(w, w, z, x);
        
        /// Returns float4.wwzy swizzling.
        [Inline]
        public float4 wwzy =>  float4(w, w, z, y);
        
        /// Returns float4.aabg swizzling (equivalent to float4.wwzy).
        [Inline]
        public float4 aabg =>  float4(w, w, z, y);
        
        /// Returns float4.wwzz swizzling.
        [Inline]
        public float4 wwzz =>  float4(w, w, z, z);
        
        /// Returns float4.aabb swizzling (equivalent to float4.wwzz).
        [Inline]
        public float4 aabb =>  float4(w, w, z, z);
        
        /// Returns float4.wwzw swizzling.
        [Inline]
        public float4 wwzw =>  float4(w, w, z, w);
        
        /// Returns float4.aaba swizzling (equivalent to float4.wwzw).
        [Inline]
        public float4 aaba =>  float4(w, w, z, w);
        
        /// Returns float4.www swizzling.
        [Inline]
        public float3 www =>  float3(w, w, w);
        
        /// Returns float4.aaa swizzling (equivalent to float4.www).
        [Inline]
        public float3 aaa =>  float3(w, w, w);
        
        /// Returns float4.wwwx swizzling.
        [Inline]
        public float4 wwwx =>  float4(w, w, w, x);
        
        /// Returns float4.aaar swizzling (equivalent to float4.wwwx).
        [Inline]
        public float4 aaar =>  float4(w, w, w, x);
        
        /// Returns float4.wwwy swizzling.
        [Inline]
        public float4 wwwy =>  float4(w, w, w, y);
        
        /// Returns float4.aaag swizzling (equivalent to float4.wwwy).
        [Inline]
        public float4 aaag =>  float4(w, w, w, y);
        
        /// Returns float4.wwwz swizzling.
        [Inline]
        public float4 wwwz =>  float4(w, w, w, z);
        
        /// Returns float4.aaab swizzling (equivalent to float4.wwwz).
        [Inline]
        public float4 aaab =>  float4(w, w, w, z);
        
        /// Returns float4.wwww swizzling.
        [Inline]
        public float4 wwww =>  float4(w, w, w, w);
        
        /// Returns float4.aaaa swizzling (equivalent to float4.wwww).
        [Inline]
        public float4 aaaa =>  float4(w, w, w, w);

        #endregion

    }
}
