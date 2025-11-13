.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAddLastLineLineSpacing:Z

.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBreakStrategy:I

.field private blacklist mCalculateBounds:Z

.field private greylist-max-o mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mEnd:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private final greylist-max-o mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private greylist-max-o mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private greylist-max-o mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private greylist-max-o mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mStart:I

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mCalculateBounds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .locals 0

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mUseBoundsForWidth:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I
    .locals 0

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static whitelist obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .locals 4

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    if-nez v0, :cond_0

    new-instance v1, Landroid/text/StaticLayout$Builder;

    invoke-direct {v1}, Landroid/text/StaticLayout$Builder;-><init>()V

    move-object v0, v1

    :cond_0
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const v3, 0x7fffffff

    iput v3, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    sget-object v1, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method private static greylist-max-o recycle(Landroid/text/StaticLayout$Builder;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/StaticLayout;
    .locals 4

    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-object v2, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    :goto_0
    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V

    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    return-object v0
.end method

.method blacklist buildPartialStaticLayoutForDynamicLayout(ZLandroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout-IA;)V

    move-object p2, v0

    :cond_0
    const-string v0, "Generating StaticLayout For DynamicLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-boolean v0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p2, p0, v0, p1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    nop

    return-object p2

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method greylist-max-o finish()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method greylist-max-o setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return-object p0
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public blacklist setCalculateBounds(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mCalculateBounds:Z

    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public whitelist setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public whitelist setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method public whitelist setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method public greylist-max-o setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return-object p0
.end method

.method public whitelist setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mUseBoundsForWidth:Z

    return-object p0
.end method

.method public whitelist setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return-object p0
.end method

.method public greylist-max-o setWidth(I)Landroid/text/StaticLayout$Builder;
    .locals 1

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    :cond_0
    return-object p0
.end method
