.class public Landroid/graphics/text/LineBreaker;
.super Ljava/lang/Object;
.source "LineBreaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;,
        Landroid/graphics/text/LineBreaker$Result;,
        Landroid/graphics/text/LineBreaker$ParagraphConstraints;,
        Landroid/graphics/text/LineBreaker$Builder;,
        Landroid/graphics/text/LineBreaker$JustificationMode;,
        Landroid/graphics/text/LineBreaker$HyphenationFrequency;,
        Landroid/graphics/text/LineBreaker$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I


# instance fields
.field private final blacklist mBreakStrategy:I

.field private final blacklist mHyphenationFrequency:I

.field private final blacklist mIndents:[I

.field private final blacklist mJustificationMode:I

.field private final blacklist mNativePtr:J

.field private final blacklist mUseBoundsForWidth:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$smnGetLineAscent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineAscent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineBreakOffset(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineBreakOffset(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineCount(J)I
    .locals 0

    invoke-static {p0, p1}, Landroid/graphics/text/LineBreaker;->nGetLineCount(J)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineDescent(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineDescent(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineFlag(JI)I
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineFlag(JI)I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetLineWidth(JI)F
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/graphics/text/LineBreaker;->nGetLineWidth(JI)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetReleaseFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnGetReleaseResultFunc()J
    .locals 2

    invoke-static {}, Landroid/graphics/text/LineBreaker;->nGetReleaseResultFunc()J

    move-result-wide v0

    return-wide v0
.end method

.method private constructor blacklist <init>(III[IZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, p2, v0, p4, p5}, Landroid/graphics/text/LineBreaker;->nInit(IIZ[IZ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    invoke-static {}, Landroid/graphics/text/LineBreaker$NoImagePreloadHolder;->-$$Nest$sfgetsRegistry()Llibcore/util/NativeAllocationRegistry;

    move-result-object v0

    iget-wide v1, p0, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    invoke-virtual {v0, p0, v1, v2}, Llibcore/util/NativeAllocationRegistry;->registerNativeAllocation(Ljava/lang/Object;J)Ljava/lang/Runnable;

    iput p1, p0, Landroid/graphics/text/LineBreaker;->mBreakStrategy:I

    iput p2, p0, Landroid/graphics/text/LineBreaker;->mHyphenationFrequency:I

    iput p3, p0, Landroid/graphics/text/LineBreaker;->mJustificationMode:I

    iput-object p4, p0, Landroid/graphics/text/LineBreaker;->mIndents:[I

    iput-boolean p5, p0, Landroid/graphics/text/LineBreaker;->mUseBoundsForWidth:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(III[IZLandroid/graphics/text/LineBreaker-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Landroid/graphics/text/LineBreaker;-><init>(III[IZ)V

    return-void
.end method

.method private static native blacklist nComputeLineBreaks(J[CJIFIF[FFI)J
.end method

.method private static native blacklist nGetLineAscent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineBreakOffset(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineCount(J)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineDescent(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineFlag(JI)I
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetLineWidth(JI)F
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nGetReleaseResultFunc()J
    .annotation build Ldalvik/annotation/optimization/CriticalNative;
    .end annotation
.end method

.method private static native blacklist nInit(IIZ[IZ)J
    .annotation build Ldalvik/annotation/optimization/FastNative;
    .end annotation
.end method


# virtual methods
.method public whitelist computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;
    .locals 14

    new-instance v0, Landroid/graphics/text/LineBreaker$Result;

    move-object v1, p0

    iget-wide v2, v1, Landroid/graphics/text/LineBreaker;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v4

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getNativePtr()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/graphics/text/MeasuredText;->getChars()[C

    move-result-object v7

    array-length v7, v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v8

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmFirstWidthLineCount(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)I

    move-result v9

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmWidth(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v10

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmVariableTabStops(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)[F

    move-result-object v11

    invoke-static/range {p2 .. p2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->-$$Nest$fgetmDefaultTabStop(Landroid/graphics/text/LineBreaker$ParagraphConstraints;)F

    move-result v12

    move/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/graphics/text/LineBreaker;->nComputeLineBreaks(J[CJIFIF[FFI)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Landroid/graphics/text/LineBreaker$Result;-><init>(JLandroid/graphics/text/LineBreaker$Result-IA;)V

    return-object v0
.end method

.method public blacklist getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreaker;->mBreakStrategy:I

    return v0
.end method

.method public blacklist getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreaker;->mHyphenationFrequency:I

    return v0
.end method

.method public blacklist getIndents()[I
    .locals 1

    iget-object v0, p0, Landroid/graphics/text/LineBreaker;->mIndents:[I

    return-object v0
.end method

.method public blacklist getJustificationMode()I
    .locals 1

    iget v0, p0, Landroid/graphics/text/LineBreaker;->mJustificationMode:I

    return v0
.end method

.method public blacklist getUseBoundsForWidth()Z
    .locals 1

    iget-boolean v0, p0, Landroid/graphics/text/LineBreaker;->mUseBoundsForWidth:Z

    return v0
.end method
