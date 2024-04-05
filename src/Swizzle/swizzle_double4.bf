using System;
namespace glm
{
    
    /// Temporary vector of type double with 4 components, used for implementing swizzling for double4.
    public struct swizzle_double4
    {

        #region Fields
        
        /// x-component
        private readonly double x;
        
        /// y-component
        private readonly double y;
        
        /// z-component
        private readonly double z;
        
        /// w-component
        private readonly double w;

        #endregion


        #region Properties
        
        /// Returns double4.xx swizzling.
        [Inline]
        public double2 xx =>  double2(x, x);
        
        /// Returns double4.rr swizzling (equivalent to double4.xx).
        [Inline]
        public double2 rr =>  double2(x, x);
        
        /// Returns double4.xxx swizzling.
        [Inline]
        public double3 xxx =>  double3(x, x, x);
        
        /// Returns double4.rrr swizzling (equivalent to double4.xxx).
        [Inline]
        public double3 rrr =>  double3(x, x, x);
        
        /// Returns double4.xxxx swizzling.
        [Inline]
        public double4 xxxx =>  double4(x, x, x, x);
        
        /// Returns double4.rrrr swizzling (equivalent to double4.xxxx).
        [Inline]
        public double4 rrrr =>  double4(x, x, x, x);
        
        /// Returns double4.xxxy swizzling.
        [Inline]
        public double4 xxxy =>  double4(x, x, x, y);
        
        /// Returns double4.rrrg swizzling (equivalent to double4.xxxy).
        [Inline]
        public double4 rrrg =>  double4(x, x, x, y);
        
        /// Returns double4.xxxz swizzling.
        [Inline]
        public double4 xxxz =>  double4(x, x, x, z);
        
        /// Returns double4.rrrb swizzling (equivalent to double4.xxxz).
        [Inline]
        public double4 rrrb =>  double4(x, x, x, z);
        
        /// Returns double4.xxxw swizzling.
        [Inline]
        public double4 xxxw =>  double4(x, x, x, w);
        
        /// Returns double4.rrra swizzling (equivalent to double4.xxxw).
        [Inline]
        public double4 rrra =>  double4(x, x, x, w);
        
        /// Returns double4.xxy swizzling.
        [Inline]
        public double3 xxy =>  double3(x, x, y);
        
        /// Returns double4.rrg swizzling (equivalent to double4.xxy).
        [Inline]
        public double3 rrg =>  double3(x, x, y);
        
        /// Returns double4.xxyx swizzling.
        [Inline]
        public double4 xxyx =>  double4(x, x, y, x);
        
        /// Returns double4.rrgr swizzling (equivalent to double4.xxyx).
        [Inline]
        public double4 rrgr =>  double4(x, x, y, x);
        
        /// Returns double4.xxyy swizzling.
        [Inline]
        public double4 xxyy =>  double4(x, x, y, y);
        
        /// Returns double4.rrgg swizzling (equivalent to double4.xxyy).
        [Inline]
        public double4 rrgg =>  double4(x, x, y, y);
        
        /// Returns double4.xxyz swizzling.
        [Inline]
        public double4 xxyz =>  double4(x, x, y, z);
        
        /// Returns double4.rrgb swizzling (equivalent to double4.xxyz).
        [Inline]
        public double4 rrgb =>  double4(x, x, y, z);
        
        /// Returns double4.xxyw swizzling.
        [Inline]
        public double4 xxyw =>  double4(x, x, y, w);
        
        /// Returns double4.rrga swizzling (equivalent to double4.xxyw).
        [Inline]
        public double4 rrga =>  double4(x, x, y, w);
        
        /// Returns double4.xxz swizzling.
        [Inline]
        public double3 xxz =>  double3(x, x, z);
        
        /// Returns double4.rrb swizzling (equivalent to double4.xxz).
        [Inline]
        public double3 rrb =>  double3(x, x, z);
        
        /// Returns double4.xxzx swizzling.
        [Inline]
        public double4 xxzx =>  double4(x, x, z, x);
        
        /// Returns double4.rrbr swizzling (equivalent to double4.xxzx).
        [Inline]
        public double4 rrbr =>  double4(x, x, z, x);
        
        /// Returns double4.xxzy swizzling.
        [Inline]
        public double4 xxzy =>  double4(x, x, z, y);
        
        /// Returns double4.rrbg swizzling (equivalent to double4.xxzy).
        [Inline]
        public double4 rrbg =>  double4(x, x, z, y);
        
        /// Returns double4.xxzz swizzling.
        [Inline]
        public double4 xxzz =>  double4(x, x, z, z);
        
        /// Returns double4.rrbb swizzling (equivalent to double4.xxzz).
        [Inline]
        public double4 rrbb =>  double4(x, x, z, z);
        
        /// Returns double4.xxzw swizzling.
        [Inline]
        public double4 xxzw =>  double4(x, x, z, w);
        
        /// Returns double4.rrba swizzling (equivalent to double4.xxzw).
        [Inline]
        public double4 rrba =>  double4(x, x, z, w);
        
        /// Returns double4.xxw swizzling.
        [Inline]
        public double3 xxw =>  double3(x, x, w);
        
        /// Returns double4.rra swizzling (equivalent to double4.xxw).
        [Inline]
        public double3 rra =>  double3(x, x, w);
        
        /// Returns double4.xxwx swizzling.
        [Inline]
        public double4 xxwx =>  double4(x, x, w, x);
        
        /// Returns double4.rrar swizzling (equivalent to double4.xxwx).
        [Inline]
        public double4 rrar =>  double4(x, x, w, x);
        
        /// Returns double4.xxwy swizzling.
        [Inline]
        public double4 xxwy =>  double4(x, x, w, y);
        
        /// Returns double4.rrag swizzling (equivalent to double4.xxwy).
        [Inline]
        public double4 rrag =>  double4(x, x, w, y);
        
        /// Returns double4.xxwz swizzling.
        [Inline]
        public double4 xxwz =>  double4(x, x, w, z);
        
        /// Returns double4.rrab swizzling (equivalent to double4.xxwz).
        [Inline]
        public double4 rrab =>  double4(x, x, w, z);
        
        /// Returns double4.xxww swizzling.
        [Inline]
        public double4 xxww =>  double4(x, x, w, w);
        
        /// Returns double4.rraa swizzling (equivalent to double4.xxww).
        [Inline]
        public double4 rraa =>  double4(x, x, w, w);
        
        /// Returns double4.xy swizzling.
        [Inline]
        public double2 xy =>  double2(x, y);
        
        /// Returns double4.rg swizzling (equivalent to double4.xy).
        [Inline]
        public double2 rg =>  double2(x, y);
        
        /// Returns double4.xyx swizzling.
        [Inline]
        public double3 xyx =>  double3(x, y, x);
        
        /// Returns double4.rgr swizzling (equivalent to double4.xyx).
        [Inline]
        public double3 rgr =>  double3(x, y, x);
        
        /// Returns double4.xyxx swizzling.
        [Inline]
        public double4 xyxx =>  double4(x, y, x, x);
        
        /// Returns double4.rgrr swizzling (equivalent to double4.xyxx).
        [Inline]
        public double4 rgrr =>  double4(x, y, x, x);
        
        /// Returns double4.xyxy swizzling.
        [Inline]
        public double4 xyxy =>  double4(x, y, x, y);
        
        /// Returns double4.rgrg swizzling (equivalent to double4.xyxy).
        [Inline]
        public double4 rgrg =>  double4(x, y, x, y);
        
        /// Returns double4.xyxz swizzling.
        [Inline]
        public double4 xyxz =>  double4(x, y, x, z);
        
        /// Returns double4.rgrb swizzling (equivalent to double4.xyxz).
        [Inline]
        public double4 rgrb =>  double4(x, y, x, z);
        
        /// Returns double4.xyxw swizzling.
        [Inline]
        public double4 xyxw =>  double4(x, y, x, w);
        
        /// Returns double4.rgra swizzling (equivalent to double4.xyxw).
        [Inline]
        public double4 rgra =>  double4(x, y, x, w);
        
        /// Returns double4.xyy swizzling.
        [Inline]
        public double3 xyy =>  double3(x, y, y);
        
        /// Returns double4.rgg swizzling (equivalent to double4.xyy).
        [Inline]
        public double3 rgg =>  double3(x, y, y);
        
        /// Returns double4.xyyx swizzling.
        [Inline]
        public double4 xyyx =>  double4(x, y, y, x);
        
        /// Returns double4.rggr swizzling (equivalent to double4.xyyx).
        [Inline]
        public double4 rggr =>  double4(x, y, y, x);
        
        /// Returns double4.xyyy swizzling.
        [Inline]
        public double4 xyyy =>  double4(x, y, y, y);
        
        /// Returns double4.rggg swizzling (equivalent to double4.xyyy).
        [Inline]
        public double4 rggg =>  double4(x, y, y, y);
        
        /// Returns double4.xyyz swizzling.
        [Inline]
        public double4 xyyz =>  double4(x, y, y, z);
        
        /// Returns double4.rggb swizzling (equivalent to double4.xyyz).
        [Inline]
        public double4 rggb =>  double4(x, y, y, z);
        
        /// Returns double4.xyyw swizzling.
        [Inline]
        public double4 xyyw =>  double4(x, y, y, w);
        
        /// Returns double4.rgga swizzling (equivalent to double4.xyyw).
        [Inline]
        public double4 rgga =>  double4(x, y, y, w);
        
        /// Returns double4.xyz swizzling.
        [Inline]
        public double3 xyz =>  double3(x, y, z);
        
        /// Returns double4.rgb swizzling (equivalent to double4.xyz).
        [Inline]
        public double3 rgb =>  double3(x, y, z);
        
        /// Returns double4.xyzx swizzling.
        [Inline]
        public double4 xyzx =>  double4(x, y, z, x);
        
        /// Returns double4.rgbr swizzling (equivalent to double4.xyzx).
        [Inline]
        public double4 rgbr =>  double4(x, y, z, x);
        
        /// Returns double4.xyzy swizzling.
        [Inline]
        public double4 xyzy =>  double4(x, y, z, y);
        
        /// Returns double4.rgbg swizzling (equivalent to double4.xyzy).
        [Inline]
        public double4 rgbg =>  double4(x, y, z, y);
        
        /// Returns double4.xyzz swizzling.
        [Inline]
        public double4 xyzz =>  double4(x, y, z, z);
        
        /// Returns double4.rgbb swizzling (equivalent to double4.xyzz).
        [Inline]
        public double4 rgbb =>  double4(x, y, z, z);
        
        /// Returns double4.xyzw swizzling.
        [Inline]
        public double4 xyzw =>  double4(x, y, z, w);
        
        /// Returns double4.rgba swizzling (equivalent to double4.xyzw).
        [Inline]
        public double4 rgba =>  double4(x, y, z, w);
        
        /// Returns double4.xyw swizzling.
        [Inline]
        public double3 xyw =>  double3(x, y, w);
        
        /// Returns double4.rga swizzling (equivalent to double4.xyw).
        [Inline]
        public double3 rga =>  double3(x, y, w);
        
        /// Returns double4.xywx swizzling.
        [Inline]
        public double4 xywx =>  double4(x, y, w, x);
        
        /// Returns double4.rgar swizzling (equivalent to double4.xywx).
        [Inline]
        public double4 rgar =>  double4(x, y, w, x);
        
        /// Returns double4.xywy swizzling.
        [Inline]
        public double4 xywy =>  double4(x, y, w, y);
        
        /// Returns double4.rgag swizzling (equivalent to double4.xywy).
        [Inline]
        public double4 rgag =>  double4(x, y, w, y);
        
        /// Returns double4.xywz swizzling.
        [Inline]
        public double4 xywz =>  double4(x, y, w, z);
        
        /// Returns double4.rgab swizzling (equivalent to double4.xywz).
        [Inline]
        public double4 rgab =>  double4(x, y, w, z);
        
        /// Returns double4.xyww swizzling.
        [Inline]
        public double4 xyww =>  double4(x, y, w, w);
        
        /// Returns double4.rgaa swizzling (equivalent to double4.xyww).
        [Inline]
        public double4 rgaa =>  double4(x, y, w, w);
        
        /// Returns double4.xz swizzling.
        [Inline]
        public double2 xz =>  double2(x, z);
        
        /// Returns double4.rb swizzling (equivalent to double4.xz).
        [Inline]
        public double2 rb =>  double2(x, z);
        
        /// Returns double4.xzx swizzling.
        [Inline]
        public double3 xzx =>  double3(x, z, x);
        
        /// Returns double4.rbr swizzling (equivalent to double4.xzx).
        [Inline]
        public double3 rbr =>  double3(x, z, x);
        
        /// Returns double4.xzxx swizzling.
        [Inline]
        public double4 xzxx =>  double4(x, z, x, x);
        
        /// Returns double4.rbrr swizzling (equivalent to double4.xzxx).
        [Inline]
        public double4 rbrr =>  double4(x, z, x, x);
        
        /// Returns double4.xzxy swizzling.
        [Inline]
        public double4 xzxy =>  double4(x, z, x, y);
        
        /// Returns double4.rbrg swizzling (equivalent to double4.xzxy).
        [Inline]
        public double4 rbrg =>  double4(x, z, x, y);
        
        /// Returns double4.xzxz swizzling.
        [Inline]
        public double4 xzxz =>  double4(x, z, x, z);
        
        /// Returns double4.rbrb swizzling (equivalent to double4.xzxz).
        [Inline]
        public double4 rbrb =>  double4(x, z, x, z);
        
        /// Returns double4.xzxw swizzling.
        [Inline]
        public double4 xzxw =>  double4(x, z, x, w);
        
        /// Returns double4.rbra swizzling (equivalent to double4.xzxw).
        [Inline]
        public double4 rbra =>  double4(x, z, x, w);
        
        /// Returns double4.xzy swizzling.
        [Inline]
        public double3 xzy =>  double3(x, z, y);
        
        /// Returns double4.rbg swizzling (equivalent to double4.xzy).
        [Inline]
        public double3 rbg =>  double3(x, z, y);
        
        /// Returns double4.xzyx swizzling.
        [Inline]
        public double4 xzyx =>  double4(x, z, y, x);
        
        /// Returns double4.rbgr swizzling (equivalent to double4.xzyx).
        [Inline]
        public double4 rbgr =>  double4(x, z, y, x);
        
        /// Returns double4.xzyy swizzling.
        [Inline]
        public double4 xzyy =>  double4(x, z, y, y);
        
        /// Returns double4.rbgg swizzling (equivalent to double4.xzyy).
        [Inline]
        public double4 rbgg =>  double4(x, z, y, y);
        
        /// Returns double4.xzyz swizzling.
        [Inline]
        public double4 xzyz =>  double4(x, z, y, z);
        
        /// Returns double4.rbgb swizzling (equivalent to double4.xzyz).
        [Inline]
        public double4 rbgb =>  double4(x, z, y, z);
        
        /// Returns double4.xzyw swizzling.
        [Inline]
        public double4 xzyw =>  double4(x, z, y, w);
        
        /// Returns double4.rbga swizzling (equivalent to double4.xzyw).
        [Inline]
        public double4 rbga =>  double4(x, z, y, w);
        
        /// Returns double4.xzz swizzling.
        [Inline]
        public double3 xzz =>  double3(x, z, z);
        
        /// Returns double4.rbb swizzling (equivalent to double4.xzz).
        [Inline]
        public double3 rbb =>  double3(x, z, z);
        
        /// Returns double4.xzzx swizzling.
        [Inline]
        public double4 xzzx =>  double4(x, z, z, x);
        
        /// Returns double4.rbbr swizzling (equivalent to double4.xzzx).
        [Inline]
        public double4 rbbr =>  double4(x, z, z, x);
        
        /// Returns double4.xzzy swizzling.
        [Inline]
        public double4 xzzy =>  double4(x, z, z, y);
        
        /// Returns double4.rbbg swizzling (equivalent to double4.xzzy).
        [Inline]
        public double4 rbbg =>  double4(x, z, z, y);
        
        /// Returns double4.xzzz swizzling.
        [Inline]
        public double4 xzzz =>  double4(x, z, z, z);
        
        /// Returns double4.rbbb swizzling (equivalent to double4.xzzz).
        [Inline]
        public double4 rbbb =>  double4(x, z, z, z);
        
        /// Returns double4.xzzw swizzling.
        [Inline]
        public double4 xzzw =>  double4(x, z, z, w);
        
        /// Returns double4.rbba swizzling (equivalent to double4.xzzw).
        [Inline]
        public double4 rbba =>  double4(x, z, z, w);
        
        /// Returns double4.xzw swizzling.
        [Inline]
        public double3 xzw =>  double3(x, z, w);
        
        /// Returns double4.rba swizzling (equivalent to double4.xzw).
        [Inline]
        public double3 rba =>  double3(x, z, w);
        
        /// Returns double4.xzwx swizzling.
        [Inline]
        public double4 xzwx =>  double4(x, z, w, x);
        
        /// Returns double4.rbar swizzling (equivalent to double4.xzwx).
        [Inline]
        public double4 rbar =>  double4(x, z, w, x);
        
        /// Returns double4.xzwy swizzling.
        [Inline]
        public double4 xzwy =>  double4(x, z, w, y);
        
        /// Returns double4.rbag swizzling (equivalent to double4.xzwy).
        [Inline]
        public double4 rbag =>  double4(x, z, w, y);
        
        /// Returns double4.xzwz swizzling.
        [Inline]
        public double4 xzwz =>  double4(x, z, w, z);
        
        /// Returns double4.rbab swizzling (equivalent to double4.xzwz).
        [Inline]
        public double4 rbab =>  double4(x, z, w, z);
        
        /// Returns double4.xzww swizzling.
        [Inline]
        public double4 xzww =>  double4(x, z, w, w);
        
        /// Returns double4.rbaa swizzling (equivalent to double4.xzww).
        [Inline]
        public double4 rbaa =>  double4(x, z, w, w);
        
        /// Returns double4.xw swizzling.
        [Inline]
        public double2 xw =>  double2(x, w);
        
        /// Returns double4.ra swizzling (equivalent to double4.xw).
        [Inline]
        public double2 ra =>  double2(x, w);
        
        /// Returns double4.xwx swizzling.
        [Inline]
        public double3 xwx =>  double3(x, w, x);
        
        /// Returns double4.rar swizzling (equivalent to double4.xwx).
        [Inline]
        public double3 rar =>  double3(x, w, x);
        
        /// Returns double4.xwxx swizzling.
        [Inline]
        public double4 xwxx =>  double4(x, w, x, x);
        
        /// Returns double4.rarr swizzling (equivalent to double4.xwxx).
        [Inline]
        public double4 rarr =>  double4(x, w, x, x);
        
        /// Returns double4.xwxy swizzling.
        [Inline]
        public double4 xwxy =>  double4(x, w, x, y);
        
        /// Returns double4.rarg swizzling (equivalent to double4.xwxy).
        [Inline]
        public double4 rarg =>  double4(x, w, x, y);
        
        /// Returns double4.xwxz swizzling.
        [Inline]
        public double4 xwxz =>  double4(x, w, x, z);
        
        /// Returns double4.rarb swizzling (equivalent to double4.xwxz).
        [Inline]
        public double4 rarb =>  double4(x, w, x, z);
        
        /// Returns double4.xwxw swizzling.
        [Inline]
        public double4 xwxw =>  double4(x, w, x, w);
        
        /// Returns double4.rara swizzling (equivalent to double4.xwxw).
        [Inline]
        public double4 rara =>  double4(x, w, x, w);
        
        /// Returns double4.xwy swizzling.
        [Inline]
        public double3 xwy =>  double3(x, w, y);
        
        /// Returns double4.rag swizzling (equivalent to double4.xwy).
        [Inline]
        public double3 rag =>  double3(x, w, y);
        
        /// Returns double4.xwyx swizzling.
        [Inline]
        public double4 xwyx =>  double4(x, w, y, x);
        
        /// Returns double4.ragr swizzling (equivalent to double4.xwyx).
        [Inline]
        public double4 ragr =>  double4(x, w, y, x);
        
        /// Returns double4.xwyy swizzling.
        [Inline]
        public double4 xwyy =>  double4(x, w, y, y);
        
        /// Returns double4.ragg swizzling (equivalent to double4.xwyy).
        [Inline]
        public double4 ragg =>  double4(x, w, y, y);
        
        /// Returns double4.xwyz swizzling.
        [Inline]
        public double4 xwyz =>  double4(x, w, y, z);
        
        /// Returns double4.ragb swizzling (equivalent to double4.xwyz).
        [Inline]
        public double4 ragb =>  double4(x, w, y, z);
        
        /// Returns double4.xwyw swizzling.
        [Inline]
        public double4 xwyw =>  double4(x, w, y, w);
        
        /// Returns double4.raga swizzling (equivalent to double4.xwyw).
        [Inline]
        public double4 raga =>  double4(x, w, y, w);
        
        /// Returns double4.xwz swizzling.
        [Inline]
        public double3 xwz =>  double3(x, w, z);
        
        /// Returns double4.rab swizzling (equivalent to double4.xwz).
        [Inline]
        public double3 rab =>  double3(x, w, z);
        
        /// Returns double4.xwzx swizzling.
        [Inline]
        public double4 xwzx =>  double4(x, w, z, x);
        
        /// Returns double4.rabr swizzling (equivalent to double4.xwzx).
        [Inline]
        public double4 rabr =>  double4(x, w, z, x);
        
        /// Returns double4.xwzy swizzling.
        [Inline]
        public double4 xwzy =>  double4(x, w, z, y);
        
        /// Returns double4.rabg swizzling (equivalent to double4.xwzy).
        [Inline]
        public double4 rabg =>  double4(x, w, z, y);
        
        /// Returns double4.xwzz swizzling.
        [Inline]
        public double4 xwzz =>  double4(x, w, z, z);
        
        /// Returns double4.rabb swizzling (equivalent to double4.xwzz).
        [Inline]
        public double4 rabb =>  double4(x, w, z, z);
        
        /// Returns double4.xwzw swizzling.
        [Inline]
        public double4 xwzw =>  double4(x, w, z, w);
        
        /// Returns double4.raba swizzling (equivalent to double4.xwzw).
        [Inline]
        public double4 raba =>  double4(x, w, z, w);
        
        /// Returns double4.xww swizzling.
        [Inline]
        public double3 xww =>  double3(x, w, w);
        
        /// Returns double4.raa swizzling (equivalent to double4.xww).
        [Inline]
        public double3 raa =>  double3(x, w, w);
        
        /// Returns double4.xwwx swizzling.
        [Inline]
        public double4 xwwx =>  double4(x, w, w, x);
        
        /// Returns double4.raar swizzling (equivalent to double4.xwwx).
        [Inline]
        public double4 raar =>  double4(x, w, w, x);
        
        /// Returns double4.xwwy swizzling.
        [Inline]
        public double4 xwwy =>  double4(x, w, w, y);
        
        /// Returns double4.raag swizzling (equivalent to double4.xwwy).
        [Inline]
        public double4 raag =>  double4(x, w, w, y);
        
        /// Returns double4.xwwz swizzling.
        [Inline]
        public double4 xwwz =>  double4(x, w, w, z);
        
        /// Returns double4.raab swizzling (equivalent to double4.xwwz).
        [Inline]
        public double4 raab =>  double4(x, w, w, z);
        
        /// Returns double4.xwww swizzling.
        [Inline]
        public double4 xwww =>  double4(x, w, w, w);
        
        /// Returns double4.raaa swizzling (equivalent to double4.xwww).
        [Inline]
        public double4 raaa =>  double4(x, w, w, w);
        
        /// Returns double4.yx swizzling.
        [Inline]
        public double2 yx =>  double2(y, x);
        
        /// Returns double4.gr swizzling (equivalent to double4.yx).
        [Inline]
        public double2 gr =>  double2(y, x);
        
        /// Returns double4.yxx swizzling.
        [Inline]
        public double3 yxx =>  double3(y, x, x);
        
        /// Returns double4.grr swizzling (equivalent to double4.yxx).
        [Inline]
        public double3 grr =>  double3(y, x, x);
        
        /// Returns double4.yxxx swizzling.
        [Inline]
        public double4 yxxx =>  double4(y, x, x, x);
        
        /// Returns double4.grrr swizzling (equivalent to double4.yxxx).
        [Inline]
        public double4 grrr =>  double4(y, x, x, x);
        
        /// Returns double4.yxxy swizzling.
        [Inline]
        public double4 yxxy =>  double4(y, x, x, y);
        
        /// Returns double4.grrg swizzling (equivalent to double4.yxxy).
        [Inline]
        public double4 grrg =>  double4(y, x, x, y);
        
        /// Returns double4.yxxz swizzling.
        [Inline]
        public double4 yxxz =>  double4(y, x, x, z);
        
        /// Returns double4.grrb swizzling (equivalent to double4.yxxz).
        [Inline]
        public double4 grrb =>  double4(y, x, x, z);
        
        /// Returns double4.yxxw swizzling.
        [Inline]
        public double4 yxxw =>  double4(y, x, x, w);
        
        /// Returns double4.grra swizzling (equivalent to double4.yxxw).
        [Inline]
        public double4 grra =>  double4(y, x, x, w);
        
        /// Returns double4.yxy swizzling.
        [Inline]
        public double3 yxy =>  double3(y, x, y);
        
        /// Returns double4.grg swizzling (equivalent to double4.yxy).
        [Inline]
        public double3 grg =>  double3(y, x, y);
        
        /// Returns double4.yxyx swizzling.
        [Inline]
        public double4 yxyx =>  double4(y, x, y, x);
        
        /// Returns double4.grgr swizzling (equivalent to double4.yxyx).
        [Inline]
        public double4 grgr =>  double4(y, x, y, x);
        
        /// Returns double4.yxyy swizzling.
        [Inline]
        public double4 yxyy =>  double4(y, x, y, y);
        
        /// Returns double4.grgg swizzling (equivalent to double4.yxyy).
        [Inline]
        public double4 grgg =>  double4(y, x, y, y);
        
        /// Returns double4.yxyz swizzling.
        [Inline]
        public double4 yxyz =>  double4(y, x, y, z);
        
        /// Returns double4.grgb swizzling (equivalent to double4.yxyz).
        [Inline]
        public double4 grgb =>  double4(y, x, y, z);
        
        /// Returns double4.yxyw swizzling.
        [Inline]
        public double4 yxyw =>  double4(y, x, y, w);
        
        /// Returns double4.grga swizzling (equivalent to double4.yxyw).
        [Inline]
        public double4 grga =>  double4(y, x, y, w);
        
        /// Returns double4.yxz swizzling.
        [Inline]
        public double3 yxz =>  double3(y, x, z);
        
        /// Returns double4.grb swizzling (equivalent to double4.yxz).
        [Inline]
        public double3 grb =>  double3(y, x, z);
        
        /// Returns double4.yxzx swizzling.
        [Inline]
        public double4 yxzx =>  double4(y, x, z, x);
        
        /// Returns double4.grbr swizzling (equivalent to double4.yxzx).
        [Inline]
        public double4 grbr =>  double4(y, x, z, x);
        
        /// Returns double4.yxzy swizzling.
        [Inline]
        public double4 yxzy =>  double4(y, x, z, y);
        
        /// Returns double4.grbg swizzling (equivalent to double4.yxzy).
        [Inline]
        public double4 grbg =>  double4(y, x, z, y);
        
        /// Returns double4.yxzz swizzling.
        [Inline]
        public double4 yxzz =>  double4(y, x, z, z);
        
        /// Returns double4.grbb swizzling (equivalent to double4.yxzz).
        [Inline]
        public double4 grbb =>  double4(y, x, z, z);
        
        /// Returns double4.yxzw swizzling.
        [Inline]
        public double4 yxzw =>  double4(y, x, z, w);
        
        /// Returns double4.grba swizzling (equivalent to double4.yxzw).
        [Inline]
        public double4 grba =>  double4(y, x, z, w);
        
        /// Returns double4.yxw swizzling.
        [Inline]
        public double3 yxw =>  double3(y, x, w);
        
        /// Returns double4.gra swizzling (equivalent to double4.yxw).
        [Inline]
        public double3 gra =>  double3(y, x, w);
        
        /// Returns double4.yxwx swizzling.
        [Inline]
        public double4 yxwx =>  double4(y, x, w, x);
        
        /// Returns double4.grar swizzling (equivalent to double4.yxwx).
        [Inline]
        public double4 grar =>  double4(y, x, w, x);
        
        /// Returns double4.yxwy swizzling.
        [Inline]
        public double4 yxwy =>  double4(y, x, w, y);
        
        /// Returns double4.grag swizzling (equivalent to double4.yxwy).
        [Inline]
        public double4 grag =>  double4(y, x, w, y);
        
        /// Returns double4.yxwz swizzling.
        [Inline]
        public double4 yxwz =>  double4(y, x, w, z);
        
        /// Returns double4.grab swizzling (equivalent to double4.yxwz).
        [Inline]
        public double4 grab =>  double4(y, x, w, z);
        
        /// Returns double4.yxww swizzling.
        [Inline]
        public double4 yxww =>  double4(y, x, w, w);
        
        /// Returns double4.graa swizzling (equivalent to double4.yxww).
        [Inline]
        public double4 graa =>  double4(y, x, w, w);
        
        /// Returns double4.yy swizzling.
        [Inline]
        public double2 yy =>  double2(y, y);
        
        /// Returns double4.gg swizzling (equivalent to double4.yy).
        [Inline]
        public double2 gg =>  double2(y, y);
        
        /// Returns double4.yyx swizzling.
        [Inline]
        public double3 yyx =>  double3(y, y, x);
        
        /// Returns double4.ggr swizzling (equivalent to double4.yyx).
        [Inline]
        public double3 ggr =>  double3(y, y, x);
        
        /// Returns double4.yyxx swizzling.
        [Inline]
        public double4 yyxx =>  double4(y, y, x, x);
        
        /// Returns double4.ggrr swizzling (equivalent to double4.yyxx).
        [Inline]
        public double4 ggrr =>  double4(y, y, x, x);
        
        /// Returns double4.yyxy swizzling.
        [Inline]
        public double4 yyxy =>  double4(y, y, x, y);
        
        /// Returns double4.ggrg swizzling (equivalent to double4.yyxy).
        [Inline]
        public double4 ggrg =>  double4(y, y, x, y);
        
        /// Returns double4.yyxz swizzling.
        [Inline]
        public double4 yyxz =>  double4(y, y, x, z);
        
        /// Returns double4.ggrb swizzling (equivalent to double4.yyxz).
        [Inline]
        public double4 ggrb =>  double4(y, y, x, z);
        
        /// Returns double4.yyxw swizzling.
        [Inline]
        public double4 yyxw =>  double4(y, y, x, w);
        
        /// Returns double4.ggra swizzling (equivalent to double4.yyxw).
        [Inline]
        public double4 ggra =>  double4(y, y, x, w);
        
        /// Returns double4.yyy swizzling.
        [Inline]
        public double3 yyy =>  double3(y, y, y);
        
        /// Returns double4.ggg swizzling (equivalent to double4.yyy).
        [Inline]
        public double3 ggg =>  double3(y, y, y);
        
        /// Returns double4.yyyx swizzling.
        [Inline]
        public double4 yyyx =>  double4(y, y, y, x);
        
        /// Returns double4.gggr swizzling (equivalent to double4.yyyx).
        [Inline]
        public double4 gggr =>  double4(y, y, y, x);
        
        /// Returns double4.yyyy swizzling.
        [Inline]
        public double4 yyyy =>  double4(y, y, y, y);
        
        /// Returns double4.gggg swizzling (equivalent to double4.yyyy).
        [Inline]
        public double4 gggg =>  double4(y, y, y, y);
        
        /// Returns double4.yyyz swizzling.
        [Inline]
        public double4 yyyz =>  double4(y, y, y, z);
        
        /// Returns double4.gggb swizzling (equivalent to double4.yyyz).
        [Inline]
        public double4 gggb =>  double4(y, y, y, z);
        
        /// Returns double4.yyyw swizzling.
        [Inline]
        public double4 yyyw =>  double4(y, y, y, w);
        
        /// Returns double4.ggga swizzling (equivalent to double4.yyyw).
        [Inline]
        public double4 ggga =>  double4(y, y, y, w);
        
        /// Returns double4.yyz swizzling.
        [Inline]
        public double3 yyz =>  double3(y, y, z);
        
        /// Returns double4.ggb swizzling (equivalent to double4.yyz).
        [Inline]
        public double3 ggb =>  double3(y, y, z);
        
        /// Returns double4.yyzx swizzling.
        [Inline]
        public double4 yyzx =>  double4(y, y, z, x);
        
        /// Returns double4.ggbr swizzling (equivalent to double4.yyzx).
        [Inline]
        public double4 ggbr =>  double4(y, y, z, x);
        
        /// Returns double4.yyzy swizzling.
        [Inline]
        public double4 yyzy =>  double4(y, y, z, y);
        
        /// Returns double4.ggbg swizzling (equivalent to double4.yyzy).
        [Inline]
        public double4 ggbg =>  double4(y, y, z, y);
        
        /// Returns double4.yyzz swizzling.
        [Inline]
        public double4 yyzz =>  double4(y, y, z, z);
        
        /// Returns double4.ggbb swizzling (equivalent to double4.yyzz).
        [Inline]
        public double4 ggbb =>  double4(y, y, z, z);
        
        /// Returns double4.yyzw swizzling.
        [Inline]
        public double4 yyzw =>  double4(y, y, z, w);
        
        /// Returns double4.ggba swizzling (equivalent to double4.yyzw).
        [Inline]
        public double4 ggba =>  double4(y, y, z, w);
        
        /// Returns double4.yyw swizzling.
        [Inline]
        public double3 yyw =>  double3(y, y, w);
        
        /// Returns double4.gga swizzling (equivalent to double4.yyw).
        [Inline]
        public double3 gga =>  double3(y, y, w);
        
        /// Returns double4.yywx swizzling.
        [Inline]
        public double4 yywx =>  double4(y, y, w, x);
        
        /// Returns double4.ggar swizzling (equivalent to double4.yywx).
        [Inline]
        public double4 ggar =>  double4(y, y, w, x);
        
        /// Returns double4.yywy swizzling.
        [Inline]
        public double4 yywy =>  double4(y, y, w, y);
        
        /// Returns double4.ggag swizzling (equivalent to double4.yywy).
        [Inline]
        public double4 ggag =>  double4(y, y, w, y);
        
        /// Returns double4.yywz swizzling.
        [Inline]
        public double4 yywz =>  double4(y, y, w, z);
        
        /// Returns double4.ggab swizzling (equivalent to double4.yywz).
        [Inline]
        public double4 ggab =>  double4(y, y, w, z);
        
        /// Returns double4.yyww swizzling.
        [Inline]
        public double4 yyww =>  double4(y, y, w, w);
        
        /// Returns double4.ggaa swizzling (equivalent to double4.yyww).
        [Inline]
        public double4 ggaa =>  double4(y, y, w, w);
        
        /// Returns double4.yz swizzling.
        [Inline]
        public double2 yz =>  double2(y, z);
        
        /// Returns double4.gb swizzling (equivalent to double4.yz).
        [Inline]
        public double2 gb =>  double2(y, z);
        
        /// Returns double4.yzx swizzling.
        [Inline]
        public double3 yzx =>  double3(y, z, x);
        
        /// Returns double4.gbr swizzling (equivalent to double4.yzx).
        [Inline]
        public double3 gbr =>  double3(y, z, x);
        
        /// Returns double4.yzxx swizzling.
        [Inline]
        public double4 yzxx =>  double4(y, z, x, x);
        
        /// Returns double4.gbrr swizzling (equivalent to double4.yzxx).
        [Inline]
        public double4 gbrr =>  double4(y, z, x, x);
        
        /// Returns double4.yzxy swizzling.
        [Inline]
        public double4 yzxy =>  double4(y, z, x, y);
        
        /// Returns double4.gbrg swizzling (equivalent to double4.yzxy).
        [Inline]
        public double4 gbrg =>  double4(y, z, x, y);
        
        /// Returns double4.yzxz swizzling.
        [Inline]
        public double4 yzxz =>  double4(y, z, x, z);
        
        /// Returns double4.gbrb swizzling (equivalent to double4.yzxz).
        [Inline]
        public double4 gbrb =>  double4(y, z, x, z);
        
        /// Returns double4.yzxw swizzling.
        [Inline]
        public double4 yzxw =>  double4(y, z, x, w);
        
        /// Returns double4.gbra swizzling (equivalent to double4.yzxw).
        [Inline]
        public double4 gbra =>  double4(y, z, x, w);
        
        /// Returns double4.yzy swizzling.
        [Inline]
        public double3 yzy =>  double3(y, z, y);
        
        /// Returns double4.gbg swizzling (equivalent to double4.yzy).
        [Inline]
        public double3 gbg =>  double3(y, z, y);
        
        /// Returns double4.yzyx swizzling.
        [Inline]
        public double4 yzyx =>  double4(y, z, y, x);
        
        /// Returns double4.gbgr swizzling (equivalent to double4.yzyx).
        [Inline]
        public double4 gbgr =>  double4(y, z, y, x);
        
        /// Returns double4.yzyy swizzling.
        [Inline]
        public double4 yzyy =>  double4(y, z, y, y);
        
        /// Returns double4.gbgg swizzling (equivalent to double4.yzyy).
        [Inline]
        public double4 gbgg =>  double4(y, z, y, y);
        
        /// Returns double4.yzyz swizzling.
        [Inline]
        public double4 yzyz =>  double4(y, z, y, z);
        
        /// Returns double4.gbgb swizzling (equivalent to double4.yzyz).
        [Inline]
        public double4 gbgb =>  double4(y, z, y, z);
        
        /// Returns double4.yzyw swizzling.
        [Inline]
        public double4 yzyw =>  double4(y, z, y, w);
        
        /// Returns double4.gbga swizzling (equivalent to double4.yzyw).
        [Inline]
        public double4 gbga =>  double4(y, z, y, w);
        
        /// Returns double4.yzz swizzling.
        [Inline]
        public double3 yzz =>  double3(y, z, z);
        
        /// Returns double4.gbb swizzling (equivalent to double4.yzz).
        [Inline]
        public double3 gbb =>  double3(y, z, z);
        
        /// Returns double4.yzzx swizzling.
        [Inline]
        public double4 yzzx =>  double4(y, z, z, x);
        
        /// Returns double4.gbbr swizzling (equivalent to double4.yzzx).
        [Inline]
        public double4 gbbr =>  double4(y, z, z, x);
        
        /// Returns double4.yzzy swizzling.
        [Inline]
        public double4 yzzy =>  double4(y, z, z, y);
        
        /// Returns double4.gbbg swizzling (equivalent to double4.yzzy).
        [Inline]
        public double4 gbbg =>  double4(y, z, z, y);
        
        /// Returns double4.yzzz swizzling.
        [Inline]
        public double4 yzzz =>  double4(y, z, z, z);
        
        /// Returns double4.gbbb swizzling (equivalent to double4.yzzz).
        [Inline]
        public double4 gbbb =>  double4(y, z, z, z);
        
        /// Returns double4.yzzw swizzling.
        [Inline]
        public double4 yzzw =>  double4(y, z, z, w);
        
        /// Returns double4.gbba swizzling (equivalent to double4.yzzw).
        [Inline]
        public double4 gbba =>  double4(y, z, z, w);
        
        /// Returns double4.yzw swizzling.
        [Inline]
        public double3 yzw =>  double3(y, z, w);
        
        /// Returns double4.gba swizzling (equivalent to double4.yzw).
        [Inline]
        public double3 gba =>  double3(y, z, w);
        
        /// Returns double4.yzwx swizzling.
        [Inline]
        public double4 yzwx =>  double4(y, z, w, x);
        
        /// Returns double4.gbar swizzling (equivalent to double4.yzwx).
        [Inline]
        public double4 gbar =>  double4(y, z, w, x);
        
        /// Returns double4.yzwy swizzling.
        [Inline]
        public double4 yzwy =>  double4(y, z, w, y);
        
        /// Returns double4.gbag swizzling (equivalent to double4.yzwy).
        [Inline]
        public double4 gbag =>  double4(y, z, w, y);
        
        /// Returns double4.yzwz swizzling.
        [Inline]
        public double4 yzwz =>  double4(y, z, w, z);
        
        /// Returns double4.gbab swizzling (equivalent to double4.yzwz).
        [Inline]
        public double4 gbab =>  double4(y, z, w, z);
        
        /// Returns double4.yzww swizzling.
        [Inline]
        public double4 yzww =>  double4(y, z, w, w);
        
        /// Returns double4.gbaa swizzling (equivalent to double4.yzww).
        [Inline]
        public double4 gbaa =>  double4(y, z, w, w);
        
        /// Returns double4.yw swizzling.
        [Inline]
        public double2 yw =>  double2(y, w);
        
        /// Returns double4.ga swizzling (equivalent to double4.yw).
        [Inline]
        public double2 ga =>  double2(y, w);
        
        /// Returns double4.ywx swizzling.
        [Inline]
        public double3 ywx =>  double3(y, w, x);
        
        /// Returns double4.gar swizzling (equivalent to double4.ywx).
        [Inline]
        public double3 gar =>  double3(y, w, x);
        
        /// Returns double4.ywxx swizzling.
        [Inline]
        public double4 ywxx =>  double4(y, w, x, x);
        
        /// Returns double4.garr swizzling (equivalent to double4.ywxx).
        [Inline]
        public double4 garr =>  double4(y, w, x, x);
        
        /// Returns double4.ywxy swizzling.
        [Inline]
        public double4 ywxy =>  double4(y, w, x, y);
        
        /// Returns double4.garg swizzling (equivalent to double4.ywxy).
        [Inline]
        public double4 garg =>  double4(y, w, x, y);
        
        /// Returns double4.ywxz swizzling.
        [Inline]
        public double4 ywxz =>  double4(y, w, x, z);
        
        /// Returns double4.garb swizzling (equivalent to double4.ywxz).
        [Inline]
        public double4 garb =>  double4(y, w, x, z);
        
        /// Returns double4.ywxw swizzling.
        [Inline]
        public double4 ywxw =>  double4(y, w, x, w);
        
        /// Returns double4.gara swizzling (equivalent to double4.ywxw).
        [Inline]
        public double4 gara =>  double4(y, w, x, w);
        
        /// Returns double4.ywy swizzling.
        [Inline]
        public double3 ywy =>  double3(y, w, y);
        
        /// Returns double4.gag swizzling (equivalent to double4.ywy).
        [Inline]
        public double3 gag =>  double3(y, w, y);
        
        /// Returns double4.ywyx swizzling.
        [Inline]
        public double4 ywyx =>  double4(y, w, y, x);
        
        /// Returns double4.gagr swizzling (equivalent to double4.ywyx).
        [Inline]
        public double4 gagr =>  double4(y, w, y, x);
        
        /// Returns double4.ywyy swizzling.
        [Inline]
        public double4 ywyy =>  double4(y, w, y, y);
        
        /// Returns double4.gagg swizzling (equivalent to double4.ywyy).
        [Inline]
        public double4 gagg =>  double4(y, w, y, y);
        
        /// Returns double4.ywyz swizzling.
        [Inline]
        public double4 ywyz =>  double4(y, w, y, z);
        
        /// Returns double4.gagb swizzling (equivalent to double4.ywyz).
        [Inline]
        public double4 gagb =>  double4(y, w, y, z);
        
        /// Returns double4.ywyw swizzling.
        [Inline]
        public double4 ywyw =>  double4(y, w, y, w);
        
        /// Returns double4.gaga swizzling (equivalent to double4.ywyw).
        [Inline]
        public double4 gaga =>  double4(y, w, y, w);
        
        /// Returns double4.ywz swizzling.
        [Inline]
        public double3 ywz =>  double3(y, w, z);
        
        /// Returns double4.gab swizzling (equivalent to double4.ywz).
        [Inline]
        public double3 gab =>  double3(y, w, z);
        
        /// Returns double4.ywzx swizzling.
        [Inline]
        public double4 ywzx =>  double4(y, w, z, x);
        
        /// Returns double4.gabr swizzling (equivalent to double4.ywzx).
        [Inline]
        public double4 gabr =>  double4(y, w, z, x);
        
        /// Returns double4.ywzy swizzling.
        [Inline]
        public double4 ywzy =>  double4(y, w, z, y);
        
        /// Returns double4.gabg swizzling (equivalent to double4.ywzy).
        [Inline]
        public double4 gabg =>  double4(y, w, z, y);
        
        /// Returns double4.ywzz swizzling.
        [Inline]
        public double4 ywzz =>  double4(y, w, z, z);
        
        /// Returns double4.gabb swizzling (equivalent to double4.ywzz).
        [Inline]
        public double4 gabb =>  double4(y, w, z, z);
        
        /// Returns double4.ywzw swizzling.
        [Inline]
        public double4 ywzw =>  double4(y, w, z, w);
        
        /// Returns double4.gaba swizzling (equivalent to double4.ywzw).
        [Inline]
        public double4 gaba =>  double4(y, w, z, w);
        
        /// Returns double4.yww swizzling.
        [Inline]
        public double3 yww =>  double3(y, w, w);
        
        /// Returns double4.gaa swizzling (equivalent to double4.yww).
        [Inline]
        public double3 gaa =>  double3(y, w, w);
        
        /// Returns double4.ywwx swizzling.
        [Inline]
        public double4 ywwx =>  double4(y, w, w, x);
        
        /// Returns double4.gaar swizzling (equivalent to double4.ywwx).
        [Inline]
        public double4 gaar =>  double4(y, w, w, x);
        
        /// Returns double4.ywwy swizzling.
        [Inline]
        public double4 ywwy =>  double4(y, w, w, y);
        
        /// Returns double4.gaag swizzling (equivalent to double4.ywwy).
        [Inline]
        public double4 gaag =>  double4(y, w, w, y);
        
        /// Returns double4.ywwz swizzling.
        [Inline]
        public double4 ywwz =>  double4(y, w, w, z);
        
        /// Returns double4.gaab swizzling (equivalent to double4.ywwz).
        [Inline]
        public double4 gaab =>  double4(y, w, w, z);
        
        /// Returns double4.ywww swizzling.
        [Inline]
        public double4 ywww =>  double4(y, w, w, w);
        
        /// Returns double4.gaaa swizzling (equivalent to double4.ywww).
        [Inline]
        public double4 gaaa =>  double4(y, w, w, w);
        
        /// Returns double4.zx swizzling.
        [Inline]
        public double2 zx =>  double2(z, x);
        
        /// Returns double4.br swizzling (equivalent to double4.zx).
        [Inline]
        public double2 br =>  double2(z, x);
        
        /// Returns double4.zxx swizzling.
        [Inline]
        public double3 zxx =>  double3(z, x, x);
        
        /// Returns double4.brr swizzling (equivalent to double4.zxx).
        [Inline]
        public double3 brr =>  double3(z, x, x);
        
        /// Returns double4.zxxx swizzling.
        [Inline]
        public double4 zxxx =>  double4(z, x, x, x);
        
        /// Returns double4.brrr swizzling (equivalent to double4.zxxx).
        [Inline]
        public double4 brrr =>  double4(z, x, x, x);
        
        /// Returns double4.zxxy swizzling.
        [Inline]
        public double4 zxxy =>  double4(z, x, x, y);
        
        /// Returns double4.brrg swizzling (equivalent to double4.zxxy).
        [Inline]
        public double4 brrg =>  double4(z, x, x, y);
        
        /// Returns double4.zxxz swizzling.
        [Inline]
        public double4 zxxz =>  double4(z, x, x, z);
        
        /// Returns double4.brrb swizzling (equivalent to double4.zxxz).
        [Inline]
        public double4 brrb =>  double4(z, x, x, z);
        
        /// Returns double4.zxxw swizzling.
        [Inline]
        public double4 zxxw =>  double4(z, x, x, w);
        
        /// Returns double4.brra swizzling (equivalent to double4.zxxw).
        [Inline]
        public double4 brra =>  double4(z, x, x, w);
        
        /// Returns double4.zxy swizzling.
        [Inline]
        public double3 zxy =>  double3(z, x, y);
        
        /// Returns double4.brg swizzling (equivalent to double4.zxy).
        [Inline]
        public double3 brg =>  double3(z, x, y);
        
        /// Returns double4.zxyx swizzling.
        [Inline]
        public double4 zxyx =>  double4(z, x, y, x);
        
        /// Returns double4.brgr swizzling (equivalent to double4.zxyx).
        [Inline]
        public double4 brgr =>  double4(z, x, y, x);
        
        /// Returns double4.zxyy swizzling.
        [Inline]
        public double4 zxyy =>  double4(z, x, y, y);
        
        /// Returns double4.brgg swizzling (equivalent to double4.zxyy).
        [Inline]
        public double4 brgg =>  double4(z, x, y, y);
        
        /// Returns double4.zxyz swizzling.
        [Inline]
        public double4 zxyz =>  double4(z, x, y, z);
        
        /// Returns double4.brgb swizzling (equivalent to double4.zxyz).
        [Inline]
        public double4 brgb =>  double4(z, x, y, z);
        
        /// Returns double4.zxyw swizzling.
        [Inline]
        public double4 zxyw =>  double4(z, x, y, w);
        
        /// Returns double4.brga swizzling (equivalent to double4.zxyw).
        [Inline]
        public double4 brga =>  double4(z, x, y, w);
        
        /// Returns double4.zxz swizzling.
        [Inline]
        public double3 zxz =>  double3(z, x, z);
        
        /// Returns double4.brb swizzling (equivalent to double4.zxz).
        [Inline]
        public double3 brb =>  double3(z, x, z);
        
        /// Returns double4.zxzx swizzling.
        [Inline]
        public double4 zxzx =>  double4(z, x, z, x);
        
        /// Returns double4.brbr swizzling (equivalent to double4.zxzx).
        [Inline]
        public double4 brbr =>  double4(z, x, z, x);
        
        /// Returns double4.zxzy swizzling.
        [Inline]
        public double4 zxzy =>  double4(z, x, z, y);
        
        /// Returns double4.brbg swizzling (equivalent to double4.zxzy).
        [Inline]
        public double4 brbg =>  double4(z, x, z, y);
        
        /// Returns double4.zxzz swizzling.
        [Inline]
        public double4 zxzz =>  double4(z, x, z, z);
        
        /// Returns double4.brbb swizzling (equivalent to double4.zxzz).
        [Inline]
        public double4 brbb =>  double4(z, x, z, z);
        
        /// Returns double4.zxzw swizzling.
        [Inline]
        public double4 zxzw =>  double4(z, x, z, w);
        
        /// Returns double4.brba swizzling (equivalent to double4.zxzw).
        [Inline]
        public double4 brba =>  double4(z, x, z, w);
        
        /// Returns double4.zxw swizzling.
        [Inline]
        public double3 zxw =>  double3(z, x, w);
        
        /// Returns double4.bra swizzling (equivalent to double4.zxw).
        [Inline]
        public double3 bra =>  double3(z, x, w);
        
        /// Returns double4.zxwx swizzling.
        [Inline]
        public double4 zxwx =>  double4(z, x, w, x);
        
        /// Returns double4.brar swizzling (equivalent to double4.zxwx).
        [Inline]
        public double4 brar =>  double4(z, x, w, x);
        
        /// Returns double4.zxwy swizzling.
        [Inline]
        public double4 zxwy =>  double4(z, x, w, y);
        
        /// Returns double4.brag swizzling (equivalent to double4.zxwy).
        [Inline]
        public double4 brag =>  double4(z, x, w, y);
        
        /// Returns double4.zxwz swizzling.
        [Inline]
        public double4 zxwz =>  double4(z, x, w, z);
        
        /// Returns double4.brab swizzling (equivalent to double4.zxwz).
        [Inline]
        public double4 brab =>  double4(z, x, w, z);
        
        /// Returns double4.zxww swizzling.
        [Inline]
        public double4 zxww =>  double4(z, x, w, w);
        
        /// Returns double4.braa swizzling (equivalent to double4.zxww).
        [Inline]
        public double4 braa =>  double4(z, x, w, w);
        
        /// Returns double4.zy swizzling.
        [Inline]
        public double2 zy =>  double2(z, y);
        
        /// Returns double4.bg swizzling (equivalent to double4.zy).
        [Inline]
        public double2 bg =>  double2(z, y);
        
        /// Returns double4.zyx swizzling.
        [Inline]
        public double3 zyx =>  double3(z, y, x);
        
        /// Returns double4.bgr swizzling (equivalent to double4.zyx).
        [Inline]
        public double3 bgr =>  double3(z, y, x);
        
        /// Returns double4.zyxx swizzling.
        [Inline]
        public double4 zyxx =>  double4(z, y, x, x);
        
        /// Returns double4.bgrr swizzling (equivalent to double4.zyxx).
        [Inline]
        public double4 bgrr =>  double4(z, y, x, x);
        
        /// Returns double4.zyxy swizzling.
        [Inline]
        public double4 zyxy =>  double4(z, y, x, y);
        
        /// Returns double4.bgrg swizzling (equivalent to double4.zyxy).
        [Inline]
        public double4 bgrg =>  double4(z, y, x, y);
        
        /// Returns double4.zyxz swizzling.
        [Inline]
        public double4 zyxz =>  double4(z, y, x, z);
        
        /// Returns double4.bgrb swizzling (equivalent to double4.zyxz).
        [Inline]
        public double4 bgrb =>  double4(z, y, x, z);
        
        /// Returns double4.zyxw swizzling.
        [Inline]
        public double4 zyxw =>  double4(z, y, x, w);
        
        /// Returns double4.bgra swizzling (equivalent to double4.zyxw).
        [Inline]
        public double4 bgra =>  double4(z, y, x, w);
        
        /// Returns double4.zyy swizzling.
        [Inline]
        public double3 zyy =>  double3(z, y, y);
        
        /// Returns double4.bgg swizzling (equivalent to double4.zyy).
        [Inline]
        public double3 bgg =>  double3(z, y, y);
        
        /// Returns double4.zyyx swizzling.
        [Inline]
        public double4 zyyx =>  double4(z, y, y, x);
        
        /// Returns double4.bggr swizzling (equivalent to double4.zyyx).
        [Inline]
        public double4 bggr =>  double4(z, y, y, x);
        
        /// Returns double4.zyyy swizzling.
        [Inline]
        public double4 zyyy =>  double4(z, y, y, y);
        
        /// Returns double4.bggg swizzling (equivalent to double4.zyyy).
        [Inline]
        public double4 bggg =>  double4(z, y, y, y);
        
        /// Returns double4.zyyz swizzling.
        [Inline]
        public double4 zyyz =>  double4(z, y, y, z);
        
        /// Returns double4.bggb swizzling (equivalent to double4.zyyz).
        [Inline]
        public double4 bggb =>  double4(z, y, y, z);
        
        /// Returns double4.zyyw swizzling.
        [Inline]
        public double4 zyyw =>  double4(z, y, y, w);
        
        /// Returns double4.bgga swizzling (equivalent to double4.zyyw).
        [Inline]
        public double4 bgga =>  double4(z, y, y, w);
        
        /// Returns double4.zyz swizzling.
        [Inline]
        public double3 zyz =>  double3(z, y, z);
        
        /// Returns double4.bgb swizzling (equivalent to double4.zyz).
        [Inline]
        public double3 bgb =>  double3(z, y, z);
        
        /// Returns double4.zyzx swizzling.
        [Inline]
        public double4 zyzx =>  double4(z, y, z, x);
        
        /// Returns double4.bgbr swizzling (equivalent to double4.zyzx).
        [Inline]
        public double4 bgbr =>  double4(z, y, z, x);
        
        /// Returns double4.zyzy swizzling.
        [Inline]
        public double4 zyzy =>  double4(z, y, z, y);
        
        /// Returns double4.bgbg swizzling (equivalent to double4.zyzy).
        [Inline]
        public double4 bgbg =>  double4(z, y, z, y);
        
        /// Returns double4.zyzz swizzling.
        [Inline]
        public double4 zyzz =>  double4(z, y, z, z);
        
        /// Returns double4.bgbb swizzling (equivalent to double4.zyzz).
        [Inline]
        public double4 bgbb =>  double4(z, y, z, z);
        
        /// Returns double4.zyzw swizzling.
        [Inline]
        public double4 zyzw =>  double4(z, y, z, w);
        
        /// Returns double4.bgba swizzling (equivalent to double4.zyzw).
        [Inline]
        public double4 bgba =>  double4(z, y, z, w);
        
        /// Returns double4.zyw swizzling.
        [Inline]
        public double3 zyw =>  double3(z, y, w);
        
        /// Returns double4.bga swizzling (equivalent to double4.zyw).
        [Inline]
        public double3 bga =>  double3(z, y, w);
        
        /// Returns double4.zywx swizzling.
        [Inline]
        public double4 zywx =>  double4(z, y, w, x);
        
        /// Returns double4.bgar swizzling (equivalent to double4.zywx).
        [Inline]
        public double4 bgar =>  double4(z, y, w, x);
        
        /// Returns double4.zywy swizzling.
        [Inline]
        public double4 zywy =>  double4(z, y, w, y);
        
        /// Returns double4.bgag swizzling (equivalent to double4.zywy).
        [Inline]
        public double4 bgag =>  double4(z, y, w, y);
        
        /// Returns double4.zywz swizzling.
        [Inline]
        public double4 zywz =>  double4(z, y, w, z);
        
        /// Returns double4.bgab swizzling (equivalent to double4.zywz).
        [Inline]
        public double4 bgab =>  double4(z, y, w, z);
        
        /// Returns double4.zyww swizzling.
        [Inline]
        public double4 zyww =>  double4(z, y, w, w);
        
        /// Returns double4.bgaa swizzling (equivalent to double4.zyww).
        [Inline]
        public double4 bgaa =>  double4(z, y, w, w);
        
        /// Returns double4.zz swizzling.
        [Inline]
        public double2 zz =>  double2(z, z);
        
        /// Returns double4.bb swizzling (equivalent to double4.zz).
        [Inline]
        public double2 bb =>  double2(z, z);
        
        /// Returns double4.zzx swizzling.
        [Inline]
        public double3 zzx =>  double3(z, z, x);
        
        /// Returns double4.bbr swizzling (equivalent to double4.zzx).
        [Inline]
        public double3 bbr =>  double3(z, z, x);
        
        /// Returns double4.zzxx swizzling.
        [Inline]
        public double4 zzxx =>  double4(z, z, x, x);
        
        /// Returns double4.bbrr swizzling (equivalent to double4.zzxx).
        [Inline]
        public double4 bbrr =>  double4(z, z, x, x);
        
        /// Returns double4.zzxy swizzling.
        [Inline]
        public double4 zzxy =>  double4(z, z, x, y);
        
        /// Returns double4.bbrg swizzling (equivalent to double4.zzxy).
        [Inline]
        public double4 bbrg =>  double4(z, z, x, y);
        
        /// Returns double4.zzxz swizzling.
        [Inline]
        public double4 zzxz =>  double4(z, z, x, z);
        
        /// Returns double4.bbrb swizzling (equivalent to double4.zzxz).
        [Inline]
        public double4 bbrb =>  double4(z, z, x, z);
        
        /// Returns double4.zzxw swizzling.
        [Inline]
        public double4 zzxw =>  double4(z, z, x, w);
        
        /// Returns double4.bbra swizzling (equivalent to double4.zzxw).
        [Inline]
        public double4 bbra =>  double4(z, z, x, w);
        
        /// Returns double4.zzy swizzling.
        [Inline]
        public double3 zzy =>  double3(z, z, y);
        
        /// Returns double4.bbg swizzling (equivalent to double4.zzy).
        [Inline]
        public double3 bbg =>  double3(z, z, y);
        
        /// Returns double4.zzyx swizzling.
        [Inline]
        public double4 zzyx =>  double4(z, z, y, x);
        
        /// Returns double4.bbgr swizzling (equivalent to double4.zzyx).
        [Inline]
        public double4 bbgr =>  double4(z, z, y, x);
        
        /// Returns double4.zzyy swizzling.
        [Inline]
        public double4 zzyy =>  double4(z, z, y, y);
        
        /// Returns double4.bbgg swizzling (equivalent to double4.zzyy).
        [Inline]
        public double4 bbgg =>  double4(z, z, y, y);
        
        /// Returns double4.zzyz swizzling.
        [Inline]
        public double4 zzyz =>  double4(z, z, y, z);
        
        /// Returns double4.bbgb swizzling (equivalent to double4.zzyz).
        [Inline]
        public double4 bbgb =>  double4(z, z, y, z);
        
        /// Returns double4.zzyw swizzling.
        [Inline]
        public double4 zzyw =>  double4(z, z, y, w);
        
        /// Returns double4.bbga swizzling (equivalent to double4.zzyw).
        [Inline]
        public double4 bbga =>  double4(z, z, y, w);
        
        /// Returns double4.zzz swizzling.
        [Inline]
        public double3 zzz =>  double3(z, z, z);
        
        /// Returns double4.bbb swizzling (equivalent to double4.zzz).
        [Inline]
        public double3 bbb =>  double3(z, z, z);
        
        /// Returns double4.zzzx swizzling.
        [Inline]
        public double4 zzzx =>  double4(z, z, z, x);
        
        /// Returns double4.bbbr swizzling (equivalent to double4.zzzx).
        [Inline]
        public double4 bbbr =>  double4(z, z, z, x);
        
        /// Returns double4.zzzy swizzling.
        [Inline]
        public double4 zzzy =>  double4(z, z, z, y);
        
        /// Returns double4.bbbg swizzling (equivalent to double4.zzzy).
        [Inline]
        public double4 bbbg =>  double4(z, z, z, y);
        
        /// Returns double4.zzzz swizzling.
        [Inline]
        public double4 zzzz =>  double4(z, z, z, z);
        
        /// Returns double4.bbbb swizzling (equivalent to double4.zzzz).
        [Inline]
        public double4 bbbb =>  double4(z, z, z, z);
        
        /// Returns double4.zzzw swizzling.
        [Inline]
        public double4 zzzw =>  double4(z, z, z, w);
        
        /// Returns double4.bbba swizzling (equivalent to double4.zzzw).
        [Inline]
        public double4 bbba =>  double4(z, z, z, w);
        
        /// Returns double4.zzw swizzling.
        [Inline]
        public double3 zzw =>  double3(z, z, w);
        
        /// Returns double4.bba swizzling (equivalent to double4.zzw).
        [Inline]
        public double3 bba =>  double3(z, z, w);
        
        /// Returns double4.zzwx swizzling.
        [Inline]
        public double4 zzwx =>  double4(z, z, w, x);
        
        /// Returns double4.bbar swizzling (equivalent to double4.zzwx).
        [Inline]
        public double4 bbar =>  double4(z, z, w, x);
        
        /// Returns double4.zzwy swizzling.
        [Inline]
        public double4 zzwy =>  double4(z, z, w, y);
        
        /// Returns double4.bbag swizzling (equivalent to double4.zzwy).
        [Inline]
        public double4 bbag =>  double4(z, z, w, y);
        
        /// Returns double4.zzwz swizzling.
        [Inline]
        public double4 zzwz =>  double4(z, z, w, z);
        
        /// Returns double4.bbab swizzling (equivalent to double4.zzwz).
        [Inline]
        public double4 bbab =>  double4(z, z, w, z);
        
        /// Returns double4.zzww swizzling.
        [Inline]
        public double4 zzww =>  double4(z, z, w, w);
        
        /// Returns double4.bbaa swizzling (equivalent to double4.zzww).
        [Inline]
        public double4 bbaa =>  double4(z, z, w, w);
        
        /// Returns double4.zw swizzling.
        [Inline]
        public double2 zw =>  double2(z, w);
        
        /// Returns double4.ba swizzling (equivalent to double4.zw).
        [Inline]
        public double2 ba =>  double2(z, w);
        
        /// Returns double4.zwx swizzling.
        [Inline]
        public double3 zwx =>  double3(z, w, x);
        
        /// Returns double4.bar swizzling (equivalent to double4.zwx).
        [Inline]
        public double3 bar =>  double3(z, w, x);
        
        /// Returns double4.zwxx swizzling.
        [Inline]
        public double4 zwxx =>  double4(z, w, x, x);
        
        /// Returns double4.barr swizzling (equivalent to double4.zwxx).
        [Inline]
        public double4 barr =>  double4(z, w, x, x);
        
        /// Returns double4.zwxy swizzling.
        [Inline]
        public double4 zwxy =>  double4(z, w, x, y);
        
        /// Returns double4.barg swizzling (equivalent to double4.zwxy).
        [Inline]
        public double4 barg =>  double4(z, w, x, y);
        
        /// Returns double4.zwxz swizzling.
        [Inline]
        public double4 zwxz =>  double4(z, w, x, z);
        
        /// Returns double4.barb swizzling (equivalent to double4.zwxz).
        [Inline]
        public double4 barb =>  double4(z, w, x, z);
        
        /// Returns double4.zwxw swizzling.
        [Inline]
        public double4 zwxw =>  double4(z, w, x, w);
        
        /// Returns double4.bara swizzling (equivalent to double4.zwxw).
        [Inline]
        public double4 bara =>  double4(z, w, x, w);
        
        /// Returns double4.zwy swizzling.
        [Inline]
        public double3 zwy =>  double3(z, w, y);
        
        /// Returns double4.bag swizzling (equivalent to double4.zwy).
        [Inline]
        public double3 bag =>  double3(z, w, y);
        
        /// Returns double4.zwyx swizzling.
        [Inline]
        public double4 zwyx =>  double4(z, w, y, x);
        
        /// Returns double4.bagr swizzling (equivalent to double4.zwyx).
        [Inline]
        public double4 bagr =>  double4(z, w, y, x);
        
        /// Returns double4.zwyy swizzling.
        [Inline]
        public double4 zwyy =>  double4(z, w, y, y);
        
        /// Returns double4.bagg swizzling (equivalent to double4.zwyy).
        [Inline]
        public double4 bagg =>  double4(z, w, y, y);
        
        /// Returns double4.zwyz swizzling.
        [Inline]
        public double4 zwyz =>  double4(z, w, y, z);
        
        /// Returns double4.bagb swizzling (equivalent to double4.zwyz).
        [Inline]
        public double4 bagb =>  double4(z, w, y, z);
        
        /// Returns double4.zwyw swizzling.
        [Inline]
        public double4 zwyw =>  double4(z, w, y, w);
        
        /// Returns double4.baga swizzling (equivalent to double4.zwyw).
        [Inline]
        public double4 baga =>  double4(z, w, y, w);
        
        /// Returns double4.zwz swizzling.
        [Inline]
        public double3 zwz =>  double3(z, w, z);
        
        /// Returns double4.bab swizzling (equivalent to double4.zwz).
        [Inline]
        public double3 bab =>  double3(z, w, z);
        
        /// Returns double4.zwzx swizzling.
        [Inline]
        public double4 zwzx =>  double4(z, w, z, x);
        
        /// Returns double4.babr swizzling (equivalent to double4.zwzx).
        [Inline]
        public double4 babr =>  double4(z, w, z, x);
        
        /// Returns double4.zwzy swizzling.
        [Inline]
        public double4 zwzy =>  double4(z, w, z, y);
        
        /// Returns double4.babg swizzling (equivalent to double4.zwzy).
        [Inline]
        public double4 babg =>  double4(z, w, z, y);
        
        /// Returns double4.zwzz swizzling.
        [Inline]
        public double4 zwzz =>  double4(z, w, z, z);
        
        /// Returns double4.babb swizzling (equivalent to double4.zwzz).
        [Inline]
        public double4 babb =>  double4(z, w, z, z);
        
        /// Returns double4.zwzw swizzling.
        [Inline]
        public double4 zwzw =>  double4(z, w, z, w);
        
        /// Returns double4.baba swizzling (equivalent to double4.zwzw).
        [Inline]
        public double4 baba =>  double4(z, w, z, w);
        
        /// Returns double4.zww swizzling.
        [Inline]
        public double3 zww =>  double3(z, w, w);
        
        /// Returns double4.baa swizzling (equivalent to double4.zww).
        [Inline]
        public double3 baa =>  double3(z, w, w);
        
        /// Returns double4.zwwx swizzling.
        [Inline]
        public double4 zwwx =>  double4(z, w, w, x);
        
        /// Returns double4.baar swizzling (equivalent to double4.zwwx).
        [Inline]
        public double4 baar =>  double4(z, w, w, x);
        
        /// Returns double4.zwwy swizzling.
        [Inline]
        public double4 zwwy =>  double4(z, w, w, y);
        
        /// Returns double4.baag swizzling (equivalent to double4.zwwy).
        [Inline]
        public double4 baag =>  double4(z, w, w, y);
        
        /// Returns double4.zwwz swizzling.
        [Inline]
        public double4 zwwz =>  double4(z, w, w, z);
        
        /// Returns double4.baab swizzling (equivalent to double4.zwwz).
        [Inline]
        public double4 baab =>  double4(z, w, w, z);
        
        /// Returns double4.zwww swizzling.
        [Inline]
        public double4 zwww =>  double4(z, w, w, w);
        
        /// Returns double4.baaa swizzling (equivalent to double4.zwww).
        [Inline]
        public double4 baaa =>  double4(z, w, w, w);
        
        /// Returns double4.wx swizzling.
        [Inline]
        public double2 wx =>  double2(w, x);
        
        /// Returns double4.ar swizzling (equivalent to double4.wx).
        [Inline]
        public double2 ar =>  double2(w, x);
        
        /// Returns double4.wxx swizzling.
        [Inline]
        public double3 wxx =>  double3(w, x, x);
        
        /// Returns double4.arr swizzling (equivalent to double4.wxx).
        [Inline]
        public double3 arr =>  double3(w, x, x);
        
        /// Returns double4.wxxx swizzling.
        [Inline]
        public double4 wxxx =>  double4(w, x, x, x);
        
        /// Returns double4.arrr swizzling (equivalent to double4.wxxx).
        [Inline]
        public double4 arrr =>  double4(w, x, x, x);
        
        /// Returns double4.wxxy swizzling.
        [Inline]
        public double4 wxxy =>  double4(w, x, x, y);
        
        /// Returns double4.arrg swizzling (equivalent to double4.wxxy).
        [Inline]
        public double4 arrg =>  double4(w, x, x, y);
        
        /// Returns double4.wxxz swizzling.
        [Inline]
        public double4 wxxz =>  double4(w, x, x, z);
        
        /// Returns double4.arrb swizzling (equivalent to double4.wxxz).
        [Inline]
        public double4 arrb =>  double4(w, x, x, z);
        
        /// Returns double4.wxxw swizzling.
        [Inline]
        public double4 wxxw =>  double4(w, x, x, w);
        
        /// Returns double4.arra swizzling (equivalent to double4.wxxw).
        [Inline]
        public double4 arra =>  double4(w, x, x, w);
        
        /// Returns double4.wxy swizzling.
        [Inline]
        public double3 wxy =>  double3(w, x, y);
        
        /// Returns double4.arg swizzling (equivalent to double4.wxy).
        [Inline]
        public double3 arg =>  double3(w, x, y);
        
        /// Returns double4.wxyx swizzling.
        [Inline]
        public double4 wxyx =>  double4(w, x, y, x);
        
        /// Returns double4.argr swizzling (equivalent to double4.wxyx).
        [Inline]
        public double4 argr =>  double4(w, x, y, x);
        
        /// Returns double4.wxyy swizzling.
        [Inline]
        public double4 wxyy =>  double4(w, x, y, y);
        
        /// Returns double4.argg swizzling (equivalent to double4.wxyy).
        [Inline]
        public double4 argg =>  double4(w, x, y, y);
        
        /// Returns double4.wxyz swizzling.
        [Inline]
        public double4 wxyz =>  double4(w, x, y, z);
        
        /// Returns double4.argb swizzling (equivalent to double4.wxyz).
        [Inline]
        public double4 argb =>  double4(w, x, y, z);
        
        /// Returns double4.wxyw swizzling.
        [Inline]
        public double4 wxyw =>  double4(w, x, y, w);
        
        /// Returns double4.arga swizzling (equivalent to double4.wxyw).
        [Inline]
        public double4 arga =>  double4(w, x, y, w);
        
        /// Returns double4.wxz swizzling.
        [Inline]
        public double3 wxz =>  double3(w, x, z);
        
        /// Returns double4.arb swizzling (equivalent to double4.wxz).
        [Inline]
        public double3 arb =>  double3(w, x, z);
        
        /// Returns double4.wxzx swizzling.
        [Inline]
        public double4 wxzx =>  double4(w, x, z, x);
        
        /// Returns double4.arbr swizzling (equivalent to double4.wxzx).
        [Inline]
        public double4 arbr =>  double4(w, x, z, x);
        
        /// Returns double4.wxzy swizzling.
        [Inline]
        public double4 wxzy =>  double4(w, x, z, y);
        
        /// Returns double4.arbg swizzling (equivalent to double4.wxzy).
        [Inline]
        public double4 arbg =>  double4(w, x, z, y);
        
        /// Returns double4.wxzz swizzling.
        [Inline]
        public double4 wxzz =>  double4(w, x, z, z);
        
        /// Returns double4.arbb swizzling (equivalent to double4.wxzz).
        [Inline]
        public double4 arbb =>  double4(w, x, z, z);
        
        /// Returns double4.wxzw swizzling.
        [Inline]
        public double4 wxzw =>  double4(w, x, z, w);
        
        /// Returns double4.arba swizzling (equivalent to double4.wxzw).
        [Inline]
        public double4 arba =>  double4(w, x, z, w);
        
        /// Returns double4.wxw swizzling.
        [Inline]
        public double3 wxw =>  double3(w, x, w);
        
        /// Returns double4.ara swizzling (equivalent to double4.wxw).
        [Inline]
        public double3 ara =>  double3(w, x, w);
        
        /// Returns double4.wxwx swizzling.
        [Inline]
        public double4 wxwx =>  double4(w, x, w, x);
        
        /// Returns double4.arar swizzling (equivalent to double4.wxwx).
        [Inline]
        public double4 arar =>  double4(w, x, w, x);
        
        /// Returns double4.wxwy swizzling.
        [Inline]
        public double4 wxwy =>  double4(w, x, w, y);
        
        /// Returns double4.arag swizzling (equivalent to double4.wxwy).
        [Inline]
        public double4 arag =>  double4(w, x, w, y);
        
        /// Returns double4.wxwz swizzling.
        [Inline]
        public double4 wxwz =>  double4(w, x, w, z);
        
        /// Returns double4.arab swizzling (equivalent to double4.wxwz).
        [Inline]
        public double4 arab =>  double4(w, x, w, z);
        
        /// Returns double4.wxww swizzling.
        [Inline]
        public double4 wxww =>  double4(w, x, w, w);
        
        /// Returns double4.araa swizzling (equivalent to double4.wxww).
        [Inline]
        public double4 araa =>  double4(w, x, w, w);
        
        /// Returns double4.wy swizzling.
        [Inline]
        public double2 wy =>  double2(w, y);
        
        /// Returns double4.ag swizzling (equivalent to double4.wy).
        [Inline]
        public double2 ag =>  double2(w, y);
        
        /// Returns double4.wyx swizzling.
        [Inline]
        public double3 wyx =>  double3(w, y, x);
        
        /// Returns double4.agr swizzling (equivalent to double4.wyx).
        [Inline]
        public double3 agr =>  double3(w, y, x);
        
        /// Returns double4.wyxx swizzling.
        [Inline]
        public double4 wyxx =>  double4(w, y, x, x);
        
        /// Returns double4.agrr swizzling (equivalent to double4.wyxx).
        [Inline]
        public double4 agrr =>  double4(w, y, x, x);
        
        /// Returns double4.wyxy swizzling.
        [Inline]
        public double4 wyxy =>  double4(w, y, x, y);
        
        /// Returns double4.agrg swizzling (equivalent to double4.wyxy).
        [Inline]
        public double4 agrg =>  double4(w, y, x, y);
        
        /// Returns double4.wyxz swizzling.
        [Inline]
        public double4 wyxz =>  double4(w, y, x, z);
        
        /// Returns double4.agrb swizzling (equivalent to double4.wyxz).
        [Inline]
        public double4 agrb =>  double4(w, y, x, z);
        
        /// Returns double4.wyxw swizzling.
        [Inline]
        public double4 wyxw =>  double4(w, y, x, w);
        
        /// Returns double4.agra swizzling (equivalent to double4.wyxw).
        [Inline]
        public double4 agra =>  double4(w, y, x, w);
        
        /// Returns double4.wyy swizzling.
        [Inline]
        public double3 wyy =>  double3(w, y, y);
        
        /// Returns double4.agg swizzling (equivalent to double4.wyy).
        [Inline]
        public double3 agg =>  double3(w, y, y);
        
        /// Returns double4.wyyx swizzling.
        [Inline]
        public double4 wyyx =>  double4(w, y, y, x);
        
        /// Returns double4.aggr swizzling (equivalent to double4.wyyx).
        [Inline]
        public double4 aggr =>  double4(w, y, y, x);
        
        /// Returns double4.wyyy swizzling.
        [Inline]
        public double4 wyyy =>  double4(w, y, y, y);
        
        /// Returns double4.aggg swizzling (equivalent to double4.wyyy).
        [Inline]
        public double4 aggg =>  double4(w, y, y, y);
        
        /// Returns double4.wyyz swizzling.
        [Inline]
        public double4 wyyz =>  double4(w, y, y, z);
        
        /// Returns double4.aggb swizzling (equivalent to double4.wyyz).
        [Inline]
        public double4 aggb =>  double4(w, y, y, z);
        
        /// Returns double4.wyyw swizzling.
        [Inline]
        public double4 wyyw =>  double4(w, y, y, w);
        
        /// Returns double4.agga swizzling (equivalent to double4.wyyw).
        [Inline]
        public double4 agga =>  double4(w, y, y, w);
        
        /// Returns double4.wyz swizzling.
        [Inline]
        public double3 wyz =>  double3(w, y, z);
        
        /// Returns double4.agb swizzling (equivalent to double4.wyz).
        [Inline]
        public double3 agb =>  double3(w, y, z);
        
        /// Returns double4.wyzx swizzling.
        [Inline]
        public double4 wyzx =>  double4(w, y, z, x);
        
        /// Returns double4.agbr swizzling (equivalent to double4.wyzx).
        [Inline]
        public double4 agbr =>  double4(w, y, z, x);
        
        /// Returns double4.wyzy swizzling.
        [Inline]
        public double4 wyzy =>  double4(w, y, z, y);
        
        /// Returns double4.agbg swizzling (equivalent to double4.wyzy).
        [Inline]
        public double4 agbg =>  double4(w, y, z, y);
        
        /// Returns double4.wyzz swizzling.
        [Inline]
        public double4 wyzz =>  double4(w, y, z, z);
        
        /// Returns double4.agbb swizzling (equivalent to double4.wyzz).
        [Inline]
        public double4 agbb =>  double4(w, y, z, z);
        
        /// Returns double4.wyzw swizzling.
        [Inline]
        public double4 wyzw =>  double4(w, y, z, w);
        
        /// Returns double4.agba swizzling (equivalent to double4.wyzw).
        [Inline]
        public double4 agba =>  double4(w, y, z, w);
        
        /// Returns double4.wyw swizzling.
        [Inline]
        public double3 wyw =>  double3(w, y, w);
        
        /// Returns double4.aga swizzling (equivalent to double4.wyw).
        [Inline]
        public double3 aga =>  double3(w, y, w);
        
        /// Returns double4.wywx swizzling.
        [Inline]
        public double4 wywx =>  double4(w, y, w, x);
        
        /// Returns double4.agar swizzling (equivalent to double4.wywx).
        [Inline]
        public double4 agar =>  double4(w, y, w, x);
        
        /// Returns double4.wywy swizzling.
        [Inline]
        public double4 wywy =>  double4(w, y, w, y);
        
        /// Returns double4.agag swizzling (equivalent to double4.wywy).
        [Inline]
        public double4 agag =>  double4(w, y, w, y);
        
        /// Returns double4.wywz swizzling.
        [Inline]
        public double4 wywz =>  double4(w, y, w, z);
        
        /// Returns double4.agab swizzling (equivalent to double4.wywz).
        [Inline]
        public double4 agab =>  double4(w, y, w, z);
        
        /// Returns double4.wyww swizzling.
        [Inline]
        public double4 wyww =>  double4(w, y, w, w);
        
        /// Returns double4.agaa swizzling (equivalent to double4.wyww).
        [Inline]
        public double4 agaa =>  double4(w, y, w, w);
        
        /// Returns double4.wz swizzling.
        [Inline]
        public double2 wz =>  double2(w, z);
        
        /// Returns double4.ab swizzling (equivalent to double4.wz).
        [Inline]
        public double2 ab =>  double2(w, z);
        
        /// Returns double4.wzx swizzling.
        [Inline]
        public double3 wzx =>  double3(w, z, x);
        
        /// Returns double4.abr swizzling (equivalent to double4.wzx).
        [Inline]
        public double3 abr =>  double3(w, z, x);
        
        /// Returns double4.wzxx swizzling.
        [Inline]
        public double4 wzxx =>  double4(w, z, x, x);
        
        /// Returns double4.abrr swizzling (equivalent to double4.wzxx).
        [Inline]
        public double4 abrr =>  double4(w, z, x, x);
        
        /// Returns double4.wzxy swizzling.
        [Inline]
        public double4 wzxy =>  double4(w, z, x, y);
        
        /// Returns double4.abrg swizzling (equivalent to double4.wzxy).
        [Inline]
        public double4 abrg =>  double4(w, z, x, y);
        
        /// Returns double4.wzxz swizzling.
        [Inline]
        public double4 wzxz =>  double4(w, z, x, z);
        
        /// Returns double4.abrb swizzling (equivalent to double4.wzxz).
        [Inline]
        public double4 abrb =>  double4(w, z, x, z);
        
        /// Returns double4.wzxw swizzling.
        [Inline]
        public double4 wzxw =>  double4(w, z, x, w);
        
        /// Returns double4.abra swizzling (equivalent to double4.wzxw).
        [Inline]
        public double4 abra =>  double4(w, z, x, w);
        
        /// Returns double4.wzy swizzling.
        [Inline]
        public double3 wzy =>  double3(w, z, y);
        
        /// Returns double4.abg swizzling (equivalent to double4.wzy).
        [Inline]
        public double3 abg =>  double3(w, z, y);
        
        /// Returns double4.wzyx swizzling.
        [Inline]
        public double4 wzyx =>  double4(w, z, y, x);
        
        /// Returns double4.abgr swizzling (equivalent to double4.wzyx).
        [Inline]
        public double4 abgr =>  double4(w, z, y, x);
        
        /// Returns double4.wzyy swizzling.
        [Inline]
        public double4 wzyy =>  double4(w, z, y, y);
        
        /// Returns double4.abgg swizzling (equivalent to double4.wzyy).
        [Inline]
        public double4 abgg =>  double4(w, z, y, y);
        
        /// Returns double4.wzyz swizzling.
        [Inline]
        public double4 wzyz =>  double4(w, z, y, z);
        
        /// Returns double4.abgb swizzling (equivalent to double4.wzyz).
        [Inline]
        public double4 abgb =>  double4(w, z, y, z);
        
        /// Returns double4.wzyw swizzling.
        [Inline]
        public double4 wzyw =>  double4(w, z, y, w);
        
        /// Returns double4.abga swizzling (equivalent to double4.wzyw).
        [Inline]
        public double4 abga =>  double4(w, z, y, w);
        
        /// Returns double4.wzz swizzling.
        [Inline]
        public double3 wzz =>  double3(w, z, z);
        
        /// Returns double4.abb swizzling (equivalent to double4.wzz).
        [Inline]
        public double3 abb =>  double3(w, z, z);
        
        /// Returns double4.wzzx swizzling.
        [Inline]
        public double4 wzzx =>  double4(w, z, z, x);
        
        /// Returns double4.abbr swizzling (equivalent to double4.wzzx).
        [Inline]
        public double4 abbr =>  double4(w, z, z, x);
        
        /// Returns double4.wzzy swizzling.
        [Inline]
        public double4 wzzy =>  double4(w, z, z, y);
        
        /// Returns double4.abbg swizzling (equivalent to double4.wzzy).
        [Inline]
        public double4 abbg =>  double4(w, z, z, y);
        
        /// Returns double4.wzzz swizzling.
        [Inline]
        public double4 wzzz =>  double4(w, z, z, z);
        
        /// Returns double4.abbb swizzling (equivalent to double4.wzzz).
        [Inline]
        public double4 abbb =>  double4(w, z, z, z);
        
        /// Returns double4.wzzw swizzling.
        [Inline]
        public double4 wzzw =>  double4(w, z, z, w);
        
        /// Returns double4.abba swizzling (equivalent to double4.wzzw).
        [Inline]
        public double4 abba =>  double4(w, z, z, w);
        
        /// Returns double4.wzw swizzling.
        [Inline]
        public double3 wzw =>  double3(w, z, w);
        
        /// Returns double4.aba swizzling (equivalent to double4.wzw).
        [Inline]
        public double3 aba =>  double3(w, z, w);
        
        /// Returns double4.wzwx swizzling.
        [Inline]
        public double4 wzwx =>  double4(w, z, w, x);
        
        /// Returns double4.abar swizzling (equivalent to double4.wzwx).
        [Inline]
        public double4 abar =>  double4(w, z, w, x);
        
        /// Returns double4.wzwy swizzling.
        [Inline]
        public double4 wzwy =>  double4(w, z, w, y);
        
        /// Returns double4.abag swizzling (equivalent to double4.wzwy).
        [Inline]
        public double4 abag =>  double4(w, z, w, y);
        
        /// Returns double4.wzwz swizzling.
        [Inline]
        public double4 wzwz =>  double4(w, z, w, z);
        
        /// Returns double4.abab swizzling (equivalent to double4.wzwz).
        [Inline]
        public double4 abab =>  double4(w, z, w, z);
        
        /// Returns double4.wzww swizzling.
        [Inline]
        public double4 wzww =>  double4(w, z, w, w);
        
        /// Returns double4.abaa swizzling (equivalent to double4.wzww).
        [Inline]
        public double4 abaa =>  double4(w, z, w, w);
        
        /// Returns double4.ww swizzling.
        [Inline]
        public double2 ww =>  double2(w, w);
        
        /// Returns double4.aa swizzling (equivalent to double4.ww).
        [Inline]
        public double2 aa =>  double2(w, w);
        
        /// Returns double4.wwx swizzling.
        [Inline]
        public double3 wwx =>  double3(w, w, x);
        
        /// Returns double4.aar swizzling (equivalent to double4.wwx).
        [Inline]
        public double3 aar =>  double3(w, w, x);
        
        /// Returns double4.wwxx swizzling.
        [Inline]
        public double4 wwxx =>  double4(w, w, x, x);
        
        /// Returns double4.aarr swizzling (equivalent to double4.wwxx).
        [Inline]
        public double4 aarr =>  double4(w, w, x, x);
        
        /// Returns double4.wwxy swizzling.
        [Inline]
        public double4 wwxy =>  double4(w, w, x, y);
        
        /// Returns double4.aarg swizzling (equivalent to double4.wwxy).
        [Inline]
        public double4 aarg =>  double4(w, w, x, y);
        
        /// Returns double4.wwxz swizzling.
        [Inline]
        public double4 wwxz =>  double4(w, w, x, z);
        
        /// Returns double4.aarb swizzling (equivalent to double4.wwxz).
        [Inline]
        public double4 aarb =>  double4(w, w, x, z);
        
        /// Returns double4.wwxw swizzling.
        [Inline]
        public double4 wwxw =>  double4(w, w, x, w);
        
        /// Returns double4.aara swizzling (equivalent to double4.wwxw).
        [Inline]
        public double4 aara =>  double4(w, w, x, w);
        
        /// Returns double4.wwy swizzling.
        [Inline]
        public double3 wwy =>  double3(w, w, y);
        
        /// Returns double4.aag swizzling (equivalent to double4.wwy).
        [Inline]
        public double3 aag =>  double3(w, w, y);
        
        /// Returns double4.wwyx swizzling.
        [Inline]
        public double4 wwyx =>  double4(w, w, y, x);
        
        /// Returns double4.aagr swizzling (equivalent to double4.wwyx).
        [Inline]
        public double4 aagr =>  double4(w, w, y, x);
        
        /// Returns double4.wwyy swizzling.
        [Inline]
        public double4 wwyy =>  double4(w, w, y, y);
        
        /// Returns double4.aagg swizzling (equivalent to double4.wwyy).
        [Inline]
        public double4 aagg =>  double4(w, w, y, y);
        
        /// Returns double4.wwyz swizzling.
        [Inline]
        public double4 wwyz =>  double4(w, w, y, z);
        
        /// Returns double4.aagb swizzling (equivalent to double4.wwyz).
        [Inline]
        public double4 aagb =>  double4(w, w, y, z);
        
        /// Returns double4.wwyw swizzling.
        [Inline]
        public double4 wwyw =>  double4(w, w, y, w);
        
        /// Returns double4.aaga swizzling (equivalent to double4.wwyw).
        [Inline]
        public double4 aaga =>  double4(w, w, y, w);
        
        /// Returns double4.wwz swizzling.
        [Inline]
        public double3 wwz =>  double3(w, w, z);
        
        /// Returns double4.aab swizzling (equivalent to double4.wwz).
        [Inline]
        public double3 aab =>  double3(w, w, z);
        
        /// Returns double4.wwzx swizzling.
        [Inline]
        public double4 wwzx =>  double4(w, w, z, x);
        
        /// Returns double4.aabr swizzling (equivalent to double4.wwzx).
        [Inline]
        public double4 aabr =>  double4(w, w, z, x);
        
        /// Returns double4.wwzy swizzling.
        [Inline]
        public double4 wwzy =>  double4(w, w, z, y);
        
        /// Returns double4.aabg swizzling (equivalent to double4.wwzy).
        [Inline]
        public double4 aabg =>  double4(w, w, z, y);
        
        /// Returns double4.wwzz swizzling.
        [Inline]
        public double4 wwzz =>  double4(w, w, z, z);
        
        /// Returns double4.aabb swizzling (equivalent to double4.wwzz).
        [Inline]
        public double4 aabb =>  double4(w, w, z, z);
        
        /// Returns double4.wwzw swizzling.
        [Inline]
        public double4 wwzw =>  double4(w, w, z, w);
        
        /// Returns double4.aaba swizzling (equivalent to double4.wwzw).
        [Inline]
        public double4 aaba =>  double4(w, w, z, w);
        
        /// Returns double4.www swizzling.
        [Inline]
        public double3 www =>  double3(w, w, w);
        
        /// Returns double4.aaa swizzling (equivalent to double4.www).
        [Inline]
        public double3 aaa =>  double3(w, w, w);
        
        /// Returns double4.wwwx swizzling.
        [Inline]
        public double4 wwwx =>  double4(w, w, w, x);
        
        /// Returns double4.aaar swizzling (equivalent to double4.wwwx).
        [Inline]
        public double4 aaar =>  double4(w, w, w, x);
        
        /// Returns double4.wwwy swizzling.
        [Inline]
        public double4 wwwy =>  double4(w, w, w, y);
        
        /// Returns double4.aaag swizzling (equivalent to double4.wwwy).
        [Inline]
        public double4 aaag =>  double4(w, w, w, y);
        
        /// Returns double4.wwwz swizzling.
        [Inline]
        public double4 wwwz =>  double4(w, w, w, z);
        
        /// Returns double4.aaab swizzling (equivalent to double4.wwwz).
        [Inline]
        public double4 aaab =>  double4(w, w, w, z);
        
        /// Returns double4.wwww swizzling.
        [Inline]
        public double4 wwww =>  double4(w, w, w, w);
        
        /// Returns double4.aaaa swizzling (equivalent to double4.wwww).
        [Inline]
        public double4 aaaa =>  double4(w, w, w, w);

        #endregion

    }
}
