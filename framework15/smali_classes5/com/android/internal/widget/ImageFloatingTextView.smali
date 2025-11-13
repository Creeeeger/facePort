.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mHasImage:Z

.field private blacklist mImageEndMargin:I

.field private blacklist mIndentLines:I

.field private blacklist mLayoutMaxLines:I

.field private final blacklist mMaxLineUpperLimit:I

.field private blacklist mMaxLinesForHeight:I

.field private blacklist mResolvedDirection:I

.field private blacklist mStaticLayoutCreationCountInOnMeasure:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHyphenationFrequency(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setBreakStrategy(I)V

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    return-void
.end method

.method private blacklist invalidateTextIfIndenting()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    :cond_0
    return-void
.end method

.method private blacklist isTextAPrecomputedText()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v2, v0, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private blacklist setHasImageAndNumIndentLines(ZI)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p1, :cond_1

    move v1, p2

    :cond_1
    iput p2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    iput-boolean p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    :cond_2
    return-void
.end method

.method private blacklist trackMaxLines()V
    .locals 3

    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    int-to-long v0, v0

    const-string v2, "ImageFloatingView#layoutMaxLines"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method

.method private blacklist trackParameters()V
    .locals 3

    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    int-to-long v0, v0

    const-string v2, "ImageFloatingView#staticLayoutCreationCount"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    nop

    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isTextAPrecomputedText()I

    move-result v0

    int-to-long v0, v0

    const-string v2, "ImageFloatingView#isPrecomputedText"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected blacklist makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 8

    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string v0, "ImageFloatingTextView#makeSingleLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v0, :cond_1

    invoke-interface {v0, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    const-string v3, ""

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    move-object v2, v3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v4, :cond_3

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    goto :goto_1

    :cond_4
    const v4, 0x7fffffff

    :goto_1
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_5
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    iput v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eqz p5, :cond_6

    invoke-virtual {v3, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    invoke-virtual {v5, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    :cond_6
    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v6, :cond_7

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v6, :cond_7

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/2addr v6, v1

    new-array v5, v6, [I

    const/4 v6, 0x0

    :goto_2
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v6, v7, :cond_7

    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v7, 0x0

    if-ne v6, v1, :cond_8

    invoke-virtual {v3, v5, v7}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v7, v5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    :goto_3
    invoke-virtual {v3}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    sget-boolean v6, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v6, :cond_9

    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->trackMaxLines()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_9
    return-object v1
.end method

.method protected whitelist onMeasure(II)V
    .locals 4

    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_0

    const-string v0, "ImageFloatingTextView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_4

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-le v3, v0, :cond_2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_3
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v2, v3, :cond_4

    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_4
    sget-boolean v2, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->trackParameters()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_5
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    :cond_0
    return-void
.end method

.method public blacklist setHasImage(Z)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    return-void
.end method

.method public blacklist setImageEndMargin(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    :cond_0
    return-void
.end method

.method public blacklist setImageEndMarginDp(F)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setImageEndMargin(I)V

    return-void
.end method

.method public blacklist setNumIndentLines(I)V
    .locals 1
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    return-void
.end method
