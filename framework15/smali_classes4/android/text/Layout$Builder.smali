.class public final Landroid/text/Layout$Builder;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private final blacklist mEnd:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private blacklist mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private blacklist mSpacingAdd:F

.field private blacklist mSpacingMult:F

.field private final blacklist mStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private final blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    iput v0, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    iput-object v1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    iput-object v1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    iput v0, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    iput-object p1, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iput p2, p0, Landroid/text/Layout$Builder;->mStart:I

    iput p3, p0, Landroid/text/Layout$Builder;->mEnd:I

    iput-object p4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iput p5, p0, Landroid/text/Layout$Builder;->mWidth:I

    iput p5, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    return-void
.end method

.method private blacklist isBoring()Landroid/text/BoringLayout$Metrics;
    .locals 9

    iget v0, p0, Landroid/text/Layout$Builder;->mStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget v0, p0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v2, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-boolean v6, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    iget-object v7, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    iget v3, p0, Landroid/text/Layout$Builder;->mWidth:I

    if-gt v2, v3, :cond_2

    return-object v0

    :cond_2
    iget-object v2, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public whitelist build()Landroid/text/Layout;
    .locals 27

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/text/Layout$Builder;->isBoring()Landroid/text/BoringLayout$Metrics;

    move-result-object v24

    if-nez v24, :cond_0

    iget-object v1, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/Layout$Builder;->mStart:I

    iget v3, v0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v4, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/text/Layout$Builder;->mWidth:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    iget v3, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    iget-object v3, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v25, Landroid/text/BoringLayout;

    move-object/from16 v1, v25

    iget-object v2, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v4, v0, Landroid/text/Layout$Builder;->mWidth:I

    iget-object v5, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget-object v6, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    iget v8, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    iget-boolean v10, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    iget v11, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    iget-object v12, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget v13, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    iget v14, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    iget v15, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    move-object/from16 v26, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    move-object/from16 v17, v1

    iget v1, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    move/from16 v18, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move-object/from16 v19, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    move/from16 v21, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    move/from16 v22, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v23, v1

    move-object/from16 v20, v24

    move-object/from16 v1, v26

    invoke-direct/range {v1 .. v23}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-object v25
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    return-object p0
.end method

.method public whitelist setFallbackLineSpacingEnabled(Z)Landroid/text/Layout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    return-object p0
.end method

.method public whitelist setFontPaddingIncluded(Z)Landroid/text/Layout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    return-object p0
.end method

.method public whitelist setLeftIndents([I)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method public whitelist setLineSpacingAmount(F)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    return-object p0
.end method

.method public whitelist setLineSpacingMultiplier(F)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/Layout$Builder;
    .locals 0

    iput p1, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method public whitelist setRightIndents([I)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/Layout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    return-object p0
.end method

.method public whitelist setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/Layout$Builder;
    .locals 0

    iput-object p1, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/Layout$Builder;
    .locals 0

    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    return-object p0
.end method
