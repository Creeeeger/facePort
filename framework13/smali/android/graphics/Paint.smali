.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$MyanmarEncoding;,
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;,
        Landroid/graphics/Paint$EndHyphenEdit;,
        Landroid/graphics/Paint$StartHyphenEdit;,
        Landroid/graphics/Paint$CursorOption;,
        Landroid/graphics/Paint$PaintFlag;,
        Landroid/graphics/Paint$NoImagePreloadHolder;
    }
.end annotation


# static fields
.field public static final whitelist ANTI_ALIAS_FLAG:I = 0x1

.field public static final greylist-max-o AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final greylist-max-o BIDI_DEFAULT_LTR:I = 0x2

.field public static final greylist-max-o BIDI_DEFAULT_RTL:I = 0x3

.field private static final greylist-max-o BIDI_FLAG_MASK:I = 0x7

.field public static final greylist-max-o BIDI_FORCE_LTR:I = 0x4

.field public static final greylist-max-o BIDI_FORCE_RTL:I = 0x5

.field public static final greylist-max-o BIDI_LTR:I = 0x0

.field private static final greylist-max-o BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final greylist-max-o BIDI_RTL:I = 0x1

.field public static final whitelist CURSOR_AFTER:I = 0x0

.field public static final whitelist CURSOR_AT:I = 0x4

.field public static final whitelist CURSOR_AT_OR_AFTER:I = 0x1

.field public static final whitelist CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final whitelist CURSOR_BEFORE:I = 0x2

.field private static final greylist-max-o CURSOR_OPT_MAX_VALUE:I = 0x4

.field public static final whitelist DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final greylist-max-o DIRECTION_LTR:I = 0x0

.field public static final greylist-max-o DIRECTION_RTL:I = 0x1

.field public static final whitelist DITHER_FLAG:I = 0x4

.field public static final whitelist EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ARMENIAN_HYPHEN:I = 0x3

.field public static final whitelist END_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x2

.field public static final whitelist END_HYPHEN_EDIT_INSERT_MAQAF:I = 0x4

.field public static final whitelist END_HYPHEN_EDIT_INSERT_UCAS_HYPHEN:I = 0x5

.field public static final whitelist END_HYPHEN_EDIT_INSERT_ZWJ_AND_HYPHEN:I = 0x6

.field public static final whitelist END_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist END_HYPHEN_EDIT_REPLACE_WITH_HYPHEN:I = 0x1

.field public static final whitelist FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final whitelist FILTER_BITMAP_FLAG:I = 0x2

.field static final greylist-max-o HIDDEN_DEFAULT_PAINT_FLAGS:I = 0x502

.field public static final whitelist HINTING_OFF:I = 0x0

.field public static final whitelist HINTING_ON:I = 0x1

.field public static final greylist-max-o LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final whitelist LINEAR_TEXT_FLAG:I = 0x40

.field public static final whitelist START_HYPHEN_EDIT_INSERT_HYPHEN:I = 0x1

.field public static final whitelist START_HYPHEN_EDIT_INSERT_ZWJ:I = 0x2

.field public static final whitelist START_HYPHEN_EDIT_NO_EDIT:I = 0x0

.field public static final whitelist STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final whitelist SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "Paint"

.field public static final whitelist UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final greylist-max-o VERTICAL_TEXT_FLAG:I = 0x1000

.field static final greylist-max-o sAlignArray:[Landroid/graphics/Paint$Align;

.field private static final greylist-max-o sCacheLock:Ljava/lang/Object;

.field static final greylist-max-o sCapArray:[Landroid/graphics/Paint$Cap;

.field static final greylist-max-o sJoinArray:[Landroid/graphics/Paint$Join;

.field private static final greylist-max-o sMinikinLocaleListIdCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public greylist-max-o mBidiFlags:I

.field private blacklist mColor:J

.field private greylist-max-o mColorFilter:Landroid/graphics/ColorFilter;

.field private greylist-max-o mCompatScaling:F

.field private greylist-max-o mFontFeatureSettings:Ljava/lang/String;

.field private greylist-max-o mFontVariationSettings:Ljava/lang/String;

.field private greylist-max-o mHasCompatScaling:Z

.field private greylist-max-o mInvCompatScaling:F

.field private greylist-max-o mLocales:Landroid/os/LocaleList;

.field private greylist-max-o mMaskFilter:Landroid/graphics/MaskFilter;

.field private blacklist mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

.field private greylist-max-o mNativeColorFilter:J

.field private greylist-max-r mNativePaint:J

.field private greylist-max-o mNativeShader:J

.field private greylist-max-o mPathEffect:Landroid/graphics/PathEffect;

.field private greylist-max-o mShader:Landroid/graphics/Shader;

.field private blacklist mShadowLayerColor:J

.field private greylist-max-o mShadowLayerDx:F

.field private greylist-max-o mShadowLayerDy:F

.field private greylist-max-o mShadowLayerRadius:F

.field private greylist-max-p mTypeface:Landroid/graphics/Typeface;

.field private blacklist mUseCustomMyanmarEncoding:Z

.field private greylist-max-o mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetNativeFinalizer()J
    .locals 2

    invoke-static {}, Landroid/graphics/Paint;->nGetNativeFinalizer()J

    move-result-wide v0

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 6

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    .line 123
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Paint$Style;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 126
    new-array v1, v0, [Landroid/graphics/Paint$Cap;

    sget-object v2, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 129
    new-array v1, v0, [Landroid/graphics/Paint$Join;

    sget-object v2, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v2, v1, v5

    sput-object v1, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 132
    new-array v0, v0, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v5

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    .line 597
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 598
    return-void
.end method

.method public constructor whitelist <init>(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 614
    invoke-static {}, Landroid/graphics/Paint;->nInit()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 615
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 616
    or-int/lit16 v0, p1, 0x502

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 621
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 622
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 623
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 624
    return-void
.end method

.method public constructor whitelist <init>(Landroid/graphics/Paint;)V
    .locals 3
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 633
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 121
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Paint;->getNativeInstance()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nInitWithPaint(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    .line 635
    sget-object v0, Landroid/graphics/Paint$NoImagePreloadHolder;->sRegistry:Llibcore/util/NativeAllocationRegistry;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    .line 636
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 637
    return-void
.end method

.method private blacklist getTypefaceNativeInstance(Landroid/graphics/Typeface;)J
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1509
    const-wide/16 v0, 0x0

    .line 1512
    .local v0, "typefaceNative":J
    if-eqz p1, :cond_1

    .line 1513
    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p1, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v2, :cond_0

    .line 1514
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    goto :goto_0

    .line 1516
    :cond_0
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1519
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    sget-boolean v2, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v2, :cond_2

    .line 1520
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget-wide v0, v2, Landroid/graphics/Typeface;->native_instance:J

    .line 1523
    :cond_2
    return-wide v0
.end method

.method private blacklist installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 4
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1392
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1393
    .local v0, "newMode":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-eqz v1, :cond_1

    iget v1, v1, Landroid/graphics/Xfermode;->porterDuffMode:I

    goto :goto_1

    :cond_1
    sget v1, Landroid/graphics/Xfermode;->DEFAULT:I

    .line 1394
    .local v1, "curMode":I
    :goto_1
    if-eq v0, v1, :cond_2

    .line 1395
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0}, Landroid/graphics/Paint;->nSetXfermode(JI)V

    .line 1397
    :cond_2
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1398
    return-object p1
.end method

.method private static native greylist-max-o nAscent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nBreakText(JLjava/lang/String;ZFI[F)I
.end method

.method private static native greylist-max-o nBreakText(J[CIIFI[F)I
.end method

.method private static native greylist-max-o nDescent(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nEqualsForTextMeasurement(JJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V
.end method

.method private static native blacklist nGetEndHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFillPath(JJJ)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFlags(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native blacklist nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native blacklist nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
.end method

.method private static native greylist-max-o nGetHinting(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetLetterSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetNativeFinalizer()J
.end method

.method private static native greylist-max-o nGetOffsetForAdvance(J[CIIIIZF)I
.end method

.method private static native greylist-max-o nGetRunAdvance(J[CIIIIZI)F
.end method

.method private static native blacklist nGetStartHyphenEdit(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruPosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrikeThruThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private static native greylist-max-o nGetStrokeCap(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeJoin(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeMiter(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStrokeWidth(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetStyle(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextAdvances(JLjava/lang/String;IIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAdvances(J[CIIIII[FI)F
.end method

.method private static native greylist-max-o nGetTextAlign(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextPath(JILjava/lang/String;IIFFJ)V
.end method

.method private static native greylist-max-o nGetTextPath(JI[CIIFFJ)V
.end method

.method private native greylist-max-o nGetTextRunCursor(JLjava/lang/String;IIIII)I
.end method

.method private native greylist-max-o nGetTextRunCursor(J[CIIIII)I
.end method

.method private static native greylist-max-o nGetTextScaleX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSize(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetTextSkewX(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlinePosition(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetUnderlineThickness(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nGetWordSpacing(J)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nHasGlyph(JILjava/lang/String;)Z
.end method

.method private static native greylist-max-o nHasShadowLayer(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nInit()J
.end method

.method private static native greylist-max-o nInitWithPaint(J)J
.end method

.method private static native greylist-max-o nIsElegantTextHeight(J)Z
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nReset(J)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSet(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAlpha(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetAntiAlias(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColor(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetColor(JJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetColorFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetDither(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetElegantTextHeight(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetEndHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFakeBoldText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFilterBitmap(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFlags(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetFontFeatureSettings(JLjava/lang/String;)V
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetHinting(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLetterSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetLinearText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetMaskFilter(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetMyanmarEncoding(JI)V
.end method

.method private static native greylist-max-o nSetPathEffect(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetShader(JJ)J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetShadowLayer(JFFFJJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nSetStartHyphenEdit(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrikeThruText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeCap(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeJoin(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeMiter(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStrokeWidth(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetStyle(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetSubpixelText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextAlign(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocales(JLjava/lang/String;)I
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextLocalesByMinikinLocaleListId(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextScaleX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSize(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTextSkewX(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetTypeface(JJ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetUnderlineText(JZ)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetWordSpacing(JF)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native greylist-max-o nSetXfermode(JI)V
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private greylist-max-o setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 700
    iget-wide v0, p1, Landroid/graphics/Paint;->mColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 701
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 702
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 703
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 704
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 705
    iget-wide v0, p1, Landroid/graphics/Paint;->mNativeShader:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 706
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 707
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 709
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 710
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 711
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 713
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 714
    iget-object v0, p1, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 715
    iget-object v0, p1, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 716
    iget-object v0, p1, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 718
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerRadius:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 719
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDx:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 720
    iget v0, p1, Landroid/graphics/Paint;->mShadowLayerDy:F

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 721
    iget-wide v0, p1, Landroid/graphics/Paint;->mShadowLayerColor:J

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 724
    iget-object v0, p1, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 725
    iget-boolean v0, p1, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 727
    return-void
.end method

.method private greylist-max-o syncTextLocalesWithMinikin()V
    .locals 6

    .line 1805
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0}, Landroid/os/LocaleList;->toLanguageTags()Ljava/lang/String;

    move-result-object v0

    .line 1807
    .local v0, "languageTags":Ljava/lang/String;
    sget-object v1, Landroid/graphics/Paint;->sCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1808
    :try_start_0
    sget-object v2, Landroid/graphics/Paint;->sMinikinLocaleListIdCache:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1809
    .local v3, "minikinLocaleListId":Ljava/lang/Integer;
    if-nez v3, :cond_0

    .line 1810
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, v0}, Landroid/graphics/Paint;->nSetTextLocales(JLjava/lang/String;)I

    move-result v4

    .line 1811
    .local v4, "newID":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1812
    monitor-exit v1

    return-void

    .line 1814
    .end local v4    # "newID":I
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1815
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v2, v4}, Landroid/graphics/Paint;->nSetTextLocalesByMinikinLocaleListId(JI)V

    .line 1816
    return-void

    .line 1814
    .end local v3    # "minikinLocaleListId":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public whitelist ascent()F
    .locals 2

    .line 2153
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nAscent(J)F

    move-result v0

    return v0
.end method

.method public whitelist breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "measureForwards"    # Z
    .param p5, "maxWidth"    # F
    .param p6, "measuredWidth"    # [F

    .line 2603
    if-eqz p1, :cond_5

    .line 2606
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_4

    .line 2610
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2613
    :cond_0
    if-nez p2, :cond_1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_1

    .line 2614
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v0

    return v0

    .line 2618
    :cond_1
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2621
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2623
    if-eqz p4, :cond_2

    .line 2624
    const/4 v4, 0x0

    sub-int v5, p3, p2

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .local v1, "result":I
    goto :goto_0

    .line 2626
    .end local v1    # "result":I
    :cond_2
    const/4 v4, 0x0

    sub-int v1, p3, p2

    neg-int v5, v1

    move-object v2, p0

    move-object v3, v0

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v1

    .line 2629
    .restart local v1    # "result":I
    :goto_0
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2630
    return v1

    .line 2611
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_3
    :goto_1
    return v1

    .line 2607
    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2604
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist breakText(Ljava/lang/String;ZF[F)I
    .locals 10
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "measureForwards"    # Z
    .param p3, "maxWidth"    # F
    .param p4, "measuredWidth"    # [F

    .line 2651
    if-eqz p1, :cond_3

    .line 2655
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2656
    return v1

    .line 2658
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2659
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v0

    return v0

    .line 2663
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2664
    .local v0, "oldSize":F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2665
    iget-wide v3, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v7, p3, v2

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v5, p1

    move v6, p2

    move-object v9, p4

    invoke-static/range {v3 .. v9}, Landroid/graphics/Paint;->nBreakText(JLjava/lang/String;ZFI[F)I

    move-result v2

    .line 2667
    .local v2, "res":I
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2668
    if-eqz p4, :cond_2

    aget v3, p4, v1

    iget v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v3, v4

    aput v3, p4, v1

    .line 2669
    :cond_2
    return v2

    .line 2652
    .end local v0    # "oldSize":F
    .end local v2    # "res":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist breakText([CIIF[F)I
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "maxWidth"    # F
    .param p5, "measuredWidth"    # [F

    .line 2560
    move-object v0, p0

    move-object v9, p1

    if-eqz v9, :cond_5

    .line 2563
    if-ltz p2, :cond_4

    array-length v1, v9

    sub-int/2addr v1, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 2567
    array-length v1, v9

    const/4 v10, 0x0

    if-eqz v1, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    .line 2570
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2571
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    return v1

    .line 2575
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    .line 2576
    .local v11, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v11

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2577
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v6, p4, v3

    iget v7, v0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object/from16 v8, p5

    invoke-static/range {v1 .. v8}, Landroid/graphics/Paint;->nBreakText(J[CIIFI[F)I

    move-result v1

    .line 2579
    .local v1, "res":I
    invoke-virtual {p0, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2580
    if-eqz p5, :cond_2

    aget v2, p5, v10

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p5, v10

    .line 2581
    :cond_2
    return v1

    .line 2568
    .end local v1    # "res":I
    .end local v11    # "oldSize":F
    :cond_3
    :goto_0
    return v10

    .line 2564
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2561
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist clearShadowLayer()V
    .locals 2

    .line 1604
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1605
    return-void
.end method

.method public whitelist descent()F
    .locals 2

    .line 2167
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nDescent(J)F

    move-result v0

    return v0
.end method

.method public whitelist equalsForTextMeasurement(Landroid/graphics/Paint;)Z
    .locals 4
    .param p1, "other"    # Landroid/graphics/Paint;

    .line 3313
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nEqualsForTextMeasurement(JJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getAlpha()I
    .locals 2

    .line 1157
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getBidiFlags()I
    .locals 1

    .line 776
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public whitelist getBlendMode()Landroid/graphics/BlendMode;
    .locals 1

    .line 1366
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    if-nez v0, :cond_0

    .line 1367
    const/4 v0, 0x0

    return-object v0

    .line 1369
    :cond_0
    iget v0, v0, Landroid/graphics/Xfermode;->porterDuffMode:I

    invoke-static {v0}, Landroid/graphics/BlendMode;->fromValue(I)Landroid/graphics/BlendMode;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getColor()I
    .locals 2

    .line 1100
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .line 1329
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public whitelist getColorLong()J
    .locals 2

    .line 1114
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    return-wide v0
.end method

.method public whitelist getEndHyphenEdit()I
    .locals 2

    .line 2086
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetEndHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 6
    .param p1, "src"    # Landroid/graphics/Path;
    .param p2, "dst"    # Landroid/graphics/Path;

    .line 1289
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {p1}, Landroid/graphics/Path;->readOnlyNI()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nGetFillPath(JJJ)Z

    move-result v0

    return v0
.end method

.method public whitelist getFlags()I
    .locals 2

    .line 798
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetFlags(J)I

    move-result v0

    return v0
.end method

.method public whitelist getFontFeatureSettings()Ljava/lang/String;
    .locals 1

    .line 1954
    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
    .locals 2
    .param p1, "metrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 2214
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetrics(JLandroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public whitelist getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .line 2222
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 2223
    .local v0, "fm":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 2224
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2407
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nGetFontMetricsInt(JLandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    return v0
.end method

.method public whitelist getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .line 2411
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 2412
    .local v0, "fm":Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2413
    return-object v0
.end method

.method public whitelist getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 16
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2251
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v12, p2

    move/from16 v13, p4

    move-object/from16 v14, p7

    if-eqz v2, :cond_7

    .line 2254
    if-ltz v12, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v12, v0, :cond_6

    .line 2257
    if-ltz p3, :cond_5

    add-int v0, v12, p3

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_5

    .line 2260
    if-ltz v13, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge v13, v0, :cond_4

    .line 2263
    if-ltz p5, :cond_3

    add-int v0, v13, p5

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-gt v0, v3, :cond_3

    .line 2266
    if-eqz v14, :cond_2

    .line 2270
    if-nez p3, :cond_0

    .line 2271
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2272
    return-void

    .line 2275
    :cond_0
    instance-of v0, v2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2276
    iget-wide v3, v1, Landroid/graphics/Paint;->mNativePaint:J

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(JLjava/lang/String;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    .line 2279
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v15

    .line 2281
    .local v15, "buf":[C
    add-int v0, v13, p5

    const/4 v3, 0x0

    :try_start_0
    invoke-static {v2, v13, v0, v15, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2282
    iget-wide v3, v1, Landroid/graphics/Paint;->mNativePaint:J

    sub-int v6, v12, v13

    const/4 v8, 0x0

    move-object v5, v15

    move/from16 v7, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v3 .. v11}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2285
    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2286
    nop

    .line 2289
    .end local v15    # "buf":[C
    :goto_0
    return-void

    .line 2285
    .restart local v15    # "buf":[C
    :catchall_0
    move-exception v0

    invoke-static {v15}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2286
    throw v0

    .line 2267
    .end local v15    # "buf":[C
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "outMetrics must not be null."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2264
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "ctxCount argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2261
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "ctxStart argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2258
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "count argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2255
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "start argument is out of bounds."

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2252
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text must not be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 14
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "outMetrics"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 2313
    move-object v0, p0

    move-object v10, p1

    move/from16 v11, p2

    move/from16 v12, p4

    move-object/from16 v13, p7

    if-eqz v10, :cond_6

    .line 2316
    if-ltz v11, :cond_5

    array-length v1, v10

    if-ge v11, v1, :cond_5

    .line 2319
    if-ltz p3, :cond_4

    add-int v1, v11, p3

    array-length v2, v10

    if-gt v1, v2, :cond_4

    .line 2322
    if-ltz v12, :cond_3

    array-length v1, v10

    if-ge v12, v1, :cond_3

    .line 2325
    if-ltz p5, :cond_2

    add-int v1, v12, p5

    array-length v2, v10

    if-gt v1, v2, :cond_2

    .line 2328
    if-eqz v13, :cond_1

    .line 2332
    if-nez p3, :cond_0

    .line 2333
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 2334
    return-void

    .line 2337
    :cond_0
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nGetFontMetricsIntForText(J[CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .line 2339
    return-void

    .line 2329
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "outMetrics must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2326
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ctxCount argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2323
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ctxStart argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2320
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "count argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2317
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "start argument is out of bounds."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2314
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getFontSpacing()F
    .locals 1

    .line 2427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public whitelist getFontVariationSettings()Ljava/lang/String;
    .locals 1

    .line 1988
    iget-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getHCTStrokeWidth()F
    .locals 3

    .line 3401
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    const/high16 v1, 0x41700000    # 15.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    int-to-float v0, v0

    const v1, 0x3d23d70a    # 0.04f

    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    return v0
.end method

.method public whitelist getHinting()I
    .locals 2

    .line 815
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetHinting(J)I

    move-result v0

    return v0
.end method

.method public whitelist getLetterSpacing()F
    .locals 2

    .line 1904
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetLetterSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .line 1451
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public blacklist getMyanmarEncoding()Landroid/graphics/Paint$MyanmarEncoding;
    .locals 1

    .line 3349
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    return-object v0
.end method

.method public declared-synchronized greylist getNativeInstance()J
    .locals 8

    monitor-enter p0

    .line 755
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    .line 756
    .local v0, "filter":Z
    iget-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->getNativeInstance(Z)J

    move-result-wide v4

    .line 757
    .local v4, "newNativeShader":J
    :goto_0
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeShader:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 758
    iput-wide v4, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 759
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v4, v5}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 761
    .end local p0    # "this":Landroid/graphics/Paint;
    :cond_1
    iget-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v1, :cond_2

    :goto_1
    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Landroid/graphics/ColorFilter;->getNativeInstance()J

    move-result-wide v2

    goto :goto_1

    :goto_2
    move-wide v1, v2

    .line 762
    .local v1, "newNativeColorFilter":J
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    .line 763
    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 764
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v6, v7, v1, v2}, Landroid/graphics/Paint;->nSetColorFilter(JJ)J

    .line 766
    :cond_3
    iget-wide v6, p0, Landroid/graphics/Paint;->mNativePaint:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v6

    .line 754
    .end local v0    # "filter":Z
    .end local v1    # "newNativeColorFilter":J
    .end local v4    # "newNativeShader":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public whitelist getOffsetForAdvance(Ljava/lang/CharSequence;IIIIZF)I
    .locals 12
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3289
    move-object v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    if-eqz v0, :cond_1

    .line 3292
    or-int v3, v1, p2

    or-int/2addr v3, p3

    or-int/2addr v3, v2

    sub-int v4, p2, v1

    or-int/2addr v3, v4

    sub-int v4, p3, p2

    or-int/2addr v3, v4

    sub-int v4, v2, p3

    or-int/2addr v3, v4

    .line 3294
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    if-ltz v3, :cond_0

    .line 3298
    sub-int v3, v2, v1

    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v3

    .line 3299
    .local v3, "buf":[C
    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3300
    sub-int v6, p2, v1

    sub-int v7, p3, v1

    const/4 v8, 0x0

    sub-int v9, v2, v1

    move-object v4, p0

    move-object v5, v3

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Paint;->getOffsetForAdvance([CIIIIZF)I

    move-result v4

    add-int/2addr v4, v1

    .line 3302
    .local v4, "result":I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3303
    return v4

    .line 3295
    .end local v3    # "buf":[C
    .end local v4    # "result":I
    :cond_0
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 3290
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "text cannot be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist getOffsetForAdvance([CIIIIZF)I
    .locals 11
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advance"    # F

    .line 3262
    move-object v9, p1

    if-eqz v9, :cond_1

    .line 3265
    or-int v0, p4, p2

    or-int/2addr v0, p3

    or-int v0, v0, p5

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_0

    .line 3271
    move-object v10, p0

    iget-wide v0, v10, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetOffsetForAdvance(J[CIIIIZF)I

    move-result v0

    return v0

    .line 3268
    :cond_0
    move-object v10, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3263
    :cond_1
    move-object v10, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .line 1423
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public greylist getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1538
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F
    .locals 14
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3212
    move-object v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    if-eqz v0, :cond_2

    .line 3215
    or-int v5, v3, v1

    or-int v5, v5, p7

    or-int/2addr v5, v2

    or-int/2addr v5, v4

    sub-int v6, v1, v3

    or-int/2addr v5, v6

    sub-int v6, p7, v1

    or-int/2addr v5, v6

    sub-int v6, v2, p7

    or-int/2addr v5, v6

    sub-int v6, v4, v2

    or-int/2addr v5, v6

    .line 3217
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sub-int/2addr v6, v4

    or-int/2addr v5, v6

    if-ltz v5, :cond_1

    .line 3220
    if-ne v2, v1, :cond_0

    .line 3221
    const/4 v5, 0x0

    return v5

    .line 3224
    :cond_0
    sub-int v5, v4, v3

    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v5

    .line 3225
    .local v5, "buf":[C
    const/4 v6, 0x0

    invoke-static {p1, v3, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3226
    sub-int v8, v1, v3

    sub-int v9, v2, v3

    const/4 v10, 0x0

    sub-int v11, v4, v3

    sub-int v13, p7, v3

    move-object v6, p0

    move-object v7, v5

    move/from16 v12, p6

    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Paint;->getRunAdvance([CIIIIZI)F

    move-result v6

    .line 3228
    .local v6, "result":F
    invoke-static {v5}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3229
    return v6

    .line 3218
    .end local v5    # "buf":[C
    .end local v6    # "result":F
    :cond_1
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v5}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v5

    .line 3213
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "text cannot be null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public whitelist getRunAdvance([CIIIIZI)F
    .locals 13
    .param p1, "text"    # [C
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "isRtl"    # Z
    .param p7, "offset"    # I

    .line 3182
    move-object v9, p1

    move v10, p2

    move/from16 v11, p3

    if-eqz v9, :cond_2

    .line 3185
    or-int v0, p4, v10

    or-int v0, v0, p7

    or-int/2addr v0, v11

    or-int v0, v0, p5

    sub-int v1, v10, p4

    or-int/2addr v0, v1

    sub-int v1, p7, v10

    or-int/2addr v0, v1

    sub-int v1, v11, p7

    or-int/2addr v0, v1

    sub-int v1, p5, v11

    or-int/2addr v0, v1

    array-length v1, v9

    sub-int v1, v1, p5

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3190
    if-ne v11, v10, :cond_0

    .line 3191
    const/4 v0, 0x0

    return v0

    .line 3194
    :cond_0
    move-object v12, p0

    iget-wide v0, v12, Landroid/graphics/Paint;->mNativePaint:J

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroid/graphics/Paint;->nGetRunAdvance(J[CIIIIZI)F

    move-result v0

    return v0

    .line 3188
    :cond_1
    move-object v12, p0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3183
    :cond_2
    move-object v12, p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getShader()Landroid/graphics/Shader;
    .locals 1

    .line 1298
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public whitelist getShadowLayerColor()I
    .locals 2

    .line 1650
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->toArgb(J)I

    move-result v0

    return v0
.end method

.method public whitelist getShadowLayerColorLong()J
    .locals 2

    .line 1662
    iget-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    return-wide v0
.end method

.method public whitelist getShadowLayerDx()F
    .locals 1

    .line 1632
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    return v0
.end method

.method public whitelist getShadowLayerDy()F
    .locals 1

    .line 1641
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    return v0
.end method

.method public whitelist getShadowLayerRadius()F
    .locals 1

    .line 1623
    iget v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    return v0
.end method

.method public whitelist getStartHyphenEdit()I
    .locals 2

    .line 2074
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStartHyphenEdit(J)I

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruPosition()F
    .locals 2

    .line 994
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruPosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrikeThruThickness()F
    .locals 2

    .line 1006
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrikeThruThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 3

    .line 1245
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeCap(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 3

    .line 1264
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStrokeJoin(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getStrokeMiter()F
    .locals 2

    .line 1223
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeMiter(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStrokeWidth()F
    .locals 2

    .line 1200
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetStrokeWidth(J)F

    move-result v0

    return v0
.end method

.method public whitelist getStyle()Landroid/graphics/Paint$Style;
    .locals 3

    .line 1076
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetStyle(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextAlign()Landroid/graphics/Paint$Align;
    .locals 3

    .line 1674
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v1, v2}, Landroid/graphics/Paint;->nGetTextAlign(J)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3092
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3095
    if-eqz p4, :cond_0

    .line 3098
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 3099
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 3100
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextBounds([CIILandroid/graphics/Rect;)V

    .line 3101
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 3102
    return-void

    .line 3096
    .end local v0    # "buf":[C
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3093
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 8
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3067
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_1

    .line 3070
    if-eqz p4, :cond_0

    .line 3073
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v6, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Landroid/graphics/Paint;->nGetStringBounds(JLjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 3074
    return-void

    .line 3071
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3068
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 9
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "bounds"    # Landroid/graphics/Rect;

    .line 3114
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    .line 3117
    if-eqz p4, :cond_0

    .line 3120
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v7, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v8, p4

    invoke-static/range {v2 .. v8}, Landroid/graphics/Paint;->nGetCharArrayBounds(J[CIIILandroid/graphics/Rect;)V

    .line 3122
    return-void

    .line 3118
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3115
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextLocale()Ljava/util/Locale;
    .locals 2

    .line 1697
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getTextLocales()Landroid/os/LocaleList;
    .locals 1

    .line 1707
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    return-object v0
.end method

.method public whitelist getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3049
    move-object v0, p0

    or-int v1, p2, p3

    sub-int v2, p3, p2

    or-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, p3

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    .line 3052
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JILjava/lang/String;IIFFJ)V

    .line 3053
    return-void

    .line 3050
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "x"    # F
    .param p5, "y"    # F
    .param p6, "path"    # Landroid/graphics/Path;

    .line 3029
    move-object v0, p0

    or-int v1, p2, p3

    if-ltz v1, :cond_0

    add-int v1, p2, p3

    move-object v11, p1

    array-length v2, v11

    if-gt v1, v2, :cond_1

    .line 3032
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v3, v0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Path;->mutateNI()J

    move-result-wide v9

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextPath(JI[CIIFFJ)V

    .line 3033
    return-void

    .line 3029
    :cond_0
    move-object v11, p1

    .line 3030
    :cond_1
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public whitelist getTextRunAdvances([CIIIIZ[FI)F
    .locals 14
    .param p1, "chars"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "contextIndex"    # I
    .param p5, "contextCount"    # I
    .param p6, "isRtl"    # Z
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I

    .line 2853
    move-object v0, p0

    move-object v11, p1

    move-object/from16 v12, p7

    if-eqz v11, :cond_8

    .line 2856
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, v11

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 2860
    if-nez v12, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 2861
    :cond_0
    array-length v2, v12

    add-int v3, p8, p3

    sub-int/2addr v2, v3

    :goto_0
    or-int/2addr v1, v2

    if-ltz v1, :cond_7

    .line 2865
    array-length v1, v11

    if-eqz v1, :cond_6

    if-nez p3, :cond_1

    goto/16 :goto_4

    .line 2868
    :cond_1
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    const/4 v2, 0x5

    const/4 v3, 0x4

    if-nez v1, :cond_3

    .line 2869
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2870
    if-eqz p6, :cond_2

    move v8, v2

    goto :goto_1

    :cond_2
    move v8, v3

    .line 2869
    :goto_1
    move-wide v1, v4

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    return v1

    .line 2874
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 2875
    .local v13, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v13

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2876
    iget-wide v4, v0, Landroid/graphics/Paint;->mNativePaint:J

    .line 2877
    if-eqz p6, :cond_4

    move v8, v2

    goto :goto_2

    :cond_4
    move v8, v3

    .line 2876
    :goto_2
    move-wide v1, v4

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 2878
    .local v1, "res":F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2880
    if-eqz v12, :cond_5

    .line 2881
    move/from16 v2, p8

    .local v2, "i":I
    add-int v3, v2, p3

    .local v3, "e":I
    :goto_3
    if-ge v2, v3, :cond_5

    .line 2882
    aget v4, v12, v2

    iget v5, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v4, v5

    aput v4, v12, v2

    .line 2881
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2885
    .end local v2    # "i":I
    .end local v3    # "e":I
    :cond_5
    iget v2, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    return v2

    .line 2866
    .end local v1    # "res":F
    .end local v13    # "oldSize":F
    :cond_6
    :goto_4
    const/4 v1, 0x0

    return v1

    .line 2862
    :cond_7
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2854
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTextRunCursor(Ljava/lang/CharSequence;IIZII)I
    .locals 17
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2956
    move-object/from16 v0, p1

    move/from16 v8, p2

    move/from16 v9, p3

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/text/SpannedString;

    if-nez v1, :cond_3

    instance-of v1, v0, Landroid/text/SpannableString;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 2961
    :cond_0
    instance-of v1, v0, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_1

    .line 2962
    move-object v1, v0

    check-cast v1, Landroid/text/GraphicsOperations;

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p0

    invoke-interface/range {v1 .. v7}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIZIILandroid/graphics/Paint;)I

    move-result v1

    return v1

    .line 2966
    :cond_1
    sub-int v1, v9, v8

    .line 2967
    .local v1, "contextLen":I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 2968
    .local v2, "buf":[C
    const/4 v3, 0x0

    invoke-static {v0, v8, v9, v2, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2969
    const/4 v12, 0x0

    sub-int v15, p5, v8

    move-object/from16 v10, p0

    move-object v11, v2

    move v13, v1

    move/from16 v14, p4

    move/from16 v16, p6

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Paint;->getTextRunCursor([CIIZII)I

    move-result v3

    .line 2970
    .local v3, "relPos":I
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2971
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    add-int v4, v3, v8

    :goto_0
    return v4

    .line 2958
    .end local v1    # "contextLen":I
    .end local v2    # "buf":[C
    .end local v3    # "relPos":I
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIZII)I

    move-result v1

    return v1
.end method

.method public blacklist getTextRunCursor(Ljava/lang/String;IIZII)I
    .locals 11
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "contextStart"    # I
    .param p3, "contextEnd"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 3004
    move/from16 v9, p6

    or-int v0, p2, p3

    or-int v0, v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    .line 3006
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v9, v0, :cond_0

    .line 3011
    move-object v10, p0

    iget-wide v1, v10, Landroid/graphics/Paint;->mNativePaint:J

    .line 3012
    nop

    .line 3011
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(JLjava/lang/String;IIIII)I

    move-result v0

    return v0

    .line 3006
    :cond_0
    move-object v10, p0

    .line 3008
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextRunCursor([CIIZII)I
    .locals 13
    .param p1, "text"    # [C
    .param p2, "contextStart"    # I
    .param p3, "contextLength"    # I
    .param p4, "isRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "cursorOpt"    # I

    .line 2915
    move/from16 v9, p6

    add-int v10, p2, p3

    .line 2916
    .local v10, "contextEnd":I
    or-int v0, p2, v10

    or-int v0, v0, p5

    sub-int v1, v10, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v10, p5

    or-int/2addr v0, v1

    move-object v11, p1

    array-length v1, v11

    sub-int/2addr v1, v10

    or-int/2addr v0, v1

    or-int/2addr v0, v9

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-gt v9, v0, :cond_0

    .line 2923
    move-object v12, p0

    iget-wide v1, v12, Landroid/graphics/Paint;->mNativePaint:J

    .line 2924
    nop

    .line 2923
    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/graphics/Paint;->nGetTextRunCursor(J[CIIIII)I

    move-result v0

    return v0

    .line 2916
    :cond_0
    move-object v12, p0

    .line 2920
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public whitelist getTextScaleX()F
    .locals 2

    .line 1863
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextScaleX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSize()F
    .locals 2

    .line 1844
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSize(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextSkewX()F
    .locals 2

    .line 1884
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetTextSkewX(J)F

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 2722
    if-eqz p1, :cond_8

    .line 2725
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_7

    .line 2728
    sub-int v0, p3, p2

    array-length v1, p4

    if-gt v0, v1, :cond_6

    .line 2732
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2735
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2736
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2738
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2742
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 2743
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v0

    return v0

    .line 2747
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2748
    .local v0, "buf":[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2749
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 2750
    .local v1, "result":I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2751
    return v1

    .line 2740
    .end local v0    # "buf":[C
    .end local v1    # "result":I
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0

    .line 2733
    :cond_5
    :goto_1
    return v1

    .line 2729
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2726
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2723
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getTextWidths(Ljava/lang/String;II[F)I
    .locals 15
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    .line 2765
    move-object v0, p0

    move/from16 v11, p2

    move/from16 v12, p3

    move-object/from16 v13, p4

    if-eqz p1, :cond_6

    .line 2768
    or-int v1, v11, v12

    sub-int v2, v12, v11

    or-int/2addr v1, v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v12

    or-int/2addr v1, v2

    if-ltz v1, :cond_5

    .line 2771
    sub-int v1, v12, v11

    array-length v2, v13

    if-gt v1, v2, :cond_4

    .line 2775
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    if-ne v11, v12, :cond_0

    goto :goto_1

    .line 2778
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2779
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2780
    sub-int v1, v12, v11

    return v1

    .line 2783
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 2784
    .local v14, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v14

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2785
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    .line 2786
    invoke-virtual {p0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2787
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sub-int v2, v12, v11

    if-ge v1, v2, :cond_2

    .line 2788
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2787
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2790
    .end local v1    # "i":I
    :cond_2
    sub-int v1, v12, v11

    return v1

    .line 2776
    .end local v14    # "oldSize":F
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 2772
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2769
    :cond_5
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2766
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "widths"    # [F

    .line 2802
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public whitelist getTextWidths([CII[F)I
    .locals 15
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I
    .param p4, "widths"    # [F

    .line 2684
    move-object v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p3

    move-object/from16 v13, p4

    if-eqz v11, :cond_5

    .line 2687
    or-int v1, p2, v12

    if-ltz v1, :cond_4

    add-int v1, p2, v12

    array-length v2, v11

    if-gt v1, v2, :cond_4

    array-length v1, v13

    if-gt v12, v1, :cond_4

    .line 2692
    array-length v1, v11

    if-eqz v1, :cond_3

    if-nez v12, :cond_0

    goto :goto_1

    .line 2695
    :cond_0
    iget-boolean v1, v0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_1

    .line 2696
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2697
    return v12

    .line 2700
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v14

    .line 2701
    .local v14, "oldSize":F
    iget v1, v0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v14

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2702
    iget-wide v1, v0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, v0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v9, p4

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    .line 2703
    invoke-virtual {p0, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2704
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v12, :cond_2

    .line 2705
    aget v2, v13, v1

    iget v3, v0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, v13, v1

    .line 2704
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2707
    .end local v1    # "i":I
    :cond_2
    return v12

    .line 2693
    .end local v14    # "oldSize":F
    :cond_3
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 2689
    :cond_4
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 2685
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1483
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public whitelist getUnderlinePosition()F
    .locals 2

    .line 941
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlinePosition(J)F

    move-result v0

    return v0
.end method

.method public whitelist getUnderlineThickness()F
    .locals 2

    .line 953
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetUnderlineThickness(J)F

    move-result v0

    return v0
.end method

.method public whitelist getWordSpacing()F
    .locals 2

    .line 1927
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nGetWordSpacing(J)F

    move-result v0

    return v0
.end method

.method public whitelist getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .line 1356
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public whitelist hasGlyph(Ljava/lang/String;)Z
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .line 3141
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Paint;->nHasGlyph(JILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o hasShadowLayer()Z
    .locals 2

    .line 1614
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nHasShadowLayer(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isAntiAlias()Z
    .locals 2

    .line 835
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final whitelist isDither()Z
    .locals 1

    .line 861
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isElegantTextHeight()Z
    .locals 2

    .line 1824
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nIsElegantTextHeight(J)Z

    move-result v0

    return v0
.end method

.method public final whitelist isFakeBoldText()Z
    .locals 1

    .line 1028
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isFilterBitmap()Z
    .locals 1

    .line 1051
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isLinearText()Z
    .locals 1

    .line 884
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isStrikeThruText()Z
    .locals 1

    .line 978
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isSubpixelText()Z
    .locals 1

    .line 903
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final whitelist isUnderlineText()Z
    .locals 1

    .line 925
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist measureText(Ljava/lang/CharSequence;II)F
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2515
    if-eqz p1, :cond_7

    .line 2518
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_6

    .line 2522
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-ne p2, p3, :cond_0

    goto :goto_1

    .line 2525
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2526
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2528
    :cond_1
    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_4

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 2532
    :cond_2
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_3

    .line 2533
    move-object v0, p1

    check-cast v0, Landroid/text/GraphicsOperations;

    invoke-interface {v0, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v0

    return v0

    .line 2536
    :cond_3
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 2537
    .local v0, "buf":[C
    const/4 v1, 0x0

    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2538
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 2539
    .local v1, "result":F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    .line 2540
    return v1

    .line 2530
    .end local v0    # "buf":[C
    .end local v1    # "result":F
    :cond_4
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2523
    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 2519
    :cond_6
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2516
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;)F
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 2500
    if-eqz p1, :cond_0

    .line 2503
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    return v0

    .line 2501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText(Ljava/lang/String;II)F
    .locals 12
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 2471
    if-eqz p1, :cond_4

    .line 2474
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 2478
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 2481
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2482
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2485
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2486
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2487
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(JLjava/lang/String;IIIII[FI)F

    move-result v1

    .line 2489
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2490
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 2479
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2475
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2472
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist measureText([CII)F
    .locals 12
    .param p1, "text"    # [C
    .param p2, "index"    # I
    .param p3, "count"    # I

    .line 2439
    if-eqz p1, :cond_4

    .line 2442
    or-int v0, p2, p3

    if-ltz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    .line 2446
    array-length v0, p1

    if-eqz v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 2449
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_1

    .line 2450
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v8, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p2

    move v7, p3

    invoke-static/range {v1 .. v10}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 2454
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 2455
    .local v0, "oldSize":F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2456
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v9, p0, Landroid/graphics/Paint;->mBidiFlags:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p2

    move v8, p3

    invoke-static/range {v2 .. v11}, Landroid/graphics/Paint;->nGetTextAdvances(J[CIIIII[FI)F

    move-result v1

    .line 2458
    .local v1, "w":F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2459
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2

    .line 2447
    .end local v0    # "oldSize":F
    .end local v1    # "w":F
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 2443
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2440
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist reset()V
    .locals 3

    .line 641
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1}, Landroid/graphics/Paint;->nReset(J)V

    .line 642
    const/16 v0, 0x503

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 649
    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 650
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 651
    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 652
    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 653
    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 654
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 655
    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 656
    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 658
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 659
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 660
    iput v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 662
    const/4 v2, 0x2

    iput v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 663
    invoke-static {}, Landroid/os/LocaleList;->getAdjustedDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextLocales(Landroid/os/LocaleList;)V

    .line 664
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setElegantTextHeight(Z)V

    .line 665
    iput-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 666
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 668
    const/4 v0, 0x0

    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 669
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 670
    iput v0, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 671
    invoke-static {v1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 674
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 676
    return-void
.end method

.method public whitelist semGetHighContrastTextStrokeWidth()F
    .locals 1

    .line 3411
    invoke-virtual {p0}, Landroid/graphics/Paint;->getHCTStrokeWidth()F

    move-result v0

    return v0
.end method

.method public whitelist set(Landroid/graphics/Paint;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/Paint;

    .line 684
    if-eq p0, p1, :cond_0

    .line 686
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-wide v2, p1, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSet(JJ)V

    .line 687
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 691
    :cond_0
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget-object v2, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v2}, Landroid/graphics/Paint;->getTypefaceNativeInstance(Landroid/graphics/Typeface;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 693
    return-void
.end method

.method public whitelist setARGB(IIII)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "r"    # I
    .param p3, "g"    # I
    .param p4, "b"    # I

    .line 1187
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1188
    return-void
.end method

.method public whitelist setAlpha(I)V
    .locals 6
    .param p1, "a"    # I

    .line 1170
    iget-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1171
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v1, v2}, Landroid/graphics/Color;->red(J)F

    move-result v1

    .line 1172
    .local v1, "r":F
    iget-wide v2, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v2, v3}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1173
    .local v2, "g":F
    iget-wide v3, p0, Landroid/graphics/Paint;->mColor:J

    invoke-static {v3, v4}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    .line 1174
    .local v3, "b":F
    int-to-float v4, p1

    const v5, 0x3b808081

    mul-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/graphics/Paint;->mColor:J

    .line 1175
    iget-wide v4, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v4, v5, p1}, Landroid/graphics/Paint;->nSetAlpha(JI)V

    .line 1176
    return-void
.end method

.method public whitelist setAntiAlias(Z)V
    .locals 2
    .param p1, "aa"    # Z

    .line 847
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetAntiAlias(JZ)V

    .line 848
    return-void
.end method

.method public greylist-max-o setBidiFlags(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 785
    and-int/lit8 p1, p1, 0x7

    .line 786
    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    .line 789
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 790
    return-void

    .line 787
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setBlendMode(Landroid/graphics/BlendMode;)V
    .locals 1
    .param p1, "blendmode"    # Landroid/graphics/BlendMode;

    .line 1414
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/BlendMode;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1415
    return-void
.end method

.method public whitelist setColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 1126
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetColor(JI)V

    .line 1127
    invoke-static {p1}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/Paint;->mColor:J

    .line 1128
    return-void
.end method

.method public whitelist setColor(J)V
    .locals 7
    .param p1, "color"    # J

    .line 1143
    invoke-static {p1, p2}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1145
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v3

    move-wide v5, p1

    invoke-static/range {v1 .. v6}, Landroid/graphics/Paint;->nSetColor(JJJ)V

    .line 1146
    iput-wide p1, p0, Landroid/graphics/Paint;->mColor:J

    .line 1147
    return-void
.end method

.method public whitelist setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .param p1, "filter"    # Landroid/graphics/ColorFilter;

    .line 1341
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    if-eq v0, p1, :cond_0

    .line 1342
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeColorFilter:J

    .line 1346
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1347
    return-object p1
.end method

.method public greylist setCompatibilityScaling(F)V
    .locals 4
    .param p1, "factor"    # F

    .line 732
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 733
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 734
    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    goto :goto_0

    .line 736
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 737
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 738
    div-float/2addr v1, p1

    iput v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 740
    :goto_0
    return-void
.end method

.method public whitelist setDither(Z)V
    .locals 2
    .param p1, "dither"    # Z

    .line 875
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetDither(JZ)V

    .line 876
    return-void
.end method

.method public whitelist setElegantTextHeight(Z)V
    .locals 2
    .param p1, "elegant"    # Z

    .line 1835
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetElegantTextHeight(JZ)V

    .line 1836
    return-void
.end method

.method public whitelist setEndHyphenEdit(I)V
    .locals 2
    .param p1, "endHyphen"    # I

    .line 2139
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetEndHyphenEdit(JI)V

    .line 2140
    return-void
.end method

.method public whitelist setFakeBoldText(Z)V
    .locals 2
    .param p1, "fakeBoldText"    # Z

    .line 1038
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFakeBoldText(JZ)V

    .line 1039
    return-void
.end method

.method public whitelist setFilterBitmap(Z)V
    .locals 2
    .param p1, "filter"    # Z

    .line 1065
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFilterBitmap(JZ)V

    .line 1066
    return-void
.end method

.method public whitelist setFlags(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 807
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFlags(JI)V

    .line 808
    return-void
.end method

.method public whitelist setFontFeatureSettings(Ljava/lang/String;)V
    .locals 2
    .param p1, "settings"    # Ljava/lang/String;

    .line 1969
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1970
    const/4 p1, 0x0

    .line 1972
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    if-eqz v0, :cond_2

    :cond_1
    if-eqz p1, :cond_3

    iget-object v0, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1973
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1974
    :cond_2
    return-void

    .line 1976
    :cond_3
    iput-object p1, p0, Landroid/graphics/Paint;->mFontFeatureSettings:Ljava/lang/String;

    .line 1977
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetFontFeatureSettings(JLjava/lang/String;)V

    .line 1978
    return-void
.end method

.method public whitelist setFontVariationSettings(Ljava/lang/String;)Z
    .locals 10
    .param p1, "fontVariationSettings"    # Ljava/lang/String;

    .line 2034
    invoke-static {p1}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2035
    .local v0, "settings":Ljava/lang/String;
    iget-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    if-eqz v0, :cond_0

    .line 2036
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 2040
    :cond_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2049
    :cond_1
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_2

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 2050
    .local v1, "targetTypeface":Landroid/graphics/Typeface;
    :cond_2
    invoke-static {v0}, Landroid/graphics/fonts/FontVariationAxis;->fromFontVariationSettings(Ljava/lang/String;)[Landroid/graphics/fonts/FontVariationAxis;

    move-result-object v3

    .line 2051
    .local v3, "axes":[Landroid/graphics/fonts/FontVariationAxis;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2052
    .local v4, "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_4

    aget-object v8, v3, v7

    .line 2053
    .local v8, "axis":Landroid/graphics/fonts/FontVariationAxis;
    invoke-virtual {v8}, Landroid/graphics/fonts/FontVariationAxis;->getOpenTypeTagValue()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/Typeface;->isSupportedAxes(I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2054
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2052
    .end local v8    # "axis":Landroid/graphics/fonts/FontVariationAxis;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 2057
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2058
    return v6

    .line 2060
    :cond_5
    iput-object v0, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2061
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2062
    return v2

    .line 2041
    .end local v1    # "targetTypeface":Landroid/graphics/Typeface;
    .end local v3    # "axes":[Landroid/graphics/fonts/FontVariationAxis;
    .end local v4    # "filteredAxes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/fonts/FontVariationAxis;>;"
    :cond_6
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/graphics/Paint;->mFontVariationSettings:Ljava/lang/String;

    .line 2042
    iget-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 2043
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 2042
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->createFromTypefaceWithVariation(Landroid/graphics/Typeface;Ljava/util/List;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2044
    return v2

    .line 2037
    :cond_7
    :goto_2
    return v2
.end method

.method public whitelist setHinting(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 823
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetHinting(JI)V

    .line 824
    return-void
.end method

.method public whitelist setLetterSpacing(F)V
    .locals 2
    .param p1, "letterSpacing"    # F

    .line 1915
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLetterSpacing(JF)V

    .line 1916
    return-void
.end method

.method public whitelist setLinearText(Z)V
    .locals 2
    .param p1, "linearText"    # Z

    .line 894
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetLinearText(JZ)V

    .line 895
    return-void
.end method

.method public whitelist setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 4
    .param p1, "maskfilter"    # Landroid/graphics/MaskFilter;

    .line 1465
    const-wide/16 v0, 0x0

    .line 1466
    .local v0, "maskfilterNative":J
    if-eqz p1, :cond_0

    .line 1467
    iget-wide v0, p1, Landroid/graphics/MaskFilter;->native_instance:J

    .line 1469
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetMaskFilter(JJ)J

    .line 1470
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1471
    return-object p1
.end method

.method public blacklist setMyanmarEncoding(Landroid/graphics/Paint$MyanmarEncoding;)V
    .locals 3
    .param p1, "myanmarEncoding"    # Landroid/graphics/Paint$MyanmarEncoding;

    .line 3358
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    .line 3359
    iget-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v0, p1, :cond_0

    .line 3360
    iput-object p1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3361
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    .line 3363
    :cond_0
    return-void
.end method

.method public blacklist setMyanmarEncoding(Ljava/util/Locale;)V
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 3371
    iget-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 3372
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3373
    .local v0, "myanmarEncoding":Landroid/graphics/Paint$MyanmarEncoding;
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3374
    .local v1, "country":Ljava/lang/String;
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/LocaleList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3376
    :cond_0
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    .line 3377
    .local v2, "myLocale":Ljava/util/Locale;
    if-eqz v2, :cond_1

    .line 3378
    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 3381
    .end local v2    # "myLocale":Ljava/util/Locale;
    :cond_1
    const-string v2, "ZG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3382
    sget-object v0, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3384
    :cond_2
    iget-object v2, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v2, v0, :cond_3

    .line 3385
    iput-object v0, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 3386
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v4, v0, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v2, v3, v4}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    .line 3389
    .end local v0    # "myanmarEncoding":Landroid/graphics/Paint$MyanmarEncoding;
    .end local v1    # "country":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public whitelist setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 4
    .param p1, "effect"    # Landroid/graphics/PathEffect;

    .line 1436
    const-wide/16 v0, 0x0

    .line 1437
    .local v0, "effectNative":J
    if-eqz p1, :cond_0

    .line 1438
    iget-wide v0, p1, Landroid/graphics/PathEffect;->native_instance:J

    .line 1440
    :cond_0
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetPathEffect(JJ)J

    .line 1441
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1442
    return-object p1
.end method

.method public greylist setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 0
    .param p1, "rasterizer"    # Landroid/graphics/Rasterizer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1556
    return-object p1
.end method

.method public whitelist setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 4
    .param p1, "shader"    # Landroid/graphics/Shader;

    .line 1313
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eq v0, p1, :cond_0

    .line 1314
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/graphics/Paint;->mNativeShader:J

    .line 1316
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Paint;->nSetShader(JJ)J

    .line 1319
    :cond_0
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 1320
    return-object p1
.end method

.method public whitelist setShadowLayer(FFFI)V
    .locals 6
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # I

    .line 1572
    invoke-static {p4}, Landroid/graphics/Color;->pack(I)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->setShadowLayer(FFFJ)V

    .line 1573
    return-void
.end method

.method public whitelist setShadowLayer(FFFJ)V
    .locals 10
    .param p1, "radius"    # F
    .param p2, "dx"    # F
    .param p3, "dy"    # F
    .param p4, "shadowColor"    # J

    .line 1591
    invoke-static {p4, p5}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    .line 1592
    .local v0, "cs":Landroid/graphics/ColorSpace;
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getNativeInstance()J

    move-result-wide v6

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v8, p4

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->nSetShadowLayer(JFFFJJ)V

    .line 1594
    iput p1, p0, Landroid/graphics/Paint;->mShadowLayerRadius:F

    .line 1595
    iput p2, p0, Landroid/graphics/Paint;->mShadowLayerDx:F

    .line 1596
    iput p3, p0, Landroid/graphics/Paint;->mShadowLayerDy:F

    .line 1597
    iput-wide p4, p0, Landroid/graphics/Paint;->mShadowLayerColor:J

    .line 1598
    return-void
.end method

.method public whitelist setStartHyphenEdit(I)V
    .locals 2
    .param p1, "startHyphen"    # I

    .line 2113
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStartHyphenEdit(JI)V

    .line 2114
    return-void
.end method

.method public whitelist setStrikeThruText(Z)V
    .locals 2
    .param p1, "strikeThruText"    # Z

    .line 1019
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrikeThruText(JZ)V

    .line 1020
    return-void
.end method

.method public whitelist setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 3
    .param p1, "cap"    # Landroid/graphics/Paint$Cap;

    .line 1255
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeCap(JI)V

    .line 1256
    return-void
.end method

.method public whitelist setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 3
    .param p1, "join"    # Landroid/graphics/Paint$Join;

    .line 1274
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStrokeJoin(JI)V

    .line 1275
    return-void
.end method

.method public whitelist setStrokeMiter(F)V
    .locals 2
    .param p1, "miter"    # F

    .line 1234
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeMiter(JF)V

    .line 1235
    return-void
.end method

.method public whitelist setStrokeWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 1212
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetStrokeWidth(JF)V

    .line 1213
    return-void
.end method

.method public whitelist setStyle(Landroid/graphics/Paint$Style;)V
    .locals 3
    .param p1, "style"    # Landroid/graphics/Paint$Style;

    .line 1087
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetStyle(JI)V

    .line 1088
    return-void
.end method

.method public whitelist setSubpixelText(Z)V
    .locals 2
    .param p1, "subpixelText"    # Z

    .line 913
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetSubpixelText(JZ)V

    .line 914
    return-void
.end method

.method public whitelist setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 3
    .param p1, "align"    # Landroid/graphics/Paint$Align;

    .line 1686
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    iget v2, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->nSetTextAlign(JI)V

    .line 1687
    return-void
.end method

.method public whitelist setTextLocale(Ljava/util/Locale;)V
    .locals 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1719
    if-eqz p1, :cond_3

    .line 1724
    iget-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v0, :cond_1

    .line 1725
    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1726
    .local v0, "country":Ljava/lang/String;
    const-string v1, "ZG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1727
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_1

    .line 1728
    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1729
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v3, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iget v3, v3, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    goto :goto_0

    .line 1732
    :cond_0
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_1

    .line 1733
    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1734
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v3, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iget v3, v3, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    .line 1740
    .end local v0    # "country":Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/LocaleList;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1741
    return-void

    .line 1743
    :cond_2
    new-instance v0, Landroid/os/LocaleList;

    new-array v2, v2, [Ljava/util/Locale;

    aput-object p1, v2, v1

    invoke-direct {v0, v2}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1744
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1745
    return-void

    .line 1720
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextLocales(Landroid/os/LocaleList;)V
    .locals 4
    .param p1, "locales"    # Landroid/os/LocaleList;

    .line 1775
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1778
    iget-object v0, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1781
    :cond_0
    iget-boolean v0, p0, Landroid/graphics/Paint;->mUseCustomMyanmarEncoding:Z

    if-nez v0, :cond_4

    .line 1782
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1783
    .local v0, "country":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/LocaleList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1784
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 1786
    :cond_2
    const-string v1, "ZG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1787
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_4

    .line 1788
    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1789
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v3, Landroid/graphics/Paint$MyanmarEncoding;->ME_ZAWGYI:Landroid/graphics/Paint$MyanmarEncoding;

    iget v3, v3, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    goto :goto_0

    .line 1792
    :cond_3
    iget-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    sget-object v2, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    if-eq v1, v2, :cond_4

    .line 1793
    sget-object v1, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iput-object v1, p0, Landroid/graphics/Paint;->mMyanmarEncoding:Landroid/graphics/Paint$MyanmarEncoding;

    .line 1794
    iget-wide v1, p0, Landroid/graphics/Paint;->mNativePaint:J

    sget-object v3, Landroid/graphics/Paint$MyanmarEncoding;->ME_UNICODE:Landroid/graphics/Paint$MyanmarEncoding;

    iget v3, v3, Landroid/graphics/Paint$MyanmarEncoding;->nativeInt:I

    invoke-static {v1, v2, v3}, Landroid/graphics/Paint;->nSetMyanmarEncoding(JI)V

    .line 1800
    .end local v0    # "country":Ljava/lang/String;
    :cond_4
    :goto_0
    iput-object p1, p0, Landroid/graphics/Paint;->mLocales:Landroid/os/LocaleList;

    .line 1801
    invoke-direct {p0}, Landroid/graphics/Paint;->syncTextLocalesWithMinikin()V

    .line 1802
    return-void

    .line 1776
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locales cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setTextScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    .line 1874
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextScaleX(JF)V

    .line 1875
    return-void
.end method

.method public whitelist setTextSize(F)V
    .locals 2
    .param p1, "textSize"    # F

    .line 1853
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSize(JF)V

    .line 1854
    return-void
.end method

.method public whitelist setTextSkewX(F)V
    .locals 2
    .param p1, "skewX"    # F

    .line 1894
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetTextSkewX(JF)V

    .line 1895
    return-void
.end method

.method public whitelist setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 4
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 1497
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Landroid/graphics/Typeface;->native_instance:J

    .line 1500
    .local v0, "typefaceNative":J
    :goto_0
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->getTypefaceNativeInstance(Landroid/graphics/Typeface;)J

    move-result-wide v0

    .line 1503
    iget-wide v2, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Paint;->nSetTypeface(JJ)V

    .line 1504
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1505
    return-object p1
.end method

.method public whitelist setUnderlineText(Z)V
    .locals 2
    .param p1, "underlineText"    # Z

    .line 966
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetUnderlineText(JZ)V

    .line 967
    return-void
.end method

.method public whitelist setWordSpacing(F)V
    .locals 2
    .param p1, "wordSpacing"    # F

    .line 1940
    iget-wide v0, p0, Landroid/graphics/Paint;->mNativePaint:J

    invoke-static {v0, v1, p1}, Landroid/graphics/Paint;->nSetWordSpacing(JF)V

    .line 1941
    return-void
.end method

.method public whitelist setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 1
    .param p1, "xfermode"    # Landroid/graphics/Xfermode;

    .line 1387
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->installXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-result-object v0

    return-object v0
.end method
