using System;
namespace glm
{
    
    /// Temporary vector of type float with 2 components, used for implementing swizzling for float2.
    public struct swizzle_float2
    {

        #region Fields
        
        /// x-component
        private readonly float x;
        
        /// y-component
        private readonly float y;

        #endregion


        #region Properties
        
        /// Returns float2.xx swizzling.
        [Inline]
        public float2 xx =>  float2(x, x);
        
        /// Returns float2.rr swizzling (equivalent to float2.xx).
        [Inline]
        public float2 rr =>  float2(x, x);
        
        /// Returns float2.xxx swizzling.
        [Inline]
        public float3 xxx =>  float3(x, x, x);
        
        /// Returns float2.rrr swizzling (equivalent to float2.xxx).
        [Inline]
        public float3 rrr =>  float3(x, x, x);
        
        /// Returns float2.xxxx swizzling.
        [Inline]
        public float4 xxxx =>  float4(x, x, x, x);
        
        /// Returns float2.rrrr swizzling (equivalent to float2.xxxx).
        [Inline]
        public float4 rrrr =>  float4(x, x, x, x);
        
        /// Returns float2.xxxy swizzling.
        [Inline]
        public float4 xxxy =>  float4(x, x, x, y);
        
        /// Returns float2.rrrg swizzling (equivalent to float2.xxxy).
        [Inline]
        public float4 rrrg =>  float4(x, x, x, y);
        
        /// Returns float2.xxy swizzling.
        [Inline]
        public float3 xxy =>  float3(x, x, y);
        
        /// Returns float2.rrg swizzling (equivalent to float2.xxy).
        [Inline]
        public float3 rrg =>  float3(x, x, y);
        
        /// Returns float2.xxyx swizzling.
        [Inline]
        public float4 xxyx =>  float4(x, x, y, x);
        
        /// Returns float2.rrgr swizzling (equivalent to float2.xxyx).
        [Inline]
        public float4 rrgr =>  float4(x, x, y, x);
        
        /// Returns float2.xxyy swizzling.
        [Inline]
        public float4 xxyy =>  float4(x, x, y, y);
        
        /// Returns float2.rrgg swizzling (equivalent to float2.xxyy).
        [Inline]
        public float4 rrgg =>  float4(x, x, y, y);
        
        /// Returns float2.xy swizzling.
        [Inline]
        public float2 xy =>  float2(x, y);
        
        /// Returns float2.rg swizzling (equivalent to float2.xy).
        [Inline]
        public float2 rg =>  float2(x, y);
        
        /// Returns float2.xyx swizzling.
        [Inline]
        public float3 xyx =>  float3(x, y, x);
        
        /// Returns float2.rgr swizzling (equivalent to float2.xyx).
        [Inline]
        public float3 rgr =>  float3(x, y, x);
        
        /// Returns float2.xyxx swizzling.
        [Inline]
        public float4 xyxx =>  float4(x, y, x, x);
        
        /// Returns float2.rgrr swizzling (equivalent to float2.xyxx).
        [Inline]
        public float4 rgrr =>  float4(x, y, x, x);
        
        /// Returns float2.xyxy swizzling.
        [Inline]
        public float4 xyxy =>  float4(x, y, x, y);
        
        /// Returns float2.rgrg swizzling (equivalent to float2.xyxy).
        [Inline]
        public float4 rgrg =>  float4(x, y, x, y);
        
        /// Returns float2.xyy swizzling.
        [Inline]
        public float3 xyy =>  float3(x, y, y);
        
        /// Returns float2.rgg swizzling (equivalent to float2.xyy).
        [Inline]
        public float3 rgg =>  float3(x, y, y);
        
        /// Returns float2.xyyx swizzling.
        [Inline]
        public float4 xyyx =>  float4(x, y, y, x);
        
        /// Returns float2.rggr swizzling (equivalent to float2.xyyx).
        [Inline]
        public float4 rggr =>  float4(x, y, y, x);
        
        /// Returns float2.xyyy swizzling.
        [Inline]
        public float4 xyyy =>  float4(x, y, y, y);
        
        /// Returns float2.rggg swizzling (equivalent to float2.xyyy).
        [Inline]
        public float4 rggg =>  float4(x, y, y, y);
        
        /// Returns float2.yx swizzling.
        [Inline]
        public float2 yx =>  float2(y, x);
        
        /// Returns float2.gr swizzling (equivalent to float2.yx).
        [Inline]
        public float2 gr =>  float2(y, x);
        
        /// Returns float2.yxx swizzling.
        [Inline]
        public float3 yxx =>  float3(y, x, x);
        
        /// Returns float2.grr swizzling (equivalent to float2.yxx).
        [Inline]
        public float3 grr =>  float3(y, x, x);
        
        /// Returns float2.yxxx swizzling.
        [Inline]
        public float4 yxxx =>  float4(y, x, x, x);
        
        /// Returns float2.grrr swizzling (equivalent to float2.yxxx).
        [Inline]
        public float4 grrr =>  float4(y, x, x, x);
        
        /// Returns float2.yxxy swizzling.
        [Inline]
        public float4 yxxy =>  float4(y, x, x, y);
        
        /// Returns float2.grrg swizzling (equivalent to float2.yxxy).
        [Inline]
        public float4 grrg =>  float4(y, x, x, y);
        
        /// Returns float2.yxy swizzling.
        [Inline]
        public float3 yxy =>  float3(y, x, y);
        
        /// Returns float2.grg swizzling (equivalent to float2.yxy).
        [Inline]
        public float3 grg =>  float3(y, x, y);
        
        /// Returns float2.yxyx swizzling.
        [Inline]
        public float4 yxyx =>  float4(y, x, y, x);
        
        /// Returns float2.grgr swizzling (equivalent to float2.yxyx).
        [Inline]
        public float4 grgr =>  float4(y, x, y, x);
        
        /// Returns float2.yxyy swizzling.
        [Inline]
        public float4 yxyy =>  float4(y, x, y, y);
        
        /// Returns float2.grgg swizzling (equivalent to float2.yxyy).
        [Inline]
        public float4 grgg =>  float4(y, x, y, y);
        
        /// Returns float2.yy swizzling.
        [Inline]
        public float2 yy =>  float2(y, y);
        
        /// Returns float2.gg swizzling (equivalent to float2.yy).
        [Inline]
        public float2 gg =>  float2(y, y);
        
        /// Returns float2.yyx swizzling.
        [Inline]
        public float3 yyx =>  float3(y, y, x);
        
        /// Returns float2.ggr swizzling (equivalent to float2.yyx).
        [Inline]
        public float3 ggr =>  float3(y, y, x);
        
        /// Returns float2.yyxx swizzling.
        [Inline]
        public float4 yyxx =>  float4(y, y, x, x);
        
        /// Returns float2.ggrr swizzling (equivalent to float2.yyxx).
        [Inline]
        public float4 ggrr =>  float4(y, y, x, x);
        
        /// Returns float2.yyxy swizzling.
        [Inline]
        public float4 yyxy =>  float4(y, y, x, y);
        
        /// Returns float2.ggrg swizzling (equivalent to float2.yyxy).
        [Inline]
        public float4 ggrg =>  float4(y, y, x, y);
        
        /// Returns float2.yyy swizzling.
        [Inline]
        public float3 yyy =>  float3(y, y, y);
        
        /// Returns float2.ggg swizzling (equivalent to float2.yyy).
        [Inline]
        public float3 ggg =>  float3(y, y, y);
        
        /// Returns float2.yyyx swizzling.
        [Inline]
        public float4 yyyx =>  float4(y, y, y, x);
        
        /// Returns float2.gggr swizzling (equivalent to float2.yyyx).
        [Inline]
        public float4 gggr =>  float4(y, y, y, x);
        
        /// Returns float2.yyyy swizzling.
        [Inline]
        public float4 yyyy =>  float4(y, y, y, y);
        
        /// Returns float2.gggg swizzling (equivalent to float2.yyyy).
        [Inline]
        public float4 gggg =>  float4(y, y, y, y);

        #endregion

    }
}
