using System;
namespace glm
{
    
    /// Temporary vector of type bool with 4 components, used for implementing swizzling for bool4.
    public struct swizzle_bool4
    {

        //#region Fields
        
        /// x-component
        private readonly bool x;
        
        /// y-component
        private readonly bool y;
        
        /// z-component
        private readonly bool z;
        
        /// w-component
        private readonly bool w;

        //#endregion


        //#region Properties
        
        /// Returns bool4.xx swizzling.
        [Inline]
        public bool2 xx =>  bool2(x, x);
        
        /// Returns bool4.rr swizzling (equivalent to bool4.xx).
        [Inline]
        public bool2 rr =>  bool2(x, x);
        
        /// Returns bool4.xxx swizzling.
        [Inline]
        public bool3 xxx =>  bool3(x, x, x);
        
        /// Returns bool4.rrr swizzling (equivalent to bool4.xxx).
        [Inline]
        public bool3 rrr =>  bool3(x, x, x);
        
        /// Returns bool4.xxxx swizzling.
        [Inline]
        public bool4 xxxx =>  bool4(x, x, x, x);
        
        /// Returns bool4.rrrr swizzling (equivalent to bool4.xxxx).
        [Inline]
        public bool4 rrrr =>  bool4(x, x, x, x);
        
        /// Returns bool4.xxxy swizzling.
        [Inline]
        public bool4 xxxy =>  bool4(x, x, x, y);
        
        /// Returns bool4.rrrg swizzling (equivalent to bool4.xxxy).
        [Inline]
        public bool4 rrrg =>  bool4(x, x, x, y);
        
        /// Returns bool4.xxxz swizzling.
        [Inline]
        public bool4 xxxz =>  bool4(x, x, x, z);
        
        /// Returns bool4.rrrb swizzling (equivalent to bool4.xxxz).
        [Inline]
        public bool4 rrrb =>  bool4(x, x, x, z);
        
        /// Returns bool4.xxxw swizzling.
        [Inline]
        public bool4 xxxw =>  bool4(x, x, x, w);
        
        /// Returns bool4.rrra swizzling (equivalent to bool4.xxxw).
        [Inline]
        public bool4 rrra =>  bool4(x, x, x, w);
        
        /// Returns bool4.xxy swizzling.
        [Inline]
        public bool3 xxy =>  bool3(x, x, y);
        
        /// Returns bool4.rrg swizzling (equivalent to bool4.xxy).
        [Inline]
        public bool3 rrg =>  bool3(x, x, y);
        
        /// Returns bool4.xxyx swizzling.
        [Inline]
        public bool4 xxyx =>  bool4(x, x, y, x);
        
        /// Returns bool4.rrgr swizzling (equivalent to bool4.xxyx).
        [Inline]
        public bool4 rrgr =>  bool4(x, x, y, x);
        
        /// Returns bool4.xxyy swizzling.
        [Inline]
        public bool4 xxyy =>  bool4(x, x, y, y);
        
        /// Returns bool4.rrgg swizzling (equivalent to bool4.xxyy).
        [Inline]
        public bool4 rrgg =>  bool4(x, x, y, y);
        
        /// Returns bool4.xxyz swizzling.
        [Inline]
        public bool4 xxyz =>  bool4(x, x, y, z);
        
        /// Returns bool4.rrgb swizzling (equivalent to bool4.xxyz).
        [Inline]
        public bool4 rrgb =>  bool4(x, x, y, z);
        
        /// Returns bool4.xxyw swizzling.
        [Inline]
        public bool4 xxyw =>  bool4(x, x, y, w);
        
        /// Returns bool4.rrga swizzling (equivalent to bool4.xxyw).
        [Inline]
        public bool4 rrga =>  bool4(x, x, y, w);
        
        /// Returns bool4.xxz swizzling.
        [Inline]
        public bool3 xxz =>  bool3(x, x, z);
        
        /// Returns bool4.rrb swizzling (equivalent to bool4.xxz).
        [Inline]
        public bool3 rrb =>  bool3(x, x, z);
        
        /// Returns bool4.xxzx swizzling.
        [Inline]
        public bool4 xxzx =>  bool4(x, x, z, x);
        
        /// Returns bool4.rrbr swizzling (equivalent to bool4.xxzx).
        [Inline]
        public bool4 rrbr =>  bool4(x, x, z, x);
        
        /// Returns bool4.xxzy swizzling.
        [Inline]
        public bool4 xxzy =>  bool4(x, x, z, y);
        
        /// Returns bool4.rrbg swizzling (equivalent to bool4.xxzy).
        [Inline]
        public bool4 rrbg =>  bool4(x, x, z, y);
        
        /// Returns bool4.xxzz swizzling.
        [Inline]
        public bool4 xxzz =>  bool4(x, x, z, z);
        
        /// Returns bool4.rrbb swizzling (equivalent to bool4.xxzz).
        [Inline]
        public bool4 rrbb =>  bool4(x, x, z, z);
        
        /// Returns bool4.xxzw swizzling.
        [Inline]
        public bool4 xxzw =>  bool4(x, x, z, w);
        
        /// Returns bool4.rrba swizzling (equivalent to bool4.xxzw).
        [Inline]
        public bool4 rrba =>  bool4(x, x, z, w);
        
        /// Returns bool4.xxw swizzling.
        [Inline]
        public bool3 xxw =>  bool3(x, x, w);
        
        /// Returns bool4.rra swizzling (equivalent to bool4.xxw).
        [Inline]
        public bool3 rra =>  bool3(x, x, w);
        
        /// Returns bool4.xxwx swizzling.
        [Inline]
        public bool4 xxwx =>  bool4(x, x, w, x);
        
        /// Returns bool4.rrar swizzling (equivalent to bool4.xxwx).
        [Inline]
        public bool4 rrar =>  bool4(x, x, w, x);
        
        /// Returns bool4.xxwy swizzling.
        [Inline]
        public bool4 xxwy =>  bool4(x, x, w, y);
        
        /// Returns bool4.rrag swizzling (equivalent to bool4.xxwy).
        [Inline]
        public bool4 rrag =>  bool4(x, x, w, y);
        
        /// Returns bool4.xxwz swizzling.
        [Inline]
        public bool4 xxwz =>  bool4(x, x, w, z);
        
        /// Returns bool4.rrab swizzling (equivalent to bool4.xxwz).
        [Inline]
        public bool4 rrab =>  bool4(x, x, w, z);
        
        /// Returns bool4.xxww swizzling.
        [Inline]
        public bool4 xxww =>  bool4(x, x, w, w);
        
        /// Returns bool4.rraa swizzling (equivalent to bool4.xxww).
        [Inline]
        public bool4 rraa =>  bool4(x, x, w, w);
        
        /// Returns bool4.xy swizzling.
        [Inline]
        public bool2 xy =>  bool2(x, y);
        
        /// Returns bool4.rg swizzling (equivalent to bool4.xy).
        [Inline]
        public bool2 rg =>  bool2(x, y);
        
        /// Returns bool4.xyx swizzling.
        [Inline]
        public bool3 xyx =>  bool3(x, y, x);
        
        /// Returns bool4.rgr swizzling (equivalent to bool4.xyx).
        [Inline]
        public bool3 rgr =>  bool3(x, y, x);
        
        /// Returns bool4.xyxx swizzling.
        [Inline]
        public bool4 xyxx =>  bool4(x, y, x, x);
        
        /// Returns bool4.rgrr swizzling (equivalent to bool4.xyxx).
        [Inline]
        public bool4 rgrr =>  bool4(x, y, x, x);
        
        /// Returns bool4.xyxy swizzling.
        [Inline]
        public bool4 xyxy =>  bool4(x, y, x, y);
        
        /// Returns bool4.rgrg swizzling (equivalent to bool4.xyxy).
        [Inline]
        public bool4 rgrg =>  bool4(x, y, x, y);
        
        /// Returns bool4.xyxz swizzling.
        [Inline]
        public bool4 xyxz =>  bool4(x, y, x, z);
        
        /// Returns bool4.rgrb swizzling (equivalent to bool4.xyxz).
        [Inline]
        public bool4 rgrb =>  bool4(x, y, x, z);
        
        /// Returns bool4.xyxw swizzling.
        [Inline]
        public bool4 xyxw =>  bool4(x, y, x, w);
        
        /// Returns bool4.rgra swizzling (equivalent to bool4.xyxw).
        [Inline]
        public bool4 rgra =>  bool4(x, y, x, w);
        
        /// Returns bool4.xyy swizzling.
        [Inline]
        public bool3 xyy =>  bool3(x, y, y);
        
        /// Returns bool4.rgg swizzling (equivalent to bool4.xyy).
        [Inline]
        public bool3 rgg =>  bool3(x, y, y);
        
        /// Returns bool4.xyyx swizzling.
        [Inline]
        public bool4 xyyx =>  bool4(x, y, y, x);
        
        /// Returns bool4.rggr swizzling (equivalent to bool4.xyyx).
        [Inline]
        public bool4 rggr =>  bool4(x, y, y, x);
        
        /// Returns bool4.xyyy swizzling.
        [Inline]
        public bool4 xyyy =>  bool4(x, y, y, y);
        
        /// Returns bool4.rggg swizzling (equivalent to bool4.xyyy).
        [Inline]
        public bool4 rggg =>  bool4(x, y, y, y);
        
        /// Returns bool4.xyyz swizzling.
        [Inline]
        public bool4 xyyz =>  bool4(x, y, y, z);
        
        /// Returns bool4.rggb swizzling (equivalent to bool4.xyyz).
        [Inline]
        public bool4 rggb =>  bool4(x, y, y, z);
        
        /// Returns bool4.xyyw swizzling.
        [Inline]
        public bool4 xyyw =>  bool4(x, y, y, w);
        
        /// Returns bool4.rgga swizzling (equivalent to bool4.xyyw).
        [Inline]
        public bool4 rgga =>  bool4(x, y, y, w);
        
        /// Returns bool4.xyz swizzling.
        [Inline]
        public bool3 xyz =>  bool3(x, y, z);
        
        /// Returns bool4.rgb swizzling (equivalent to bool4.xyz).
        [Inline]
        public bool3 rgb =>  bool3(x, y, z);
        
        /// Returns bool4.xyzx swizzling.
        [Inline]
        public bool4 xyzx =>  bool4(x, y, z, x);
        
        /// Returns bool4.rgbr swizzling (equivalent to bool4.xyzx).
        [Inline]
        public bool4 rgbr =>  bool4(x, y, z, x);
        
        /// Returns bool4.xyzy swizzling.
        [Inline]
        public bool4 xyzy =>  bool4(x, y, z, y);
        
        /// Returns bool4.rgbg swizzling (equivalent to bool4.xyzy).
        [Inline]
        public bool4 rgbg =>  bool4(x, y, z, y);
        
        /// Returns bool4.xyzz swizzling.
        [Inline]
        public bool4 xyzz =>  bool4(x, y, z, z);
        
        /// Returns bool4.rgbb swizzling (equivalent to bool4.xyzz).
        [Inline]
        public bool4 rgbb =>  bool4(x, y, z, z);
        
        /// Returns bool4.xyzw swizzling.
        [Inline]
        public bool4 xyzw =>  bool4(x, y, z, w);
        
        /// Returns bool4.rgba swizzling (equivalent to bool4.xyzw).
        [Inline]
        public bool4 rgba =>  bool4(x, y, z, w);
        
        /// Returns bool4.xyw swizzling.
        [Inline]
        public bool3 xyw =>  bool3(x, y, w);
        
        /// Returns bool4.rga swizzling (equivalent to bool4.xyw).
        [Inline]
        public bool3 rga =>  bool3(x, y, w);
        
        /// Returns bool4.xywx swizzling.
        [Inline]
        public bool4 xywx =>  bool4(x, y, w, x);
        
        /// Returns bool4.rgar swizzling (equivalent to bool4.xywx).
        [Inline]
        public bool4 rgar =>  bool4(x, y, w, x);
        
        /// Returns bool4.xywy swizzling.
        [Inline]
        public bool4 xywy =>  bool4(x, y, w, y);
        
        /// Returns bool4.rgag swizzling (equivalent to bool4.xywy).
        [Inline]
        public bool4 rgag =>  bool4(x, y, w, y);
        
        /// Returns bool4.xywz swizzling.
        [Inline]
        public bool4 xywz =>  bool4(x, y, w, z);
        
        /// Returns bool4.rgab swizzling (equivalent to bool4.xywz).
        [Inline]
        public bool4 rgab =>  bool4(x, y, w, z);
        
        /// Returns bool4.xyww swizzling.
        [Inline]
        public bool4 xyww =>  bool4(x, y, w, w);
        
        /// Returns bool4.rgaa swizzling (equivalent to bool4.xyww).
        [Inline]
        public bool4 rgaa =>  bool4(x, y, w, w);
        
        /// Returns bool4.xz swizzling.
        [Inline]
        public bool2 xz =>  bool2(x, z);
        
        /// Returns bool4.rb swizzling (equivalent to bool4.xz).
        [Inline]
        public bool2 rb =>  bool2(x, z);
        
        /// Returns bool4.xzx swizzling.
        [Inline]
        public bool3 xzx =>  bool3(x, z, x);
        
        /// Returns bool4.rbr swizzling (equivalent to bool4.xzx).
        [Inline]
        public bool3 rbr =>  bool3(x, z, x);
        
        /// Returns bool4.xzxx swizzling.
        [Inline]
        public bool4 xzxx =>  bool4(x, z, x, x);
        
        /// Returns bool4.rbrr swizzling (equivalent to bool4.xzxx).
        [Inline]
        public bool4 rbrr =>  bool4(x, z, x, x);
        
        /// Returns bool4.xzxy swizzling.
        [Inline]
        public bool4 xzxy =>  bool4(x, z, x, y);
        
        /// Returns bool4.rbrg swizzling (equivalent to bool4.xzxy).
        [Inline]
        public bool4 rbrg =>  bool4(x, z, x, y);
        
        /// Returns bool4.xzxz swizzling.
        [Inline]
        public bool4 xzxz =>  bool4(x, z, x, z);
        
        /// Returns bool4.rbrb swizzling (equivalent to bool4.xzxz).
        [Inline]
        public bool4 rbrb =>  bool4(x, z, x, z);
        
        /// Returns bool4.xzxw swizzling.
        [Inline]
        public bool4 xzxw =>  bool4(x, z, x, w);
        
        /// Returns bool4.rbra swizzling (equivalent to bool4.xzxw).
        [Inline]
        public bool4 rbra =>  bool4(x, z, x, w);
        
        /// Returns bool4.xzy swizzling.
        [Inline]
        public bool3 xzy =>  bool3(x, z, y);
        
        /// Returns bool4.rbg swizzling (equivalent to bool4.xzy).
        [Inline]
        public bool3 rbg =>  bool3(x, z, y);
        
        /// Returns bool4.xzyx swizzling.
        [Inline]
        public bool4 xzyx =>  bool4(x, z, y, x);
        
        /// Returns bool4.rbgr swizzling (equivalent to bool4.xzyx).
        [Inline]
        public bool4 rbgr =>  bool4(x, z, y, x);
        
        /// Returns bool4.xzyy swizzling.
        [Inline]
        public bool4 xzyy =>  bool4(x, z, y, y);
        
        /// Returns bool4.rbgg swizzling (equivalent to bool4.xzyy).
        [Inline]
        public bool4 rbgg =>  bool4(x, z, y, y);
        
        /// Returns bool4.xzyz swizzling.
        [Inline]
        public bool4 xzyz =>  bool4(x, z, y, z);
        
        /// Returns bool4.rbgb swizzling (equivalent to bool4.xzyz).
        [Inline]
        public bool4 rbgb =>  bool4(x, z, y, z);
        
        /// Returns bool4.xzyw swizzling.
        [Inline]
        public bool4 xzyw =>  bool4(x, z, y, w);
        
        /// Returns bool4.rbga swizzling (equivalent to bool4.xzyw).
        [Inline]
        public bool4 rbga =>  bool4(x, z, y, w);
        
        /// Returns bool4.xzz swizzling.
        [Inline]
        public bool3 xzz =>  bool3(x, z, z);
        
        /// Returns bool4.rbb swizzling (equivalent to bool4.xzz).
        [Inline]
        public bool3 rbb =>  bool3(x, z, z);
        
        /// Returns bool4.xzzx swizzling.
        [Inline]
        public bool4 xzzx =>  bool4(x, z, z, x);
        
        /// Returns bool4.rbbr swizzling (equivalent to bool4.xzzx).
        [Inline]
        public bool4 rbbr =>  bool4(x, z, z, x);
        
        /// Returns bool4.xzzy swizzling.
        [Inline]
        public bool4 xzzy =>  bool4(x, z, z, y);
        
        /// Returns bool4.rbbg swizzling (equivalent to bool4.xzzy).
        [Inline]
        public bool4 rbbg =>  bool4(x, z, z, y);
        
        /// Returns bool4.xzzz swizzling.
        [Inline]
        public bool4 xzzz =>  bool4(x, z, z, z);
        
        /// Returns bool4.rbbb swizzling (equivalent to bool4.xzzz).
        [Inline]
        public bool4 rbbb =>  bool4(x, z, z, z);
        
        /// Returns bool4.xzzw swizzling.
        [Inline]
        public bool4 xzzw =>  bool4(x, z, z, w);
        
        /// Returns bool4.rbba swizzling (equivalent to bool4.xzzw).
        [Inline]
        public bool4 rbba =>  bool4(x, z, z, w);
        
        /// Returns bool4.xzw swizzling.
        [Inline]
        public bool3 xzw =>  bool3(x, z, w);
        
        /// Returns bool4.rba swizzling (equivalent to bool4.xzw).
        [Inline]
        public bool3 rba =>  bool3(x, z, w);
        
        /// Returns bool4.xzwx swizzling.
        [Inline]
        public bool4 xzwx =>  bool4(x, z, w, x);
        
        /// Returns bool4.rbar swizzling (equivalent to bool4.xzwx).
        [Inline]
        public bool4 rbar =>  bool4(x, z, w, x);
        
        /// Returns bool4.xzwy swizzling.
        [Inline]
        public bool4 xzwy =>  bool4(x, z, w, y);
        
        /// Returns bool4.rbag swizzling (equivalent to bool4.xzwy).
        [Inline]
        public bool4 rbag =>  bool4(x, z, w, y);
        
        /// Returns bool4.xzwz swizzling.
        [Inline]
        public bool4 xzwz =>  bool4(x, z, w, z);
        
        /// Returns bool4.rbab swizzling (equivalent to bool4.xzwz).
        [Inline]
        public bool4 rbab =>  bool4(x, z, w, z);
        
        /// Returns bool4.xzww swizzling.
        [Inline]
        public bool4 xzww =>  bool4(x, z, w, w);
        
        /// Returns bool4.rbaa swizzling (equivalent to bool4.xzww).
        [Inline]
        public bool4 rbaa =>  bool4(x, z, w, w);
        
        /// Returns bool4.xw swizzling.
        [Inline]
        public bool2 xw =>  bool2(x, w);
        
        /// Returns bool4.ra swizzling (equivalent to bool4.xw).
        [Inline]
        public bool2 ra =>  bool2(x, w);
        
        /// Returns bool4.xwx swizzling.
        [Inline]
        public bool3 xwx =>  bool3(x, w, x);
        
        /// Returns bool4.rar swizzling (equivalent to bool4.xwx).
        [Inline]
        public bool3 rar =>  bool3(x, w, x);
        
        /// Returns bool4.xwxx swizzling.
        [Inline]
        public bool4 xwxx =>  bool4(x, w, x, x);
        
        /// Returns bool4.rarr swizzling (equivalent to bool4.xwxx).
        [Inline]
        public bool4 rarr =>  bool4(x, w, x, x);
        
        /// Returns bool4.xwxy swizzling.
        [Inline]
        public bool4 xwxy =>  bool4(x, w, x, y);
        
        /// Returns bool4.rarg swizzling (equivalent to bool4.xwxy).
        [Inline]
        public bool4 rarg =>  bool4(x, w, x, y);
        
        /// Returns bool4.xwxz swizzling.
        [Inline]
        public bool4 xwxz =>  bool4(x, w, x, z);
        
        /// Returns bool4.rarb swizzling (equivalent to bool4.xwxz).
        [Inline]
        public bool4 rarb =>  bool4(x, w, x, z);
        
        /// Returns bool4.xwxw swizzling.
        [Inline]
        public bool4 xwxw =>  bool4(x, w, x, w);
        
        /// Returns bool4.rara swizzling (equivalent to bool4.xwxw).
        [Inline]
        public bool4 rara =>  bool4(x, w, x, w);
        
        /// Returns bool4.xwy swizzling.
        [Inline]
        public bool3 xwy =>  bool3(x, w, y);
        
        /// Returns bool4.rag swizzling (equivalent to bool4.xwy).
        [Inline]
        public bool3 rag =>  bool3(x, w, y);
        
        /// Returns bool4.xwyx swizzling.
        [Inline]
        public bool4 xwyx =>  bool4(x, w, y, x);
        
        /// Returns bool4.ragr swizzling (equivalent to bool4.xwyx).
        [Inline]
        public bool4 ragr =>  bool4(x, w, y, x);
        
        /// Returns bool4.xwyy swizzling.
        [Inline]
        public bool4 xwyy =>  bool4(x, w, y, y);
        
        /// Returns bool4.ragg swizzling (equivalent to bool4.xwyy).
        [Inline]
        public bool4 ragg =>  bool4(x, w, y, y);
        
        /// Returns bool4.xwyz swizzling.
        [Inline]
        public bool4 xwyz =>  bool4(x, w, y, z);
        
        /// Returns bool4.ragb swizzling (equivalent to bool4.xwyz).
        [Inline]
        public bool4 ragb =>  bool4(x, w, y, z);
        
        /// Returns bool4.xwyw swizzling.
        [Inline]
        public bool4 xwyw =>  bool4(x, w, y, w);
        
        /// Returns bool4.raga swizzling (equivalent to bool4.xwyw).
        [Inline]
        public bool4 raga =>  bool4(x, w, y, w);
        
        /// Returns bool4.xwz swizzling.
        [Inline]
        public bool3 xwz =>  bool3(x, w, z);
        
        /// Returns bool4.rab swizzling (equivalent to bool4.xwz).
        [Inline]
        public bool3 rab =>  bool3(x, w, z);
        
        /// Returns bool4.xwzx swizzling.
        [Inline]
        public bool4 xwzx =>  bool4(x, w, z, x);
        
        /// Returns bool4.rabr swizzling (equivalent to bool4.xwzx).
        [Inline]
        public bool4 rabr =>  bool4(x, w, z, x);
        
        /// Returns bool4.xwzy swizzling.
        [Inline]
        public bool4 xwzy =>  bool4(x, w, z, y);
        
        /// Returns bool4.rabg swizzling (equivalent to bool4.xwzy).
        [Inline]
        public bool4 rabg =>  bool4(x, w, z, y);
        
        /// Returns bool4.xwzz swizzling.
        [Inline]
        public bool4 xwzz =>  bool4(x, w, z, z);
        
        /// Returns bool4.rabb swizzling (equivalent to bool4.xwzz).
        [Inline]
        public bool4 rabb =>  bool4(x, w, z, z);
        
        /// Returns bool4.xwzw swizzling.
        [Inline]
        public bool4 xwzw =>  bool4(x, w, z, w);
        
        /// Returns bool4.raba swizzling (equivalent to bool4.xwzw).
        [Inline]
        public bool4 raba =>  bool4(x, w, z, w);
        
        /// Returns bool4.xww swizzling.
        [Inline]
        public bool3 xww =>  bool3(x, w, w);
        
        /// Returns bool4.raa swizzling (equivalent to bool4.xww).
        [Inline]
        public bool3 raa =>  bool3(x, w, w);
        
        /// Returns bool4.xwwx swizzling.
        [Inline]
        public bool4 xwwx =>  bool4(x, w, w, x);
        
        /// Returns bool4.raar swizzling (equivalent to bool4.xwwx).
        [Inline]
        public bool4 raar =>  bool4(x, w, w, x);
        
        /// Returns bool4.xwwy swizzling.
        [Inline]
        public bool4 xwwy =>  bool4(x, w, w, y);
        
        /// Returns bool4.raag swizzling (equivalent to bool4.xwwy).
        [Inline]
        public bool4 raag =>  bool4(x, w, w, y);
        
        /// Returns bool4.xwwz swizzling.
        [Inline]
        public bool4 xwwz =>  bool4(x, w, w, z);
        
        /// Returns bool4.raab swizzling (equivalent to bool4.xwwz).
        [Inline]
        public bool4 raab =>  bool4(x, w, w, z);
        
        /// Returns bool4.xwww swizzling.
        [Inline]
        public bool4 xwww =>  bool4(x, w, w, w);
        
        /// Returns bool4.raaa swizzling (equivalent to bool4.xwww).
        [Inline]
        public bool4 raaa =>  bool4(x, w, w, w);
        
        /// Returns bool4.yx swizzling.
        [Inline]
        public bool2 yx =>  bool2(y, x);
        
        /// Returns bool4.gr swizzling (equivalent to bool4.yx).
        [Inline]
        public bool2 gr =>  bool2(y, x);
        
        /// Returns bool4.yxx swizzling.
        [Inline]
        public bool3 yxx =>  bool3(y, x, x);
        
        /// Returns bool4.grr swizzling (equivalent to bool4.yxx).
        [Inline]
        public bool3 grr =>  bool3(y, x, x);
        
        /// Returns bool4.yxxx swizzling.
        [Inline]
        public bool4 yxxx =>  bool4(y, x, x, x);
        
        /// Returns bool4.grrr swizzling (equivalent to bool4.yxxx).
        [Inline]
        public bool4 grrr =>  bool4(y, x, x, x);
        
        /// Returns bool4.yxxy swizzling.
        [Inline]
        public bool4 yxxy =>  bool4(y, x, x, y);
        
        /// Returns bool4.grrg swizzling (equivalent to bool4.yxxy).
        [Inline]
        public bool4 grrg =>  bool4(y, x, x, y);
        
        /// Returns bool4.yxxz swizzling.
        [Inline]
        public bool4 yxxz =>  bool4(y, x, x, z);
        
        /// Returns bool4.grrb swizzling (equivalent to bool4.yxxz).
        [Inline]
        public bool4 grrb =>  bool4(y, x, x, z);
        
        /// Returns bool4.yxxw swizzling.
        [Inline]
        public bool4 yxxw =>  bool4(y, x, x, w);
        
        /// Returns bool4.grra swizzling (equivalent to bool4.yxxw).
        [Inline]
        public bool4 grra =>  bool4(y, x, x, w);
        
        /// Returns bool4.yxy swizzling.
        [Inline]
        public bool3 yxy =>  bool3(y, x, y);
        
        /// Returns bool4.grg swizzling (equivalent to bool4.yxy).
        [Inline]
        public bool3 grg =>  bool3(y, x, y);
        
        /// Returns bool4.yxyx swizzling.
        [Inline]
        public bool4 yxyx =>  bool4(y, x, y, x);
        
        /// Returns bool4.grgr swizzling (equivalent to bool4.yxyx).
        [Inline]
        public bool4 grgr =>  bool4(y, x, y, x);
        
        /// Returns bool4.yxyy swizzling.
        [Inline]
        public bool4 yxyy =>  bool4(y, x, y, y);
        
        /// Returns bool4.grgg swizzling (equivalent to bool4.yxyy).
        [Inline]
        public bool4 grgg =>  bool4(y, x, y, y);
        
        /// Returns bool4.yxyz swizzling.
        [Inline]
        public bool4 yxyz =>  bool4(y, x, y, z);
        
        /// Returns bool4.grgb swizzling (equivalent to bool4.yxyz).
        [Inline]
        public bool4 grgb =>  bool4(y, x, y, z);
        
        /// Returns bool4.yxyw swizzling.
        [Inline]
        public bool4 yxyw =>  bool4(y, x, y, w);
        
        /// Returns bool4.grga swizzling (equivalent to bool4.yxyw).
        [Inline]
        public bool4 grga =>  bool4(y, x, y, w);
        
        /// Returns bool4.yxz swizzling.
        [Inline]
        public bool3 yxz =>  bool3(y, x, z);
        
        /// Returns bool4.grb swizzling (equivalent to bool4.yxz).
        [Inline]
        public bool3 grb =>  bool3(y, x, z);
        
        /// Returns bool4.yxzx swizzling.
        [Inline]
        public bool4 yxzx =>  bool4(y, x, z, x);
        
        /// Returns bool4.grbr swizzling (equivalent to bool4.yxzx).
        [Inline]
        public bool4 grbr =>  bool4(y, x, z, x);
        
        /// Returns bool4.yxzy swizzling.
        [Inline]
        public bool4 yxzy =>  bool4(y, x, z, y);
        
        /// Returns bool4.grbg swizzling (equivalent to bool4.yxzy).
        [Inline]
        public bool4 grbg =>  bool4(y, x, z, y);
        
        /// Returns bool4.yxzz swizzling.
        [Inline]
        public bool4 yxzz =>  bool4(y, x, z, z);
        
        /// Returns bool4.grbb swizzling (equivalent to bool4.yxzz).
        [Inline]
        public bool4 grbb =>  bool4(y, x, z, z);
        
        /// Returns bool4.yxzw swizzling.
        [Inline]
        public bool4 yxzw =>  bool4(y, x, z, w);
        
        /// Returns bool4.grba swizzling (equivalent to bool4.yxzw).
        [Inline]
        public bool4 grba =>  bool4(y, x, z, w);
        
        /// Returns bool4.yxw swizzling.
        [Inline]
        public bool3 yxw =>  bool3(y, x, w);
        
        /// Returns bool4.gra swizzling (equivalent to bool4.yxw).
        [Inline]
        public bool3 gra =>  bool3(y, x, w);
        
        /// Returns bool4.yxwx swizzling.
        [Inline]
        public bool4 yxwx =>  bool4(y, x, w, x);
        
        /// Returns bool4.grar swizzling (equivalent to bool4.yxwx).
        [Inline]
        public bool4 grar =>  bool4(y, x, w, x);
        
        /// Returns bool4.yxwy swizzling.
        [Inline]
        public bool4 yxwy =>  bool4(y, x, w, y);
        
        /// Returns bool4.grag swizzling (equivalent to bool4.yxwy).
        [Inline]
        public bool4 grag =>  bool4(y, x, w, y);
        
        /// Returns bool4.yxwz swizzling.
        [Inline]
        public bool4 yxwz =>  bool4(y, x, w, z);
        
        /// Returns bool4.grab swizzling (equivalent to bool4.yxwz).
        [Inline]
        public bool4 grab =>  bool4(y, x, w, z);
        
        /// Returns bool4.yxww swizzling.
        [Inline]
        public bool4 yxww =>  bool4(y, x, w, w);
        
        /// Returns bool4.graa swizzling (equivalent to bool4.yxww).
        [Inline]
        public bool4 graa =>  bool4(y, x, w, w);
        
        /// Returns bool4.yy swizzling.
        [Inline]
        public bool2 yy =>  bool2(y, y);
        
        /// Returns bool4.gg swizzling (equivalent to bool4.yy).
        [Inline]
        public bool2 gg =>  bool2(y, y);
        
        /// Returns bool4.yyx swizzling.
        [Inline]
        public bool3 yyx =>  bool3(y, y, x);
        
        /// Returns bool4.ggr swizzling (equivalent to bool4.yyx).
        [Inline]
        public bool3 ggr =>  bool3(y, y, x);
        
        /// Returns bool4.yyxx swizzling.
        [Inline]
        public bool4 yyxx =>  bool4(y, y, x, x);
        
        /// Returns bool4.ggrr swizzling (equivalent to bool4.yyxx).
        [Inline]
        public bool4 ggrr =>  bool4(y, y, x, x);
        
        /// Returns bool4.yyxy swizzling.
        [Inline]
        public bool4 yyxy =>  bool4(y, y, x, y);
        
        /// Returns bool4.ggrg swizzling (equivalent to bool4.yyxy).
        [Inline]
        public bool4 ggrg =>  bool4(y, y, x, y);
        
        /// Returns bool4.yyxz swizzling.
        [Inline]
        public bool4 yyxz =>  bool4(y, y, x, z);
        
        /// Returns bool4.ggrb swizzling (equivalent to bool4.yyxz).
        [Inline]
        public bool4 ggrb =>  bool4(y, y, x, z);
        
        /// Returns bool4.yyxw swizzling.
        [Inline]
        public bool4 yyxw =>  bool4(y, y, x, w);
        
        /// Returns bool4.ggra swizzling (equivalent to bool4.yyxw).
        [Inline]
        public bool4 ggra =>  bool4(y, y, x, w);
        
        /// Returns bool4.yyy swizzling.
        [Inline]
        public bool3 yyy =>  bool3(y, y, y);
        
        /// Returns bool4.ggg swizzling (equivalent to bool4.yyy).
        [Inline]
        public bool3 ggg =>  bool3(y, y, y);
        
        /// Returns bool4.yyyx swizzling.
        [Inline]
        public bool4 yyyx =>  bool4(y, y, y, x);
        
        /// Returns bool4.gggr swizzling (equivalent to bool4.yyyx).
        [Inline]
        public bool4 gggr =>  bool4(y, y, y, x);
        
        /// Returns bool4.yyyy swizzling.
        [Inline]
        public bool4 yyyy =>  bool4(y, y, y, y);
        
        /// Returns bool4.gggg swizzling (equivalent to bool4.yyyy).
        [Inline]
        public bool4 gggg =>  bool4(y, y, y, y);
        
        /// Returns bool4.yyyz swizzling.
        [Inline]
        public bool4 yyyz =>  bool4(y, y, y, z);
        
        /// Returns bool4.gggb swizzling (equivalent to bool4.yyyz).
        [Inline]
        public bool4 gggb =>  bool4(y, y, y, z);
        
        /// Returns bool4.yyyw swizzling.
        [Inline]
        public bool4 yyyw =>  bool4(y, y, y, w);
        
        /// Returns bool4.ggga swizzling (equivalent to bool4.yyyw).
        [Inline]
        public bool4 ggga =>  bool4(y, y, y, w);
        
        /// Returns bool4.yyz swizzling.
        [Inline]
        public bool3 yyz =>  bool3(y, y, z);
        
        /// Returns bool4.ggb swizzling (equivalent to bool4.yyz).
        [Inline]
        public bool3 ggb =>  bool3(y, y, z);
        
        /// Returns bool4.yyzx swizzling.
        [Inline]
        public bool4 yyzx =>  bool4(y, y, z, x);
        
        /// Returns bool4.ggbr swizzling (equivalent to bool4.yyzx).
        [Inline]
        public bool4 ggbr =>  bool4(y, y, z, x);
        
        /// Returns bool4.yyzy swizzling.
        [Inline]
        public bool4 yyzy =>  bool4(y, y, z, y);
        
        /// Returns bool4.ggbg swizzling (equivalent to bool4.yyzy).
        [Inline]
        public bool4 ggbg =>  bool4(y, y, z, y);
        
        /// Returns bool4.yyzz swizzling.
        [Inline]
        public bool4 yyzz =>  bool4(y, y, z, z);
        
        /// Returns bool4.ggbb swizzling (equivalent to bool4.yyzz).
        [Inline]
        public bool4 ggbb =>  bool4(y, y, z, z);
        
        /// Returns bool4.yyzw swizzling.
        [Inline]
        public bool4 yyzw =>  bool4(y, y, z, w);
        
        /// Returns bool4.ggba swizzling (equivalent to bool4.yyzw).
        [Inline]
        public bool4 ggba =>  bool4(y, y, z, w);
        
        /// Returns bool4.yyw swizzling.
        [Inline]
        public bool3 yyw =>  bool3(y, y, w);
        
        /// Returns bool4.gga swizzling (equivalent to bool4.yyw).
        [Inline]
        public bool3 gga =>  bool3(y, y, w);
        
        /// Returns bool4.yywx swizzling.
        [Inline]
        public bool4 yywx =>  bool4(y, y, w, x);
        
        /// Returns bool4.ggar swizzling (equivalent to bool4.yywx).
        [Inline]
        public bool4 ggar =>  bool4(y, y, w, x);
        
        /// Returns bool4.yywy swizzling.
        [Inline]
        public bool4 yywy =>  bool4(y, y, w, y);
        
        /// Returns bool4.ggag swizzling (equivalent to bool4.yywy).
        [Inline]
        public bool4 ggag =>  bool4(y, y, w, y);
        
        /// Returns bool4.yywz swizzling.
        [Inline]
        public bool4 yywz =>  bool4(y, y, w, z);
        
        /// Returns bool4.ggab swizzling (equivalent to bool4.yywz).
        [Inline]
        public bool4 ggab =>  bool4(y, y, w, z);
        
        /// Returns bool4.yyww swizzling.
        [Inline]
        public bool4 yyww =>  bool4(y, y, w, w);
        
        /// Returns bool4.ggaa swizzling (equivalent to bool4.yyww).
        [Inline]
        public bool4 ggaa =>  bool4(y, y, w, w);
        
        /// Returns bool4.yz swizzling.
        [Inline]
        public bool2 yz =>  bool2(y, z);
        
        /// Returns bool4.gb swizzling (equivalent to bool4.yz).
        [Inline]
        public bool2 gb =>  bool2(y, z);
        
        /// Returns bool4.yzx swizzling.
        [Inline]
        public bool3 yzx =>  bool3(y, z, x);
        
        /// Returns bool4.gbr swizzling (equivalent to bool4.yzx).
        [Inline]
        public bool3 gbr =>  bool3(y, z, x);
        
        /// Returns bool4.yzxx swizzling.
        [Inline]
        public bool4 yzxx =>  bool4(y, z, x, x);
        
        /// Returns bool4.gbrr swizzling (equivalent to bool4.yzxx).
        [Inline]
        public bool4 gbrr =>  bool4(y, z, x, x);
        
        /// Returns bool4.yzxy swizzling.
        [Inline]
        public bool4 yzxy =>  bool4(y, z, x, y);
        
        /// Returns bool4.gbrg swizzling (equivalent to bool4.yzxy).
        [Inline]
        public bool4 gbrg =>  bool4(y, z, x, y);
        
        /// Returns bool4.yzxz swizzling.
        [Inline]
        public bool4 yzxz =>  bool4(y, z, x, z);
        
        /// Returns bool4.gbrb swizzling (equivalent to bool4.yzxz).
        [Inline]
        public bool4 gbrb =>  bool4(y, z, x, z);
        
        /// Returns bool4.yzxw swizzling.
        [Inline]
        public bool4 yzxw =>  bool4(y, z, x, w);
        
        /// Returns bool4.gbra swizzling (equivalent to bool4.yzxw).
        [Inline]
        public bool4 gbra =>  bool4(y, z, x, w);
        
        /// Returns bool4.yzy swizzling.
        [Inline]
        public bool3 yzy =>  bool3(y, z, y);
        
        /// Returns bool4.gbg swizzling (equivalent to bool4.yzy).
        [Inline]
        public bool3 gbg =>  bool3(y, z, y);
        
        /// Returns bool4.yzyx swizzling.
        [Inline]
        public bool4 yzyx =>  bool4(y, z, y, x);
        
        /// Returns bool4.gbgr swizzling (equivalent to bool4.yzyx).
        [Inline]
        public bool4 gbgr =>  bool4(y, z, y, x);
        
        /// Returns bool4.yzyy swizzling.
        [Inline]
        public bool4 yzyy =>  bool4(y, z, y, y);
        
        /// Returns bool4.gbgg swizzling (equivalent to bool4.yzyy).
        [Inline]
        public bool4 gbgg =>  bool4(y, z, y, y);
        
        /// Returns bool4.yzyz swizzling.
        [Inline]
        public bool4 yzyz =>  bool4(y, z, y, z);
        
        /// Returns bool4.gbgb swizzling (equivalent to bool4.yzyz).
        [Inline]
        public bool4 gbgb =>  bool4(y, z, y, z);
        
        /// Returns bool4.yzyw swizzling.
        [Inline]
        public bool4 yzyw =>  bool4(y, z, y, w);
        
        /// Returns bool4.gbga swizzling (equivalent to bool4.yzyw).
        [Inline]
        public bool4 gbga =>  bool4(y, z, y, w);
        
        /// Returns bool4.yzz swizzling.
        [Inline]
        public bool3 yzz =>  bool3(y, z, z);
        
        /// Returns bool4.gbb swizzling (equivalent to bool4.yzz).
        [Inline]
        public bool3 gbb =>  bool3(y, z, z);
        
        /// Returns bool4.yzzx swizzling.
        [Inline]
        public bool4 yzzx =>  bool4(y, z, z, x);
        
        /// Returns bool4.gbbr swizzling (equivalent to bool4.yzzx).
        [Inline]
        public bool4 gbbr =>  bool4(y, z, z, x);
        
        /// Returns bool4.yzzy swizzling.
        [Inline]
        public bool4 yzzy =>  bool4(y, z, z, y);
        
        /// Returns bool4.gbbg swizzling (equivalent to bool4.yzzy).
        [Inline]
        public bool4 gbbg =>  bool4(y, z, z, y);
        
        /// Returns bool4.yzzz swizzling.
        [Inline]
        public bool4 yzzz =>  bool4(y, z, z, z);
        
        /// Returns bool4.gbbb swizzling (equivalent to bool4.yzzz).
        [Inline]
        public bool4 gbbb =>  bool4(y, z, z, z);
        
        /// Returns bool4.yzzw swizzling.
        [Inline]
        public bool4 yzzw =>  bool4(y, z, z, w);
        
        /// Returns bool4.gbba swizzling (equivalent to bool4.yzzw).
        [Inline]
        public bool4 gbba =>  bool4(y, z, z, w);
        
        /// Returns bool4.yzw swizzling.
        [Inline]
        public bool3 yzw =>  bool3(y, z, w);
        
        /// Returns bool4.gba swizzling (equivalent to bool4.yzw).
        [Inline]
        public bool3 gba =>  bool3(y, z, w);
        
        /// Returns bool4.yzwx swizzling.
        [Inline]
        public bool4 yzwx =>  bool4(y, z, w, x);
        
        /// Returns bool4.gbar swizzling (equivalent to bool4.yzwx).
        [Inline]
        public bool4 gbar =>  bool4(y, z, w, x);
        
        /// Returns bool4.yzwy swizzling.
        [Inline]
        public bool4 yzwy =>  bool4(y, z, w, y);
        
        /// Returns bool4.gbag swizzling (equivalent to bool4.yzwy).
        [Inline]
        public bool4 gbag =>  bool4(y, z, w, y);
        
        /// Returns bool4.yzwz swizzling.
        [Inline]
        public bool4 yzwz =>  bool4(y, z, w, z);
        
        /// Returns bool4.gbab swizzling (equivalent to bool4.yzwz).
        [Inline]
        public bool4 gbab =>  bool4(y, z, w, z);
        
        /// Returns bool4.yzww swizzling.
        [Inline]
        public bool4 yzww =>  bool4(y, z, w, w);
        
        /// Returns bool4.gbaa swizzling (equivalent to bool4.yzww).
        [Inline]
        public bool4 gbaa =>  bool4(y, z, w, w);
        
        /// Returns bool4.yw swizzling.
        [Inline]
        public bool2 yw =>  bool2(y, w);
        
        /// Returns bool4.ga swizzling (equivalent to bool4.yw).
        [Inline]
        public bool2 ga =>  bool2(y, w);
        
        /// Returns bool4.ywx swizzling.
        [Inline]
        public bool3 ywx =>  bool3(y, w, x);
        
        /// Returns bool4.gar swizzling (equivalent to bool4.ywx).
        [Inline]
        public bool3 gar =>  bool3(y, w, x);
        
        /// Returns bool4.ywxx swizzling.
        [Inline]
        public bool4 ywxx =>  bool4(y, w, x, x);
        
        /// Returns bool4.garr swizzling (equivalent to bool4.ywxx).
        [Inline]
        public bool4 garr =>  bool4(y, w, x, x);
        
        /// Returns bool4.ywxy swizzling.
        [Inline]
        public bool4 ywxy =>  bool4(y, w, x, y);
        
        /// Returns bool4.garg swizzling (equivalent to bool4.ywxy).
        [Inline]
        public bool4 garg =>  bool4(y, w, x, y);
        
        /// Returns bool4.ywxz swizzling.
        [Inline]
        public bool4 ywxz =>  bool4(y, w, x, z);
        
        /// Returns bool4.garb swizzling (equivalent to bool4.ywxz).
        [Inline]
        public bool4 garb =>  bool4(y, w, x, z);
        
        /// Returns bool4.ywxw swizzling.
        [Inline]
        public bool4 ywxw =>  bool4(y, w, x, w);
        
        /// Returns bool4.gara swizzling (equivalent to bool4.ywxw).
        [Inline]
        public bool4 gara =>  bool4(y, w, x, w);
        
        /// Returns bool4.ywy swizzling.
        [Inline]
        public bool3 ywy =>  bool3(y, w, y);
        
        /// Returns bool4.gag swizzling (equivalent to bool4.ywy).
        [Inline]
        public bool3 gag =>  bool3(y, w, y);
        
        /// Returns bool4.ywyx swizzling.
        [Inline]
        public bool4 ywyx =>  bool4(y, w, y, x);
        
        /// Returns bool4.gagr swizzling (equivalent to bool4.ywyx).
        [Inline]
        public bool4 gagr =>  bool4(y, w, y, x);
        
        /// Returns bool4.ywyy swizzling.
        [Inline]
        public bool4 ywyy =>  bool4(y, w, y, y);
        
        /// Returns bool4.gagg swizzling (equivalent to bool4.ywyy).
        [Inline]
        public bool4 gagg =>  bool4(y, w, y, y);
        
        /// Returns bool4.ywyz swizzling.
        [Inline]
        public bool4 ywyz =>  bool4(y, w, y, z);
        
        /// Returns bool4.gagb swizzling (equivalent to bool4.ywyz).
        [Inline]
        public bool4 gagb =>  bool4(y, w, y, z);
        
        /// Returns bool4.ywyw swizzling.
        [Inline]
        public bool4 ywyw =>  bool4(y, w, y, w);
        
        /// Returns bool4.gaga swizzling (equivalent to bool4.ywyw).
        [Inline]
        public bool4 gaga =>  bool4(y, w, y, w);
        
        /// Returns bool4.ywz swizzling.
        [Inline]
        public bool3 ywz =>  bool3(y, w, z);
        
        /// Returns bool4.gab swizzling (equivalent to bool4.ywz).
        [Inline]
        public bool3 gab =>  bool3(y, w, z);
        
        /// Returns bool4.ywzx swizzling.
        [Inline]
        public bool4 ywzx =>  bool4(y, w, z, x);
        
        /// Returns bool4.gabr swizzling (equivalent to bool4.ywzx).
        [Inline]
        public bool4 gabr =>  bool4(y, w, z, x);
        
        /// Returns bool4.ywzy swizzling.
        [Inline]
        public bool4 ywzy =>  bool4(y, w, z, y);
        
        /// Returns bool4.gabg swizzling (equivalent to bool4.ywzy).
        [Inline]
        public bool4 gabg =>  bool4(y, w, z, y);
        
        /// Returns bool4.ywzz swizzling.
        [Inline]
        public bool4 ywzz =>  bool4(y, w, z, z);
        
        /// Returns bool4.gabb swizzling (equivalent to bool4.ywzz).
        [Inline]
        public bool4 gabb =>  bool4(y, w, z, z);
        
        /// Returns bool4.ywzw swizzling.
        [Inline]
        public bool4 ywzw =>  bool4(y, w, z, w);
        
        /// Returns bool4.gaba swizzling (equivalent to bool4.ywzw).
        [Inline]
        public bool4 gaba =>  bool4(y, w, z, w);
        
        /// Returns bool4.yww swizzling.
        [Inline]
        public bool3 yww =>  bool3(y, w, w);
        
        /// Returns bool4.gaa swizzling (equivalent to bool4.yww).
        [Inline]
        public bool3 gaa =>  bool3(y, w, w);
        
        /// Returns bool4.ywwx swizzling.
        [Inline]
        public bool4 ywwx =>  bool4(y, w, w, x);
        
        /// Returns bool4.gaar swizzling (equivalent to bool4.ywwx).
        [Inline]
        public bool4 gaar =>  bool4(y, w, w, x);
        
        /// Returns bool4.ywwy swizzling.
        [Inline]
        public bool4 ywwy =>  bool4(y, w, w, y);
        
        /// Returns bool4.gaag swizzling (equivalent to bool4.ywwy).
        [Inline]
        public bool4 gaag =>  bool4(y, w, w, y);
        
        /// Returns bool4.ywwz swizzling.
        [Inline]
        public bool4 ywwz =>  bool4(y, w, w, z);
        
        /// Returns bool4.gaab swizzling (equivalent to bool4.ywwz).
        [Inline]
        public bool4 gaab =>  bool4(y, w, w, z);
        
        /// Returns bool4.ywww swizzling.
        [Inline]
        public bool4 ywww =>  bool4(y, w, w, w);
        
        /// Returns bool4.gaaa swizzling (equivalent to bool4.ywww).
        [Inline]
        public bool4 gaaa =>  bool4(y, w, w, w);
        
        /// Returns bool4.zx swizzling.
        [Inline]
        public bool2 zx =>  bool2(z, x);
        
        /// Returns bool4.br swizzling (equivalent to bool4.zx).
        [Inline]
        public bool2 br =>  bool2(z, x);
        
        /// Returns bool4.zxx swizzling.
        [Inline]
        public bool3 zxx =>  bool3(z, x, x);
        
        /// Returns bool4.brr swizzling (equivalent to bool4.zxx).
        [Inline]
        public bool3 brr =>  bool3(z, x, x);
        
        /// Returns bool4.zxxx swizzling.
        [Inline]
        public bool4 zxxx =>  bool4(z, x, x, x);
        
        /// Returns bool4.brrr swizzling (equivalent to bool4.zxxx).
        [Inline]
        public bool4 brrr =>  bool4(z, x, x, x);
        
        /// Returns bool4.zxxy swizzling.
        [Inline]
        public bool4 zxxy =>  bool4(z, x, x, y);
        
        /// Returns bool4.brrg swizzling (equivalent to bool4.zxxy).
        [Inline]
        public bool4 brrg =>  bool4(z, x, x, y);
        
        /// Returns bool4.zxxz swizzling.
        [Inline]
        public bool4 zxxz =>  bool4(z, x, x, z);
        
        /// Returns bool4.brrb swizzling (equivalent to bool4.zxxz).
        [Inline]
        public bool4 brrb =>  bool4(z, x, x, z);
        
        /// Returns bool4.zxxw swizzling.
        [Inline]
        public bool4 zxxw =>  bool4(z, x, x, w);
        
        /// Returns bool4.brra swizzling (equivalent to bool4.zxxw).
        [Inline]
        public bool4 brra =>  bool4(z, x, x, w);
        
        /// Returns bool4.zxy swizzling.
        [Inline]
        public bool3 zxy =>  bool3(z, x, y);
        
        /// Returns bool4.brg swizzling (equivalent to bool4.zxy).
        [Inline]
        public bool3 brg =>  bool3(z, x, y);
        
        /// Returns bool4.zxyx swizzling.
        [Inline]
        public bool4 zxyx =>  bool4(z, x, y, x);
        
        /// Returns bool4.brgr swizzling (equivalent to bool4.zxyx).
        [Inline]
        public bool4 brgr =>  bool4(z, x, y, x);
        
        /// Returns bool4.zxyy swizzling.
        [Inline]
        public bool4 zxyy =>  bool4(z, x, y, y);
        
        /// Returns bool4.brgg swizzling (equivalent to bool4.zxyy).
        [Inline]
        public bool4 brgg =>  bool4(z, x, y, y);
        
        /// Returns bool4.zxyz swizzling.
        [Inline]
        public bool4 zxyz =>  bool4(z, x, y, z);
        
        /// Returns bool4.brgb swizzling (equivalent to bool4.zxyz).
        [Inline]
        public bool4 brgb =>  bool4(z, x, y, z);
        
        /// Returns bool4.zxyw swizzling.
        [Inline]
        public bool4 zxyw =>  bool4(z, x, y, w);
        
        /// Returns bool4.brga swizzling (equivalent to bool4.zxyw).
        [Inline]
        public bool4 brga =>  bool4(z, x, y, w);
        
        /// Returns bool4.zxz swizzling.
        [Inline]
        public bool3 zxz =>  bool3(z, x, z);
        
        /// Returns bool4.brb swizzling (equivalent to bool4.zxz).
        [Inline]
        public bool3 brb =>  bool3(z, x, z);
        
        /// Returns bool4.zxzx swizzling.
        [Inline]
        public bool4 zxzx =>  bool4(z, x, z, x);
        
        /// Returns bool4.brbr swizzling (equivalent to bool4.zxzx).
        [Inline]
        public bool4 brbr =>  bool4(z, x, z, x);
        
        /// Returns bool4.zxzy swizzling.
        [Inline]
        public bool4 zxzy =>  bool4(z, x, z, y);
        
        /// Returns bool4.brbg swizzling (equivalent to bool4.zxzy).
        [Inline]
        public bool4 brbg =>  bool4(z, x, z, y);
        
        /// Returns bool4.zxzz swizzling.
        [Inline]
        public bool4 zxzz =>  bool4(z, x, z, z);
        
        /// Returns bool4.brbb swizzling (equivalent to bool4.zxzz).
        [Inline]
        public bool4 brbb =>  bool4(z, x, z, z);
        
        /// Returns bool4.zxzw swizzling.
        [Inline]
        public bool4 zxzw =>  bool4(z, x, z, w);
        
        /// Returns bool4.brba swizzling (equivalent to bool4.zxzw).
        [Inline]
        public bool4 brba =>  bool4(z, x, z, w);
        
        /// Returns bool4.zxw swizzling.
        [Inline]
        public bool3 zxw =>  bool3(z, x, w);
        
        /// Returns bool4.bra swizzling (equivalent to bool4.zxw).
        [Inline]
        public bool3 bra =>  bool3(z, x, w);
        
        /// Returns bool4.zxwx swizzling.
        [Inline]
        public bool4 zxwx =>  bool4(z, x, w, x);
        
        /// Returns bool4.brar swizzling (equivalent to bool4.zxwx).
        [Inline]
        public bool4 brar =>  bool4(z, x, w, x);
        
        /// Returns bool4.zxwy swizzling.
        [Inline]
        public bool4 zxwy =>  bool4(z, x, w, y);
        
        /// Returns bool4.brag swizzling (equivalent to bool4.zxwy).
        [Inline]
        public bool4 brag =>  bool4(z, x, w, y);
        
        /// Returns bool4.zxwz swizzling.
        [Inline]
        public bool4 zxwz =>  bool4(z, x, w, z);
        
        /// Returns bool4.brab swizzling (equivalent to bool4.zxwz).
        [Inline]
        public bool4 brab =>  bool4(z, x, w, z);
        
        /// Returns bool4.zxww swizzling.
        [Inline]
        public bool4 zxww =>  bool4(z, x, w, w);
        
        /// Returns bool4.braa swizzling (equivalent to bool4.zxww).
        [Inline]
        public bool4 braa =>  bool4(z, x, w, w);
        
        /// Returns bool4.zy swizzling.
        [Inline]
        public bool2 zy =>  bool2(z, y);
        
        /// Returns bool4.bg swizzling (equivalent to bool4.zy).
        [Inline]
        public bool2 bg =>  bool2(z, y);
        
        /// Returns bool4.zyx swizzling.
        [Inline]
        public bool3 zyx =>  bool3(z, y, x);
        
        /// Returns bool4.bgr swizzling (equivalent to bool4.zyx).
        [Inline]
        public bool3 bgr =>  bool3(z, y, x);
        
        /// Returns bool4.zyxx swizzling.
        [Inline]
        public bool4 zyxx =>  bool4(z, y, x, x);
        
        /// Returns bool4.bgrr swizzling (equivalent to bool4.zyxx).
        [Inline]
        public bool4 bgrr =>  bool4(z, y, x, x);
        
        /// Returns bool4.zyxy swizzling.
        [Inline]
        public bool4 zyxy =>  bool4(z, y, x, y);
        
        /// Returns bool4.bgrg swizzling (equivalent to bool4.zyxy).
        [Inline]
        public bool4 bgrg =>  bool4(z, y, x, y);
        
        /// Returns bool4.zyxz swizzling.
        [Inline]
        public bool4 zyxz =>  bool4(z, y, x, z);
        
        /// Returns bool4.bgrb swizzling (equivalent to bool4.zyxz).
        [Inline]
        public bool4 bgrb =>  bool4(z, y, x, z);
        
        /// Returns bool4.zyxw swizzling.
        [Inline]
        public bool4 zyxw =>  bool4(z, y, x, w);
        
        /// Returns bool4.bgra swizzling (equivalent to bool4.zyxw).
        [Inline]
        public bool4 bgra =>  bool4(z, y, x, w);
        
        /// Returns bool4.zyy swizzling.
        [Inline]
        public bool3 zyy =>  bool3(z, y, y);
        
        /// Returns bool4.bgg swizzling (equivalent to bool4.zyy).
        [Inline]
        public bool3 bgg =>  bool3(z, y, y);
        
        /// Returns bool4.zyyx swizzling.
        [Inline]
        public bool4 zyyx =>  bool4(z, y, y, x);
        
        /// Returns bool4.bggr swizzling (equivalent to bool4.zyyx).
        [Inline]
        public bool4 bggr =>  bool4(z, y, y, x);
        
        /// Returns bool4.zyyy swizzling.
        [Inline]
        public bool4 zyyy =>  bool4(z, y, y, y);
        
        /// Returns bool4.bggg swizzling (equivalent to bool4.zyyy).
        [Inline]
        public bool4 bggg =>  bool4(z, y, y, y);
        
        /// Returns bool4.zyyz swizzling.
        [Inline]
        public bool4 zyyz =>  bool4(z, y, y, z);
        
        /// Returns bool4.bggb swizzling (equivalent to bool4.zyyz).
        [Inline]
        public bool4 bggb =>  bool4(z, y, y, z);
        
        /// Returns bool4.zyyw swizzling.
        [Inline]
        public bool4 zyyw =>  bool4(z, y, y, w);
        
        /// Returns bool4.bgga swizzling (equivalent to bool4.zyyw).
        [Inline]
        public bool4 bgga =>  bool4(z, y, y, w);
        
        /// Returns bool4.zyz swizzling.
        [Inline]
        public bool3 zyz =>  bool3(z, y, z);
        
        /// Returns bool4.bgb swizzling (equivalent to bool4.zyz).
        [Inline]
        public bool3 bgb =>  bool3(z, y, z);
        
        /// Returns bool4.zyzx swizzling.
        [Inline]
        public bool4 zyzx =>  bool4(z, y, z, x);
        
        /// Returns bool4.bgbr swizzling (equivalent to bool4.zyzx).
        [Inline]
        public bool4 bgbr =>  bool4(z, y, z, x);
        
        /// Returns bool4.zyzy swizzling.
        [Inline]
        public bool4 zyzy =>  bool4(z, y, z, y);
        
        /// Returns bool4.bgbg swizzling (equivalent to bool4.zyzy).
        [Inline]
        public bool4 bgbg =>  bool4(z, y, z, y);
        
        /// Returns bool4.zyzz swizzling.
        [Inline]
        public bool4 zyzz =>  bool4(z, y, z, z);
        
        /// Returns bool4.bgbb swizzling (equivalent to bool4.zyzz).
        [Inline]
        public bool4 bgbb =>  bool4(z, y, z, z);
        
        /// Returns bool4.zyzw swizzling.
        [Inline]
        public bool4 zyzw =>  bool4(z, y, z, w);
        
        /// Returns bool4.bgba swizzling (equivalent to bool4.zyzw).
        [Inline]
        public bool4 bgba =>  bool4(z, y, z, w);
        
        /// Returns bool4.zyw swizzling.
        [Inline]
        public bool3 zyw =>  bool3(z, y, w);
        
        /// Returns bool4.bga swizzling (equivalent to bool4.zyw).
        [Inline]
        public bool3 bga =>  bool3(z, y, w);
        
        /// Returns bool4.zywx swizzling.
        [Inline]
        public bool4 zywx =>  bool4(z, y, w, x);
        
        /// Returns bool4.bgar swizzling (equivalent to bool4.zywx).
        [Inline]
        public bool4 bgar =>  bool4(z, y, w, x);
        
        /// Returns bool4.zywy swizzling.
        [Inline]
        public bool4 zywy =>  bool4(z, y, w, y);
        
        /// Returns bool4.bgag swizzling (equivalent to bool4.zywy).
        [Inline]
        public bool4 bgag =>  bool4(z, y, w, y);
        
        /// Returns bool4.zywz swizzling.
        [Inline]
        public bool4 zywz =>  bool4(z, y, w, z);
        
        /// Returns bool4.bgab swizzling (equivalent to bool4.zywz).
        [Inline]
        public bool4 bgab =>  bool4(z, y, w, z);
        
        /// Returns bool4.zyww swizzling.
        [Inline]
        public bool4 zyww =>  bool4(z, y, w, w);
        
        /// Returns bool4.bgaa swizzling (equivalent to bool4.zyww).
        [Inline]
        public bool4 bgaa =>  bool4(z, y, w, w);
        
        /// Returns bool4.zz swizzling.
        [Inline]
        public bool2 zz =>  bool2(z, z);
        
        /// Returns bool4.bb swizzling (equivalent to bool4.zz).
        [Inline]
        public bool2 bb =>  bool2(z, z);
        
        /// Returns bool4.zzx swizzling.
        [Inline]
        public bool3 zzx =>  bool3(z, z, x);
        
        /// Returns bool4.bbr swizzling (equivalent to bool4.zzx).
        [Inline]
        public bool3 bbr =>  bool3(z, z, x);
        
        /// Returns bool4.zzxx swizzling.
        [Inline]
        public bool4 zzxx =>  bool4(z, z, x, x);
        
        /// Returns bool4.bbrr swizzling (equivalent to bool4.zzxx).
        [Inline]
        public bool4 bbrr =>  bool4(z, z, x, x);
        
        /// Returns bool4.zzxy swizzling.
        [Inline]
        public bool4 zzxy =>  bool4(z, z, x, y);
        
        /// Returns bool4.bbrg swizzling (equivalent to bool4.zzxy).
        [Inline]
        public bool4 bbrg =>  bool4(z, z, x, y);
        
        /// Returns bool4.zzxz swizzling.
        [Inline]
        public bool4 zzxz =>  bool4(z, z, x, z);
        
        /// Returns bool4.bbrb swizzling (equivalent to bool4.zzxz).
        [Inline]
        public bool4 bbrb =>  bool4(z, z, x, z);
        
        /// Returns bool4.zzxw swizzling.
        [Inline]
        public bool4 zzxw =>  bool4(z, z, x, w);
        
        /// Returns bool4.bbra swizzling (equivalent to bool4.zzxw).
        [Inline]
        public bool4 bbra =>  bool4(z, z, x, w);
        
        /// Returns bool4.zzy swizzling.
        [Inline]
        public bool3 zzy =>  bool3(z, z, y);
        
        /// Returns bool4.bbg swizzling (equivalent to bool4.zzy).
        [Inline]
        public bool3 bbg =>  bool3(z, z, y);
        
        /// Returns bool4.zzyx swizzling.
        [Inline]
        public bool4 zzyx =>  bool4(z, z, y, x);
        
        /// Returns bool4.bbgr swizzling (equivalent to bool4.zzyx).
        [Inline]
        public bool4 bbgr =>  bool4(z, z, y, x);
        
        /// Returns bool4.zzyy swizzling.
        [Inline]
        public bool4 zzyy =>  bool4(z, z, y, y);
        
        /// Returns bool4.bbgg swizzling (equivalent to bool4.zzyy).
        [Inline]
        public bool4 bbgg =>  bool4(z, z, y, y);
        
        /// Returns bool4.zzyz swizzling.
        [Inline]
        public bool4 zzyz =>  bool4(z, z, y, z);
        
        /// Returns bool4.bbgb swizzling (equivalent to bool4.zzyz).
        [Inline]
        public bool4 bbgb =>  bool4(z, z, y, z);
        
        /// Returns bool4.zzyw swizzling.
        [Inline]
        public bool4 zzyw =>  bool4(z, z, y, w);
        
        /// Returns bool4.bbga swizzling (equivalent to bool4.zzyw).
        [Inline]
        public bool4 bbga =>  bool4(z, z, y, w);
        
        /// Returns bool4.zzz swizzling.
        [Inline]
        public bool3 zzz =>  bool3(z, z, z);
        
        /// Returns bool4.bbb swizzling (equivalent to bool4.zzz).
        [Inline]
        public bool3 bbb =>  bool3(z, z, z);
        
        /// Returns bool4.zzzx swizzling.
        [Inline]
        public bool4 zzzx =>  bool4(z, z, z, x);
        
        /// Returns bool4.bbbr swizzling (equivalent to bool4.zzzx).
        [Inline]
        public bool4 bbbr =>  bool4(z, z, z, x);
        
        /// Returns bool4.zzzy swizzling.
        [Inline]
        public bool4 zzzy =>  bool4(z, z, z, y);
        
        /// Returns bool4.bbbg swizzling (equivalent to bool4.zzzy).
        [Inline]
        public bool4 bbbg =>  bool4(z, z, z, y);
        
        /// Returns bool4.zzzz swizzling.
        [Inline]
        public bool4 zzzz =>  bool4(z, z, z, z);
        
        /// Returns bool4.bbbb swizzling (equivalent to bool4.zzzz).
        [Inline]
        public bool4 bbbb =>  bool4(z, z, z, z);
        
        /// Returns bool4.zzzw swizzling.
        [Inline]
        public bool4 zzzw =>  bool4(z, z, z, w);
        
        /// Returns bool4.bbba swizzling (equivalent to bool4.zzzw).
        [Inline]
        public bool4 bbba =>  bool4(z, z, z, w);
        
        /// Returns bool4.zzw swizzling.
        [Inline]
        public bool3 zzw =>  bool3(z, z, w);
        
        /// Returns bool4.bba swizzling (equivalent to bool4.zzw).
        [Inline]
        public bool3 bba =>  bool3(z, z, w);
        
        /// Returns bool4.zzwx swizzling.
        [Inline]
        public bool4 zzwx =>  bool4(z, z, w, x);
        
        /// Returns bool4.bbar swizzling (equivalent to bool4.zzwx).
        [Inline]
        public bool4 bbar =>  bool4(z, z, w, x);
        
        /// Returns bool4.zzwy swizzling.
        [Inline]
        public bool4 zzwy =>  bool4(z, z, w, y);
        
        /// Returns bool4.bbag swizzling (equivalent to bool4.zzwy).
        [Inline]
        public bool4 bbag =>  bool4(z, z, w, y);
        
        /// Returns bool4.zzwz swizzling.
        [Inline]
        public bool4 zzwz =>  bool4(z, z, w, z);
        
        /// Returns bool4.bbab swizzling (equivalent to bool4.zzwz).
        [Inline]
        public bool4 bbab =>  bool4(z, z, w, z);
        
        /// Returns bool4.zzww swizzling.
        [Inline]
        public bool4 zzww =>  bool4(z, z, w, w);
        
        /// Returns bool4.bbaa swizzling (equivalent to bool4.zzww).
        [Inline]
        public bool4 bbaa =>  bool4(z, z, w, w);
        
        /// Returns bool4.zw swizzling.
        [Inline]
        public bool2 zw =>  bool2(z, w);
        
        /// Returns bool4.ba swizzling (equivalent to bool4.zw).
        [Inline]
        public bool2 ba =>  bool2(z, w);
        
        /// Returns bool4.zwx swizzling.
        [Inline]
        public bool3 zwx =>  bool3(z, w, x);
        
        /// Returns bool4.bar swizzling (equivalent to bool4.zwx).
        [Inline]
        public bool3 bar =>  bool3(z, w, x);
        
        /// Returns bool4.zwxx swizzling.
        [Inline]
        public bool4 zwxx =>  bool4(z, w, x, x);
        
        /// Returns bool4.barr swizzling (equivalent to bool4.zwxx).
        [Inline]
        public bool4 barr =>  bool4(z, w, x, x);
        
        /// Returns bool4.zwxy swizzling.
        [Inline]
        public bool4 zwxy =>  bool4(z, w, x, y);
        
        /// Returns bool4.barg swizzling (equivalent to bool4.zwxy).
        [Inline]
        public bool4 barg =>  bool4(z, w, x, y);
        
        /// Returns bool4.zwxz swizzling.
        [Inline]
        public bool4 zwxz =>  bool4(z, w, x, z);
        
        /// Returns bool4.barb swizzling (equivalent to bool4.zwxz).
        [Inline]
        public bool4 barb =>  bool4(z, w, x, z);
        
        /// Returns bool4.zwxw swizzling.
        [Inline]
        public bool4 zwxw =>  bool4(z, w, x, w);
        
        /// Returns bool4.bara swizzling (equivalent to bool4.zwxw).
        [Inline]
        public bool4 bara =>  bool4(z, w, x, w);
        
        /// Returns bool4.zwy swizzling.
        [Inline]
        public bool3 zwy =>  bool3(z, w, y);
        
        /// Returns bool4.bag swizzling (equivalent to bool4.zwy).
        [Inline]
        public bool3 bag =>  bool3(z, w, y);
        
        /// Returns bool4.zwyx swizzling.
        [Inline]
        public bool4 zwyx =>  bool4(z, w, y, x);
        
        /// Returns bool4.bagr swizzling (equivalent to bool4.zwyx).
        [Inline]
        public bool4 bagr =>  bool4(z, w, y, x);
        
        /// Returns bool4.zwyy swizzling.
        [Inline]
        public bool4 zwyy =>  bool4(z, w, y, y);
        
        /// Returns bool4.bagg swizzling (equivalent to bool4.zwyy).
        [Inline]
        public bool4 bagg =>  bool4(z, w, y, y);
        
        /// Returns bool4.zwyz swizzling.
        [Inline]
        public bool4 zwyz =>  bool4(z, w, y, z);
        
        /// Returns bool4.bagb swizzling (equivalent to bool4.zwyz).
        [Inline]
        public bool4 bagb =>  bool4(z, w, y, z);
        
        /// Returns bool4.zwyw swizzling.
        [Inline]
        public bool4 zwyw =>  bool4(z, w, y, w);
        
        /// Returns bool4.baga swizzling (equivalent to bool4.zwyw).
        [Inline]
        public bool4 baga =>  bool4(z, w, y, w);
        
        /// Returns bool4.zwz swizzling.
        [Inline]
        public bool3 zwz =>  bool3(z, w, z);
        
        /// Returns bool4.bab swizzling (equivalent to bool4.zwz).
        [Inline]
        public bool3 bab =>  bool3(z, w, z);
        
        /// Returns bool4.zwzx swizzling.
        [Inline]
        public bool4 zwzx =>  bool4(z, w, z, x);
        
        /// Returns bool4.babr swizzling (equivalent to bool4.zwzx).
        [Inline]
        public bool4 babr =>  bool4(z, w, z, x);
        
        /// Returns bool4.zwzy swizzling.
        [Inline]
        public bool4 zwzy =>  bool4(z, w, z, y);
        
        /// Returns bool4.babg swizzling (equivalent to bool4.zwzy).
        [Inline]
        public bool4 babg =>  bool4(z, w, z, y);
        
        /// Returns bool4.zwzz swizzling.
        [Inline]
        public bool4 zwzz =>  bool4(z, w, z, z);
        
        /// Returns bool4.babb swizzling (equivalent to bool4.zwzz).
        [Inline]
        public bool4 babb =>  bool4(z, w, z, z);
        
        /// Returns bool4.zwzw swizzling.
        [Inline]
        public bool4 zwzw =>  bool4(z, w, z, w);
        
        /// Returns bool4.baba swizzling (equivalent to bool4.zwzw).
        [Inline]
        public bool4 baba =>  bool4(z, w, z, w);
        
        /// Returns bool4.zww swizzling.
        [Inline]
        public bool3 zww =>  bool3(z, w, w);
        
        /// Returns bool4.baa swizzling (equivalent to bool4.zww).
        [Inline]
        public bool3 baa =>  bool3(z, w, w);
        
        /// Returns bool4.zwwx swizzling.
        [Inline]
        public bool4 zwwx =>  bool4(z, w, w, x);
        
        /// Returns bool4.baar swizzling (equivalent to bool4.zwwx).
        [Inline]
        public bool4 baar =>  bool4(z, w, w, x);
        
        /// Returns bool4.zwwy swizzling.
        [Inline]
        public bool4 zwwy =>  bool4(z, w, w, y);
        
        /// Returns bool4.baag swizzling (equivalent to bool4.zwwy).
        [Inline]
        public bool4 baag =>  bool4(z, w, w, y);
        
        /// Returns bool4.zwwz swizzling.
        [Inline]
        public bool4 zwwz =>  bool4(z, w, w, z);
        
        /// Returns bool4.baab swizzling (equivalent to bool4.zwwz).
        [Inline]
        public bool4 baab =>  bool4(z, w, w, z);
        
        /// Returns bool4.zwww swizzling.
        [Inline]
        public bool4 zwww =>  bool4(z, w, w, w);
        
        /// Returns bool4.baaa swizzling (equivalent to bool4.zwww).
        [Inline]
        public bool4 baaa =>  bool4(z, w, w, w);
        
        /// Returns bool4.wx swizzling.
        [Inline]
        public bool2 wx =>  bool2(w, x);
        
        /// Returns bool4.ar swizzling (equivalent to bool4.wx).
        [Inline]
        public bool2 ar =>  bool2(w, x);
        
        /// Returns bool4.wxx swizzling.
        [Inline]
        public bool3 wxx =>  bool3(w, x, x);
        
        /// Returns bool4.arr swizzling (equivalent to bool4.wxx).
        [Inline]
        public bool3 arr =>  bool3(w, x, x);
        
        /// Returns bool4.wxxx swizzling.
        [Inline]
        public bool4 wxxx =>  bool4(w, x, x, x);
        
        /// Returns bool4.arrr swizzling (equivalent to bool4.wxxx).
        [Inline]
        public bool4 arrr =>  bool4(w, x, x, x);
        
        /// Returns bool4.wxxy swizzling.
        [Inline]
        public bool4 wxxy =>  bool4(w, x, x, y);
        
        /// Returns bool4.arrg swizzling (equivalent to bool4.wxxy).
        [Inline]
        public bool4 arrg =>  bool4(w, x, x, y);
        
        /// Returns bool4.wxxz swizzling.
        [Inline]
        public bool4 wxxz =>  bool4(w, x, x, z);
        
        /// Returns bool4.arrb swizzling (equivalent to bool4.wxxz).
        [Inline]
        public bool4 arrb =>  bool4(w, x, x, z);
        
        /// Returns bool4.wxxw swizzling.
        [Inline]
        public bool4 wxxw =>  bool4(w, x, x, w);
        
        /// Returns bool4.arra swizzling (equivalent to bool4.wxxw).
        [Inline]
        public bool4 arra =>  bool4(w, x, x, w);
        
        /// Returns bool4.wxy swizzling.
        [Inline]
        public bool3 wxy =>  bool3(w, x, y);
        
        /// Returns bool4.arg swizzling (equivalent to bool4.wxy).
        [Inline]
        public bool3 arg =>  bool3(w, x, y);
        
        /// Returns bool4.wxyx swizzling.
        [Inline]
        public bool4 wxyx =>  bool4(w, x, y, x);
        
        /// Returns bool4.argr swizzling (equivalent to bool4.wxyx).
        [Inline]
        public bool4 argr =>  bool4(w, x, y, x);
        
        /// Returns bool4.wxyy swizzling.
        [Inline]
        public bool4 wxyy =>  bool4(w, x, y, y);
        
        /// Returns bool4.argg swizzling (equivalent to bool4.wxyy).
        [Inline]
        public bool4 argg =>  bool4(w, x, y, y);
        
        /// Returns bool4.wxyz swizzling.
        [Inline]
        public bool4 wxyz =>  bool4(w, x, y, z);
        
        /// Returns bool4.argb swizzling (equivalent to bool4.wxyz).
        [Inline]
        public bool4 argb =>  bool4(w, x, y, z);
        
        /// Returns bool4.wxyw swizzling.
        [Inline]
        public bool4 wxyw =>  bool4(w, x, y, w);
        
        /// Returns bool4.arga swizzling (equivalent to bool4.wxyw).
        [Inline]
        public bool4 arga =>  bool4(w, x, y, w);
        
        /// Returns bool4.wxz swizzling.
        [Inline]
        public bool3 wxz =>  bool3(w, x, z);
        
        /// Returns bool4.arb swizzling (equivalent to bool4.wxz).
        [Inline]
        public bool3 arb =>  bool3(w, x, z);
        
        /// Returns bool4.wxzx swizzling.
        [Inline]
        public bool4 wxzx =>  bool4(w, x, z, x);
        
        /// Returns bool4.arbr swizzling (equivalent to bool4.wxzx).
        [Inline]
        public bool4 arbr =>  bool4(w, x, z, x);
        
        /// Returns bool4.wxzy swizzling.
        [Inline]
        public bool4 wxzy =>  bool4(w, x, z, y);
        
        /// Returns bool4.arbg swizzling (equivalent to bool4.wxzy).
        [Inline]
        public bool4 arbg =>  bool4(w, x, z, y);
        
        /// Returns bool4.wxzz swizzling.
        [Inline]
        public bool4 wxzz =>  bool4(w, x, z, z);
        
        /// Returns bool4.arbb swizzling (equivalent to bool4.wxzz).
        [Inline]
        public bool4 arbb =>  bool4(w, x, z, z);
        
        /// Returns bool4.wxzw swizzling.
        [Inline]
        public bool4 wxzw =>  bool4(w, x, z, w);
        
        /// Returns bool4.arba swizzling (equivalent to bool4.wxzw).
        [Inline]
        public bool4 arba =>  bool4(w, x, z, w);
        
        /// Returns bool4.wxw swizzling.
        [Inline]
        public bool3 wxw =>  bool3(w, x, w);
        
        /// Returns bool4.ara swizzling (equivalent to bool4.wxw).
        [Inline]
        public bool3 ara =>  bool3(w, x, w);
        
        /// Returns bool4.wxwx swizzling.
        [Inline]
        public bool4 wxwx =>  bool4(w, x, w, x);
        
        /// Returns bool4.arar swizzling (equivalent to bool4.wxwx).
        [Inline]
        public bool4 arar =>  bool4(w, x, w, x);
        
        /// Returns bool4.wxwy swizzling.
        [Inline]
        public bool4 wxwy =>  bool4(w, x, w, y);
        
        /// Returns bool4.arag swizzling (equivalent to bool4.wxwy).
        [Inline]
        public bool4 arag =>  bool4(w, x, w, y);
        
        /// Returns bool4.wxwz swizzling.
        [Inline]
        public bool4 wxwz =>  bool4(w, x, w, z);
        
        /// Returns bool4.arab swizzling (equivalent to bool4.wxwz).
        [Inline]
        public bool4 arab =>  bool4(w, x, w, z);
        
        /// Returns bool4.wxww swizzling.
        [Inline]
        public bool4 wxww =>  bool4(w, x, w, w);
        
        /// Returns bool4.araa swizzling (equivalent to bool4.wxww).
        [Inline]
        public bool4 araa =>  bool4(w, x, w, w);
        
        /// Returns bool4.wy swizzling.
        [Inline]
        public bool2 wy =>  bool2(w, y);
        
        /// Returns bool4.ag swizzling (equivalent to bool4.wy).
        [Inline]
        public bool2 ag =>  bool2(w, y);
        
        /// Returns bool4.wyx swizzling.
        [Inline]
        public bool3 wyx =>  bool3(w, y, x);
        
        /// Returns bool4.agr swizzling (equivalent to bool4.wyx).
        [Inline]
        public bool3 agr =>  bool3(w, y, x);
        
        /// Returns bool4.wyxx swizzling.
        [Inline]
        public bool4 wyxx =>  bool4(w, y, x, x);
        
        /// Returns bool4.agrr swizzling (equivalent to bool4.wyxx).
        [Inline]
        public bool4 agrr =>  bool4(w, y, x, x);
        
        /// Returns bool4.wyxy swizzling.
        [Inline]
        public bool4 wyxy =>  bool4(w, y, x, y);
        
        /// Returns bool4.agrg swizzling (equivalent to bool4.wyxy).
        [Inline]
        public bool4 agrg =>  bool4(w, y, x, y);
        
        /// Returns bool4.wyxz swizzling.
        [Inline]
        public bool4 wyxz =>  bool4(w, y, x, z);
        
        /// Returns bool4.agrb swizzling (equivalent to bool4.wyxz).
        [Inline]
        public bool4 agrb =>  bool4(w, y, x, z);
        
        /// Returns bool4.wyxw swizzling.
        [Inline]
        public bool4 wyxw =>  bool4(w, y, x, w);
        
        /// Returns bool4.agra swizzling (equivalent to bool4.wyxw).
        [Inline]
        public bool4 agra =>  bool4(w, y, x, w);
        
        /// Returns bool4.wyy swizzling.
        [Inline]
        public bool3 wyy =>  bool3(w, y, y);
        
        /// Returns bool4.agg swizzling (equivalent to bool4.wyy).
        [Inline]
        public bool3 agg =>  bool3(w, y, y);
        
        /// Returns bool4.wyyx swizzling.
        [Inline]
        public bool4 wyyx =>  bool4(w, y, y, x);
        
        /// Returns bool4.aggr swizzling (equivalent to bool4.wyyx).
        [Inline]
        public bool4 aggr =>  bool4(w, y, y, x);
        
        /// Returns bool4.wyyy swizzling.
        [Inline]
        public bool4 wyyy =>  bool4(w, y, y, y);
        
        /// Returns bool4.aggg swizzling (equivalent to bool4.wyyy).
        [Inline]
        public bool4 aggg =>  bool4(w, y, y, y);
        
        /// Returns bool4.wyyz swizzling.
        [Inline]
        public bool4 wyyz =>  bool4(w, y, y, z);
        
        /// Returns bool4.aggb swizzling (equivalent to bool4.wyyz).
        [Inline]
        public bool4 aggb =>  bool4(w, y, y, z);
        
        /// Returns bool4.wyyw swizzling.
        [Inline]
        public bool4 wyyw =>  bool4(w, y, y, w);
        
        /// Returns bool4.agga swizzling (equivalent to bool4.wyyw).
        [Inline]
        public bool4 agga =>  bool4(w, y, y, w);
        
        /// Returns bool4.wyz swizzling.
        [Inline]
        public bool3 wyz =>  bool3(w, y, z);
        
        /// Returns bool4.agb swizzling (equivalent to bool4.wyz).
        [Inline]
        public bool3 agb =>  bool3(w, y, z);
        
        /// Returns bool4.wyzx swizzling.
        [Inline]
        public bool4 wyzx =>  bool4(w, y, z, x);
        
        /// Returns bool4.agbr swizzling (equivalent to bool4.wyzx).
        [Inline]
        public bool4 agbr =>  bool4(w, y, z, x);
        
        /// Returns bool4.wyzy swizzling.
        [Inline]
        public bool4 wyzy =>  bool4(w, y, z, y);
        
        /// Returns bool4.agbg swizzling (equivalent to bool4.wyzy).
        [Inline]
        public bool4 agbg =>  bool4(w, y, z, y);
        
        /// Returns bool4.wyzz swizzling.
        [Inline]
        public bool4 wyzz =>  bool4(w, y, z, z);
        
        /// Returns bool4.agbb swizzling (equivalent to bool4.wyzz).
        [Inline]
        public bool4 agbb =>  bool4(w, y, z, z);
        
        /// Returns bool4.wyzw swizzling.
        [Inline]
        public bool4 wyzw =>  bool4(w, y, z, w);
        
        /// Returns bool4.agba swizzling (equivalent to bool4.wyzw).
        [Inline]
        public bool4 agba =>  bool4(w, y, z, w);
        
        /// Returns bool4.wyw swizzling.
        [Inline]
        public bool3 wyw =>  bool3(w, y, w);
        
        /// Returns bool4.aga swizzling (equivalent to bool4.wyw).
        [Inline]
        public bool3 aga =>  bool3(w, y, w);
        
        /// Returns bool4.wywx swizzling.
        [Inline]
        public bool4 wywx =>  bool4(w, y, w, x);
        
        /// Returns bool4.agar swizzling (equivalent to bool4.wywx).
        [Inline]
        public bool4 agar =>  bool4(w, y, w, x);
        
        /// Returns bool4.wywy swizzling.
        [Inline]
        public bool4 wywy =>  bool4(w, y, w, y);
        
        /// Returns bool4.agag swizzling (equivalent to bool4.wywy).
        [Inline]
        public bool4 agag =>  bool4(w, y, w, y);
        
        /// Returns bool4.wywz swizzling.
        [Inline]
        public bool4 wywz =>  bool4(w, y, w, z);
        
        /// Returns bool4.agab swizzling (equivalent to bool4.wywz).
        [Inline]
        public bool4 agab =>  bool4(w, y, w, z);
        
        /// Returns bool4.wyww swizzling.
        [Inline]
        public bool4 wyww =>  bool4(w, y, w, w);
        
        /// Returns bool4.agaa swizzling (equivalent to bool4.wyww).
        [Inline]
        public bool4 agaa =>  bool4(w, y, w, w);
        
        /// Returns bool4.wz swizzling.
        [Inline]
        public bool2 wz =>  bool2(w, z);
        
        /// Returns bool4.ab swizzling (equivalent to bool4.wz).
        [Inline]
        public bool2 ab =>  bool2(w, z);
        
        /// Returns bool4.wzx swizzling.
        [Inline]
        public bool3 wzx =>  bool3(w, z, x);
        
        /// Returns bool4.abr swizzling (equivalent to bool4.wzx).
        [Inline]
        public bool3 abr =>  bool3(w, z, x);
        
        /// Returns bool4.wzxx swizzling.
        [Inline]
        public bool4 wzxx =>  bool4(w, z, x, x);
        
        /// Returns bool4.abrr swizzling (equivalent to bool4.wzxx).
        [Inline]
        public bool4 abrr =>  bool4(w, z, x, x);
        
        /// Returns bool4.wzxy swizzling.
        [Inline]
        public bool4 wzxy =>  bool4(w, z, x, y);
        
        /// Returns bool4.abrg swizzling (equivalent to bool4.wzxy).
        [Inline]
        public bool4 abrg =>  bool4(w, z, x, y);
        
        /// Returns bool4.wzxz swizzling.
        [Inline]
        public bool4 wzxz =>  bool4(w, z, x, z);
        
        /// Returns bool4.abrb swizzling (equivalent to bool4.wzxz).
        [Inline]
        public bool4 abrb =>  bool4(w, z, x, z);
        
        /// Returns bool4.wzxw swizzling.
        [Inline]
        public bool4 wzxw =>  bool4(w, z, x, w);
        
        /// Returns bool4.abra swizzling (equivalent to bool4.wzxw).
        [Inline]
        public bool4 abra =>  bool4(w, z, x, w);
        
        /// Returns bool4.wzy swizzling.
        [Inline]
        public bool3 wzy =>  bool3(w, z, y);
        
        /// Returns bool4.abg swizzling (equivalent to bool4.wzy).
        [Inline]
        public bool3 abg =>  bool3(w, z, y);
        
        /// Returns bool4.wzyx swizzling.
        [Inline]
        public bool4 wzyx =>  bool4(w, z, y, x);
        
        /// Returns bool4.abgr swizzling (equivalent to bool4.wzyx).
        [Inline]
        public bool4 abgr =>  bool4(w, z, y, x);
        
        /// Returns bool4.wzyy swizzling.
        [Inline]
        public bool4 wzyy =>  bool4(w, z, y, y);
        
        /// Returns bool4.abgg swizzling (equivalent to bool4.wzyy).
        [Inline]
        public bool4 abgg =>  bool4(w, z, y, y);
        
        /// Returns bool4.wzyz swizzling.
        [Inline]
        public bool4 wzyz =>  bool4(w, z, y, z);
        
        /// Returns bool4.abgb swizzling (equivalent to bool4.wzyz).
        [Inline]
        public bool4 abgb =>  bool4(w, z, y, z);
        
        /// Returns bool4.wzyw swizzling.
        [Inline]
        public bool4 wzyw =>  bool4(w, z, y, w);
        
        /// Returns bool4.abga swizzling (equivalent to bool4.wzyw).
        [Inline]
        public bool4 abga =>  bool4(w, z, y, w);
        
        /// Returns bool4.wzz swizzling.
        [Inline]
        public bool3 wzz =>  bool3(w, z, z);
        
        /// Returns bool4.abb swizzling (equivalent to bool4.wzz).
        [Inline]
        public bool3 abb =>  bool3(w, z, z);
        
        /// Returns bool4.wzzx swizzling.
        [Inline]
        public bool4 wzzx =>  bool4(w, z, z, x);
        
        /// Returns bool4.abbr swizzling (equivalent to bool4.wzzx).
        [Inline]
        public bool4 abbr =>  bool4(w, z, z, x);
        
        /// Returns bool4.wzzy swizzling.
        [Inline]
        public bool4 wzzy =>  bool4(w, z, z, y);
        
        /// Returns bool4.abbg swizzling (equivalent to bool4.wzzy).
        [Inline]
        public bool4 abbg =>  bool4(w, z, z, y);
        
        /// Returns bool4.wzzz swizzling.
        [Inline]
        public bool4 wzzz =>  bool4(w, z, z, z);
        
        /// Returns bool4.abbb swizzling (equivalent to bool4.wzzz).
        [Inline]
        public bool4 abbb =>  bool4(w, z, z, z);
        
        /// Returns bool4.wzzw swizzling.
        [Inline]
        public bool4 wzzw =>  bool4(w, z, z, w);
        
        /// Returns bool4.abba swizzling (equivalent to bool4.wzzw).
        [Inline]
        public bool4 abba =>  bool4(w, z, z, w);
        
        /// Returns bool4.wzw swizzling.
        [Inline]
        public bool3 wzw =>  bool3(w, z, w);
        
        /// Returns bool4.aba swizzling (equivalent to bool4.wzw).
        [Inline]
        public bool3 aba =>  bool3(w, z, w);
        
        /// Returns bool4.wzwx swizzling.
        [Inline]
        public bool4 wzwx =>  bool4(w, z, w, x);
        
        /// Returns bool4.abar swizzling (equivalent to bool4.wzwx).
        [Inline]
        public bool4 abar =>  bool4(w, z, w, x);
        
        /// Returns bool4.wzwy swizzling.
        [Inline]
        public bool4 wzwy =>  bool4(w, z, w, y);
        
        /// Returns bool4.abag swizzling (equivalent to bool4.wzwy).
        [Inline]
        public bool4 abag =>  bool4(w, z, w, y);
        
        /// Returns bool4.wzwz swizzling.
        [Inline]
        public bool4 wzwz =>  bool4(w, z, w, z);
        
        /// Returns bool4.abab swizzling (equivalent to bool4.wzwz).
        [Inline]
        public bool4 abab =>  bool4(w, z, w, z);
        
        /// Returns bool4.wzww swizzling.
        [Inline]
        public bool4 wzww =>  bool4(w, z, w, w);
        
        /// Returns bool4.abaa swizzling (equivalent to bool4.wzww).
        [Inline]
        public bool4 abaa =>  bool4(w, z, w, w);
        
        /// Returns bool4.ww swizzling.
        [Inline]
        public bool2 ww =>  bool2(w, w);
        
        /// Returns bool4.aa swizzling (equivalent to bool4.ww).
        [Inline]
        public bool2 aa =>  bool2(w, w);
        
        /// Returns bool4.wwx swizzling.
        [Inline]
        public bool3 wwx =>  bool3(w, w, x);
        
        /// Returns bool4.aar swizzling (equivalent to bool4.wwx).
        [Inline]
        public bool3 aar =>  bool3(w, w, x);
        
        /// Returns bool4.wwxx swizzling.
        [Inline]
        public bool4 wwxx =>  bool4(w, w, x, x);
        
        /// Returns bool4.aarr swizzling (equivalent to bool4.wwxx).
        [Inline]
        public bool4 aarr =>  bool4(w, w, x, x);
        
        /// Returns bool4.wwxy swizzling.
        [Inline]
        public bool4 wwxy =>  bool4(w, w, x, y);
        
        /// Returns bool4.aarg swizzling (equivalent to bool4.wwxy).
        [Inline]
        public bool4 aarg =>  bool4(w, w, x, y);
        
        /// Returns bool4.wwxz swizzling.
        [Inline]
        public bool4 wwxz =>  bool4(w, w, x, z);
        
        /// Returns bool4.aarb swizzling (equivalent to bool4.wwxz).
        [Inline]
        public bool4 aarb =>  bool4(w, w, x, z);
        
        /// Returns bool4.wwxw swizzling.
        [Inline]
        public bool4 wwxw =>  bool4(w, w, x, w);
        
        /// Returns bool4.aara swizzling (equivalent to bool4.wwxw).
        [Inline]
        public bool4 aara =>  bool4(w, w, x, w);
        
        /// Returns bool4.wwy swizzling.
        [Inline]
        public bool3 wwy =>  bool3(w, w, y);
        
        /// Returns bool4.aag swizzling (equivalent to bool4.wwy).
        [Inline]
        public bool3 aag =>  bool3(w, w, y);
        
        /// Returns bool4.wwyx swizzling.
        [Inline]
        public bool4 wwyx =>  bool4(w, w, y, x);
        
        /// Returns bool4.aagr swizzling (equivalent to bool4.wwyx).
        [Inline]
        public bool4 aagr =>  bool4(w, w, y, x);
        
        /// Returns bool4.wwyy swizzling.
        [Inline]
        public bool4 wwyy =>  bool4(w, w, y, y);
        
        /// Returns bool4.aagg swizzling (equivalent to bool4.wwyy).
        [Inline]
        public bool4 aagg =>  bool4(w, w, y, y);
        
        /// Returns bool4.wwyz swizzling.
        [Inline]
        public bool4 wwyz =>  bool4(w, w, y, z);
        
        /// Returns bool4.aagb swizzling (equivalent to bool4.wwyz).
        [Inline]
        public bool4 aagb =>  bool4(w, w, y, z);
        
        /// Returns bool4.wwyw swizzling.
        [Inline]
        public bool4 wwyw =>  bool4(w, w, y, w);
        
        /// Returns bool4.aaga swizzling (equivalent to bool4.wwyw).
        [Inline]
        public bool4 aaga =>  bool4(w, w, y, w);
        
        /// Returns bool4.wwz swizzling.
        [Inline]
        public bool3 wwz =>  bool3(w, w, z);
        
        /// Returns bool4.aab swizzling (equivalent to bool4.wwz).
        [Inline]
        public bool3 aab =>  bool3(w, w, z);
        
        /// Returns bool4.wwzx swizzling.
        [Inline]
        public bool4 wwzx =>  bool4(w, w, z, x);
        
        /// Returns bool4.aabr swizzling (equivalent to bool4.wwzx).
        [Inline]
        public bool4 aabr =>  bool4(w, w, z, x);
        
        /// Returns bool4.wwzy swizzling.
        [Inline]
        public bool4 wwzy =>  bool4(w, w, z, y);
        
        /// Returns bool4.aabg swizzling (equivalent to bool4.wwzy).
        [Inline]
        public bool4 aabg =>  bool4(w, w, z, y);
        
        /// Returns bool4.wwzz swizzling.
        [Inline]
        public bool4 wwzz =>  bool4(w, w, z, z);
        
        /// Returns bool4.aabb swizzling (equivalent to bool4.wwzz).
        [Inline]
        public bool4 aabb =>  bool4(w, w, z, z);
        
        /// Returns bool4.wwzw swizzling.
        [Inline]
        public bool4 wwzw =>  bool4(w, w, z, w);
        
        /// Returns bool4.aaba swizzling (equivalent to bool4.wwzw).
        [Inline]
        public bool4 aaba =>  bool4(w, w, z, w);
        
        /// Returns bool4.www swizzling.
        [Inline]
        public bool3 www =>  bool3(w, w, w);
        
        /// Returns bool4.aaa swizzling (equivalent to bool4.www).
        [Inline]
        public bool3 aaa =>  bool3(w, w, w);
        
        /// Returns bool4.wwwx swizzling.
        [Inline]
        public bool4 wwwx =>  bool4(w, w, w, x);
        
        /// Returns bool4.aaar swizzling (equivalent to bool4.wwwx).
        [Inline]
        public bool4 aaar =>  bool4(w, w, w, x);
        
        /// Returns bool4.wwwy swizzling.
        [Inline]
        public bool4 wwwy =>  bool4(w, w, w, y);
        
        /// Returns bool4.aaag swizzling (equivalent to bool4.wwwy).
        [Inline]
        public bool4 aaag =>  bool4(w, w, w, y);
        
        /// Returns bool4.wwwz swizzling.
        [Inline]
        public bool4 wwwz =>  bool4(w, w, w, z);
        
        /// Returns bool4.aaab swizzling (equivalent to bool4.wwwz).
        [Inline]
        public bool4 aaab =>  bool4(w, w, w, z);
        
        /// Returns bool4.wwww swizzling.
        [Inline]
        public bool4 wwww =>  bool4(w, w, w, w);
        
        /// Returns bool4.aaaa swizzling (equivalent to bool4.wwww).
        [Inline]
        public bool4 aaaa =>  bool4(w, w, w, w);

        //#endregion

    }
}
