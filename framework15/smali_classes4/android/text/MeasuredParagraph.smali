.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MeasuredParagraph$StyleRunCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBidi:Landroid/icu/text/Bidi;

.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private final greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private final blacklist mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    iput v1, v0, Landroid/text/TextPaint;->baselineShift:I

    if-eqz p7, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    move v11, v0

    if-eqz v11, :cond_1

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    :cond_1
    const/4 v0, 0x0

    if-eqz v8, :cond_4

    const/4 v2, 0x0

    :goto_1
    array-length v3, v8

    if-ge v2, v3, :cond_3

    aget-object v3, v8, v2

    instance-of v4, v3, Landroid/text/style/ReplacementSpan;

    if-eqz v4, :cond_2

    move-object v0, v3

    check-cast v0, Landroid/text/style/ReplacementSpan;

    goto :goto_2

    :cond_2
    iget-object v4, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v12, v0

    goto :goto_3

    :cond_4
    move-object v12, v0

    :goto_3
    if-eqz v9, :cond_6

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    array-length v0, v9

    :goto_4
    if-ge v1, v0, :cond_5

    aget-object v3, v9, v1

    iget-object v4, v7, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v3}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v0}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v0

    move-object v13, v0

    goto :goto_5

    :cond_6
    move-object/from16 v2, p2

    move-object v13, v2

    :goto_5
    iget v0, v7, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v14, p5, v0

    iget v0, v7, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v15, p6, v0

    if-eqz p7, :cond_7

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v1, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    :cond_7
    if-eqz v12, :cond_8

    iget-object v4, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v14

    move v3, v15

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    goto :goto_6

    :cond_8
    iget-object v3, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move-object v4, v13

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    :goto_6
    if-eqz v11, :cond_a

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v0, v0, Landroid/text/TextPaint;->baselineShift:I

    if-gez v0, :cond_9

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v2, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v2, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_7

    :cond_9
    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v2, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, v7, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :goto_7
    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    iget-object v0, v7, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v1, v7, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    :cond_a
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 6

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    if-nez p5, :cond_1

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1, p2, v0}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    add-int/lit8 v1, p2, 0x1

    if-le p3, v1, :cond_0

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    :cond_0
    iget v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr v1, v0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_0

    :cond_1
    sub-int v1, p3, p2

    invoke-virtual {p5, p4, v1, v0}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    :goto_0
    if-eqz p6, :cond_2

    sub-int v1, p3, p2

    invoke-interface {p6, p4, v1, v0}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendReplacementRun(Landroid/graphics/Paint;IF)V

    :cond_2
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .locals 22

    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v10, p6

    iget-boolean v0, v1, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    if-nez v15, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFlags()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :try_start_0
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v5, v12, v11

    sub-int v7, v12, v11

    iget-object v2, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v17, 0x0

    move-object/from16 v2, p3

    move/from16 v4, p1

    move/from16 v6, p1

    move v14, v8

    move/from16 v8, v17

    move-object/from16 v9, v16

    move/from16 v10, p1

    :try_start_1
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setFlags(I)V

    nop

    move-object/from16 v14, p4

    const/4 v10, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move v14, v8

    :goto_0
    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setFlags(I)V

    throw v0

    :cond_0
    sub-int v0, v12, v11

    move-object/from16 v14, p4

    const/4 v10, 0x0

    invoke-virtual {v15, v13, v14, v0, v10}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    :goto_1
    move-object/from16 v9, p6

    if-eqz v9, :cond_1

    sub-int v0, v12, v11

    invoke-interface {v9, v13, v14, v0, v10}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    move-object v3, v9

    move v4, v12

    goto/16 :goto_7

    :cond_1
    move-object v3, v9

    move v4, v12

    goto/16 :goto_7

    :cond_2
    move-object/from16 v21, v10

    move v10, v9

    move-object/from16 v9, v21

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v11}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    move/from16 v2, p1

    add-int/lit8 v3, v11, 0x1

    move v8, v0

    move/from16 v16, v2

    move v7, v3

    :goto_2
    if-eq v7, v12, :cond_4

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v7}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    if-eq v0, v8, :cond_3

    goto :goto_3

    :cond_3
    move v5, v7

    move-object v3, v9

    move/from16 v18, v10

    move v4, v12

    goto/16 :goto_8

    :cond_4
    :goto_3
    and-int/lit8 v0, v8, 0x1

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v10

    :goto_4
    move v6, v0

    if-nez v15, :cond_6

    sub-int v17, v7, v16

    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFlags()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :try_start_2
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v2, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v18
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v2, p3

    move/from16 v4, v16

    move v11, v5

    move/from16 v5, v17

    move/from16 v19, v6

    move/from16 v6, v16

    move v12, v7

    move/from16 v7, v17

    move/from16 v20, v8

    move/from16 v8, v19

    move-object/from16 v9, v18

    move/from16 v18, v10

    move/from16 v10, v16

    :try_start_3
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v13, v11}, Landroid/text/TextPaint;->setFlags(I)V

    nop

    move/from16 v2, v19

    goto :goto_6

    :catchall_2
    move-exception v0

    goto :goto_5

    :catchall_3
    move-exception v0

    move v11, v5

    move/from16 v19, v6

    move v12, v7

    move/from16 v20, v8

    :goto_5
    invoke-virtual {v13, v11}, Landroid/text/TextPaint;->setFlags(I)V

    throw v0

    :cond_6
    move/from16 v19, v6

    move v12, v7

    move/from16 v20, v8

    move/from16 v18, v10

    sub-int v7, v12, v16

    move/from16 v2, v19

    invoke-virtual {v15, v13, v14, v7, v2}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    :goto_6
    move-object/from16 v3, p6

    if-eqz v3, :cond_7

    sub-int v7, v12, v16

    invoke-interface {v3, v13, v14, v7, v2}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    :cond_7
    move/from16 v4, p2

    move v5, v12

    if-ne v5, v4, :cond_8

    nop

    :goto_7
    return-void

    :cond_8
    move v0, v5

    iget-object v6, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v6, v5}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v6

    move/from16 v16, v0

    move v8, v6

    :goto_8
    add-int/lit8 v7, v5, 0x1

    move/from16 v11, p1

    move-object v9, v3

    move v12, v4

    move/from16 v10, v18

    goto/16 :goto_2
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 1

    if-nez p4, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p4

    :goto_0
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    return-object v0
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 19

    move/from16 v9, p3

    if-nez p5, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p5

    :goto_0
    move-object v15, v0

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    invoke-direct {v15, v14, v13, v9, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v1, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v1}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_1

    return-object v15

    :cond_1
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move-object v6, v15

    goto :goto_2

    :cond_2
    move/from16 v0, p2

    :goto_1
    if-ge v0, v9, :cond_3

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v9, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v2, v0, v9, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v0, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    iget-object v5, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v6, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v5, v0, v3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    iget-object v6, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    iget-object v6, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v7, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    move-object v10, v15

    move-object/from16 v11, p0

    move-object v12, v6

    move-object v13, v4

    move-object v14, v5

    move-object v6, v15

    move v15, v0

    move/from16 v16, v3

    invoke-direct/range {v10 .. v18}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move v0, v3

    move-object/from16 v14, p1

    move/from16 v13, p2

    move-object/from16 v12, p4

    move-object v15, v6

    goto :goto_1

    :cond_3
    move-object v6, v15

    :goto_2
    return-object v6
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 21

    move/from16 v9, p4

    move-object/from16 v10, p9

    if-nez p10, :cond_0

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object/from16 v0, p10

    :goto_0
    move-object v15, v0

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    invoke-direct {v15, v14, v13, v9, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    if-nez v10, :cond_1

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    move/from16 v11, p6

    invoke-virtual {v0, v11}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move/from16 v8, p7

    invoke-virtual {v0, v8}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move/from16 v7, p8

    invoke-virtual {v0, v7}, Landroid/graphics/text/MeasuredText$Builder;->setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object/from16 v20, v0

    goto :goto_1

    :cond_1
    move/from16 v11, p6

    move/from16 v8, p7

    move/from16 v7, p8

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object/from16 v20, v0

    :goto_1
    iget v0, v15, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_2

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v15, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    move-object v6, v15

    goto/16 :goto_4

    :cond_2
    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, v20

    move-object/from16 v8, p11

    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    iget-object v0, v15, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v9}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move-object v6, v15

    goto/16 :goto_3

    :cond_3
    move/from16 v0, p3

    :goto_2
    if-ge v0, v9, :cond_4

    iget-object v1, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v9, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    iget-object v2, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v2, v0, v9, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v0, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    iget-object v5, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v6, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v5, v0, v3, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    iget-object v6, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v7, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v6, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    iget-object v6, v15, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v7, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    move-object v5, v6

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    move-object v11, v15

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object v14, v4

    move-object v6, v15

    move-object v15, v5

    move/from16 v16, v0

    move/from16 v17, v3

    move-object/from16 v18, v20

    move-object/from16 v19, p11

    invoke-direct/range {v11 .. v19}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    iget-object v7, v6, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v7, v3}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    move v0, v3

    move-object/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p5

    move/from16 v11, p6

    move-object v15, v6

    goto :goto_2

    :cond_4
    move-object v6, v15

    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v6, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    :goto_4
    return-object v6
.end method

.method public static blacklist buildForStaticLayoutTest(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .locals 2

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_0
    return-object v1
.end method

.method private greylist-max-o reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {p0 .. p0}, Landroid/text/MeasuredParagraph;->reset()V

    instance-of v5, v1, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    move-object v5, v1

    check-cast v5, Landroid/text/Spanned;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iput v2, v0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v5, v3, v2

    iput v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v5, :cond_1

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v5, v5

    iget v6, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v5, v6, :cond_2

    :cond_1
    iget v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v5, v5, [C

    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    :cond_2
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const v7, 0xfffc

    if-eqz v5, :cond_5

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v5, v2, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    const/4 v8, 0x0

    :goto_1
    array-length v9, v5

    if-ge v8, v9, :cond_5

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v10, v5, v8

    invoke-interface {v9, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v9, v2

    iget-object v10, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v11, v5, v8

    invoke-interface {v10, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int/2addr v10, v2

    if-gez v9, :cond_3

    const/4 v9, 0x0

    :cond_3
    iget v11, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v10, v11, :cond_4

    iget v10, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    :cond_4
    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v11, v9, v10, v7}, Ljava/util/Arrays;->fill([CIIC)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/text/ClientFlags;->icuBidiMigration()Z

    move-result v5

    const/4 v8, 0x1

    if-eqz v5, :cond_11

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_6

    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_7

    :cond_6
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-static {v5, v6, v9}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iput-boolean v8, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    return-void

    :cond_7
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_8

    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_9

    const/4 v5, 0x1

    goto :goto_2

    :cond_9
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_a

    const/16 v5, 0x7e

    goto :goto_2

    :cond_a
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_b

    const/16 v5, 0x7f

    goto :goto_2

    :cond_b
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {v4, v5, v6, v9}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    move v9, v5

    :goto_2
    new-instance v9, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v10, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v9

    move/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v9, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v9, v9

    if-lez v9, :cond_f

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object v10, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v10, v10

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v8

    if-eqz v8, :cond_f

    const/4 v8, 0x0

    :goto_3
    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v8, v9, :cond_e

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v9, v9, v8

    invoke-static {v9}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_c

    goto :goto_4

    :cond_c
    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v9, v9, v8

    invoke-static {v9}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v9

    const/4 v10, 0x7

    if-ne v9, v10, :cond_d

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aput-char v7, v9, v8

    :cond_d
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_e
    new-instance v7, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v8

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v7

    move/from16 v16, v5

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v7, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    :cond_f
    iget-object v7, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v7, v8}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    iget-object v7, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v7}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v7

    const/4 v8, 0x0

    :goto_5
    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v8, v9, :cond_10

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v9, v8}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v9

    aput-byte v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_10
    iput-boolean v6, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    return-void

    :cond_11
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_12

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_12

    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_13

    :cond_12
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v7, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-static {v5, v6, v7}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v5

    if-eqz v5, :cond_13

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    iput v8, v0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v8, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    goto :goto_7

    :cond_13
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_14

    const/4 v5, 0x1

    goto :goto_6

    :cond_14
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_15

    const/4 v5, -0x1

    goto :goto_6

    :cond_15
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_16

    const/4 v5, 0x2

    goto :goto_6

    :cond_16
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_17

    const/4 v5, -0x2

    goto :goto_6

    :cond_17
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v7, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {v4, v5, v6, v7}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    if-eqz v5, :cond_18

    const/4 v8, -0x1

    :cond_18
    move v7, v8

    move v5, v7

    :goto_6
    iget-object v7, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v7, v8}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    iget-object v7, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v8}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v8

    invoke-static {v5, v7, v8}, Landroid/text/AndroidBidi;->bidi(I[C[B)I

    move-result v7

    iput v7, v0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iput-boolean v6, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    :goto_7
    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .locals 6

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v3, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_2

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v3, p1, -0x1

    :goto_2
    if-ltz v3, :cond_5

    aget v4, v0, v3

    sub-float/2addr p3, v4

    cmpg-float v4, p3, v2

    if-gez v4, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_7

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_6

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getChars()[C
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .locals 11

    invoke-static {}, Landroid/text/ClientFlags;->icuBidiMigration()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    if-nez v0, :cond_0

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p2, :cond_2

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_1
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_2
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ne v2, v0, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    if-ne v3, v0, :cond_3

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_3
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_4
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1a

    sub-int v4, p2, p1

    or-int/2addr v3, v4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0

    :cond_5
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-static {v2}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v6}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v6

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_7

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v0

    aget v6, v3, v6

    goto :goto_2

    :cond_7
    aget v6, v3, v5

    :goto_2
    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v8

    aput v8, v4, v7

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x1a

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v9

    mul-int/lit8 v10, v5, 0x2

    aget v10, v4, v10

    sub-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v4, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_8
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v4}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0

    :cond_9
    iget-boolean v0, p0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_a

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    :cond_a
    sub-int v0, p2, p1

    iget v1, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v2}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v2

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    move v3, p1

    move v5, p1

    move v6, v0

    invoke-static/range {v1 .. v6}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v1

    return-object v1
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getParagraphDir()I
    .locals 2

    invoke-static {}, Landroid/text/ClientFlags;->icuBidiMigration()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_2
    iget v0, p0, Landroid/text/MeasuredParagraph;->mParaDir:I

    return v0
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public greylist-max-o getTextLength()I
    .locals 1

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public greylist-max-o getWholeWidth()F
    .locals 1

    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public greylist-max-o getWidth(II)F
    .locals 4

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    aget v3, v0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .locals 1

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method greylist-max-o measure(II)F
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    aget v3, v1, v2

    add-float/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public greylist-max-o recycle()V
    .locals 1

    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public greylist-max-o release()V
    .locals 1

    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    return-void
.end method
