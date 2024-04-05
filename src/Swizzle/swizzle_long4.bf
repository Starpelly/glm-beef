using System;
namespace glm
{
    
    /// Temporary vector of type long with 4 components, used for implementing swizzling for long4.
    public struct swizzle_long4
    {

        #region Fields
        
        /// x-component
        private readonly long x;
        
        /// y-component
        private readonly long y;
        
        /// z-component
        private readonly long z;
        
        /// w-component
        private readonly long w;

        #endregion


        #region Properties
        
        /// Returns long4.xx swizzling.
        [Inline]
        public long2 xx =>  long2(x, x);
        
        /// Returns long4.rr swizzling (equivalent to long4.xx).
        [Inline]
        public long2 rr =>  long2(x, x);
        
        /// Returns long4.xxx swizzling.
        [Inline]
        public long3 xxx =>  long3(x, x, x);
        
        /// Returns long4.rrr swizzling (equivalent to long4.xxx).
        [Inline]
        public long3 rrr =>  long3(x, x, x);
        
        /// Returns long4.xxxx swizzling.
        [Inline]
        public long4 xxxx =>  long4(x, x, x, x);
        
        /// Returns long4.rrrr swizzling (equivalent to long4.xxxx).
        [Inline]
        public long4 rrrr =>  long4(x, x, x, x);
        
        /// Returns long4.xxxy swizzling.
        [Inline]
        public long4 xxxy =>  long4(x, x, x, y);
        
        /// Returns long4.rrrg swizzling (equivalent to long4.xxxy).
        [Inline]
        public long4 rrrg =>  long4(x, x, x, y);
        
        /// Returns long4.xxxz swizzling.
        [Inline]
        public long4 xxxz =>  long4(x, x, x, z);
        
        /// Returns long4.rrrb swizzling (equivalent to long4.xxxz).
        [Inline]
        public long4 rrrb =>  long4(x, x, x, z);
        
        /// Returns long4.xxxw swizzling.
        [Inline]
        public long4 xxxw =>  long4(x, x, x, w);
        
        /// Returns long4.rrra swizzling (equivalent to long4.xxxw).
        [Inline]
        public long4 rrra =>  long4(x, x, x, w);
        
        /// Returns long4.xxy swizzling.
        [Inline]
        public long3 xxy =>  long3(x, x, y);
        
        /// Returns long4.rrg swizzling (equivalent to long4.xxy).
        [Inline]
        public long3 rrg =>  long3(x, x, y);
        
        /// Returns long4.xxyx swizzling.
        [Inline]
        public long4 xxyx =>  long4(x, x, y, x);
        
        /// Returns long4.rrgr swizzling (equivalent to long4.xxyx).
        [Inline]
        public long4 rrgr =>  long4(x, x, y, x);
        
        /// Returns long4.xxyy swizzling.
        [Inline]
        public long4 xxyy =>  long4(x, x, y, y);
        
        /// Returns long4.rrgg swizzling (equivalent to long4.xxyy).
        [Inline]
        public long4 rrgg =>  long4(x, x, y, y);
        
        /// Returns long4.xxyz swizzling.
        [Inline]
        public long4 xxyz =>  long4(x, x, y, z);
        
        /// Returns long4.rrgb swizzling (equivalent to long4.xxyz).
        [Inline]
        public long4 rrgb =>  long4(x, x, y, z);
        
        /// Returns long4.xxyw swizzling.
        [Inline]
        public long4 xxyw =>  long4(x, x, y, w);
        
        /// Returns long4.rrga swizzling (equivalent to long4.xxyw).
        [Inline]
        public long4 rrga =>  long4(x, x, y, w);
        
        /// Returns long4.xxz swizzling.
        [Inline]
        public long3 xxz =>  long3(x, x, z);
        
        /// Returns long4.rrb swizzling (equivalent to long4.xxz).
        [Inline]
        public long3 rrb =>  long3(x, x, z);
        
        /// Returns long4.xxzx swizzling.
        [Inline]
        public long4 xxzx =>  long4(x, x, z, x);
        
        /// Returns long4.rrbr swizzling (equivalent to long4.xxzx).
        [Inline]
        public long4 rrbr =>  long4(x, x, z, x);
        
        /// Returns long4.xxzy swizzling.
        [Inline]
        public long4 xxzy =>  long4(x, x, z, y);
        
        /// Returns long4.rrbg swizzling (equivalent to long4.xxzy).
        [Inline]
        public long4 rrbg =>  long4(x, x, z, y);
        
        /// Returns long4.xxzz swizzling.
        [Inline]
        public long4 xxzz =>  long4(x, x, z, z);
        
        /// Returns long4.rrbb swizzling (equivalent to long4.xxzz).
        [Inline]
        public long4 rrbb =>  long4(x, x, z, z);
        
        /// Returns long4.xxzw swizzling.
        [Inline]
        public long4 xxzw =>  long4(x, x, z, w);
        
        /// Returns long4.rrba swizzling (equivalent to long4.xxzw).
        [Inline]
        public long4 rrba =>  long4(x, x, z, w);
        
        /// Returns long4.xxw swizzling.
        [Inline]
        public long3 xxw =>  long3(x, x, w);
        
        /// Returns long4.rra swizzling (equivalent to long4.xxw).
        [Inline]
        public long3 rra =>  long3(x, x, w);
        
        /// Returns long4.xxwx swizzling.
        [Inline]
        public long4 xxwx =>  long4(x, x, w, x);
        
        /// Returns long4.rrar swizzling (equivalent to long4.xxwx).
        [Inline]
        public long4 rrar =>  long4(x, x, w, x);
        
        /// Returns long4.xxwy swizzling.
        [Inline]
        public long4 xxwy =>  long4(x, x, w, y);
        
        /// Returns long4.rrag swizzling (equivalent to long4.xxwy).
        [Inline]
        public long4 rrag =>  long4(x, x, w, y);
        
        /// Returns long4.xxwz swizzling.
        [Inline]
        public long4 xxwz =>  long4(x, x, w, z);
        
        /// Returns long4.rrab swizzling (equivalent to long4.xxwz).
        [Inline]
        public long4 rrab =>  long4(x, x, w, z);
        
        /// Returns long4.xxww swizzling.
        [Inline]
        public long4 xxww =>  long4(x, x, w, w);
        
        /// Returns long4.rraa swizzling (equivalent to long4.xxww).
        [Inline]
        public long4 rraa =>  long4(x, x, w, w);
        
        /// Returns long4.xy swizzling.
        [Inline]
        public long2 xy =>  long2(x, y);
        
        /// Returns long4.rg swizzling (equivalent to long4.xy).
        [Inline]
        public long2 rg =>  long2(x, y);
        
        /// Returns long4.xyx swizzling.
        [Inline]
        public long3 xyx =>  long3(x, y, x);
        
        /// Returns long4.rgr swizzling (equivalent to long4.xyx).
        [Inline]
        public long3 rgr =>  long3(x, y, x);
        
        /// Returns long4.xyxx swizzling.
        [Inline]
        public long4 xyxx =>  long4(x, y, x, x);
        
        /// Returns long4.rgrr swizzling (equivalent to long4.xyxx).
        [Inline]
        public long4 rgrr =>  long4(x, y, x, x);
        
        /// Returns long4.xyxy swizzling.
        [Inline]
        public long4 xyxy =>  long4(x, y, x, y);
        
        /// Returns long4.rgrg swizzling (equivalent to long4.xyxy).
        [Inline]
        public long4 rgrg =>  long4(x, y, x, y);
        
        /// Returns long4.xyxz swizzling.
        [Inline]
        public long4 xyxz =>  long4(x, y, x, z);
        
        /// Returns long4.rgrb swizzling (equivalent to long4.xyxz).
        [Inline]
        public long4 rgrb =>  long4(x, y, x, z);
        
        /// Returns long4.xyxw swizzling.
        [Inline]
        public long4 xyxw =>  long4(x, y, x, w);
        
        /// Returns long4.rgra swizzling (equivalent to long4.xyxw).
        [Inline]
        public long4 rgra =>  long4(x, y, x, w);
        
        /// Returns long4.xyy swizzling.
        [Inline]
        public long3 xyy =>  long3(x, y, y);
        
        /// Returns long4.rgg swizzling (equivalent to long4.xyy).
        [Inline]
        public long3 rgg =>  long3(x, y, y);
        
        /// Returns long4.xyyx swizzling.
        [Inline]
        public long4 xyyx =>  long4(x, y, y, x);
        
        /// Returns long4.rggr swizzling (equivalent to long4.xyyx).
        [Inline]
        public long4 rggr =>  long4(x, y, y, x);
        
        /// Returns long4.xyyy swizzling.
        [Inline]
        public long4 xyyy =>  long4(x, y, y, y);
        
        /// Returns long4.rggg swizzling (equivalent to long4.xyyy).
        [Inline]
        public long4 rggg =>  long4(x, y, y, y);
        
        /// Returns long4.xyyz swizzling.
        [Inline]
        public long4 xyyz =>  long4(x, y, y, z);
        
        /// Returns long4.rggb swizzling (equivalent to long4.xyyz).
        [Inline]
        public long4 rggb =>  long4(x, y, y, z);
        
        /// Returns long4.xyyw swizzling.
        [Inline]
        public long4 xyyw =>  long4(x, y, y, w);
        
        /// Returns long4.rgga swizzling (equivalent to long4.xyyw).
        [Inline]
        public long4 rgga =>  long4(x, y, y, w);
        
        /// Returns long4.xyz swizzling.
        [Inline]
        public long3 xyz =>  long3(x, y, z);
        
        /// Returns long4.rgb swizzling (equivalent to long4.xyz).
        [Inline]
        public long3 rgb =>  long3(x, y, z);
        
        /// Returns long4.xyzx swizzling.
        [Inline]
        public long4 xyzx =>  long4(x, y, z, x);
        
        /// Returns long4.rgbr swizzling (equivalent to long4.xyzx).
        [Inline]
        public long4 rgbr =>  long4(x, y, z, x);
        
        /// Returns long4.xyzy swizzling.
        [Inline]
        public long4 xyzy =>  long4(x, y, z, y);
        
        /// Returns long4.rgbg swizzling (equivalent to long4.xyzy).
        [Inline]
        public long4 rgbg =>  long4(x, y, z, y);
        
        /// Returns long4.xyzz swizzling.
        [Inline]
        public long4 xyzz =>  long4(x, y, z, z);
        
        /// Returns long4.rgbb swizzling (equivalent to long4.xyzz).
        [Inline]
        public long4 rgbb =>  long4(x, y, z, z);
        
        /// Returns long4.xyzw swizzling.
        [Inline]
        public long4 xyzw =>  long4(x, y, z, w);
        
        /// Returns long4.rgba swizzling (equivalent to long4.xyzw).
        [Inline]
        public long4 rgba =>  long4(x, y, z, w);
        
        /// Returns long4.xyw swizzling.
        [Inline]
        public long3 xyw =>  long3(x, y, w);
        
        /// Returns long4.rga swizzling (equivalent to long4.xyw).
        [Inline]
        public long3 rga =>  long3(x, y, w);
        
        /// Returns long4.xywx swizzling.
        [Inline]
        public long4 xywx =>  long4(x, y, w, x);
        
        /// Returns long4.rgar swizzling (equivalent to long4.xywx).
        [Inline]
        public long4 rgar =>  long4(x, y, w, x);
        
        /// Returns long4.xywy swizzling.
        [Inline]
        public long4 xywy =>  long4(x, y, w, y);
        
        /// Returns long4.rgag swizzling (equivalent to long4.xywy).
        [Inline]
        public long4 rgag =>  long4(x, y, w, y);
        
        /// Returns long4.xywz swizzling.
        [Inline]
        public long4 xywz =>  long4(x, y, w, z);
        
        /// Returns long4.rgab swizzling (equivalent to long4.xywz).
        [Inline]
        public long4 rgab =>  long4(x, y, w, z);
        
        /// Returns long4.xyww swizzling.
        [Inline]
        public long4 xyww =>  long4(x, y, w, w);
        
        /// Returns long4.rgaa swizzling (equivalent to long4.xyww).
        [Inline]
        public long4 rgaa =>  long4(x, y, w, w);
        
        /// Returns long4.xz swizzling.
        [Inline]
        public long2 xz =>  long2(x, z);
        
        /// Returns long4.rb swizzling (equivalent to long4.xz).
        [Inline]
        public long2 rb =>  long2(x, z);
        
        /// Returns long4.xzx swizzling.
        [Inline]
        public long3 xzx =>  long3(x, z, x);
        
        /// Returns long4.rbr swizzling (equivalent to long4.xzx).
        [Inline]
        public long3 rbr =>  long3(x, z, x);
        
        /// Returns long4.xzxx swizzling.
        [Inline]
        public long4 xzxx =>  long4(x, z, x, x);
        
        /// Returns long4.rbrr swizzling (equivalent to long4.xzxx).
        [Inline]
        public long4 rbrr =>  long4(x, z, x, x);
        
        /// Returns long4.xzxy swizzling.
        [Inline]
        public long4 xzxy =>  long4(x, z, x, y);
        
        /// Returns long4.rbrg swizzling (equivalent to long4.xzxy).
        [Inline]
        public long4 rbrg =>  long4(x, z, x, y);
        
        /// Returns long4.xzxz swizzling.
        [Inline]
        public long4 xzxz =>  long4(x, z, x, z);
        
        /// Returns long4.rbrb swizzling (equivalent to long4.xzxz).
        [Inline]
        public long4 rbrb =>  long4(x, z, x, z);
        
        /// Returns long4.xzxw swizzling.
        [Inline]
        public long4 xzxw =>  long4(x, z, x, w);
        
        /// Returns long4.rbra swizzling (equivalent to long4.xzxw).
        [Inline]
        public long4 rbra =>  long4(x, z, x, w);
        
        /// Returns long4.xzy swizzling.
        [Inline]
        public long3 xzy =>  long3(x, z, y);
        
        /// Returns long4.rbg swizzling (equivalent to long4.xzy).
        [Inline]
        public long3 rbg =>  long3(x, z, y);
        
        /// Returns long4.xzyx swizzling.
        [Inline]
        public long4 xzyx =>  long4(x, z, y, x);
        
        /// Returns long4.rbgr swizzling (equivalent to long4.xzyx).
        [Inline]
        public long4 rbgr =>  long4(x, z, y, x);
        
        /// Returns long4.xzyy swizzling.
        [Inline]
        public long4 xzyy =>  long4(x, z, y, y);
        
        /// Returns long4.rbgg swizzling (equivalent to long4.xzyy).
        [Inline]
        public long4 rbgg =>  long4(x, z, y, y);
        
        /// Returns long4.xzyz swizzling.
        [Inline]
        public long4 xzyz =>  long4(x, z, y, z);
        
        /// Returns long4.rbgb swizzling (equivalent to long4.xzyz).
        [Inline]
        public long4 rbgb =>  long4(x, z, y, z);
        
        /// Returns long4.xzyw swizzling.
        [Inline]
        public long4 xzyw =>  long4(x, z, y, w);
        
        /// Returns long4.rbga swizzling (equivalent to long4.xzyw).
        [Inline]
        public long4 rbga =>  long4(x, z, y, w);
        
        /// Returns long4.xzz swizzling.
        [Inline]
        public long3 xzz =>  long3(x, z, z);
        
        /// Returns long4.rbb swizzling (equivalent to long4.xzz).
        [Inline]
        public long3 rbb =>  long3(x, z, z);
        
        /// Returns long4.xzzx swizzling.
        [Inline]
        public long4 xzzx =>  long4(x, z, z, x);
        
        /// Returns long4.rbbr swizzling (equivalent to long4.xzzx).
        [Inline]
        public long4 rbbr =>  long4(x, z, z, x);
        
        /// Returns long4.xzzy swizzling.
        [Inline]
        public long4 xzzy =>  long4(x, z, z, y);
        
        /// Returns long4.rbbg swizzling (equivalent to long4.xzzy).
        [Inline]
        public long4 rbbg =>  long4(x, z, z, y);
        
        /// Returns long4.xzzz swizzling.
        [Inline]
        public long4 xzzz =>  long4(x, z, z, z);
        
        /// Returns long4.rbbb swizzling (equivalent to long4.xzzz).
        [Inline]
        public long4 rbbb =>  long4(x, z, z, z);
        
        /// Returns long4.xzzw swizzling.
        [Inline]
        public long4 xzzw =>  long4(x, z, z, w);
        
        /// Returns long4.rbba swizzling (equivalent to long4.xzzw).
        [Inline]
        public long4 rbba =>  long4(x, z, z, w);
        
        /// Returns long4.xzw swizzling.
        [Inline]
        public long3 xzw =>  long3(x, z, w);
        
        /// Returns long4.rba swizzling (equivalent to long4.xzw).
        [Inline]
        public long3 rba =>  long3(x, z, w);
        
        /// Returns long4.xzwx swizzling.
        [Inline]
        public long4 xzwx =>  long4(x, z, w, x);
        
        /// Returns long4.rbar swizzling (equivalent to long4.xzwx).
        [Inline]
        public long4 rbar =>  long4(x, z, w, x);
        
        /// Returns long4.xzwy swizzling.
        [Inline]
        public long4 xzwy =>  long4(x, z, w, y);
        
        /// Returns long4.rbag swizzling (equivalent to long4.xzwy).
        [Inline]
        public long4 rbag =>  long4(x, z, w, y);
        
        /// Returns long4.xzwz swizzling.
        [Inline]
        public long4 xzwz =>  long4(x, z, w, z);
        
        /// Returns long4.rbab swizzling (equivalent to long4.xzwz).
        [Inline]
        public long4 rbab =>  long4(x, z, w, z);
        
        /// Returns long4.xzww swizzling.
        [Inline]
        public long4 xzww =>  long4(x, z, w, w);
        
        /// Returns long4.rbaa swizzling (equivalent to long4.xzww).
        [Inline]
        public long4 rbaa =>  long4(x, z, w, w);
        
        /// Returns long4.xw swizzling.
        [Inline]
        public long2 xw =>  long2(x, w);
        
        /// Returns long4.ra swizzling (equivalent to long4.xw).
        [Inline]
        public long2 ra =>  long2(x, w);
        
        /// Returns long4.xwx swizzling.
        [Inline]
        public long3 xwx =>  long3(x, w, x);
        
        /// Returns long4.rar swizzling (equivalent to long4.xwx).
        [Inline]
        public long3 rar =>  long3(x, w, x);
        
        /// Returns long4.xwxx swizzling.
        [Inline]
        public long4 xwxx =>  long4(x, w, x, x);
        
        /// Returns long4.rarr swizzling (equivalent to long4.xwxx).
        [Inline]
        public long4 rarr =>  long4(x, w, x, x);
        
        /// Returns long4.xwxy swizzling.
        [Inline]
        public long4 xwxy =>  long4(x, w, x, y);
        
        /// Returns long4.rarg swizzling (equivalent to long4.xwxy).
        [Inline]
        public long4 rarg =>  long4(x, w, x, y);
        
        /// Returns long4.xwxz swizzling.
        [Inline]
        public long4 xwxz =>  long4(x, w, x, z);
        
        /// Returns long4.rarb swizzling (equivalent to long4.xwxz).
        [Inline]
        public long4 rarb =>  long4(x, w, x, z);
        
        /// Returns long4.xwxw swizzling.
        [Inline]
        public long4 xwxw =>  long4(x, w, x, w);
        
        /// Returns long4.rara swizzling (equivalent to long4.xwxw).
        [Inline]
        public long4 rara =>  long4(x, w, x, w);
        
        /// Returns long4.xwy swizzling.
        [Inline]
        public long3 xwy =>  long3(x, w, y);
        
        /// Returns long4.rag swizzling (equivalent to long4.xwy).
        [Inline]
        public long3 rag =>  long3(x, w, y);
        
        /// Returns long4.xwyx swizzling.
        [Inline]
        public long4 xwyx =>  long4(x, w, y, x);
        
        /// Returns long4.ragr swizzling (equivalent to long4.xwyx).
        [Inline]
        public long4 ragr =>  long4(x, w, y, x);
        
        /// Returns long4.xwyy swizzling.
        [Inline]
        public long4 xwyy =>  long4(x, w, y, y);
        
        /// Returns long4.ragg swizzling (equivalent to long4.xwyy).
        [Inline]
        public long4 ragg =>  long4(x, w, y, y);
        
        /// Returns long4.xwyz swizzling.
        [Inline]
        public long4 xwyz =>  long4(x, w, y, z);
        
        /// Returns long4.ragb swizzling (equivalent to long4.xwyz).
        [Inline]
        public long4 ragb =>  long4(x, w, y, z);
        
        /// Returns long4.xwyw swizzling.
        [Inline]
        public long4 xwyw =>  long4(x, w, y, w);
        
        /// Returns long4.raga swizzling (equivalent to long4.xwyw).
        [Inline]
        public long4 raga =>  long4(x, w, y, w);
        
        /// Returns long4.xwz swizzling.
        [Inline]
        public long3 xwz =>  long3(x, w, z);
        
        /// Returns long4.rab swizzling (equivalent to long4.xwz).
        [Inline]
        public long3 rab =>  long3(x, w, z);
        
        /// Returns long4.xwzx swizzling.
        [Inline]
        public long4 xwzx =>  long4(x, w, z, x);
        
        /// Returns long4.rabr swizzling (equivalent to long4.xwzx).
        [Inline]
        public long4 rabr =>  long4(x, w, z, x);
        
        /// Returns long4.xwzy swizzling.
        [Inline]
        public long4 xwzy =>  long4(x, w, z, y);
        
        /// Returns long4.rabg swizzling (equivalent to long4.xwzy).
        [Inline]
        public long4 rabg =>  long4(x, w, z, y);
        
        /// Returns long4.xwzz swizzling.
        [Inline]
        public long4 xwzz =>  long4(x, w, z, z);
        
        /// Returns long4.rabb swizzling (equivalent to long4.xwzz).
        [Inline]
        public long4 rabb =>  long4(x, w, z, z);
        
        /// Returns long4.xwzw swizzling.
        [Inline]
        public long4 xwzw =>  long4(x, w, z, w);
        
        /// Returns long4.raba swizzling (equivalent to long4.xwzw).
        [Inline]
        public long4 raba =>  long4(x, w, z, w);
        
        /// Returns long4.xww swizzling.
        [Inline]
        public long3 xww =>  long3(x, w, w);
        
        /// Returns long4.raa swizzling (equivalent to long4.xww).
        [Inline]
        public long3 raa =>  long3(x, w, w);
        
        /// Returns long4.xwwx swizzling.
        [Inline]
        public long4 xwwx =>  long4(x, w, w, x);
        
        /// Returns long4.raar swizzling (equivalent to long4.xwwx).
        [Inline]
        public long4 raar =>  long4(x, w, w, x);
        
        /// Returns long4.xwwy swizzling.
        [Inline]
        public long4 xwwy =>  long4(x, w, w, y);
        
        /// Returns long4.raag swizzling (equivalent to long4.xwwy).
        [Inline]
        public long4 raag =>  long4(x, w, w, y);
        
        /// Returns long4.xwwz swizzling.
        [Inline]
        public long4 xwwz =>  long4(x, w, w, z);
        
        /// Returns long4.raab swizzling (equivalent to long4.xwwz).
        [Inline]
        public long4 raab =>  long4(x, w, w, z);
        
        /// Returns long4.xwww swizzling.
        [Inline]
        public long4 xwww =>  long4(x, w, w, w);
        
        /// Returns long4.raaa swizzling (equivalent to long4.xwww).
        [Inline]
        public long4 raaa =>  long4(x, w, w, w);
        
        /// Returns long4.yx swizzling.
        [Inline]
        public long2 yx =>  long2(y, x);
        
        /// Returns long4.gr swizzling (equivalent to long4.yx).
        [Inline]
        public long2 gr =>  long2(y, x);
        
        /// Returns long4.yxx swizzling.
        [Inline]
        public long3 yxx =>  long3(y, x, x);
        
        /// Returns long4.grr swizzling (equivalent to long4.yxx).
        [Inline]
        public long3 grr =>  long3(y, x, x);
        
        /// Returns long4.yxxx swizzling.
        [Inline]
        public long4 yxxx =>  long4(y, x, x, x);
        
        /// Returns long4.grrr swizzling (equivalent to long4.yxxx).
        [Inline]
        public long4 grrr =>  long4(y, x, x, x);
        
        /// Returns long4.yxxy swizzling.
        [Inline]
        public long4 yxxy =>  long4(y, x, x, y);
        
        /// Returns long4.grrg swizzling (equivalent to long4.yxxy).
        [Inline]
        public long4 grrg =>  long4(y, x, x, y);
        
        /// Returns long4.yxxz swizzling.
        [Inline]
        public long4 yxxz =>  long4(y, x, x, z);
        
        /// Returns long4.grrb swizzling (equivalent to long4.yxxz).
        [Inline]
        public long4 grrb =>  long4(y, x, x, z);
        
        /// Returns long4.yxxw swizzling.
        [Inline]
        public long4 yxxw =>  long4(y, x, x, w);
        
        /// Returns long4.grra swizzling (equivalent to long4.yxxw).
        [Inline]
        public long4 grra =>  long4(y, x, x, w);
        
        /// Returns long4.yxy swizzling.
        [Inline]
        public long3 yxy =>  long3(y, x, y);
        
        /// Returns long4.grg swizzling (equivalent to long4.yxy).
        [Inline]
        public long3 grg =>  long3(y, x, y);
        
        /// Returns long4.yxyx swizzling.
        [Inline]
        public long4 yxyx =>  long4(y, x, y, x);
        
        /// Returns long4.grgr swizzling (equivalent to long4.yxyx).
        [Inline]
        public long4 grgr =>  long4(y, x, y, x);
        
        /// Returns long4.yxyy swizzling.
        [Inline]
        public long4 yxyy =>  long4(y, x, y, y);
        
        /// Returns long4.grgg swizzling (equivalent to long4.yxyy).
        [Inline]
        public long4 grgg =>  long4(y, x, y, y);
        
        /// Returns long4.yxyz swizzling.
        [Inline]
        public long4 yxyz =>  long4(y, x, y, z);
        
        /// Returns long4.grgb swizzling (equivalent to long4.yxyz).
        [Inline]
        public long4 grgb =>  long4(y, x, y, z);
        
        /// Returns long4.yxyw swizzling.
        [Inline]
        public long4 yxyw =>  long4(y, x, y, w);
        
        /// Returns long4.grga swizzling (equivalent to long4.yxyw).
        [Inline]
        public long4 grga =>  long4(y, x, y, w);
        
        /// Returns long4.yxz swizzling.
        [Inline]
        public long3 yxz =>  long3(y, x, z);
        
        /// Returns long4.grb swizzling (equivalent to long4.yxz).
        [Inline]
        public long3 grb =>  long3(y, x, z);
        
        /// Returns long4.yxzx swizzling.
        [Inline]
        public long4 yxzx =>  long4(y, x, z, x);
        
        /// Returns long4.grbr swizzling (equivalent to long4.yxzx).
        [Inline]
        public long4 grbr =>  long4(y, x, z, x);
        
        /// Returns long4.yxzy swizzling.
        [Inline]
        public long4 yxzy =>  long4(y, x, z, y);
        
        /// Returns long4.grbg swizzling (equivalent to long4.yxzy).
        [Inline]
        public long4 grbg =>  long4(y, x, z, y);
        
        /// Returns long4.yxzz swizzling.
        [Inline]
        public long4 yxzz =>  long4(y, x, z, z);
        
        /// Returns long4.grbb swizzling (equivalent to long4.yxzz).
        [Inline]
        public long4 grbb =>  long4(y, x, z, z);
        
        /// Returns long4.yxzw swizzling.
        [Inline]
        public long4 yxzw =>  long4(y, x, z, w);
        
        /// Returns long4.grba swizzling (equivalent to long4.yxzw).
        [Inline]
        public long4 grba =>  long4(y, x, z, w);
        
        /// Returns long4.yxw swizzling.
        [Inline]
        public long3 yxw =>  long3(y, x, w);
        
        /// Returns long4.gra swizzling (equivalent to long4.yxw).
        [Inline]
        public long3 gra =>  long3(y, x, w);
        
        /// Returns long4.yxwx swizzling.
        [Inline]
        public long4 yxwx =>  long4(y, x, w, x);
        
        /// Returns long4.grar swizzling (equivalent to long4.yxwx).
        [Inline]
        public long4 grar =>  long4(y, x, w, x);
        
        /// Returns long4.yxwy swizzling.
        [Inline]
        public long4 yxwy =>  long4(y, x, w, y);
        
        /// Returns long4.grag swizzling (equivalent to long4.yxwy).
        [Inline]
        public long4 grag =>  long4(y, x, w, y);
        
        /// Returns long4.yxwz swizzling.
        [Inline]
        public long4 yxwz =>  long4(y, x, w, z);
        
        /// Returns long4.grab swizzling (equivalent to long4.yxwz).
        [Inline]
        public long4 grab =>  long4(y, x, w, z);
        
        /// Returns long4.yxww swizzling.
        [Inline]
        public long4 yxww =>  long4(y, x, w, w);
        
        /// Returns long4.graa swizzling (equivalent to long4.yxww).
        [Inline]
        public long4 graa =>  long4(y, x, w, w);
        
        /// Returns long4.yy swizzling.
        [Inline]
        public long2 yy =>  long2(y, y);
        
        /// Returns long4.gg swizzling (equivalent to long4.yy).
        [Inline]
        public long2 gg =>  long2(y, y);
        
        /// Returns long4.yyx swizzling.
        [Inline]
        public long3 yyx =>  long3(y, y, x);
        
        /// Returns long4.ggr swizzling (equivalent to long4.yyx).
        [Inline]
        public long3 ggr =>  long3(y, y, x);
        
        /// Returns long4.yyxx swizzling.
        [Inline]
        public long4 yyxx =>  long4(y, y, x, x);
        
        /// Returns long4.ggrr swizzling (equivalent to long4.yyxx).
        [Inline]
        public long4 ggrr =>  long4(y, y, x, x);
        
        /// Returns long4.yyxy swizzling.
        [Inline]
        public long4 yyxy =>  long4(y, y, x, y);
        
        /// Returns long4.ggrg swizzling (equivalent to long4.yyxy).
        [Inline]
        public long4 ggrg =>  long4(y, y, x, y);
        
        /// Returns long4.yyxz swizzling.
        [Inline]
        public long4 yyxz =>  long4(y, y, x, z);
        
        /// Returns long4.ggrb swizzling (equivalent to long4.yyxz).
        [Inline]
        public long4 ggrb =>  long4(y, y, x, z);
        
        /// Returns long4.yyxw swizzling.
        [Inline]
        public long4 yyxw =>  long4(y, y, x, w);
        
        /// Returns long4.ggra swizzling (equivalent to long4.yyxw).
        [Inline]
        public long4 ggra =>  long4(y, y, x, w);
        
        /// Returns long4.yyy swizzling.
        [Inline]
        public long3 yyy =>  long3(y, y, y);
        
        /// Returns long4.ggg swizzling (equivalent to long4.yyy).
        [Inline]
        public long3 ggg =>  long3(y, y, y);
        
        /// Returns long4.yyyx swizzling.
        [Inline]
        public long4 yyyx =>  long4(y, y, y, x);
        
        /// Returns long4.gggr swizzling (equivalent to long4.yyyx).
        [Inline]
        public long4 gggr =>  long4(y, y, y, x);
        
        /// Returns long4.yyyy swizzling.
        [Inline]
        public long4 yyyy =>  long4(y, y, y, y);
        
        /// Returns long4.gggg swizzling (equivalent to long4.yyyy).
        [Inline]
        public long4 gggg =>  long4(y, y, y, y);
        
        /// Returns long4.yyyz swizzling.
        [Inline]
        public long4 yyyz =>  long4(y, y, y, z);
        
        /// Returns long4.gggb swizzling (equivalent to long4.yyyz).
        [Inline]
        public long4 gggb =>  long4(y, y, y, z);
        
        /// Returns long4.yyyw swizzling.
        [Inline]
        public long4 yyyw =>  long4(y, y, y, w);
        
        /// Returns long4.ggga swizzling (equivalent to long4.yyyw).
        [Inline]
        public long4 ggga =>  long4(y, y, y, w);
        
        /// Returns long4.yyz swizzling.
        [Inline]
        public long3 yyz =>  long3(y, y, z);
        
        /// Returns long4.ggb swizzling (equivalent to long4.yyz).
        [Inline]
        public long3 ggb =>  long3(y, y, z);
        
        /// Returns long4.yyzx swizzling.
        [Inline]
        public long4 yyzx =>  long4(y, y, z, x);
        
        /// Returns long4.ggbr swizzling (equivalent to long4.yyzx).
        [Inline]
        public long4 ggbr =>  long4(y, y, z, x);
        
        /// Returns long4.yyzy swizzling.
        [Inline]
        public long4 yyzy =>  long4(y, y, z, y);
        
        /// Returns long4.ggbg swizzling (equivalent to long4.yyzy).
        [Inline]
        public long4 ggbg =>  long4(y, y, z, y);
        
        /// Returns long4.yyzz swizzling.
        [Inline]
        public long4 yyzz =>  long4(y, y, z, z);
        
        /// Returns long4.ggbb swizzling (equivalent to long4.yyzz).
        [Inline]
        public long4 ggbb =>  long4(y, y, z, z);
        
        /// Returns long4.yyzw swizzling.
        [Inline]
        public long4 yyzw =>  long4(y, y, z, w);
        
        /// Returns long4.ggba swizzling (equivalent to long4.yyzw).
        [Inline]
        public long4 ggba =>  long4(y, y, z, w);
        
        /// Returns long4.yyw swizzling.
        [Inline]
        public long3 yyw =>  long3(y, y, w);
        
        /// Returns long4.gga swizzling (equivalent to long4.yyw).
        [Inline]
        public long3 gga =>  long3(y, y, w);
        
        /// Returns long4.yywx swizzling.
        [Inline]
        public long4 yywx =>  long4(y, y, w, x);
        
        /// Returns long4.ggar swizzling (equivalent to long4.yywx).
        [Inline]
        public long4 ggar =>  long4(y, y, w, x);
        
        /// Returns long4.yywy swizzling.
        [Inline]
        public long4 yywy =>  long4(y, y, w, y);
        
        /// Returns long4.ggag swizzling (equivalent to long4.yywy).
        [Inline]
        public long4 ggag =>  long4(y, y, w, y);
        
        /// Returns long4.yywz swizzling.
        [Inline]
        public long4 yywz =>  long4(y, y, w, z);
        
        /// Returns long4.ggab swizzling (equivalent to long4.yywz).
        [Inline]
        public long4 ggab =>  long4(y, y, w, z);
        
        /// Returns long4.yyww swizzling.
        [Inline]
        public long4 yyww =>  long4(y, y, w, w);
        
        /// Returns long4.ggaa swizzling (equivalent to long4.yyww).
        [Inline]
        public long4 ggaa =>  long4(y, y, w, w);
        
        /// Returns long4.yz swizzling.
        [Inline]
        public long2 yz =>  long2(y, z);
        
        /// Returns long4.gb swizzling (equivalent to long4.yz).
        [Inline]
        public long2 gb =>  long2(y, z);
        
        /// Returns long4.yzx swizzling.
        [Inline]
        public long3 yzx =>  long3(y, z, x);
        
        /// Returns long4.gbr swizzling (equivalent to long4.yzx).
        [Inline]
        public long3 gbr =>  long3(y, z, x);
        
        /// Returns long4.yzxx swizzling.
        [Inline]
        public long4 yzxx =>  long4(y, z, x, x);
        
        /// Returns long4.gbrr swizzling (equivalent to long4.yzxx).
        [Inline]
        public long4 gbrr =>  long4(y, z, x, x);
        
        /// Returns long4.yzxy swizzling.
        [Inline]
        public long4 yzxy =>  long4(y, z, x, y);
        
        /// Returns long4.gbrg swizzling (equivalent to long4.yzxy).
        [Inline]
        public long4 gbrg =>  long4(y, z, x, y);
        
        /// Returns long4.yzxz swizzling.
        [Inline]
        public long4 yzxz =>  long4(y, z, x, z);
        
        /// Returns long4.gbrb swizzling (equivalent to long4.yzxz).
        [Inline]
        public long4 gbrb =>  long4(y, z, x, z);
        
        /// Returns long4.yzxw swizzling.
        [Inline]
        public long4 yzxw =>  long4(y, z, x, w);
        
        /// Returns long4.gbra swizzling (equivalent to long4.yzxw).
        [Inline]
        public long4 gbra =>  long4(y, z, x, w);
        
        /// Returns long4.yzy swizzling.
        [Inline]
        public long3 yzy =>  long3(y, z, y);
        
        /// Returns long4.gbg swizzling (equivalent to long4.yzy).
        [Inline]
        public long3 gbg =>  long3(y, z, y);
        
        /// Returns long4.yzyx swizzling.
        [Inline]
        public long4 yzyx =>  long4(y, z, y, x);
        
        /// Returns long4.gbgr swizzling (equivalent to long4.yzyx).
        [Inline]
        public long4 gbgr =>  long4(y, z, y, x);
        
        /// Returns long4.yzyy swizzling.
        [Inline]
        public long4 yzyy =>  long4(y, z, y, y);
        
        /// Returns long4.gbgg swizzling (equivalent to long4.yzyy).
        [Inline]
        public long4 gbgg =>  long4(y, z, y, y);
        
        /// Returns long4.yzyz swizzling.
        [Inline]
        public long4 yzyz =>  long4(y, z, y, z);
        
        /// Returns long4.gbgb swizzling (equivalent to long4.yzyz).
        [Inline]
        public long4 gbgb =>  long4(y, z, y, z);
        
        /// Returns long4.yzyw swizzling.
        [Inline]
        public long4 yzyw =>  long4(y, z, y, w);
        
        /// Returns long4.gbga swizzling (equivalent to long4.yzyw).
        [Inline]
        public long4 gbga =>  long4(y, z, y, w);
        
        /// Returns long4.yzz swizzling.
        [Inline]
        public long3 yzz =>  long3(y, z, z);
        
        /// Returns long4.gbb swizzling (equivalent to long4.yzz).
        [Inline]
        public long3 gbb =>  long3(y, z, z);
        
        /// Returns long4.yzzx swizzling.
        [Inline]
        public long4 yzzx =>  long4(y, z, z, x);
        
        /// Returns long4.gbbr swizzling (equivalent to long4.yzzx).
        [Inline]
        public long4 gbbr =>  long4(y, z, z, x);
        
        /// Returns long4.yzzy swizzling.
        [Inline]
        public long4 yzzy =>  long4(y, z, z, y);
        
        /// Returns long4.gbbg swizzling (equivalent to long4.yzzy).
        [Inline]
        public long4 gbbg =>  long4(y, z, z, y);
        
        /// Returns long4.yzzz swizzling.
        [Inline]
        public long4 yzzz =>  long4(y, z, z, z);
        
        /// Returns long4.gbbb swizzling (equivalent to long4.yzzz).
        [Inline]
        public long4 gbbb =>  long4(y, z, z, z);
        
        /// Returns long4.yzzw swizzling.
        [Inline]
        public long4 yzzw =>  long4(y, z, z, w);
        
        /// Returns long4.gbba swizzling (equivalent to long4.yzzw).
        [Inline]
        public long4 gbba =>  long4(y, z, z, w);
        
        /// Returns long4.yzw swizzling.
        [Inline]
        public long3 yzw =>  long3(y, z, w);
        
        /// Returns long4.gba swizzling (equivalent to long4.yzw).
        [Inline]
        public long3 gba =>  long3(y, z, w);
        
        /// Returns long4.yzwx swizzling.
        [Inline]
        public long4 yzwx =>  long4(y, z, w, x);
        
        /// Returns long4.gbar swizzling (equivalent to long4.yzwx).
        [Inline]
        public long4 gbar =>  long4(y, z, w, x);
        
        /// Returns long4.yzwy swizzling.
        [Inline]
        public long4 yzwy =>  long4(y, z, w, y);
        
        /// Returns long4.gbag swizzling (equivalent to long4.yzwy).
        [Inline]
        public long4 gbag =>  long4(y, z, w, y);
        
        /// Returns long4.yzwz swizzling.
        [Inline]
        public long4 yzwz =>  long4(y, z, w, z);
        
        /// Returns long4.gbab swizzling (equivalent to long4.yzwz).
        [Inline]
        public long4 gbab =>  long4(y, z, w, z);
        
        /// Returns long4.yzww swizzling.
        [Inline]
        public long4 yzww =>  long4(y, z, w, w);
        
        /// Returns long4.gbaa swizzling (equivalent to long4.yzww).
        [Inline]
        public long4 gbaa =>  long4(y, z, w, w);
        
        /// Returns long4.yw swizzling.
        [Inline]
        public long2 yw =>  long2(y, w);
        
        /// Returns long4.ga swizzling (equivalent to long4.yw).
        [Inline]
        public long2 ga =>  long2(y, w);
        
        /// Returns long4.ywx swizzling.
        [Inline]
        public long3 ywx =>  long3(y, w, x);
        
        /// Returns long4.gar swizzling (equivalent to long4.ywx).
        [Inline]
        public long3 gar =>  long3(y, w, x);
        
        /// Returns long4.ywxx swizzling.
        [Inline]
        public long4 ywxx =>  long4(y, w, x, x);
        
        /// Returns long4.garr swizzling (equivalent to long4.ywxx).
        [Inline]
        public long4 garr =>  long4(y, w, x, x);
        
        /// Returns long4.ywxy swizzling.
        [Inline]
        public long4 ywxy =>  long4(y, w, x, y);
        
        /// Returns long4.garg swizzling (equivalent to long4.ywxy).
        [Inline]
        public long4 garg =>  long4(y, w, x, y);
        
        /// Returns long4.ywxz swizzling.
        [Inline]
        public long4 ywxz =>  long4(y, w, x, z);
        
        /// Returns long4.garb swizzling (equivalent to long4.ywxz).
        [Inline]
        public long4 garb =>  long4(y, w, x, z);
        
        /// Returns long4.ywxw swizzling.
        [Inline]
        public long4 ywxw =>  long4(y, w, x, w);
        
        /// Returns long4.gara swizzling (equivalent to long4.ywxw).
        [Inline]
        public long4 gara =>  long4(y, w, x, w);
        
        /// Returns long4.ywy swizzling.
        [Inline]
        public long3 ywy =>  long3(y, w, y);
        
        /// Returns long4.gag swizzling (equivalent to long4.ywy).
        [Inline]
        public long3 gag =>  long3(y, w, y);
        
        /// Returns long4.ywyx swizzling.
        [Inline]
        public long4 ywyx =>  long4(y, w, y, x);
        
        /// Returns long4.gagr swizzling (equivalent to long4.ywyx).
        [Inline]
        public long4 gagr =>  long4(y, w, y, x);
        
        /// Returns long4.ywyy swizzling.
        [Inline]
        public long4 ywyy =>  long4(y, w, y, y);
        
        /// Returns long4.gagg swizzling (equivalent to long4.ywyy).
        [Inline]
        public long4 gagg =>  long4(y, w, y, y);
        
        /// Returns long4.ywyz swizzling.
        [Inline]
        public long4 ywyz =>  long4(y, w, y, z);
        
        /// Returns long4.gagb swizzling (equivalent to long4.ywyz).
        [Inline]
        public long4 gagb =>  long4(y, w, y, z);
        
        /// Returns long4.ywyw swizzling.
        [Inline]
        public long4 ywyw =>  long4(y, w, y, w);
        
        /// Returns long4.gaga swizzling (equivalent to long4.ywyw).
        [Inline]
        public long4 gaga =>  long4(y, w, y, w);
        
        /// Returns long4.ywz swizzling.
        [Inline]
        public long3 ywz =>  long3(y, w, z);
        
        /// Returns long4.gab swizzling (equivalent to long4.ywz).
        [Inline]
        public long3 gab =>  long3(y, w, z);
        
        /// Returns long4.ywzx swizzling.
        [Inline]
        public long4 ywzx =>  long4(y, w, z, x);
        
        /// Returns long4.gabr swizzling (equivalent to long4.ywzx).
        [Inline]
        public long4 gabr =>  long4(y, w, z, x);
        
        /// Returns long4.ywzy swizzling.
        [Inline]
        public long4 ywzy =>  long4(y, w, z, y);
        
        /// Returns long4.gabg swizzling (equivalent to long4.ywzy).
        [Inline]
        public long4 gabg =>  long4(y, w, z, y);
        
        /// Returns long4.ywzz swizzling.
        [Inline]
        public long4 ywzz =>  long4(y, w, z, z);
        
        /// Returns long4.gabb swizzling (equivalent to long4.ywzz).
        [Inline]
        public long4 gabb =>  long4(y, w, z, z);
        
        /// Returns long4.ywzw swizzling.
        [Inline]
        public long4 ywzw =>  long4(y, w, z, w);
        
        /// Returns long4.gaba swizzling (equivalent to long4.ywzw).
        [Inline]
        public long4 gaba =>  long4(y, w, z, w);
        
        /// Returns long4.yww swizzling.
        [Inline]
        public long3 yww =>  long3(y, w, w);
        
        /// Returns long4.gaa swizzling (equivalent to long4.yww).
        [Inline]
        public long3 gaa =>  long3(y, w, w);
        
        /// Returns long4.ywwx swizzling.
        [Inline]
        public long4 ywwx =>  long4(y, w, w, x);
        
        /// Returns long4.gaar swizzling (equivalent to long4.ywwx).
        [Inline]
        public long4 gaar =>  long4(y, w, w, x);
        
        /// Returns long4.ywwy swizzling.
        [Inline]
        public long4 ywwy =>  long4(y, w, w, y);
        
        /// Returns long4.gaag swizzling (equivalent to long4.ywwy).
        [Inline]
        public long4 gaag =>  long4(y, w, w, y);
        
        /// Returns long4.ywwz swizzling.
        [Inline]
        public long4 ywwz =>  long4(y, w, w, z);
        
        /// Returns long4.gaab swizzling (equivalent to long4.ywwz).
        [Inline]
        public long4 gaab =>  long4(y, w, w, z);
        
        /// Returns long4.ywww swizzling.
        [Inline]
        public long4 ywww =>  long4(y, w, w, w);
        
        /// Returns long4.gaaa swizzling (equivalent to long4.ywww).
        [Inline]
        public long4 gaaa =>  long4(y, w, w, w);
        
        /// Returns long4.zx swizzling.
        [Inline]
        public long2 zx =>  long2(z, x);
        
        /// Returns long4.br swizzling (equivalent to long4.zx).
        [Inline]
        public long2 br =>  long2(z, x);
        
        /// Returns long4.zxx swizzling.
        [Inline]
        public long3 zxx =>  long3(z, x, x);
        
        /// Returns long4.brr swizzling (equivalent to long4.zxx).
        [Inline]
        public long3 brr =>  long3(z, x, x);
        
        /// Returns long4.zxxx swizzling.
        [Inline]
        public long4 zxxx =>  long4(z, x, x, x);
        
        /// Returns long4.brrr swizzling (equivalent to long4.zxxx).
        [Inline]
        public long4 brrr =>  long4(z, x, x, x);
        
        /// Returns long4.zxxy swizzling.
        [Inline]
        public long4 zxxy =>  long4(z, x, x, y);
        
        /// Returns long4.brrg swizzling (equivalent to long4.zxxy).
        [Inline]
        public long4 brrg =>  long4(z, x, x, y);
        
        /// Returns long4.zxxz swizzling.
        [Inline]
        public long4 zxxz =>  long4(z, x, x, z);
        
        /// Returns long4.brrb swizzling (equivalent to long4.zxxz).
        [Inline]
        public long4 brrb =>  long4(z, x, x, z);
        
        /// Returns long4.zxxw swizzling.
        [Inline]
        public long4 zxxw =>  long4(z, x, x, w);
        
        /// Returns long4.brra swizzling (equivalent to long4.zxxw).
        [Inline]
        public long4 brra =>  long4(z, x, x, w);
        
        /// Returns long4.zxy swizzling.
        [Inline]
        public long3 zxy =>  long3(z, x, y);
        
        /// Returns long4.brg swizzling (equivalent to long4.zxy).
        [Inline]
        public long3 brg =>  long3(z, x, y);
        
        /// Returns long4.zxyx swizzling.
        [Inline]
        public long4 zxyx =>  long4(z, x, y, x);
        
        /// Returns long4.brgr swizzling (equivalent to long4.zxyx).
        [Inline]
        public long4 brgr =>  long4(z, x, y, x);
        
        /// Returns long4.zxyy swizzling.
        [Inline]
        public long4 zxyy =>  long4(z, x, y, y);
        
        /// Returns long4.brgg swizzling (equivalent to long4.zxyy).
        [Inline]
        public long4 brgg =>  long4(z, x, y, y);
        
        /// Returns long4.zxyz swizzling.
        [Inline]
        public long4 zxyz =>  long4(z, x, y, z);
        
        /// Returns long4.brgb swizzling (equivalent to long4.zxyz).
        [Inline]
        public long4 brgb =>  long4(z, x, y, z);
        
        /// Returns long4.zxyw swizzling.
        [Inline]
        public long4 zxyw =>  long4(z, x, y, w);
        
        /// Returns long4.brga swizzling (equivalent to long4.zxyw).
        [Inline]
        public long4 brga =>  long4(z, x, y, w);
        
        /// Returns long4.zxz swizzling.
        [Inline]
        public long3 zxz =>  long3(z, x, z);
        
        /// Returns long4.brb swizzling (equivalent to long4.zxz).
        [Inline]
        public long3 brb =>  long3(z, x, z);
        
        /// Returns long4.zxzx swizzling.
        [Inline]
        public long4 zxzx =>  long4(z, x, z, x);
        
        /// Returns long4.brbr swizzling (equivalent to long4.zxzx).
        [Inline]
        public long4 brbr =>  long4(z, x, z, x);
        
        /// Returns long4.zxzy swizzling.
        [Inline]
        public long4 zxzy =>  long4(z, x, z, y);
        
        /// Returns long4.brbg swizzling (equivalent to long4.zxzy).
        [Inline]
        public long4 brbg =>  long4(z, x, z, y);
        
        /// Returns long4.zxzz swizzling.
        [Inline]
        public long4 zxzz =>  long4(z, x, z, z);
        
        /// Returns long4.brbb swizzling (equivalent to long4.zxzz).
        [Inline]
        public long4 brbb =>  long4(z, x, z, z);
        
        /// Returns long4.zxzw swizzling.
        [Inline]
        public long4 zxzw =>  long4(z, x, z, w);
        
        /// Returns long4.brba swizzling (equivalent to long4.zxzw).
        [Inline]
        public long4 brba =>  long4(z, x, z, w);
        
        /// Returns long4.zxw swizzling.
        [Inline]
        public long3 zxw =>  long3(z, x, w);
        
        /// Returns long4.bra swizzling (equivalent to long4.zxw).
        [Inline]
        public long3 bra =>  long3(z, x, w);
        
        /// Returns long4.zxwx swizzling.
        [Inline]
        public long4 zxwx =>  long4(z, x, w, x);
        
        /// Returns long4.brar swizzling (equivalent to long4.zxwx).
        [Inline]
        public long4 brar =>  long4(z, x, w, x);
        
        /// Returns long4.zxwy swizzling.
        [Inline]
        public long4 zxwy =>  long4(z, x, w, y);
        
        /// Returns long4.brag swizzling (equivalent to long4.zxwy).
        [Inline]
        public long4 brag =>  long4(z, x, w, y);
        
        /// Returns long4.zxwz swizzling.
        [Inline]
        public long4 zxwz =>  long4(z, x, w, z);
        
        /// Returns long4.brab swizzling (equivalent to long4.zxwz).
        [Inline]
        public long4 brab =>  long4(z, x, w, z);
        
        /// Returns long4.zxww swizzling.
        [Inline]
        public long4 zxww =>  long4(z, x, w, w);
        
        /// Returns long4.braa swizzling (equivalent to long4.zxww).
        [Inline]
        public long4 braa =>  long4(z, x, w, w);
        
        /// Returns long4.zy swizzling.
        [Inline]
        public long2 zy =>  long2(z, y);
        
        /// Returns long4.bg swizzling (equivalent to long4.zy).
        [Inline]
        public long2 bg =>  long2(z, y);
        
        /// Returns long4.zyx swizzling.
        [Inline]
        public long3 zyx =>  long3(z, y, x);
        
        /// Returns long4.bgr swizzling (equivalent to long4.zyx).
        [Inline]
        public long3 bgr =>  long3(z, y, x);
        
        /// Returns long4.zyxx swizzling.
        [Inline]
        public long4 zyxx =>  long4(z, y, x, x);
        
        /// Returns long4.bgrr swizzling (equivalent to long4.zyxx).
        [Inline]
        public long4 bgrr =>  long4(z, y, x, x);
        
        /// Returns long4.zyxy swizzling.
        [Inline]
        public long4 zyxy =>  long4(z, y, x, y);
        
        /// Returns long4.bgrg swizzling (equivalent to long4.zyxy).
        [Inline]
        public long4 bgrg =>  long4(z, y, x, y);
        
        /// Returns long4.zyxz swizzling.
        [Inline]
        public long4 zyxz =>  long4(z, y, x, z);
        
        /// Returns long4.bgrb swizzling (equivalent to long4.zyxz).
        [Inline]
        public long4 bgrb =>  long4(z, y, x, z);
        
        /// Returns long4.zyxw swizzling.
        [Inline]
        public long4 zyxw =>  long4(z, y, x, w);
        
        /// Returns long4.bgra swizzling (equivalent to long4.zyxw).
        [Inline]
        public long4 bgra =>  long4(z, y, x, w);
        
        /// Returns long4.zyy swizzling.
        [Inline]
        public long3 zyy =>  long3(z, y, y);
        
        /// Returns long4.bgg swizzling (equivalent to long4.zyy).
        [Inline]
        public long3 bgg =>  long3(z, y, y);
        
        /// Returns long4.zyyx swizzling.
        [Inline]
        public long4 zyyx =>  long4(z, y, y, x);
        
        /// Returns long4.bggr swizzling (equivalent to long4.zyyx).
        [Inline]
        public long4 bggr =>  long4(z, y, y, x);
        
        /// Returns long4.zyyy swizzling.
        [Inline]
        public long4 zyyy =>  long4(z, y, y, y);
        
        /// Returns long4.bggg swizzling (equivalent to long4.zyyy).
        [Inline]
        public long4 bggg =>  long4(z, y, y, y);
        
        /// Returns long4.zyyz swizzling.
        [Inline]
        public long4 zyyz =>  long4(z, y, y, z);
        
        /// Returns long4.bggb swizzling (equivalent to long4.zyyz).
        [Inline]
        public long4 bggb =>  long4(z, y, y, z);
        
        /// Returns long4.zyyw swizzling.
        [Inline]
        public long4 zyyw =>  long4(z, y, y, w);
        
        /// Returns long4.bgga swizzling (equivalent to long4.zyyw).
        [Inline]
        public long4 bgga =>  long4(z, y, y, w);
        
        /// Returns long4.zyz swizzling.
        [Inline]
        public long3 zyz =>  long3(z, y, z);
        
        /// Returns long4.bgb swizzling (equivalent to long4.zyz).
        [Inline]
        public long3 bgb =>  long3(z, y, z);
        
        /// Returns long4.zyzx swizzling.
        [Inline]
        public long4 zyzx =>  long4(z, y, z, x);
        
        /// Returns long4.bgbr swizzling (equivalent to long4.zyzx).
        [Inline]
        public long4 bgbr =>  long4(z, y, z, x);
        
        /// Returns long4.zyzy swizzling.
        [Inline]
        public long4 zyzy =>  long4(z, y, z, y);
        
        /// Returns long4.bgbg swizzling (equivalent to long4.zyzy).
        [Inline]
        public long4 bgbg =>  long4(z, y, z, y);
        
        /// Returns long4.zyzz swizzling.
        [Inline]
        public long4 zyzz =>  long4(z, y, z, z);
        
        /// Returns long4.bgbb swizzling (equivalent to long4.zyzz).
        [Inline]
        public long4 bgbb =>  long4(z, y, z, z);
        
        /// Returns long4.zyzw swizzling.
        [Inline]
        public long4 zyzw =>  long4(z, y, z, w);
        
        /// Returns long4.bgba swizzling (equivalent to long4.zyzw).
        [Inline]
        public long4 bgba =>  long4(z, y, z, w);
        
        /// Returns long4.zyw swizzling.
        [Inline]
        public long3 zyw =>  long3(z, y, w);
        
        /// Returns long4.bga swizzling (equivalent to long4.zyw).
        [Inline]
        public long3 bga =>  long3(z, y, w);
        
        /// Returns long4.zywx swizzling.
        [Inline]
        public long4 zywx =>  long4(z, y, w, x);
        
        /// Returns long4.bgar swizzling (equivalent to long4.zywx).
        [Inline]
        public long4 bgar =>  long4(z, y, w, x);
        
        /// Returns long4.zywy swizzling.
        [Inline]
        public long4 zywy =>  long4(z, y, w, y);
        
        /// Returns long4.bgag swizzling (equivalent to long4.zywy).
        [Inline]
        public long4 bgag =>  long4(z, y, w, y);
        
        /// Returns long4.zywz swizzling.
        [Inline]
        public long4 zywz =>  long4(z, y, w, z);
        
        /// Returns long4.bgab swizzling (equivalent to long4.zywz).
        [Inline]
        public long4 bgab =>  long4(z, y, w, z);
        
        /// Returns long4.zyww swizzling.
        [Inline]
        public long4 zyww =>  long4(z, y, w, w);
        
        /// Returns long4.bgaa swizzling (equivalent to long4.zyww).
        [Inline]
        public long4 bgaa =>  long4(z, y, w, w);
        
        /// Returns long4.zz swizzling.
        [Inline]
        public long2 zz =>  long2(z, z);
        
        /// Returns long4.bb swizzling (equivalent to long4.zz).
        [Inline]
        public long2 bb =>  long2(z, z);
        
        /// Returns long4.zzx swizzling.
        [Inline]
        public long3 zzx =>  long3(z, z, x);
        
        /// Returns long4.bbr swizzling (equivalent to long4.zzx).
        [Inline]
        public long3 bbr =>  long3(z, z, x);
        
        /// Returns long4.zzxx swizzling.
        [Inline]
        public long4 zzxx =>  long4(z, z, x, x);
        
        /// Returns long4.bbrr swizzling (equivalent to long4.zzxx).
        [Inline]
        public long4 bbrr =>  long4(z, z, x, x);
        
        /// Returns long4.zzxy swizzling.
        [Inline]
        public long4 zzxy =>  long4(z, z, x, y);
        
        /// Returns long4.bbrg swizzling (equivalent to long4.zzxy).
        [Inline]
        public long4 bbrg =>  long4(z, z, x, y);
        
        /// Returns long4.zzxz swizzling.
        [Inline]
        public long4 zzxz =>  long4(z, z, x, z);
        
        /// Returns long4.bbrb swizzling (equivalent to long4.zzxz).
        [Inline]
        public long4 bbrb =>  long4(z, z, x, z);
        
        /// Returns long4.zzxw swizzling.
        [Inline]
        public long4 zzxw =>  long4(z, z, x, w);
        
        /// Returns long4.bbra swizzling (equivalent to long4.zzxw).
        [Inline]
        public long4 bbra =>  long4(z, z, x, w);
        
        /// Returns long4.zzy swizzling.
        [Inline]
        public long3 zzy =>  long3(z, z, y);
        
        /// Returns long4.bbg swizzling (equivalent to long4.zzy).
        [Inline]
        public long3 bbg =>  long3(z, z, y);
        
        /// Returns long4.zzyx swizzling.
        [Inline]
        public long4 zzyx =>  long4(z, z, y, x);
        
        /// Returns long4.bbgr swizzling (equivalent to long4.zzyx).
        [Inline]
        public long4 bbgr =>  long4(z, z, y, x);
        
        /// Returns long4.zzyy swizzling.
        [Inline]
        public long4 zzyy =>  long4(z, z, y, y);
        
        /// Returns long4.bbgg swizzling (equivalent to long4.zzyy).
        [Inline]
        public long4 bbgg =>  long4(z, z, y, y);
        
        /// Returns long4.zzyz swizzling.
        [Inline]
        public long4 zzyz =>  long4(z, z, y, z);
        
        /// Returns long4.bbgb swizzling (equivalent to long4.zzyz).
        [Inline]
        public long4 bbgb =>  long4(z, z, y, z);
        
        /// Returns long4.zzyw swizzling.
        [Inline]
        public long4 zzyw =>  long4(z, z, y, w);
        
        /// Returns long4.bbga swizzling (equivalent to long4.zzyw).
        [Inline]
        public long4 bbga =>  long4(z, z, y, w);
        
        /// Returns long4.zzz swizzling.
        [Inline]
        public long3 zzz =>  long3(z, z, z);
        
        /// Returns long4.bbb swizzling (equivalent to long4.zzz).
        [Inline]
        public long3 bbb =>  long3(z, z, z);
        
        /// Returns long4.zzzx swizzling.
        [Inline]
        public long4 zzzx =>  long4(z, z, z, x);
        
        /// Returns long4.bbbr swizzling (equivalent to long4.zzzx).
        [Inline]
        public long4 bbbr =>  long4(z, z, z, x);
        
        /// Returns long4.zzzy swizzling.
        [Inline]
        public long4 zzzy =>  long4(z, z, z, y);
        
        /// Returns long4.bbbg swizzling (equivalent to long4.zzzy).
        [Inline]
        public long4 bbbg =>  long4(z, z, z, y);
        
        /// Returns long4.zzzz swizzling.
        [Inline]
        public long4 zzzz =>  long4(z, z, z, z);
        
        /// Returns long4.bbbb swizzling (equivalent to long4.zzzz).
        [Inline]
        public long4 bbbb =>  long4(z, z, z, z);
        
        /// Returns long4.zzzw swizzling.
        [Inline]
        public long4 zzzw =>  long4(z, z, z, w);
        
        /// Returns long4.bbba swizzling (equivalent to long4.zzzw).
        [Inline]
        public long4 bbba =>  long4(z, z, z, w);
        
        /// Returns long4.zzw swizzling.
        [Inline]
        public long3 zzw =>  long3(z, z, w);
        
        /// Returns long4.bba swizzling (equivalent to long4.zzw).
        [Inline]
        public long3 bba =>  long3(z, z, w);
        
        /// Returns long4.zzwx swizzling.
        [Inline]
        public long4 zzwx =>  long4(z, z, w, x);
        
        /// Returns long4.bbar swizzling (equivalent to long4.zzwx).
        [Inline]
        public long4 bbar =>  long4(z, z, w, x);
        
        /// Returns long4.zzwy swizzling.
        [Inline]
        public long4 zzwy =>  long4(z, z, w, y);
        
        /// Returns long4.bbag swizzling (equivalent to long4.zzwy).
        [Inline]
        public long4 bbag =>  long4(z, z, w, y);
        
        /// Returns long4.zzwz swizzling.
        [Inline]
        public long4 zzwz =>  long4(z, z, w, z);
        
        /// Returns long4.bbab swizzling (equivalent to long4.zzwz).
        [Inline]
        public long4 bbab =>  long4(z, z, w, z);
        
        /// Returns long4.zzww swizzling.
        [Inline]
        public long4 zzww =>  long4(z, z, w, w);
        
        /// Returns long4.bbaa swizzling (equivalent to long4.zzww).
        [Inline]
        public long4 bbaa =>  long4(z, z, w, w);
        
        /// Returns long4.zw swizzling.
        [Inline]
        public long2 zw =>  long2(z, w);
        
        /// Returns long4.ba swizzling (equivalent to long4.zw).
        [Inline]
        public long2 ba =>  long2(z, w);
        
        /// Returns long4.zwx swizzling.
        [Inline]
        public long3 zwx =>  long3(z, w, x);
        
        /// Returns long4.bar swizzling (equivalent to long4.zwx).
        [Inline]
        public long3 bar =>  long3(z, w, x);
        
        /// Returns long4.zwxx swizzling.
        [Inline]
        public long4 zwxx =>  long4(z, w, x, x);
        
        /// Returns long4.barr swizzling (equivalent to long4.zwxx).
        [Inline]
        public long4 barr =>  long4(z, w, x, x);
        
        /// Returns long4.zwxy swizzling.
        [Inline]
        public long4 zwxy =>  long4(z, w, x, y);
        
        /// Returns long4.barg swizzling (equivalent to long4.zwxy).
        [Inline]
        public long4 barg =>  long4(z, w, x, y);
        
        /// Returns long4.zwxz swizzling.
        [Inline]
        public long4 zwxz =>  long4(z, w, x, z);
        
        /// Returns long4.barb swizzling (equivalent to long4.zwxz).
        [Inline]
        public long4 barb =>  long4(z, w, x, z);
        
        /// Returns long4.zwxw swizzling.
        [Inline]
        public long4 zwxw =>  long4(z, w, x, w);
        
        /// Returns long4.bara swizzling (equivalent to long4.zwxw).
        [Inline]
        public long4 bara =>  long4(z, w, x, w);
        
        /// Returns long4.zwy swizzling.
        [Inline]
        public long3 zwy =>  long3(z, w, y);
        
        /// Returns long4.bag swizzling (equivalent to long4.zwy).
        [Inline]
        public long3 bag =>  long3(z, w, y);
        
        /// Returns long4.zwyx swizzling.
        [Inline]
        public long4 zwyx =>  long4(z, w, y, x);
        
        /// Returns long4.bagr swizzling (equivalent to long4.zwyx).
        [Inline]
        public long4 bagr =>  long4(z, w, y, x);
        
        /// Returns long4.zwyy swizzling.
        [Inline]
        public long4 zwyy =>  long4(z, w, y, y);
        
        /// Returns long4.bagg swizzling (equivalent to long4.zwyy).
        [Inline]
        public long4 bagg =>  long4(z, w, y, y);
        
        /// Returns long4.zwyz swizzling.
        [Inline]
        public long4 zwyz =>  long4(z, w, y, z);
        
        /// Returns long4.bagb swizzling (equivalent to long4.zwyz).
        [Inline]
        public long4 bagb =>  long4(z, w, y, z);
        
        /// Returns long4.zwyw swizzling.
        [Inline]
        public long4 zwyw =>  long4(z, w, y, w);
        
        /// Returns long4.baga swizzling (equivalent to long4.zwyw).
        [Inline]
        public long4 baga =>  long4(z, w, y, w);
        
        /// Returns long4.zwz swizzling.
        [Inline]
        public long3 zwz =>  long3(z, w, z);
        
        /// Returns long4.bab swizzling (equivalent to long4.zwz).
        [Inline]
        public long3 bab =>  long3(z, w, z);
        
        /// Returns long4.zwzx swizzling.
        [Inline]
        public long4 zwzx =>  long4(z, w, z, x);
        
        /// Returns long4.babr swizzling (equivalent to long4.zwzx).
        [Inline]
        public long4 babr =>  long4(z, w, z, x);
        
        /// Returns long4.zwzy swizzling.
        [Inline]
        public long4 zwzy =>  long4(z, w, z, y);
        
        /// Returns long4.babg swizzling (equivalent to long4.zwzy).
        [Inline]
        public long4 babg =>  long4(z, w, z, y);
        
        /// Returns long4.zwzz swizzling.
        [Inline]
        public long4 zwzz =>  long4(z, w, z, z);
        
        /// Returns long4.babb swizzling (equivalent to long4.zwzz).
        [Inline]
        public long4 babb =>  long4(z, w, z, z);
        
        /// Returns long4.zwzw swizzling.
        [Inline]
        public long4 zwzw =>  long4(z, w, z, w);
        
        /// Returns long4.baba swizzling (equivalent to long4.zwzw).
        [Inline]
        public long4 baba =>  long4(z, w, z, w);
        
        /// Returns long4.zww swizzling.
        [Inline]
        public long3 zww =>  long3(z, w, w);
        
        /// Returns long4.baa swizzling (equivalent to long4.zww).
        [Inline]
        public long3 baa =>  long3(z, w, w);
        
        /// Returns long4.zwwx swizzling.
        [Inline]
        public long4 zwwx =>  long4(z, w, w, x);
        
        /// Returns long4.baar swizzling (equivalent to long4.zwwx).
        [Inline]
        public long4 baar =>  long4(z, w, w, x);
        
        /// Returns long4.zwwy swizzling.
        [Inline]
        public long4 zwwy =>  long4(z, w, w, y);
        
        /// Returns long4.baag swizzling (equivalent to long4.zwwy).
        [Inline]
        public long4 baag =>  long4(z, w, w, y);
        
        /// Returns long4.zwwz swizzling.
        [Inline]
        public long4 zwwz =>  long4(z, w, w, z);
        
        /// Returns long4.baab swizzling (equivalent to long4.zwwz).
        [Inline]
        public long4 baab =>  long4(z, w, w, z);
        
        /// Returns long4.zwww swizzling.
        [Inline]
        public long4 zwww =>  long4(z, w, w, w);
        
        /// Returns long4.baaa swizzling (equivalent to long4.zwww).
        [Inline]
        public long4 baaa =>  long4(z, w, w, w);
        
        /// Returns long4.wx swizzling.
        [Inline]
        public long2 wx =>  long2(w, x);
        
        /// Returns long4.ar swizzling (equivalent to long4.wx).
        [Inline]
        public long2 ar =>  long2(w, x);
        
        /// Returns long4.wxx swizzling.
        [Inline]
        public long3 wxx =>  long3(w, x, x);
        
        /// Returns long4.arr swizzling (equivalent to long4.wxx).
        [Inline]
        public long3 arr =>  long3(w, x, x);
        
        /// Returns long4.wxxx swizzling.
        [Inline]
        public long4 wxxx =>  long4(w, x, x, x);
        
        /// Returns long4.arrr swizzling (equivalent to long4.wxxx).
        [Inline]
        public long4 arrr =>  long4(w, x, x, x);
        
        /// Returns long4.wxxy swizzling.
        [Inline]
        public long4 wxxy =>  long4(w, x, x, y);
        
        /// Returns long4.arrg swizzling (equivalent to long4.wxxy).
        [Inline]
        public long4 arrg =>  long4(w, x, x, y);
        
        /// Returns long4.wxxz swizzling.
        [Inline]
        public long4 wxxz =>  long4(w, x, x, z);
        
        /// Returns long4.arrb swizzling (equivalent to long4.wxxz).
        [Inline]
        public long4 arrb =>  long4(w, x, x, z);
        
        /// Returns long4.wxxw swizzling.
        [Inline]
        public long4 wxxw =>  long4(w, x, x, w);
        
        /// Returns long4.arra swizzling (equivalent to long4.wxxw).
        [Inline]
        public long4 arra =>  long4(w, x, x, w);
        
        /// Returns long4.wxy swizzling.
        [Inline]
        public long3 wxy =>  long3(w, x, y);
        
        /// Returns long4.arg swizzling (equivalent to long4.wxy).
        [Inline]
        public long3 arg =>  long3(w, x, y);
        
        /// Returns long4.wxyx swizzling.
        [Inline]
        public long4 wxyx =>  long4(w, x, y, x);
        
        /// Returns long4.argr swizzling (equivalent to long4.wxyx).
        [Inline]
        public long4 argr =>  long4(w, x, y, x);
        
        /// Returns long4.wxyy swizzling.
        [Inline]
        public long4 wxyy =>  long4(w, x, y, y);
        
        /// Returns long4.argg swizzling (equivalent to long4.wxyy).
        [Inline]
        public long4 argg =>  long4(w, x, y, y);
        
        /// Returns long4.wxyz swizzling.
        [Inline]
        public long4 wxyz =>  long4(w, x, y, z);
        
        /// Returns long4.argb swizzling (equivalent to long4.wxyz).
        [Inline]
        public long4 argb =>  long4(w, x, y, z);
        
        /// Returns long4.wxyw swizzling.
        [Inline]
        public long4 wxyw =>  long4(w, x, y, w);
        
        /// Returns long4.arga swizzling (equivalent to long4.wxyw).
        [Inline]
        public long4 arga =>  long4(w, x, y, w);
        
        /// Returns long4.wxz swizzling.
        [Inline]
        public long3 wxz =>  long3(w, x, z);
        
        /// Returns long4.arb swizzling (equivalent to long4.wxz).
        [Inline]
        public long3 arb =>  long3(w, x, z);
        
        /// Returns long4.wxzx swizzling.
        [Inline]
        public long4 wxzx =>  long4(w, x, z, x);
        
        /// Returns long4.arbr swizzling (equivalent to long4.wxzx).
        [Inline]
        public long4 arbr =>  long4(w, x, z, x);
        
        /// Returns long4.wxzy swizzling.
        [Inline]
        public long4 wxzy =>  long4(w, x, z, y);
        
        /// Returns long4.arbg swizzling (equivalent to long4.wxzy).
        [Inline]
        public long4 arbg =>  long4(w, x, z, y);
        
        /// Returns long4.wxzz swizzling.
        [Inline]
        public long4 wxzz =>  long4(w, x, z, z);
        
        /// Returns long4.arbb swizzling (equivalent to long4.wxzz).
        [Inline]
        public long4 arbb =>  long4(w, x, z, z);
        
        /// Returns long4.wxzw swizzling.
        [Inline]
        public long4 wxzw =>  long4(w, x, z, w);
        
        /// Returns long4.arba swizzling (equivalent to long4.wxzw).
        [Inline]
        public long4 arba =>  long4(w, x, z, w);
        
        /// Returns long4.wxw swizzling.
        [Inline]
        public long3 wxw =>  long3(w, x, w);
        
        /// Returns long4.ara swizzling (equivalent to long4.wxw).
        [Inline]
        public long3 ara =>  long3(w, x, w);
        
        /// Returns long4.wxwx swizzling.
        [Inline]
        public long4 wxwx =>  long4(w, x, w, x);
        
        /// Returns long4.arar swizzling (equivalent to long4.wxwx).
        [Inline]
        public long4 arar =>  long4(w, x, w, x);
        
        /// Returns long4.wxwy swizzling.
        [Inline]
        public long4 wxwy =>  long4(w, x, w, y);
        
        /// Returns long4.arag swizzling (equivalent to long4.wxwy).
        [Inline]
        public long4 arag =>  long4(w, x, w, y);
        
        /// Returns long4.wxwz swizzling.
        [Inline]
        public long4 wxwz =>  long4(w, x, w, z);
        
        /// Returns long4.arab swizzling (equivalent to long4.wxwz).
        [Inline]
        public long4 arab =>  long4(w, x, w, z);
        
        /// Returns long4.wxww swizzling.
        [Inline]
        public long4 wxww =>  long4(w, x, w, w);
        
        /// Returns long4.araa swizzling (equivalent to long4.wxww).
        [Inline]
        public long4 araa =>  long4(w, x, w, w);
        
        /// Returns long4.wy swizzling.
        [Inline]
        public long2 wy =>  long2(w, y);
        
        /// Returns long4.ag swizzling (equivalent to long4.wy).
        [Inline]
        public long2 ag =>  long2(w, y);
        
        /// Returns long4.wyx swizzling.
        [Inline]
        public long3 wyx =>  long3(w, y, x);
        
        /// Returns long4.agr swizzling (equivalent to long4.wyx).
        [Inline]
        public long3 agr =>  long3(w, y, x);
        
        /// Returns long4.wyxx swizzling.
        [Inline]
        public long4 wyxx =>  long4(w, y, x, x);
        
        /// Returns long4.agrr swizzling (equivalent to long4.wyxx).
        [Inline]
        public long4 agrr =>  long4(w, y, x, x);
        
        /// Returns long4.wyxy swizzling.
        [Inline]
        public long4 wyxy =>  long4(w, y, x, y);
        
        /// Returns long4.agrg swizzling (equivalent to long4.wyxy).
        [Inline]
        public long4 agrg =>  long4(w, y, x, y);
        
        /// Returns long4.wyxz swizzling.
        [Inline]
        public long4 wyxz =>  long4(w, y, x, z);
        
        /// Returns long4.agrb swizzling (equivalent to long4.wyxz).
        [Inline]
        public long4 agrb =>  long4(w, y, x, z);
        
        /// Returns long4.wyxw swizzling.
        [Inline]
        public long4 wyxw =>  long4(w, y, x, w);
        
        /// Returns long4.agra swizzling (equivalent to long4.wyxw).
        [Inline]
        public long4 agra =>  long4(w, y, x, w);
        
        /// Returns long4.wyy swizzling.
        [Inline]
        public long3 wyy =>  long3(w, y, y);
        
        /// Returns long4.agg swizzling (equivalent to long4.wyy).
        [Inline]
        public long3 agg =>  long3(w, y, y);
        
        /// Returns long4.wyyx swizzling.
        [Inline]
        public long4 wyyx =>  long4(w, y, y, x);
        
        /// Returns long4.aggr swizzling (equivalent to long4.wyyx).
        [Inline]
        public long4 aggr =>  long4(w, y, y, x);
        
        /// Returns long4.wyyy swizzling.
        [Inline]
        public long4 wyyy =>  long4(w, y, y, y);
        
        /// Returns long4.aggg swizzling (equivalent to long4.wyyy).
        [Inline]
        public long4 aggg =>  long4(w, y, y, y);
        
        /// Returns long4.wyyz swizzling.
        [Inline]
        public long4 wyyz =>  long4(w, y, y, z);
        
        /// Returns long4.aggb swizzling (equivalent to long4.wyyz).
        [Inline]
        public long4 aggb =>  long4(w, y, y, z);
        
        /// Returns long4.wyyw swizzling.
        [Inline]
        public long4 wyyw =>  long4(w, y, y, w);
        
        /// Returns long4.agga swizzling (equivalent to long4.wyyw).
        [Inline]
        public long4 agga =>  long4(w, y, y, w);
        
        /// Returns long4.wyz swizzling.
        [Inline]
        public long3 wyz =>  long3(w, y, z);
        
        /// Returns long4.agb swizzling (equivalent to long4.wyz).
        [Inline]
        public long3 agb =>  long3(w, y, z);
        
        /// Returns long4.wyzx swizzling.
        [Inline]
        public long4 wyzx =>  long4(w, y, z, x);
        
        /// Returns long4.agbr swizzling (equivalent to long4.wyzx).
        [Inline]
        public long4 agbr =>  long4(w, y, z, x);
        
        /// Returns long4.wyzy swizzling.
        [Inline]
        public long4 wyzy =>  long4(w, y, z, y);
        
        /// Returns long4.agbg swizzling (equivalent to long4.wyzy).
        [Inline]
        public long4 agbg =>  long4(w, y, z, y);
        
        /// Returns long4.wyzz swizzling.
        [Inline]
        public long4 wyzz =>  long4(w, y, z, z);
        
        /// Returns long4.agbb swizzling (equivalent to long4.wyzz).
        [Inline]
        public long4 agbb =>  long4(w, y, z, z);
        
        /// Returns long4.wyzw swizzling.
        [Inline]
        public long4 wyzw =>  long4(w, y, z, w);
        
        /// Returns long4.agba swizzling (equivalent to long4.wyzw).
        [Inline]
        public long4 agba =>  long4(w, y, z, w);
        
        /// Returns long4.wyw swizzling.
        [Inline]
        public long3 wyw =>  long3(w, y, w);
        
        /// Returns long4.aga swizzling (equivalent to long4.wyw).
        [Inline]
        public long3 aga =>  long3(w, y, w);
        
        /// Returns long4.wywx swizzling.
        [Inline]
        public long4 wywx =>  long4(w, y, w, x);
        
        /// Returns long4.agar swizzling (equivalent to long4.wywx).
        [Inline]
        public long4 agar =>  long4(w, y, w, x);
        
        /// Returns long4.wywy swizzling.
        [Inline]
        public long4 wywy =>  long4(w, y, w, y);
        
        /// Returns long4.agag swizzling (equivalent to long4.wywy).
        [Inline]
        public long4 agag =>  long4(w, y, w, y);
        
        /// Returns long4.wywz swizzling.
        [Inline]
        public long4 wywz =>  long4(w, y, w, z);
        
        /// Returns long4.agab swizzling (equivalent to long4.wywz).
        [Inline]
        public long4 agab =>  long4(w, y, w, z);
        
        /// Returns long4.wyww swizzling.
        [Inline]
        public long4 wyww =>  long4(w, y, w, w);
        
        /// Returns long4.agaa swizzling (equivalent to long4.wyww).
        [Inline]
        public long4 agaa =>  long4(w, y, w, w);
        
        /// Returns long4.wz swizzling.
        [Inline]
        public long2 wz =>  long2(w, z);
        
        /// Returns long4.ab swizzling (equivalent to long4.wz).
        [Inline]
        public long2 ab =>  long2(w, z);
        
        /// Returns long4.wzx swizzling.
        [Inline]
        public long3 wzx =>  long3(w, z, x);
        
        /// Returns long4.abr swizzling (equivalent to long4.wzx).
        [Inline]
        public long3 abr =>  long3(w, z, x);
        
        /// Returns long4.wzxx swizzling.
        [Inline]
        public long4 wzxx =>  long4(w, z, x, x);
        
        /// Returns long4.abrr swizzling (equivalent to long4.wzxx).
        [Inline]
        public long4 abrr =>  long4(w, z, x, x);
        
        /// Returns long4.wzxy swizzling.
        [Inline]
        public long4 wzxy =>  long4(w, z, x, y);
        
        /// Returns long4.abrg swizzling (equivalent to long4.wzxy).
        [Inline]
        public long4 abrg =>  long4(w, z, x, y);
        
        /// Returns long4.wzxz swizzling.
        [Inline]
        public long4 wzxz =>  long4(w, z, x, z);
        
        /// Returns long4.abrb swizzling (equivalent to long4.wzxz).
        [Inline]
        public long4 abrb =>  long4(w, z, x, z);
        
        /// Returns long4.wzxw swizzling.
        [Inline]
        public long4 wzxw =>  long4(w, z, x, w);
        
        /// Returns long4.abra swizzling (equivalent to long4.wzxw).
        [Inline]
        public long4 abra =>  long4(w, z, x, w);
        
        /// Returns long4.wzy swizzling.
        [Inline]
        public long3 wzy =>  long3(w, z, y);
        
        /// Returns long4.abg swizzling (equivalent to long4.wzy).
        [Inline]
        public long3 abg =>  long3(w, z, y);
        
        /// Returns long4.wzyx swizzling.
        [Inline]
        public long4 wzyx =>  long4(w, z, y, x);
        
        /// Returns long4.abgr swizzling (equivalent to long4.wzyx).
        [Inline]
        public long4 abgr =>  long4(w, z, y, x);
        
        /// Returns long4.wzyy swizzling.
        [Inline]
        public long4 wzyy =>  long4(w, z, y, y);
        
        /// Returns long4.abgg swizzling (equivalent to long4.wzyy).
        [Inline]
        public long4 abgg =>  long4(w, z, y, y);
        
        /// Returns long4.wzyz swizzling.
        [Inline]
        public long4 wzyz =>  long4(w, z, y, z);
        
        /// Returns long4.abgb swizzling (equivalent to long4.wzyz).
        [Inline]
        public long4 abgb =>  long4(w, z, y, z);
        
        /// Returns long4.wzyw swizzling.
        [Inline]
        public long4 wzyw =>  long4(w, z, y, w);
        
        /// Returns long4.abga swizzling (equivalent to long4.wzyw).
        [Inline]
        public long4 abga =>  long4(w, z, y, w);
        
        /// Returns long4.wzz swizzling.
        [Inline]
        public long3 wzz =>  long3(w, z, z);
        
        /// Returns long4.abb swizzling (equivalent to long4.wzz).
        [Inline]
        public long3 abb =>  long3(w, z, z);
        
        /// Returns long4.wzzx swizzling.
        [Inline]
        public long4 wzzx =>  long4(w, z, z, x);
        
        /// Returns long4.abbr swizzling (equivalent to long4.wzzx).
        [Inline]
        public long4 abbr =>  long4(w, z, z, x);
        
        /// Returns long4.wzzy swizzling.
        [Inline]
        public long4 wzzy =>  long4(w, z, z, y);
        
        /// Returns long4.abbg swizzling (equivalent to long4.wzzy).
        [Inline]
        public long4 abbg =>  long4(w, z, z, y);
        
        /// Returns long4.wzzz swizzling.
        [Inline]
        public long4 wzzz =>  long4(w, z, z, z);
        
        /// Returns long4.abbb swizzling (equivalent to long4.wzzz).
        [Inline]
        public long4 abbb =>  long4(w, z, z, z);
        
        /// Returns long4.wzzw swizzling.
        [Inline]
        public long4 wzzw =>  long4(w, z, z, w);
        
        /// Returns long4.abba swizzling (equivalent to long4.wzzw).
        [Inline]
        public long4 abba =>  long4(w, z, z, w);
        
        /// Returns long4.wzw swizzling.
        [Inline]
        public long3 wzw =>  long3(w, z, w);
        
        /// Returns long4.aba swizzling (equivalent to long4.wzw).
        [Inline]
        public long3 aba =>  long3(w, z, w);
        
        /// Returns long4.wzwx swizzling.
        [Inline]
        public long4 wzwx =>  long4(w, z, w, x);
        
        /// Returns long4.abar swizzling (equivalent to long4.wzwx).
        [Inline]
        public long4 abar =>  long4(w, z, w, x);
        
        /// Returns long4.wzwy swizzling.
        [Inline]
        public long4 wzwy =>  long4(w, z, w, y);
        
        /// Returns long4.abag swizzling (equivalent to long4.wzwy).
        [Inline]
        public long4 abag =>  long4(w, z, w, y);
        
        /// Returns long4.wzwz swizzling.
        [Inline]
        public long4 wzwz =>  long4(w, z, w, z);
        
        /// Returns long4.abab swizzling (equivalent to long4.wzwz).
        [Inline]
        public long4 abab =>  long4(w, z, w, z);
        
        /// Returns long4.wzww swizzling.
        [Inline]
        public long4 wzww =>  long4(w, z, w, w);
        
        /// Returns long4.abaa swizzling (equivalent to long4.wzww).
        [Inline]
        public long4 abaa =>  long4(w, z, w, w);
        
        /// Returns long4.ww swizzling.
        [Inline]
        public long2 ww =>  long2(w, w);
        
        /// Returns long4.aa swizzling (equivalent to long4.ww).
        [Inline]
        public long2 aa =>  long2(w, w);
        
        /// Returns long4.wwx swizzling.
        [Inline]
        public long3 wwx =>  long3(w, w, x);
        
        /// Returns long4.aar swizzling (equivalent to long4.wwx).
        [Inline]
        public long3 aar =>  long3(w, w, x);
        
        /// Returns long4.wwxx swizzling.
        [Inline]
        public long4 wwxx =>  long4(w, w, x, x);
        
        /// Returns long4.aarr swizzling (equivalent to long4.wwxx).
        [Inline]
        public long4 aarr =>  long4(w, w, x, x);
        
        /// Returns long4.wwxy swizzling.
        [Inline]
        public long4 wwxy =>  long4(w, w, x, y);
        
        /// Returns long4.aarg swizzling (equivalent to long4.wwxy).
        [Inline]
        public long4 aarg =>  long4(w, w, x, y);
        
        /// Returns long4.wwxz swizzling.
        [Inline]
        public long4 wwxz =>  long4(w, w, x, z);
        
        /// Returns long4.aarb swizzling (equivalent to long4.wwxz).
        [Inline]
        public long4 aarb =>  long4(w, w, x, z);
        
        /// Returns long4.wwxw swizzling.
        [Inline]
        public long4 wwxw =>  long4(w, w, x, w);
        
        /// Returns long4.aara swizzling (equivalent to long4.wwxw).
        [Inline]
        public long4 aara =>  long4(w, w, x, w);
        
        /// Returns long4.wwy swizzling.
        [Inline]
        public long3 wwy =>  long3(w, w, y);
        
        /// Returns long4.aag swizzling (equivalent to long4.wwy).
        [Inline]
        public long3 aag =>  long3(w, w, y);
        
        /// Returns long4.wwyx swizzling.
        [Inline]
        public long4 wwyx =>  long4(w, w, y, x);
        
        /// Returns long4.aagr swizzling (equivalent to long4.wwyx).
        [Inline]
        public long4 aagr =>  long4(w, w, y, x);
        
        /// Returns long4.wwyy swizzling.
        [Inline]
        public long4 wwyy =>  long4(w, w, y, y);
        
        /// Returns long4.aagg swizzling (equivalent to long4.wwyy).
        [Inline]
        public long4 aagg =>  long4(w, w, y, y);
        
        /// Returns long4.wwyz swizzling.
        [Inline]
        public long4 wwyz =>  long4(w, w, y, z);
        
        /// Returns long4.aagb swizzling (equivalent to long4.wwyz).
        [Inline]
        public long4 aagb =>  long4(w, w, y, z);
        
        /// Returns long4.wwyw swizzling.
        [Inline]
        public long4 wwyw =>  long4(w, w, y, w);
        
        /// Returns long4.aaga swizzling (equivalent to long4.wwyw).
        [Inline]
        public long4 aaga =>  long4(w, w, y, w);
        
        /// Returns long4.wwz swizzling.
        [Inline]
        public long3 wwz =>  long3(w, w, z);
        
        /// Returns long4.aab swizzling (equivalent to long4.wwz).
        [Inline]
        public long3 aab =>  long3(w, w, z);
        
        /// Returns long4.wwzx swizzling.
        [Inline]
        public long4 wwzx =>  long4(w, w, z, x);
        
        /// Returns long4.aabr swizzling (equivalent to long4.wwzx).
        [Inline]
        public long4 aabr =>  long4(w, w, z, x);
        
        /// Returns long4.wwzy swizzling.
        [Inline]
        public long4 wwzy =>  long4(w, w, z, y);
        
        /// Returns long4.aabg swizzling (equivalent to long4.wwzy).
        [Inline]
        public long4 aabg =>  long4(w, w, z, y);
        
        /// Returns long4.wwzz swizzling.
        [Inline]
        public long4 wwzz =>  long4(w, w, z, z);
        
        /// Returns long4.aabb swizzling (equivalent to long4.wwzz).
        [Inline]
        public long4 aabb =>  long4(w, w, z, z);
        
        /// Returns long4.wwzw swizzling.
        [Inline]
        public long4 wwzw =>  long4(w, w, z, w);
        
        /// Returns long4.aaba swizzling (equivalent to long4.wwzw).
        [Inline]
        public long4 aaba =>  long4(w, w, z, w);
        
        /// Returns long4.www swizzling.
        [Inline]
        public long3 www =>  long3(w, w, w);
        
        /// Returns long4.aaa swizzling (equivalent to long4.www).
        [Inline]
        public long3 aaa =>  long3(w, w, w);
        
        /// Returns long4.wwwx swizzling.
        [Inline]
        public long4 wwwx =>  long4(w, w, w, x);
        
        /// Returns long4.aaar swizzling (equivalent to long4.wwwx).
        [Inline]
        public long4 aaar =>  long4(w, w, w, x);
        
        /// Returns long4.wwwy swizzling.
        [Inline]
        public long4 wwwy =>  long4(w, w, w, y);
        
        /// Returns long4.aaag swizzling (equivalent to long4.wwwy).
        [Inline]
        public long4 aaag =>  long4(w, w, w, y);
        
        /// Returns long4.wwwz swizzling.
        [Inline]
        public long4 wwwz =>  long4(w, w, w, z);
        
        /// Returns long4.aaab swizzling (equivalent to long4.wwwz).
        [Inline]
        public long4 aaab =>  long4(w, w, w, z);
        
        /// Returns long4.wwww swizzling.
        [Inline]
        public long4 wwww =>  long4(w, w, w, w);
        
        /// Returns long4.aaaa swizzling (equivalent to long4.wwww).
        [Inline]
        public long4 aaaa =>  long4(w, w, w, w);

        #endregion

    }
}
