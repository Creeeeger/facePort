.class public Landroid/graphics/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Typeface$CustomFallbackBuilder;,
        Landroid/graphics/Typeface$Builder;,
        Landroid/graphics/Typeface$Style;
    }
.end annotation


# static fields
.field public static final whitelist BOLD:I = 0x1

.field public static final whitelist BOLD_ITALIC:I = 0x3

.field public static final whitelist DEFAULT:Landroid/graphics/Typeface;

.field public static final whitelist DEFAULT_BOLD:Landroid/graphics/Typeface;

.field public static final greylist-max-o DEFAULT_FAMILY:Ljava/lang/String; = "sans-serif"

.field private static final blacklist DROIDSANS:Ljava/lang/String; = "DroidSans.ttf"

.field private static final blacklist DROIDSANS_BOLD:Ljava/lang/String; = "DroidSans-Bold.ttf"

.field private static final greylist-max-o EMPTY_AXES:[I

.field public static final blacklist ENABLE_LAZY_TYPEFACE_INITIALIZATION:Z = true

.field private static final blacklist FONTS_FOLDER:Ljava/lang/String; = "/system/fonts/"

.field private static final blacklist FONT_WEIGHT_BOLD:I = 0x2bc

.field private static final blacklist FONT_WEIGHT_NORMAL:I = 0x190

.field private static blacklist FlipFontPath:Ljava/lang/String; = null

.field private static final blacklist FontsLikeBold:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist FontsLikeDefault:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist ITALIC:I = 0x2

.field public static final whitelist MONOSPACE:Landroid/graphics/Typeface;

.field public static final whitelist NORMAL:I = 0x0

.field private static final blacklist OWNER_SANS_LOC_PATH:Ljava/lang/String; = "/data/app_fonts/0/sans.loc"

.field public static final greylist-max-o RESOLVE_BY_FONT_TABLE:I = -0x1

.field private static final blacklist SANS_LOC_POST:Ljava/lang/String; = "/sans.loc"

.field private static final blacklist SANS_LOC_PRE:Ljava/lang/String; = "/data/app_fonts/"

.field public static final whitelist SANS_SERIF:Landroid/graphics/Typeface;

.field public static final whitelist SERIF:Landroid/graphics/Typeface;

.field private static final greylist-max-o STYLE_ITALIC:I = 0x1

.field public static final greylist-max-o STYLE_MASK:I = 0x3

.field private static final greylist-max-o STYLE_NORMAL:I = 0x0

.field private static final blacklist SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

.field private static greylist-max-o TAG:Ljava/lang/String; = null

.field private static final blacklist TAG_MONOTYPE:Ljava/lang/String; = "Monotype"

.field private static blacklist UIFontBoldPath:Ljava/lang/String; = null

.field private static blacklist UIFontPath:Ljava/lang/String; = null

.field private static final blacklist UI_FONT_BOLD_PATH:Ljava/lang/String; = "/system/fonts/UIBoldFont.ttf"

.field private static final blacklist UI_FONT_PATH:Ljava/lang/String; = "/system/fonts/UIFont.ttf"

.field private static final blacklist fontCache:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field public static blacklist isFlipFontUsed:Z

.field private static blacklist isMtFontsDirectoryExists:Z

.field private static blacklist sDefaultFlipfont:Landroid/graphics/Typeface;

.field static greylist-max-o sDefaultTypeface:Landroid/graphics/Typeface;

.field static greylist sDefaults:[Landroid/graphics/Typeface;

.field private static final greylist-max-o sDynamicCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sDynamicTypefaceCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sRegistry:Llibcore/util/NativeAllocationRegistry;

.field private static final greylist-max-o sStyledCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStyledTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field

.field static final greylist sSystemFallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/FontFamily;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist sSystemFontMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field static blacklist sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

.field static blacklist sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

.field private static final greylist-max-o sWeightCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sWeightTypefaceCache:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Typeface;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist isBoldFont:Z

.field public blacklist isLikeDefault:Z

.field private final blacklist mCleaner:Ljava/lang/Runnable;

.field private greylist mStyle:I

.field private greylist-max-o mSupportedAxes:[I

.field private final greylist-max-o mWeight:I

.field public greylist native_instance:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmStyle(Landroid/graphics/Typeface;)I
    .locals 0

    iget p0, p0, Landroid/graphics/Typeface;->mStyle:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWeight(Landroid/graphics/Typeface;)I
    .locals 0

    iget p0, p0, Landroid/graphics/Typeface;->mWeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicCacheLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetsDynamicTypefaceCache()Landroid/util/LruCache;
    .locals 1

    sget-object v0, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcreateWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 0

    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnativeCreateFromArray([JJII)J
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide p0

    return-wide p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 23

    .line 97
    const-string v0, "Typeface"

    sput-object v0, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    .line 102
    const-class v0, Landroid/graphics/Typeface;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {}, Landroid/graphics/Typeface;->nativeGetReleaseFunc()J

    move-result-wide v1

    .line 103
    invoke-static {v0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->createMalloced(Ljava/lang/ClassLoader;J)Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    sput-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    .line 107
    const/4 v0, 0x0

    sput-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 113
    sput-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 115
    sput-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 117
    sput-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 119
    sput-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 135
    new-instance v1, Landroid/util/LongSparseArray;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    .line 137
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    .line 143
    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1, v2}, Landroid/util/LongSparseArray;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    .line 145
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    .line 151
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    .line 152
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    .line 160
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->fontCache:Ljava/util/Hashtable;

    .line 168
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    .line 171
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 172
    sput-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 177
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    sput-object v1, Landroid/graphics/Typeface;->sSystemFallbackMap:Ljava/util/Map;

    .line 245
    const/4 v1, 0x0

    new-array v2, v1, [I

    sput-object v2, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    .line 262
    const-string v2, ""

    sput-object v2, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 263
    sput-boolean v1, Landroid/graphics/Typeface;->isMtFontsDirectoryExists:Z

    .line 266
    sput-object v0, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 267
    sput-object v0, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 276
    sput-boolean v1, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "sec-semibold"

    const-string/jumbo v2, "sec-bold"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 286
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeBold:Ljava/util/ArrayList;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    const-string/jumbo v1, "sec-400"

    const-string/jumbo v2, "sans-serif-thin"

    const-string/jumbo v3, "sans-serif-light"

    const-string/jumbo v4, "sans-serif"

    const-string/jumbo v5, "sans-serif-condensed"

    const-string/jumbo v6, "sans-serif-medium"

    const-string/jumbo v7, "sans-serif-black"

    const-string/jumbo v8, "sec-roboto-light"

    const-string/jumbo v9, "roboto-num3L"

    const-string/jumbo v10, "roboto-num3R"

    const-string/jumbo v11, "sec-roboto-condensed"

    const-string/jumbo v12, "sec-roboto-condensed-light"

    const-string/jumbo v13, "samsungoneui-num500"

    const-string v14, "clock2019L-RM"

    const-string v15, "clock2021"

    const-string v16, "clock2021-fixed"

    const-string/jumbo v17, "monospace"

    const-string/jumbo v18, "sec"

    const-string/jumbo v19, "sec-light"

    const-string/jumbo v20, "sec-medium"

    const-string/jumbo v21, "sec-semibold"

    const-string/jumbo v22, "sec-bold"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/graphics/Typeface;->FontsLikeDefault:Ljava/util/ArrayList;

    .line 1539
    const-string v0, "/system/fonts/Roboto-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1540
    const-string v0, "/system/fonts/RobotoStatic-Regular.ttf"

    invoke-static {v0}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1542
    const-string/jumbo v0, "persist.sys.locale"

    const-string v1, "en-US"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1543
    .local v0, "locale":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/ULocale;->forLanguageTag(Ljava/lang/String;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v1

    .line 1545
    .local v1, "script":Ljava/lang/String;
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v2

    .line 1546
    .local v2, "config":Landroid/text/FontConfig;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 1547
    invoke-virtual {v2}, Landroid/text/FontConfig;->getFontFamilies()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/FontConfig$FontFamily;

    .line 1548
    .local v4, "family":Landroid/text/FontConfig$FontFamily;
    const/4 v5, 0x0

    .line 1549
    .local v5, "loadFamily":Z
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/LocaleList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1550
    nop

    .line 1551
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getLocaleList()Landroid/os/LocaleList;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v7

    invoke-static {v7}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1550
    invoke-static {v7}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v7

    .line 1551
    invoke-virtual {v7}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v7

    .line 1552
    .local v7, "fontScript":Ljava/lang/String;
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1553
    if-eqz v5, :cond_0

    .line 1554
    goto :goto_2

    .line 1549
    .end local v7    # "fontScript":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1557
    .end local v6    # "j":I
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    .line 1558
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_3
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1559
    invoke-virtual {v4}, Landroid/text/FontConfig$FontFamily;->getFontList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/FontConfig$Font;

    invoke-virtual {v7}, Landroid/text/FontConfig$Font;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/graphics/Typeface;->preloadFontFile(Ljava/lang/String;)V

    .line 1558
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1546
    .end local v4    # "family":Landroid/text/FontConfig$FontFamily;
    .end local v5    # "loadFamily":Z
    .end local v6    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1602
    .end local v0    # "locale":Ljava/lang/String;
    .end local v1    # "script":Ljava/lang/String;
    .end local v2    # "config":Landroid/text/FontConfig;
    .end local v3    # "i":I
    :cond_3
    return-void
.end method

.method private constructor greylist-max-p <init>(J)V
    .locals 2
    .param p1, "ni"    # J

    .line 1279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 283
    iput-boolean v0, p0, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1280
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1284
    iput-wide p1, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1285
    sget-object v0, Landroid/graphics/Typeface;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    invoke-virtual {v0, p0, p1, p2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    .line 1286
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mStyle:I

    .line 1287
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->nativeGetWeight(J)I

    move-result v0

    iput v0, p0, Landroid/graphics/Typeface;->mWeight:I

    .line 1288
    return-void

    .line 1281
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "native typeface cannot be made"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(JLandroid/graphics/Typeface-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/graphics/Typeface;-><init>(J)V

    return-void
.end method

.method public static whitelist create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;
    .locals 7
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "style"    # I

    .line 998
    and-int/lit8 v0, p1, -0x4

    if-eqz v0, :cond_0

    .line 999
    const/4 p1, 0x0

    .line 1001
    :cond_0
    if-nez p0, :cond_1

    .line 1002
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1005
    :cond_1
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_3

    .line 1006
    iget-boolean v0, p0, Landroid/graphics/Typeface;->isBoldFont:Z

    if-nez v0, :cond_2

    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    .line 1010
    :cond_3
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v0, p1, :cond_4

    .line 1011
    return-object p0

    .line 1014
    :cond_4
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1017
    .local v0, "ni":J
    sget-object v2, Landroid/graphics/Typeface;->sStyledCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1018
    :try_start_0
    sget-object v3, Landroid/graphics/Typeface;->sStyledTypefaceCache:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1020
    .local v4, "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v4, :cond_5

    .line 1021
    new-instance v5, Landroid/util/SparseArray;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Landroid/util/SparseArray;-><init>(I)V

    move-object v4, v5

    .line 1022
    invoke-virtual {v3, v0, v1, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1024
    :cond_5
    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1025
    .local v3, "typeface":Landroid/graphics/Typeface;
    if-eqz v3, :cond_6

    .line 1026
    monitor-exit v2

    return-object v3

    .line 1030
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :cond_6
    :goto_1
    new-instance v3, Landroid/graphics/Typeface;

    invoke-static {v0, v1, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v5

    invoke-direct {v3, v5, v6}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1032
    .restart local v3    # "typeface":Landroid/graphics/Typeface;
    if-eqz p0, :cond_7

    iget v5, p0, Landroid/graphics/Typeface;->mStyle:I

    if-ne v5, p1, :cond_7

    .line 1033
    iget-boolean v5, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v5, v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 1034
    iget-boolean v5, p0, Landroid/graphics/Typeface;->isBoldFont:Z

    iput-boolean v5, v3, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1037
    :cond_7
    invoke-virtual {v4, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1038
    .end local v4    # "styles":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v2

    .line 1039
    return-object v3

    .line 1038
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static whitelist create(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "family"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1079
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    const-string/jumbo v2, "weight"

    invoke-static {p1, v0, v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 1080
    if-nez p0, :cond_0

    .line 1081
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object p0

    .line 1083
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/graphics/Typeface;->createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist create(Ljava/lang/String;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "style"    # I

    .line 977
    invoke-static {p0}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 1147
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0, p1}, Landroid/graphics/Typeface$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1151
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    return-object v0

    .line 1153
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 1154
    .local v1, "inputStream":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    .end local v1    # "inputStream":Ljava/io/InputStream;
    :cond_1
    nop

    .line 1158
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1154
    :catch_0
    move-exception v1

    .line 1155
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Font asset not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static greylist createFromFamilies([Landroid/graphics/FontFamily;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1214
    array-length v0, p0

    new-array v0, v0, [J

    .line 1215
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1216
    aget-object v2, p0, v1

    iget-wide v2, v2, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v2, v0, v1

    .line 1215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1218
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v1
.end method

.method private static blacklist createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "families"    # [Landroid/graphics/fonts/FontFamily;

    .line 1229
    array-length v0, p0

    new-array v0, v0, [J

    .line 1230
    .local v0, "ptrArray":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1231
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/graphics/fonts/FontFamily;->getNativePtr()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1233
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Landroid/graphics/Typeface;

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    invoke-static {v0, v2, v3, v4, v4}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v1
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;II)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "weight"    # I
    .param p2, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1246
    const-string/jumbo v0, "sans-serif"

    invoke-static {p0, v0, p1, p2}, Landroid/graphics/Typeface;->createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method private static greylist createFromFamiliesWithDefault([Landroid/graphics/FontFamily;Ljava/lang/String;II)Landroid/graphics/Typeface;
    .locals 5
    .param p0, "families"    # [Landroid/graphics/FontFamily;
    .param p1, "fallbackName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "italic"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1268
    invoke-static {p1}, Landroid/graphics/Typeface;->getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 1269
    .local v0, "fallbackTypeface":Landroid/graphics/Typeface;
    array-length v1, p0

    new-array v1, v1, [J

    .line 1270
    .local v1, "ptrArray":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 1271
    aget-object v3, p0, v2

    iget-wide v3, v3, Landroid/graphics/FontFamily;->mNativePtr:J

    aput-wide v3, v1, v2

    .line 1270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1273
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Landroid/graphics/Typeface;

    iget-wide v3, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v3, v4, p2, p3}, Landroid/graphics/Typeface;->nativeCreateFromArray([JJII)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v2
.end method

.method public static whitelist createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 1183
    new-instance v0, Landroid/graphics/Typeface$Builder;

    invoke-direct {v0, p0}, Landroid/graphics/Typeface$Builder;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Landroid/graphics/Typeface$Builder;->build()Landroid/graphics/Typeface;

    move-result-object v0

    .line 1184
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    return-object v0

    .line 1187
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1191
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 1188
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Font asset not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static whitelist createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .line 1201
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o createFromResources(Landroid/content/res/FontResourcesParser$FamilyResourceEntry;Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 11
    .param p0, "entry"    # Landroid/content/res/FontResourcesParser$FamilyResourceEntry;
    .param p1, "mgr"    # Landroid/content/res/AssetManager;
    .param p2, "path"    # Ljava/lang/String;

    .line 384
    instance-of v0, p0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 385
    move-object v0, p0

    check-cast v0, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;

    .line 387
    .local v0, "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getSystemFontFamilyName()Ljava/lang/String;

    move-result-object v2

    .line 388
    .local v2, "systemFontFamilyName":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/graphics/Typeface;->hasFontFamily(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    return-object v1

    .line 392
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getCerts()Ljava/util/List;

    move-result-object v3

    .line 393
    .local v3, "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v4, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    if-eqz v3, :cond_2

    .line 395
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 396
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 397
    .local v6, "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v7, "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 399
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 401
    .end local v8    # "j":I
    :cond_1
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v6    # "certSet":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "byteArraySet":Ljava/util/List;, "Ljava/util/List<[B>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 406
    .end local v5    # "i":I
    :cond_2
    new-instance v1, Landroid/provider/FontRequest;

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 407
    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/res/FontResourcesParser$ProviderResourceEntry;->getQuery()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7, v4}, Landroid/provider/FontRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 408
    .local v1, "request":Landroid/provider/FontRequest;
    invoke-static {v1}, Landroid/provider/FontsContract;->getFontSync(Landroid/provider/FontRequest;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 409
    .local v5, "typeface":Landroid/graphics/Typeface;
    if-nez v5, :cond_3

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_2

    :cond_3
    move-object v6, v5

    :goto_2
    return-object v6

    .line 412
    .end local v0    # "providerEntry":Landroid/content/res/FontResourcesParser$ProviderResourceEntry;
    .end local v1    # "request":Landroid/provider/FontRequest;
    .end local v2    # "systemFontFamilyName":Ljava/lang/String;
    .end local v3    # "givenCerts":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v4    # "certs":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<[B>;>;"
    .end local v5    # "typeface":Landroid/graphics/Typeface;
    :cond_4
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 413
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_5

    return-object v0

    .line 416
    :cond_5
    move-object v2, p0

    check-cast v2, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;

    .line 419
    .local v2, "filesEntry":Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;
    const/4 v3, 0x0

    .line 420
    .local v3, "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/FontResourcesParser$FontFamilyFilesResourceEntry;->getEntries()[Landroid/content/res/FontResourcesParser$FontFileResourceEntry;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_3
    if-ge v6, v5, :cond_a

    aget-object v7, v4, v6

    .line 421
    .local v7, "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    new-instance v8, Landroid/graphics/fonts/Font$Builder;

    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getFileName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    invoke-direct {v8, p1, v9, v1, v10}, Landroid/graphics/fonts/Font$Builder;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;ZI)V

    .line 423
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getTtcIndex()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setTtcIndex(I)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 424
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getVariationSettings()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setFontVariationSettings(Ljava/lang/String;)Landroid/graphics/fonts/Font$Builder;

    move-result-object v8

    .line 425
    .local v8, "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    if-eq v9, v10, :cond_6

    .line 426
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getWeight()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/graphics/fonts/Font$Builder;->setWeight(I)Landroid/graphics/fonts/Font$Builder;

    .line 428
    :cond_6
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    if-eq v9, v10, :cond_8

    .line 429
    invoke-virtual {v7}, Landroid/content/res/FontResourcesParser$FontFileResourceEntry;->getItalic()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 430
    goto :goto_4

    :cond_7
    move v10, v1

    .line 429
    :goto_4
    invoke-virtual {v8, v10}, Landroid/graphics/fonts/Font$Builder;->setSlant(I)Landroid/graphics/fonts/Font$Builder;

    .line 433
    :cond_8
    if-nez v3, :cond_9

    .line 434
    new-instance v9, Landroid/graphics/fonts/FontFamily$Builder;

    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/graphics/fonts/FontFamily$Builder;-><init>(Landroid/graphics/fonts/Font;)V

    move-object v3, v9

    goto :goto_5

    .line 436
    :cond_9
    invoke-virtual {v8}, Landroid/graphics/fonts/Font$Builder;->build()Landroid/graphics/fonts/Font;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/graphics/fonts/FontFamily$Builder;->addFont(Landroid/graphics/fonts/Font;)Landroid/graphics/fonts/FontFamily$Builder;

    .line 420
    .end local v7    # "fontFile":Landroid/content/res/FontResourcesParser$FontFileResourceEntry;
    .end local v8    # "fontBuilder":Landroid/graphics/fonts/Font$Builder;
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 439
    :cond_a
    if-nez v3, :cond_b

    .line 440
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    return-object v1

    .line 442
    :cond_b
    invoke-virtual {v3}, Landroid/graphics/fonts/FontFamily$Builder;->build()Landroid/graphics/fonts/FontFamily;

    move-result-object v4

    .line 443
    .local v4, "family":Landroid/graphics/fonts/FontFamily;
    new-instance v5, Landroid/graphics/fonts/FontStyle;

    const/16 v6, 0x190

    invoke-direct {v5, v6, v1}, Landroid/graphics/fonts/FontStyle;-><init>(II)V

    .line 445
    .local v5, "normal":Landroid/graphics/fonts/FontStyle;
    invoke-virtual {v4, v1}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v1

    .line 446
    .local v1, "bestFont":Landroid/graphics/fonts/Font;
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v6

    .line 447
    .local v6, "bestScore":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_6
    invoke-virtual {v4}, Landroid/graphics/fonts/FontFamily;->getSize()I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 448
    invoke-virtual {v4, v7}, Landroid/graphics/fonts/FontFamily;->getFont(I)Landroid/graphics/fonts/Font;

    move-result-object v8

    .line 449
    .local v8, "candidate":Landroid/graphics/fonts/Font;
    invoke-virtual {v8}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/fonts/FontStyle;->getMatchScore(Landroid/graphics/fonts/FontStyle;)I

    move-result v9

    .line 450
    .local v9, "score":I
    if-ge v9, v6, :cond_c

    .line 451
    move-object v1, v8

    .line 452
    move v6, v9

    .line 447
    .end local v8    # "candidate":Landroid/graphics/fonts/Font;
    .end local v9    # "score":I
    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 455
    .end local v7    # "i":I
    :cond_d
    new-instance v7, Landroid/graphics/Typeface$CustomFallbackBuilder;

    invoke-direct {v7, v4}, Landroid/graphics/Typeface$CustomFallbackBuilder;-><init>(Landroid/graphics/fonts/FontFamily;)V

    .line 456
    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->getStyle()Landroid/graphics/fonts/FontStyle;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Typeface$CustomFallbackBuilder;->setStyle(Landroid/graphics/fonts/FontStyle;)Landroid/graphics/Typeface$CustomFallbackBuilder;

    move-result-object v7

    .line 457
    invoke-virtual {v7}, Landroid/graphics/Typeface$CustomFallbackBuilder;->build()Landroid/graphics/Typeface;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v7

    .line 464
    .end local v1    # "bestFont":Landroid/graphics/fonts/Font;
    .end local v3    # "familyBuilder":Landroid/graphics/fonts/FontFamily$Builder;
    .end local v4    # "family":Landroid/graphics/fonts/FontFamily;
    .end local v5    # "normal":Landroid/graphics/fonts/FontStyle;
    .end local v6    # "bestScore":I
    move-object v1, v0

    goto :goto_7

    .line 462
    :catch_0
    move-exception v1

    .line 463
    .local v1, "e":Ljava/io/IOException;
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v1, v0

    .line 465
    .end local v0    # "typeface":Landroid/graphics/Typeface;
    .local v1, "typeface":Landroid/graphics/Typeface;
    :goto_7
    sget-object v3, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 466
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    :try_start_1
    const-string/jumbo v10, "sans-serif"

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v4 .. v10}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 469
    .local v0, "key":Ljava/lang/String;
    sget-object v4, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v4, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    nop

    .end local v0    # "key":Ljava/lang/String;
    monitor-exit v3

    .line 471
    return-object v1

    .line 470
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 458
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    .local v0, "typeface":Landroid/graphics/Typeface;
    :catch_1
    move-exception v1

    .line 461
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    return-object v3
.end method

.method public static greylist-max-o createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;
    .locals 4
    .param p0, "family"    # Landroid/graphics/Typeface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Typeface;",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)",
            "Landroid/graphics/Typeface;"
        }
    .end annotation

    .line 1121
    .local p1, "axes":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/fonts/FontVariationAxis;>;"
    if-nez p0, :cond_0

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 1122
    .local v0, "base":Landroid/graphics/Typeface;
    :goto_0
    new-instance v1, Landroid/graphics/Typeface;

    iget-wide v2, v0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3, p1}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    return-object v1
.end method

.method private static greylist-max-o createProviderUid(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "query"    # Ljava/lang/String;

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1166
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "provider:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1169
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o createWeightStyle(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "base"    # Landroid/graphics/Typeface;
    .param p1, "weight"    # I
    .param p2, "italic"    # Z

    .line 1088
    shl-int/lit8 v0, p1, 0x1

    or-int/2addr v0, p2

    .line 1091
    .local v0, "key":I
    sget-object v1, Landroid/graphics/Typeface;->sWeightCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1092
    :try_start_0
    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v2, :cond_1

    .line 1093
    const/16 v2, 0x1f4

    if-gt p1, v2, :cond_0

    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    :goto_0
    monitor-exit v1

    return-object v2

    .line 1096
    :cond_1
    sget-object v2, Landroid/graphics/Typeface;->sWeightTypefaceCache:Landroid/util/LongSparseArray;

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1097
    .local v3, "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    if-nez v3, :cond_2

    .line 1098
    new-instance v4, Landroid/util/SparseArray;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    move-object v3, v4

    .line 1099
    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-virtual {v2, v4, v5, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    .line 1101
    :cond_2
    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1102
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_3

    .line 1103
    monitor-exit v1

    return-object v2

    .line 1107
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    :goto_1
    new-instance v2, Landroid/graphics/Typeface;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    .line 1108
    invoke-static {v4, v5, p1, p2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1109
    .restart local v2    # "typeface":Landroid/graphics/Typeface;
    if-eqz p0, :cond_4

    .line 1110
    iget-boolean v4, p0, Landroid/graphics/Typeface;->isLikeDefault:Z

    iput-boolean v4, v2, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 1111
    iget-boolean v4, p0, Landroid/graphics/Typeface;->isBoldFont:Z

    iput-boolean v4, v2, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1113
    :cond_4
    invoke-virtual {v3, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1114
    .end local v3    # "innerCache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Typeface;>;"
    monitor-exit v1

    .line 1115
    return-object v2

    .line 1114
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static whitelist defaultFromStyle(I)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "style"    # I

    .line 1131
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1132
    if-ltz p0, :cond_0

    const/4 v1, 0x3

    if-le p0, v1, :cond_1

    .line 1133
    :cond_0
    const/4 p0, 0x0

    .line 1135
    :cond_1
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v1, v1, p0

    monitor-exit v0

    return-object v1

    .line 1136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J
    .locals 10
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)[J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1399
    .local p1, "out":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1400
    .local v0, "typefacesBytesCount":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Typeface;->nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J

    move-result-object v1

    .line 1401
    .local v1, "nativePtrs":[J
    if-eqz v1, :cond_3

    .line 1404
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 1405
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1406
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v1, v3

    .line 1407
    .local v4, "nativePtr":J
    invoke-static {p0}, Landroid/graphics/Typeface;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v6

    .line 1410
    .local v6, "name":Ljava/lang/String;
    new-instance v7, Landroid/graphics/Typeface;

    invoke-direct {v7, v4, v5}, Landroid/graphics/Typeface;-><init>(J)V

    .line 1411
    .local v7, "tf":Landroid/graphics/Typeface;
    sget-object v8, Landroid/graphics/Typeface;->FontsLikeDefault:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_0

    .line 1412
    iput-boolean v9, v7, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 1414
    :cond_0
    sget-object v8, Landroid/graphics/Typeface;->FontsLikeBold:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1415
    iput-boolean v9, v7, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1417
    :cond_1
    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1406
    .end local v4    # "nativePtr":J
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "tf":Landroid/graphics/Typeface;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1420
    :cond_2
    return-object v1

    .line 1402
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not read typefaces"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static blacklist destroySystemFontMap()V
    .locals 4

    .line 1576
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1577
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 1578
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget-object v3, v2, Landroid/graphics/Typeface;->mCleaner:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 1579
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1580
    :cond_0
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1581
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    .line 1582
    invoke-static {v1}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1584
    :cond_1
    const/4 v1, 0x0

    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1585
    sput-object v1, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1586
    monitor-exit v0

    .line 1587
    return-void

    .line 1586
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static greylist-max-o findFromCache(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 8
    .param p0, "mgr"    # Landroid/content/res/AssetManager;
    .param p1, "path"    # Ljava/lang/String;

    .line 479
    sget-object v0, Landroid/graphics/Typeface;->sDynamicCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 480
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    :try_start_0
    const-string/jumbo v7, "sans-serif"

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Typeface$Builder;->-$$Nest$smcreateAssetUid(Landroid/content/res/AssetManager;Ljava/lang/String;I[Landroid/graphics/fonts/FontVariationAxis;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Landroid/graphics/Typeface;->sDynamicTypefaceCache:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 484
    .local v2, "typeface":Landroid/graphics/Typeface;
    if-eqz v2, :cond_0

    .line 485
    monitor-exit v0

    return-object v2

    .line 487
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    monitor-exit v0

    .line 488
    const/4 v0, 0x0

    return-object v0

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist getDefault()Landroid/graphics/Typeface;
    .locals 2

    .line 337
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 338
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    monitor-exit v0

    return-object v1

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getFontNameFlipFont()Ljava/lang/String;
    .locals 4

    .line 1712
    invoke-static {}, Landroid/graphics/Typeface;->getFullFlipFont()Ljava/lang/String;

    move-result-object v0

    .line 1713
    .local v0, "sx":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1716
    .local v1, "parts":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 1717
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1718
    return-object v3

    .line 1720
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 1723
    :cond_1
    const/4 v2, 0x1

    aget-object v2, v1, v2

    return-object v2
.end method

.method private static blacklist getFontPathFlipFont()Ljava/lang/String;
    .locals 3

    .line 1731
    invoke-static {}, Landroid/graphics/Typeface;->getFullFlipFont()Ljava/lang/String;

    move-result-object v0

    .line 1732
    .local v0, "sx":Ljava/lang/String;
    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1733
    .local v1, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    return-object v2
.end method

.method private static blacklist getFullFlipFont()Ljava/lang/String;
    .locals 6

    .line 1741
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1742
    .local v0, "mtFontsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 1743
    const-string v1, "default"

    return-object v1

    .line 1747
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/app_fonts/0/sans.loc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1748
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1749
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1750
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1751
    .local v4, "systemFont":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v3    # "br":Ljava/io/BufferedReader;
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1753
    .end local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .line 1748
    .end local v4    # "systemFont":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v5

    :try_start_6
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mtFontsDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    :goto_0
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "mtFontsDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v4

    :try_start_8
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mtFontsDir":Ljava/io/File;
    .end local v1    # "file":Ljava/io/File;
    :goto_1
    throw v3
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1751
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "mtFontsDir":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 1752
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "default"

    .line 1754
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "systemFont":Ljava/lang/String;
    :goto_2
    return-object v4
.end method

.method private static blacklist getSystemDefaultTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;

    .line 1291
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 1292
    .local v0, "tf":Landroid/graphics/Typeface;
    if-nez v0, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static blacklist getSystemFontMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation

    .line 1446
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    monitor-exit v0

    return-object v1

    .line 1448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getSystemFontMapSharedMemory()Landroid/os/SharedMemory;
    .locals 1

    .line 199
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    return-object v0
.end method

.method private static blacklist hasFontFamily(Ljava/lang/String;)Z
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;

    .line 371
    const-string v0, "familyName cannot be null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist initSystemDefaultTypefaces(Ljava/util/Map;Ljava/util/List;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Landroid/graphics/fonts/FontFamily;",
            ">;",
            "Ljava/util/List<",
            "Landroid/text/FontConfig$Alias;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1300
    .local p0, "fallbacks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .local p1, "aliases":Ljava/util/List;, "Ljava/util/List<Landroid/text/FontConfig$Alias;>;"
    .local p2, "outSystemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1302
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/graphics/fonts/FontFamily;

    invoke-static {v3}, Landroid/graphics/Typeface;->createFromFamilies([Landroid/graphics/fonts/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 1304
    .local v3, "typeface":Landroid/graphics/Typeface;
    sget-object v4, Landroid/graphics/Typeface;->FontsLikeDefault:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1305
    iput-boolean v2, v3, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 1308
    :cond_0
    sget-object v4, Landroid/graphics/Typeface;->FontsLikeBold:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1309
    iput-boolean v2, v3, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1311
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    .end local v3    # "typeface":Landroid/graphics/Typeface;
    goto :goto_0

    .line 1317
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 1318
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/FontConfig$Alias;

    .line 1319
    .local v1, "alias":Landroid/text/FontConfig$Alias;
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1320
    goto :goto_3

    .line 1322
    :cond_3
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    .line 1323
    .local v3, "base":Landroid/graphics/Typeface;
    if-nez v3, :cond_4

    .line 1326
    goto :goto_3

    .line 1328
    :cond_4
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getWeight()I

    move-result v4

    .line 1329
    .local v4, "weight":I
    const/16 v5, 0x190

    if-ne v4, v5, :cond_5

    move-object v6, v3

    goto :goto_2

    .line 1330
    :cond_5
    new-instance v6, Landroid/graphics/Typeface;

    iget-wide v7, v3, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8, v4}, Landroid/graphics/Typeface;->nativeCreateWeightAlias(JI)J

    move-result-wide v7

    invoke-direct {v6, v7, v8}, Landroid/graphics/Typeface;-><init>(J)V

    :goto_2
    nop

    .line 1331
    .local v6, "newFace":Landroid/graphics/Typeface;
    if-eq v4, v5, :cond_7

    .line 1333
    sget-object v5, Landroid/graphics/Typeface;->FontsLikeDefault:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1334
    iput-boolean v2, v6, Landroid/graphics/Typeface;->isLikeDefault:Z

    .line 1337
    :cond_6
    sget-object v5, Landroid/graphics/Typeface;->FontsLikeBold:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getOriginal()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1338
    iput-boolean v2, v6, Landroid/graphics/Typeface;->isBoldFont:Z

    .line 1341
    :cond_7
    invoke-virtual {v1}, Landroid/text/FontConfig$Alias;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1317
    .end local v1    # "alias":Landroid/text/FontConfig$Alias;
    .end local v3    # "base":Landroid/graphics/Typeface;
    .end local v4    # "weight":I
    .end local v6    # "newFace":Landroid/graphics/Typeface;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1343
    .end local v0    # "i":I
    :cond_8
    return-void
.end method

.method public static blacklist loadPreinstalledSystemFontMap()V
    .locals 3

    .line 1591
    invoke-static {}, Landroid/graphics/fonts/SystemFonts;->getSystemPreinstalledFontConfig()Landroid/text/FontConfig;

    move-result-object v0

    .line 1592
    .local v0, "fontConfig":Landroid/text/FontConfig;
    invoke-static {v0}, Landroid/graphics/fonts/SystemFonts;->buildSystemFallback(Landroid/text/FontConfig;)Ljava/util/Map;

    move-result-object v1

    .line 1593
    .local v1, "fallback":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Landroid/graphics/fonts/FontFamily;>;"
    nop

    .line 1594
    invoke-static {v0, v1}, Landroid/graphics/fonts/SystemFonts;->buildSystemTypefaces(Landroid/text/FontConfig;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 1595
    .local v2, "typefaceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V

    .line 1596
    return-void
.end method

.method private static blacklist makeMtFontsDirectory()V
    .locals 6

    .line 1873
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/app_fonts/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1874
    .local v0, "mtFontsDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1875
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    const-string v2, "Monotype"

    if-nez v1, :cond_0

    .line 1876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot make directory : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1878
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 1879
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot set Readable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    :cond_1
    invoke-virtual {v0, v1, v3}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1883
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set Writable : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1886
    :cond_2
    const-string/jumbo v1, "makeMtFontsDirectory()"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_3
    return-void
.end method

.method private static native blacklist nativeAddFontCollections(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-r nativeCreateFromArray([JJII)J
.end method

.method private static native greylist-max-o nativeCreateFromTypeface(JI)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithExactStyle(JIZ)J
.end method

.method private static native greylist-max-o nativeCreateFromTypefaceWithVariation(JLjava/util/List;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontVariationAxis;",
            ">;)J"
        }
    .end annotation
.end method

.method private static native greylist nativeCreateWeightAlias(JI)J
.end method

.method private static native blacklist nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V
.end method

.method private static native blacklist nativeGetFamily(JI)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeGetFamilySize(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nativeGetSupportedAxes(J)[I
.end method

.method private static native greylist-max-o nativeGetWeight(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeReadTypefaces(Ljava/nio/ByteBuffer;)[J
.end method

.method private static native blacklist nativeRegisterGenericFamily(Ljava/lang/String;J)V
.end method

.method private static native greylist-max-o nativeSetDefault(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nativeWarmUpCache(Ljava/lang/String;)V
.end method

.method private static native blacklist nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I
.end method

.method private static blacklist preloadFontFile(Ljava/lang/String;)V
    .locals 4
    .param p0, "filePath"    # Ljava/lang/String;

    .line 1566
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1567
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1568
    sget-object v1, Landroid/graphics/Typeface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    invoke-static {p0}, Landroid/graphics/Typeface;->nativeWarmUpCache(Ljava/lang/String;)V

    .line 1571
    :cond_0
    return-void
.end method

.method private static blacklist readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 1424
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 1425
    .local v0, "length":I
    new-array v1, v0, [B

    .line 1426
    .local v1, "bytes":[B
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1427
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method private static blacklist registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V
    .locals 2
    .param p0, "familyName"    # Ljava/lang/String;
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1347
    if-eqz p1, :cond_0

    .line 1348
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {p0, v0, v1}, Landroid/graphics/Typeface;->nativeRegisterGenericFamily(Ljava/lang/String;J)V

    .line 1350
    :cond_0
    return-void
.end method

.method public static whitelist semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "typefaceIndex"    # I

    .line 1693
    invoke-static {}, Landroid/graphics/Typeface;->getFontPathFlipFont()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist semIsDefaultFontStyle()Z
    .locals 1

    .line 1704
    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static blacklist serializeFontMap(Ljava/util/Map;)Landroid/os/SharedMemory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)",
            "Landroid/os/SharedMemory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1360
    .local p0, "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 1362
    .local v0, "nativePtrs":[J
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1363
    .local v1, "namesBytes":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 1364
    .local v2, "i":I
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1365
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    aput-wide v6, v0, v2

    .line 1366
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    .line 1367
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    move v2, v5

    goto :goto_0

    .line 1368
    .end local v5    # "i":I
    .restart local v2    # "i":I
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v3

    .line 1370
    .local v3, "typefacesBytesCount":I
    add-int/lit8 v4, v3, 0x4

    .line 1371
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    add-int/2addr v4, v5

    .line 1370
    const-string v5, "fontMap"

    invoke-static {v5, v4}, Landroid/os/SharedMemory;->create(Ljava/lang/String;I)Landroid/os/SharedMemory;

    move-result-object v4

    .line 1372
    .local v4, "sharedMemory":Landroid/os/SharedMemory;
    invoke-virtual {v4}, Landroid/os/SharedMemory;->mapReadWrite()Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 1374
    .local v5, "writableBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v5, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1375
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v6, v0}, Landroid/graphics/Typeface;->nativeWriteTypefaces(Ljava/nio/ByteBuffer;[J)I

    move-result v6

    .line 1376
    .local v6, "writtenBytesCount":I
    if-ne v6, v3, :cond_1

    .line 1380
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1381
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1383
    nop

    .end local v6    # "writtenBytesCount":I
    invoke-static {v5}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1384
    nop

    .line 1385
    sget v6, Landroid/system/OsConstants;->PROT_READ:I

    invoke-virtual {v4, v6}, Landroid/os/SharedMemory;->setProtect(I)Z

    .line 1386
    return-object v4

    .line 1377
    .restart local v6    # "writtenBytesCount":I
    :cond_1
    :try_start_1
    new-instance v7, Ljava/io/IOException;

    const-string v8, "Unexpected bytes written: %d, expected: %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 1378
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 1377
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "nativePtrs":[J
    .end local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "i":I
    .end local v3    # "typefacesBytesCount":I
    .end local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .end local v5    # "writableBuffer":Ljava/nio/ByteBuffer;
    .end local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1383
    .end local v6    # "writtenBytesCount":I
    .restart local v0    # "nativePtrs":[J
    .restart local v1    # "namesBytes":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "i":I
    .restart local v3    # "typefacesBytesCount":I
    .restart local v4    # "sharedMemory":Landroid/os/SharedMemory;
    .restart local v5    # "writableBuffer":Ljava/nio/ByteBuffer;
    .restart local p0    # "fontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    :catchall_0
    move-exception v6

    invoke-static {v5}, Landroid/os/SharedMemory;->unmap(Ljava/nio/ByteBuffer;)V

    .line 1384
    throw v6
.end method

.method private static greylist-max-p setDefault(Landroid/graphics/Typeface;)V
    .locals 5
    .param p0, "t"    # Landroid/graphics/Typeface;

    .line 327
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    new-instance v1, Landroid/graphics/Typeface;

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    iget v4, p0, Landroid/graphics/Typeface;->mStyle:I

    invoke-static {v2, v3, v4}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Typeface;-><init>(J)V

    sput-object v1, Landroid/graphics/Typeface;->sDefaultFlipfont:Landroid/graphics/Typeface;

    .line 331
    sput-object p0, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    .line 332
    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 333
    monitor-exit v0

    .line 334
    return-void

    .line 333
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist setFlipFonts()V
    .locals 12

    .line 1763
    invoke-static {}, Landroid/graphics/Typeface;->getDefault()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1764
    return-void

    .line 1768
    :cond_0
    invoke-static {}, Landroid/graphics/Typeface;->getFontPathFlipFont()Ljava/lang/String;

    move-result-object v0

    .line 1772
    .local v0, "strFontPath":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 1774
    sget-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 1775
    const-string v1, ""

    sput-object v1, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 1776
    sput-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 1778
    new-instance v1, Ljava/io/File;

    const-string v4, "/system/fonts/UIFont.ttf"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1779
    .local v1, "UIFontFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1780
    sput-object v4, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    .line 1783
    :cond_1
    new-instance v4, Ljava/io/File;

    const-string v5, "/system/fonts/UIBoldFont.ttf"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1784
    .local v4, "UIFontBoldFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1785
    sput-object v5, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 1789
    .end local v1    # "UIFontFile":Ljava/io/File;
    .end local v4    # "UIFontBoldFile":Ljava/io/File;
    :cond_2
    sput-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 1790
    sget-object v1, Landroid/graphics/Typeface;->UIFontBoldPath:Ljava/lang/String;

    .line 1791
    .local v1, "strFontPathBold":Ljava/lang/String;
    sget-object v0, Landroid/graphics/Typeface;->UIFontPath:Ljava/lang/String;

    goto :goto_0

    .line 1794
    .end local v1    # "strFontPathBold":Ljava/lang/String;
    :cond_3
    sput-boolean v3, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "DroidSans-Bold.ttf"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1796
    .restart local v1    # "strFontPathBold":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "DroidSans.ttf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1800
    :goto_0
    sget-object v4, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1801
    return-void

    .line 1804
    :cond_4
    sput-object v0, Landroid/graphics/Typeface;->FlipFontPath:Ljava/lang/String;

    .line 1807
    sget-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v4, :cond_5

    .line 1808
    sget-object v4, Landroid/graphics/Typeface;->sDefaultFlipfont:Landroid/graphics/Typeface;

    iget-wide v8, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 1809
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v6, v7, v2}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v8

    iput-wide v8, v4, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_2

    .line 1811
    :cond_5
    sget-object v4, Landroid/graphics/Typeface;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1812
    .local v4, "tf":Landroid/graphics/Typeface;
    if-nez v4, :cond_7

    .line 1814
    :try_start_0
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v8

    .line 1817
    goto :goto_1

    .line 1815
    :catch_0
    move-exception v8

    .line 1816
    .local v8, "e":Ljava/lang/RuntimeException;
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v9, Landroid/graphics/Typeface;->native_instance:J

    .line 1819
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :goto_1
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v9, v8, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v9, v9, v6

    if-nez v9, :cond_6

    .line 1820
    move-object v9, v5

    check-cast v9, Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1821
    iget-wide v9, v4, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v9, v8, Landroid/graphics/Typeface;->native_instance:J

    .line 1823
    :cond_6
    sget-object v8, Landroid/graphics/Typeface;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v8, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1825
    :cond_7
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v9, v4, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v9, v8, Landroid/graphics/Typeface;->native_instance:J

    .line 1827
    .end local v4    # "tf":Landroid/graphics/Typeface;
    :goto_2
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v8, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v8, v9}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v8

    iput v8, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 1830
    sget-boolean v4, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_4

    .line 1833
    :cond_8
    sget-object v4, Landroid/graphics/Typeface;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Typeface;

    .line 1834
    .restart local v4    # "tf":Landroid/graphics/Typeface;
    if-nez v4, :cond_a

    .line 1836
    :try_start_1
    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v8

    .line 1839
    goto :goto_3

    .line 1837
    :catch_1
    move-exception v8

    .line 1838
    .restart local v8    # "e":Ljava/lang/RuntimeException;
    sget-object v9, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v10

    iget-wide v10, v10, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v10, v9, Landroid/graphics/Typeface;->native_instance:J

    .line 1841
    .end local v8    # "e":Ljava/lang/RuntimeException;
    :goto_3
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v8, v8, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v6, v8, v6

    if-nez v6, :cond_9

    .line 1842
    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v5, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    .line 1844
    :cond_9
    sget-object v5, Landroid/graphics/Typeface;->fontCache:Ljava/util/Hashtable;

    invoke-virtual {v5, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1846
    :cond_a
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v6, v4, Landroid/graphics/Typeface;->native_instance:J

    iput-wide v6, v5, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_5

    .line 1831
    .end local v4    # "tf":Landroid/graphics/Typeface;
    :cond_b
    :goto_4
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-static {v6, v7, v3}, Landroid/graphics/Typeface;->nativeCreateFromTypeface(JI)J

    move-result-wide v5

    iput-wide v5, v4, Landroid/graphics/Typeface;->native_instance:J

    .line 1848
    :goto_5
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iget-wide v5, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v5

    iput v5, v4, Landroid/graphics/Typeface;->mStyle:I

    .line 1852
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v2

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v7, v6, Landroid/graphics/Typeface;->native_instance:J

    const/16 v9, 0x190

    invoke-static {v7, v8, v9, v2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 1853
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v2

    iget-wide v7, v5, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v7

    iput v7, v5, Landroid/graphics/Typeface;->mStyle:I

    .line 1856
    sget-object v5, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v5, v5, v3

    iget-wide v7, v4, Landroid/graphics/Typeface;->native_instance:J

    const/16 v10, 0x2bc

    invoke-static {v7, v8, v10, v2}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v7

    iput-wide v7, v5, Landroid/graphics/Typeface;->native_instance:J

    .line 1857
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, v3

    iget-wide v7, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v7, v8}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v5

    iput v5, v2, Landroid/graphics/Typeface;->mStyle:I

    .line 1860
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    iget-wide v6, v6, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7, v9, v3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v6

    iput-wide v6, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1861
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, v5

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v5

    iput v5, v2, Landroid/graphics/Typeface;->mStyle:I

    .line 1864
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    iget-wide v6, v4, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v6, v7, v10, v3}, Landroid/graphics/Typeface;->nativeCreateFromTypefaceWithExactStyle(JIZ)J

    move-result-wide v3

    iput-wide v3, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1865
    sget-object v2, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    aget-object v2, v2, v5

    iget-wide v3, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v3, v4}, Landroid/graphics/Typeface;->nativeGetStyle(J)I

    move-result v3

    iput v3, v2, Landroid/graphics/Typeface;->mStyle:I

    .line 1867
    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_c

    .line 1868
    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    iget-wide v2, v2, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->nativeSetDefault(J)V

    .line 1870
    :cond_c
    return-void
.end method

.method public static blacklist setSystemFontMap(Landroid/os/SharedMemory;)V
    .locals 8
    .param p0, "sharedMemory"    # Landroid/os/SharedMemory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 1459
    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    .line 1462
    if-eqz p0, :cond_1

    sget-object v0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1465
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Once set, buffer-based system font map cannot be updated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1463
    :cond_1
    :goto_0
    return-void

    .line 1468
    :cond_2
    sput-object p0, Landroid/graphics/Typeface;->sSystemFontMapSharedMemory:Landroid/os/SharedMemory;

    .line 1469
    const-wide/16 v0, 0x2

    const-string/jumbo v2, "setSystemFontMap"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1471
    if-nez p0, :cond_3

    .line 1474
    :try_start_0
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1488
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1475
    return-void

    .line 1477
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/os/SharedMemory;->mapReadOnly()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    sput-object v2, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    .line 1478
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 1479
    .local v2, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v3, Landroid/graphics/Typeface;->sSystemFontMapBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3, v2}, Landroid/graphics/Typeface;->deserializeFontMap(Ljava/nio/ByteBuffer;Ljava/util/Map;)[J

    move-result-object v3

    .line 1483
    .local v3, "nativePtrs":[J
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_4

    aget-wide v6, v3, v5

    .line 1484
    .local v6, "ptr":J
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->nativeAddFontCollections(J)V

    .line 1483
    .end local v6    # "ptr":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1486
    :cond_4
    invoke-static {v2}, Landroid/graphics/Typeface;->setSystemFontMap(Ljava/util/Map;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1488
    .end local v2    # "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    .end local v3    # "nativePtrs":[J
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1489
    nop

    .line 1490
    return-void

    .line 1488
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1489
    throw v2
.end method

.method public static blacklist setSystemFontMap(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;)V"
        }
    .end annotation

    .line 1495
    .local p0, "systemFontMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/graphics/Typeface;>;"
    sget-object v0, Landroid/graphics/Typeface;->SYSTEM_FONT_MAP_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 1496
    :try_start_0
    sget-object v1, Landroid/graphics/Typeface;->sSystemFontMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1497
    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1500
    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1501
    const-string/jumbo v2, "sans-serif"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Typeface;

    invoke-static {v1}, Landroid/graphics/Typeface;->setDefault(Landroid/graphics/Typeface;)V

    .line 1506
    :cond_0
    const-string v1, "DEFAULT"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1507
    const-string v1, "DEFAULT_BOLD"

    sget-object v2, Landroid/graphics/Typeface;->sDefaultTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1508
    const-string v1, "SANS_SERIF"

    const-string/jumbo v2, "sans-serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1509
    const-string v1, "SERIF"

    const-string/jumbo v2, "serif"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1510
    const-string v1, "MONOSPACE"

    const-string/jumbo v2, "monospace"

    invoke-static {v2, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeForceSetStaticFinalField(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1512
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/Typeface;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    aput-object v2, v1, v4

    const/4 v2, 0x0

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 1515
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    aput-object v6, v1, v5

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 1516
    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Typeface;->sDefaults:[Landroid/graphics/Typeface;

    .line 1521
    const-string/jumbo v6, "serif"

    const-string/jumbo v7, "sans-serif"

    const-string v8, "cursive"

    const-string v9, "fantasy"

    const-string/jumbo v10, "monospace"

    const-string/jumbo v11, "system-ui"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    move-result-object v1

    .line 1525
    .local v1, "genericFamilies":[Ljava/lang/String;
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    .line 1526
    .local v5, "genericFamily":Ljava/lang/String;
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    invoke-static {v5, v6}, Landroid/graphics/Typeface;->registerGenericFamilyNative(Ljava/lang/String;Landroid/graphics/Typeface;)V

    .line 1525
    .end local v5    # "genericFamily":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1529
    :cond_1
    sget-boolean v2, Landroid/graphics/Typeface;->isMtFontsDirectoryExists:Z

    if-nez v2, :cond_2

    .line 1530
    invoke-static {}, Landroid/graphics/Typeface;->makeMtFontsDirectory()V

    .line 1531
    sput-boolean v4, Landroid/graphics/Typeface;->isMtFontsDirectoryExists:Z

    .line 1534
    .end local v1    # "genericFamilies":[Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 1535
    return-void

    .line 1534
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static blacklist writeInt(Ljava/io/ByteArrayOutputStream;I)V
    .locals 1
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # I

    .line 1438
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1439
    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1440
    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1441
    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1442
    return-void
.end method

.method private static blacklist writeString(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2
    .param p0, "bos"    # Ljava/io/ByteArrayOutputStream;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1431
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1432
    .local v0, "bytes":[B
    array-length v1, v0

    invoke-static {p0, v1}, Landroid/graphics/Typeface;->writeInt(Ljava/io/ByteArrayOutputStream;I)V

    .line 1433
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1434
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 1606
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1607
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1609
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/graphics/Typeface;

    .line 1611
    .local v2, "typeface":Landroid/graphics/Typeface;
    iget v3, p0, Landroid/graphics/Typeface;->mStyle:I

    iget v4, v2, Landroid/graphics/Typeface;->mStyle:I

    if-ne v3, v4, :cond_2

    iget-wide v3, p0, Landroid/graphics/Typeface;->native_instance:J

    iget-wide v5, v2, Landroid/graphics/Typeface;->native_instance:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1607
    .end local v2    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    :goto_1
    return v1
.end method

.method public blacklist getFallback()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/fonts/FontFamily;",
            ">;"
        }
    .end annotation

    .line 1641
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1642
    .local v0, "families":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontFamily;>;"
    iget-wide v1, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->nativeGetFamilySize(J)I

    move-result v1

    .line 1643
    .local v1, "familySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1644
    new-instance v3, Landroid/graphics/fonts/FontFamily;

    iget-wide v4, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v4, v5, v2}, Landroid/graphics/Typeface;->nativeGetFamily(JI)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Landroid/graphics/fonts/FontFamily;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1643
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1646
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method public whitelist getStyle()I
    .locals 1

    .line 349
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    return v0
.end method

.method public whitelist getWeight()I
    .locals 1

    .line 344
    iget v0, p0, Landroid/graphics/Typeface;->mWeight:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 6

    .line 1620
    const/16 v0, 0x11

    .line 1621
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Landroid/graphics/Typeface;->native_instance:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1622
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/graphics/Typeface;->mStyle:I

    add-int/2addr v0, v2

    .line 1623
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public final whitelist isBold()Z
    .locals 2

    .line 354
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist isItalic()Z
    .locals 1

    .line 359
    iget v0, p0, Landroid/graphics/Typeface;->mStyle:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist-max-o isSupportedAxes(I)Z
    .locals 2
    .param p1, "axis"    # I

    .line 1628
    monitor-enter p0

    .line 1629
    :try_start_0
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    if-nez v0, :cond_0

    .line 1630
    iget-wide v0, p0, Landroid/graphics/Typeface;->native_instance:J

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->nativeGetSupportedAxes(J)[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1631
    if-nez v0, :cond_0

    .line 1632
    sget-object v0, Landroid/graphics/Typeface;->EMPTY_AXES:[I

    iput-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    .line 1635
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    iget-object v0, p0, Landroid/graphics/Typeface;->mSupportedAxes:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1635
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
