.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;,
        Landroid/text/TextLine$LineInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist TAB_CHAR:C = '\t'

.field private static final greylist-max-o TAB_INCREMENT:I = 0x14

.field private static final greylist-max-p sCached:[Landroid/text/TextLine;


# instance fields
.field private final greylist-max-o mActivePaint:Landroid/text/TextPaint;

.field private blacklist mAddedLetterSpacingInPx:F

.field private blacklist mAddedWordSpacingInPx:F

.field private final greylist-max-r mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChars:[C

.field private greylist-max-o mCharsValid:Z

.field private greylist-max-o mComputed:Landroid/text/PrecomputedText;

.field private final greylist-max-o mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final greylist-max-o mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDir:I

.field private greylist-max-o mDirections:Landroid/text/Layout$Directions;

.field private blacklist mEllipsisEnd:I

.field private blacklist mEllipsisStart:I

.field private greylist-max-o mHasTabs:Z

.field private blacklist mIsJustifying:Z

.field private greylist-max-o mLen:I

.field private final greylist-max-r mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-r mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRunInfo:Landroid/graphics/Paint$RunInfo;

.field private greylist-max-p mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mStart:I

.field private greylist-max-o mTabs:Landroid/text/Layout$TabStops;

.field private greylist-max-r mText:Ljava/lang/CharSequence;

.field private blacklist mTmpRectForMeasure:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPaintAPI:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPrecompute:Landroid/graphics/Rect;

.field private blacklist mUseFallbackExtent:Z

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine$DecorationInfo-IA;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist adjustEndHyphenEdit(II)I
    .locals 1

    iget v0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method private blacklist adjustStartHyphenEdit(II)I
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    return v0
.end method

.method public static blacklist calculateRunFlag(III)I
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 v0, 0x6000

    return v0

    :cond_0
    if-eqz p0, :cond_1

    add-int/lit8 v1, p1, -0x1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v1, 0x0

    if-nez p0, :cond_3

    if-ne p2, v0, :cond_2

    or-int/lit16 v1, v1, 0x2000

    goto :goto_0

    :cond_2
    or-int/lit16 v1, v1, 0x4000

    :cond_3
    :goto_0
    add-int/lit8 v2, p1, -0x1

    if-ne p0, v2, :cond_5

    if-ne p2, v0, :cond_4

    or-int/lit16 v1, v1, 0x4000

    goto :goto_1

    :cond_4
    or-int/lit16 v1, v1, 0x2000

    :cond_5
    :goto_1
    return v1
.end method

.method private blacklist charAt(I)C
    .locals 2

    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_0
    return v0
.end method

.method private greylist-max-o countStretchableSpaces(II)I
    .locals 4

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_2

    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    :goto_1
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private blacklist drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F
    .locals 19

    move-object/from16 v14, p0

    iget v0, v14, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v13, p4

    if-ne v1, v13, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    neg-float v10, v0

    add-float v7, p5, v10

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v18, v10

    move/from16 v10, p8

    move/from16 v17, p10

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    return v18

    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p1

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v13, p9

    move/from16 v17, p10

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .locals 12

    move-object v6, p0

    iget v0, v6, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v7, v0, p3

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v9

    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v10

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    move v11, p2

    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    add-float v4, v7, p4

    move-object v0, p1

    move/from16 v1, p5

    move v2, v7

    move/from16 v3, p6

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    return-void
.end method

.method private greylist-max-o drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v11, p9

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    sub-int v12, p4, p3

    sub-int v13, p6, p5

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v8, v11

    move-object/from16 v1, p1

    move/from16 v3, p3

    move v4, v12

    move/from16 v5, p5

    move v6, v13

    move/from16 v7, p8

    move/from16 v9, p7

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    iget-object v13, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v14, v1, p3

    add-int v15, v1, p4

    add-int v16, v1, p5

    add-int v17, v1, p6

    int-to-float v2, v11

    move-object/from16 v12, p1

    move/from16 v18, p8

    move/from16 v19, v2

    move/from16 v20, p7

    move-object/from16 v21, p2

    invoke-virtual/range {v12 .. v21}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private static blacklist equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget v1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static greylist-max-o expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 11

    iget v6, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v7, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v8, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v9, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v10, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private blacklist expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v9, p7

    iget v10, v9, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v11, v9, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v12, v9, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v13, v9, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v14, v9, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    sub-int v15, p3, p2

    sub-int v16, p5, p4

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    move-object/from16 v1, p1

    move/from16 v3, p2

    move v4, v15

    move/from16 v5, p4

    move/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v1, :cond_1

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v3, v1, p2

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    move-object/from16 v1, p1

    move v4, v15

    move/from16 v6, v16

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, p2

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v3, v3, p3

    invoke-virtual {v1, v2, v3, v9}, Landroid/text/PrecomputedText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    :goto_0
    move-object/from16 v1, p7

    move v2, v10

    move v3, v11

    move v4, v12

    move v5, v13

    move v6, v14

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    return-void
.end method

.method private greylist-max-o extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    :cond_0
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    :cond_1
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    return-void
.end method

.method private greylist-max-o getOffsetBeforeAfter(IIIZIZ)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v9, p5

    if-ltz p1, :cond_d

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-ne v9, v3, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v15, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-boolean v3, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v3, :cond_2

    iget v3, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setWordSpacing(F)V

    iget v3, v0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v15}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    div-float/2addr v3, v4

    invoke-virtual {v15, v3}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_2
    move/from16 v3, p2

    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-eqz v4, :cond_a

    move/from16 v14, p2

    if-ne v14, v1, :cond_3

    goto :goto_6

    :cond_3
    if-eqz p6, :cond_4

    add-int/lit8 v4, v9, 0x1

    goto :goto_1

    :cond_4
    move v4, v9

    :goto_1
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v1

    :goto_2
    iget-object v6, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v3

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v6, v7, v5, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    iget v7, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v6, v7

    if-lt v6, v4, :cond_9

    nop

    iget-object v7, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v8, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v3

    iget v10, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v10, v6

    const-class v11, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v8, v10, v11}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/MetricAffectingSpan;

    iget-object v8, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v10, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v7, v8, v10}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    move-object v7, v8

    check-cast v7, [Landroid/text/style/MetricAffectingSpan;

    array-length v8, v7

    if-lez v8, :cond_8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_3
    array-length v11, v7

    if-ge v10, v11, :cond_6

    aget-object v11, v7, v10

    instance-of v12, v11, Landroid/text/style/ReplacementSpan;

    if-eqz v12, :cond_5

    move-object v8, v11

    check-cast v8, Landroid/text/style/ReplacementSpan;

    goto :goto_4

    :cond_5
    invoke-virtual {v11, v15}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_8

    if-eqz p6, :cond_7

    move v2, v6

    goto :goto_5

    :cond_7
    move v2, v3

    :goto_5
    return v2

    :cond_8
    move/from16 v17, v3

    move/from16 v18, v6

    goto :goto_7

    :cond_9
    move v3, v6

    goto :goto_2

    :cond_a
    move/from16 v14, p2

    :goto_6
    move/from16 v6, p3

    move/from16 v17, v3

    move/from16 v18, v6

    :goto_7
    if-eqz p6, :cond_b

    goto :goto_8

    :cond_b
    const/4 v2, 0x2

    :goto_8
    move v8, v2

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_c

    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    sub-int v5, v18, v17

    move-object v2, v15

    move/from16 v4, v17

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result v2

    return v2

    :cond_c
    iget-object v11, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v2, v17

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int v13, v2, v18

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v9

    move-object v10, v15

    move/from16 v14, p4

    move-object v3, v15

    move v15, v2

    move/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v2

    iget v4, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v4

    return v2

    :cond_d
    :goto_9
    if-eqz p6, :cond_e

    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v3

    return v2

    :cond_e
    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v9

    invoke-static {v2, v3}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v2, v3

    return v2
.end method

.method private blacklist getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    if-eqz v14, :cond_1

    iget-object v1, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Paint$RunInfo;

    invoke-direct {v1}, Landroid/graphics/Paint$RunInfo;-><init>()V

    iput-object v1, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    :cond_0
    iget-object v1, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    :goto_0
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_3

    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    iget-object v12, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextPaint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v1

    if-eqz v14, :cond_2

    invoke-virtual/range {p11 .. p11}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    iget-object v3, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v3}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_2
    return v1

    :cond_3
    iget v15, v0, Landroid/text/TextLine;->mStart:I

    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-eqz v1, :cond_7

    if-nez p8, :cond_7

    if-eqz v14, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v13, :cond_6

    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    if-nez v1, :cond_5

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    :cond_5
    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v2, p2, v15

    add-int v3, p3, v15

    iget-object v4, v0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    :cond_6
    iget-object v1, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v2, p2, v15

    add-int v3, p3, v15

    invoke-virtual {v1, v2, v3}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v1

    return v1

    :cond_7
    :goto_1
    iget-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v3, v15, p2

    add-int v4, v15, p3

    add-int v5, v15, p4

    add-int v6, v15, p5

    add-int v8, v15, p7

    iget-object v12, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object/from16 v1, p1

    move/from16 v7, p6

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextPaint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v1

    if-eqz v14, :cond_8

    nop

    invoke-virtual/range {p11 .. p11}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    iget-object v3, v0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v3}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v14, v2}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_8
    return v1
.end method

.method private greylist-max-o handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p11

    const/4 v7, 0x0

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v12, v1, p3

    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v13, v1, p4

    if-nez p12, :cond_1

    if-eqz p6, :cond_0

    if-eqz p5, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v14, v7

    goto :goto_4

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v11, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    move v8, v6

    if-eqz v8, :cond_3

    iget v1, v11, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v2, v11, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v11, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v4, v11, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v5, v11, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    goto :goto_3

    :cond_3
    move v9, v1

    move v10, v2

    move v14, v3

    move v15, v4

    move/from16 v16, v5

    :goto_3
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v4, v12

    move v5, v13

    move-object/from16 v6, p11

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v1

    int-to-float v7, v1

    if-eqz v8, :cond_0

    move-object/from16 v1, p11

    move v2, v9

    move v3, v10

    move v4, v14

    move v5, v15

    move/from16 v6, v16

    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_0

    :goto_4
    if-eqz p6, :cond_5

    if-eqz p5, :cond_4

    sub-float v1, p7, v14

    move v15, v1

    goto :goto_5

    :cond_4
    move/from16 v15, p7

    :goto_5
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move v4, v12

    move v5, v13

    move v6, v15

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p2

    invoke-virtual/range {v1 .. v10}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto :goto_6

    :cond_5
    move/from16 v15, p7

    :goto_6
    if-eqz p5, :cond_6

    neg-float v1, v14

    goto :goto_7

    :cond_6
    move v1, v14

    :goto_7
    return v1
.end method

.method private blacklist handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F
    .locals 40

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p11

    move-object/from16 v10, p12

    move-object/from16 v9, p14

    if-lt v13, v14, :cond_22

    if-gt v13, v12, :cond_22

    if-eqz v9, :cond_1

    array-length v0, v9

    sub-int v0, v0, p15

    sub-int v1, v13, v14

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "advances doesn\'t have enough space to receive the result"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v8, 0x0

    if-ne v14, v13, :cond_5

    iget-object v0, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    if-eqz v11, :cond_2

    invoke-static {v11, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_2
    if-eqz v10, :cond_4

    if-nez v11, :cond_3

    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    invoke-static {v1, v0}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    move-object v2, v1

    goto :goto_1

    :cond_3
    move-object v2, v11

    :goto_1
    iget v1, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v1, v1

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v10, v8, v1, v8, v3}, Landroid/graphics/RectF;->union(FFFF)V

    goto :goto_2

    :cond_4
    move-object v2, v11

    :goto_2
    return v8

    :cond_5
    iget-object v0, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v22, 0x0

    const/16 v23, 0x1

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move/from16 v24, v0

    goto :goto_5

    :cond_6
    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v15, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v2, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v14

    iget v3, v15, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v0, v15, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v0, :cond_8

    iget-object v0, v15, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v0, v22

    goto :goto_4

    :cond_8
    :goto_3
    move/from16 v0, v23

    :goto_4
    move/from16 v24, v0

    :goto_5
    if-nez v24, :cond_9

    iget-object v8, v15, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    move-object v1, v8

    iget-object v0, v15, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v8}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v15, v14, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v8}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v15, v12, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v3, p3

    move/from16 v4, p1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v22, v8

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p2

    move-object/from16 v18, p14

    move/from16 v19, p15

    move-object/from16 v20, p16

    move/from16 v21, p17

    invoke-direct/range {v0 .. v21}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    :cond_9
    move/from16 v25, p7

    move/from16 v0, p1

    move/from16 v13, p7

    move v15, v0

    :goto_6
    move/from16 v14, p2

    if-ge v15, v14, :cond_21

    move-object/from16 v12, p0

    iget-object v11, v12, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v0, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v15

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    move/from16 v10, p3

    add-int/2addr v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    sub-int v9, v0, v1

    invoke-static {v9, v14}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object/from16 v26, v0

    :goto_7
    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v0, v0, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v0, :cond_f

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanStarts:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v7

    if-ge v0, v2, :cond_e

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v15

    if-gt v0, v2, :cond_a

    goto :goto_a

    :cond_a
    iget v0, v12, Landroid/text/TextLine;->mStart:I

    iget v2, v12, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v0, v2

    iget-object v2, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_b

    iget-object v0, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v0, v0, Landroid/text/SpanSet;->spanEnds:[I

    aget v0, v0, v1

    iget v2, v12, Landroid/text/TextLine;->mStart:I

    iget v3, v12, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_b

    move/from16 v0, v23

    goto :goto_8

    :cond_b
    move/from16 v0, v22

    :goto_8
    iget-object v2, v12, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    aget-object v2, v2, v1

    instance-of v3, v2, Landroid/text/style/ReplacementSpan;

    if-eqz v3, :cond_d

    if-nez v0, :cond_c

    move-object v3, v2

    check-cast v3, Landroid/text/style/ReplacementSpan;

    goto :goto_9

    :cond_c
    const/4 v3, 0x0

    :goto_9
    move-object/from16 v26, v3

    goto :goto_a

    :cond_d
    invoke-virtual {v2, v11}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_e
    :goto_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_f
    if-eqz v26, :cond_15

    if-nez p13, :cond_11

    if-ge v7, v14, :cond_10

    goto :goto_b

    :cond_10
    move/from16 v16, v22

    goto :goto_c

    :cond_11
    :goto_b
    move/from16 v16, v23

    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-object v2, v11

    move v3, v15

    move v4, v7

    move/from16 v5, p4

    move-object/from16 v6, p5

    move v14, v7

    move v7, v13

    move/from16 v27, v8

    move/from16 v8, p8

    move/from16 v28, v9

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v29, v11

    move-object/from16 v11, p11

    move/from16 v12, v16

    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v0

    add-float/2addr v13, v0

    if-eqz p14, :cond_14

    add-int v1, p15, v15

    move/from16 v12, p1

    sub-int/2addr v1, v12

    if-eqz p4, :cond_12

    neg-float v2, v0

    goto :goto_d

    :cond_12
    move v2, v0

    :goto_d
    aput v2, p14, v1

    add-int/lit8 v1, v15, 0x1

    :goto_e
    if-ge v1, v14, :cond_13

    add-int v2, p15, v1

    sub-int/2addr v2, v12

    aput v27, p14, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_13
    goto :goto_f

    :cond_14
    move/from16 v12, p1

    :goto_f
    move/from16 v39, v15

    goto/16 :goto_1a

    :cond_15
    move/from16 v12, p1

    move v14, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v11

    move-object/from16 v11, p0

    iget-object v10, v11, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    iget-object v0, v11, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move v0, v15

    move v1, v14

    iget-object v9, v11, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    iget-object v2, v11, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v2, v15

    move v8, v1

    move v7, v2

    move/from16 v30, v13

    move v13, v0

    :goto_10
    if-ge v7, v14, :cond_1e

    iget-object v0, v11, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v11, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v7

    iget v2, v11, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v11, Landroid/text/TextLine;->mStart:I

    sub-int v6, v0, v1

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v31

    iget-object v0, v11, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v5, v29

    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    :goto_11
    iget-object v1, v11, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v0, v1, :cond_18

    iget-object v1, v11, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v0

    iget v2, v11, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, v31

    if-ge v1, v2, :cond_17

    iget-object v1, v11, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v0

    iget v2, v11, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v7

    if-gt v1, v2, :cond_16

    goto :goto_12

    :cond_16
    iget-object v1, v11, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/CharacterStyle;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    :cond_17
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_18
    invoke-direct {v11, v5, v9}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    if-ne v7, v15, :cond_19

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 p7, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v36, v9

    move/from16 v38, v13

    move/from16 v33, v14

    move/from16 v39, v15

    move-object v15, v5

    move-object v14, v10

    move-object v13, v11

    goto/16 :goto_15

    :cond_19
    invoke-static {v5, v10}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v0

    if-nez v0, :cond_1c

    move/from16 v0, p17

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v13

    move-object/from16 v32, v5

    move v5, v8

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v29

    iget-object v0, v11, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-direct {v11, v13, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v11, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-direct {v11, v8, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p13, :cond_1b

    move v5, v14

    move/from16 v14, p2

    if-ge v8, v14, :cond_1a

    goto :goto_13

    :cond_1a
    move/from16 v18, v22

    goto :goto_14

    :cond_1b
    move v5, v14

    move/from16 v14, p2

    :goto_13
    move/from16 v18, v23

    :goto_14
    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget-object v0, v11, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int v0, p15, v13

    sub-int v19, v0, v12

    move-object/from16 v0, p0

    move-object v1, v10

    move v2, v13

    move v3, v8

    move v4, v15

    move/from16 v33, v5

    move/from16 v5, v28

    move/from16 p7, v6

    move/from16 v6, p4

    move/from16 v34, v7

    move-object/from16 v7, p5

    move/from16 v35, v8

    move-object/from16 v8, p6

    move-object/from16 v36, v9

    move/from16 v9, v30

    move-object/from16 v37, v10

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v38, v13

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v39, v15

    move/from16 v15, v18

    move-object/from16 v18, p14

    move-object/from16 v20, p16

    move/from16 v21, v29

    invoke-direct/range {v0 .. v21}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float v30, v30, v0

    move/from16 v0, v34

    move-object/from16 v15, v32

    move-object/from16 v14, v37

    invoke-virtual {v14, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move-object/from16 v13, p0

    iget-object v1, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_16

    :cond_1c
    move/from16 p7, v6

    move/from16 v34, v7

    move/from16 v35, v8

    move-object/from16 v36, v9

    move/from16 v38, v13

    move/from16 v33, v14

    move/from16 v39, v15

    move-object v15, v5

    move-object v14, v10

    move-object v13, v11

    :goto_15
    move/from16 v0, v38

    :goto_16
    move/from16 v8, p7

    invoke-virtual/range {v36 .. v36}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {v36 .. v36}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v1

    move/from16 v2, v34

    iput v2, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v3, p7

    iput v3, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    iget-object v4, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_1d
    move/from16 v3, p7

    move/from16 v2, v34

    :goto_17
    move v7, v3

    move/from16 v12, p1

    move-object v11, v13

    move-object v10, v14

    move-object/from16 v29, v15

    move/from16 v14, v33

    move-object/from16 v9, v36

    move/from16 v15, v39

    move v13, v0

    goto/16 :goto_10

    :cond_1e
    move v2, v7

    move/from16 v35, v8

    move-object/from16 v36, v9

    move/from16 v38, v13

    move/from16 v33, v14

    move/from16 v39, v15

    move-object/from16 v15, v29

    move-object v14, v10

    move-object v13, v11

    move/from16 v0, p17

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, v38

    move/from16 v5, v35

    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v29

    iget-object v0, v13, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    move/from16 v12, v38

    invoke-direct {v13, v12, v0}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    iget-object v0, v13, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    move/from16 v11, v35

    invoke-direct {v13, v11, v0}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v0

    invoke-virtual {v14, v0}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    if-nez p13, :cond_20

    move/from16 v10, p2

    if-ge v11, v10, :cond_1f

    goto :goto_18

    :cond_1f
    move/from16 v18, v22

    goto :goto_19

    :cond_20
    move/from16 v10, p2

    :goto_18
    move/from16 v18, v23

    :goto_19
    move/from16 v9, v33

    invoke-static {v11, v9}, Ljava/lang/Math;->min(II)I

    move-result v16

    iget-object v0, v13, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    add-int v0, p15, v12

    move/from16 v8, p1

    sub-int v19, v0, v8

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v12

    move v3, v11

    move/from16 v4, v39

    move/from16 v5, v28

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v31, v9

    move/from16 v9, v30

    move/from16 v10, p8

    move/from16 v32, v11

    move/from16 v11, p9

    move/from16 v33, v12

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v34, v14

    move-object/from16 v14, p12

    move-object/from16 v35, v15

    move/from16 v15, v18

    move-object/from16 v18, p14

    move-object/from16 v20, p16

    move/from16 v21, v29

    invoke-direct/range {v0 .. v21}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float v30, v30, v0

    move/from16 v13, v30

    :goto_1a
    move/from16 v15, v28

    move/from16 v8, v27

    goto/16 :goto_6

    :cond_21
    sub-float v0, v13, v25

    return v0

    :cond_22
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "measureLimit ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") is out of start ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") and limit ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ") bounds"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextShaper$GlyphsConsumer;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "Landroid/graphics/RectF;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;[FI",
            "Landroid/text/TextLine$LineInfo;",
            "I)F"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v11, p9

    move/from16 v10, p11

    move-object/from16 v9, p14

    move-object/from16 v8, p17

    move/from16 v7, p21

    iget-boolean v0, v12, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v0, :cond_0

    iget v0, v12, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setWordSpacing(F)V

    iget v0, v12, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    :cond_0
    if-eqz v9, :cond_1

    if-nez p13, :cond_1

    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    move-object v6, v0

    goto :goto_0

    :cond_1
    move-object/from16 v6, p13

    :goto_0
    if-eqz v6, :cond_2

    invoke-static {v6, v13}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    :cond_2
    const/4 v5, 0x0

    if-ne v15, v14, :cond_3

    return v5

    :cond_3
    const/16 v16, 0x0

    and-int/lit16 v0, v7, 0x2000

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x2001

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_1
    and-int/lit16 v0, v7, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/2addr v0, v1

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, -0x4001

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setFlags(I)V

    :goto_2
    if-nez v8, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    invoke-virtual/range {p17 .. p17}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    move v4, v0

    if-nez p15, :cond_9

    if-nez p7, :cond_7

    if-eqz p8, :cond_8

    :cond_7
    iget v0, v13, Landroid/text/TextPaint;->bgColor:I

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    if-eqz p6, :cond_8

    goto :goto_4

    :cond_8
    move/from16 p13, v4

    move-object/from16 v18, v6

    move-object v14, v9

    move v13, v11

    goto :goto_7

    :cond_9
    :goto_4
    if-eqz v9, :cond_a

    iget-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    if-nez v0, :cond_a

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :cond_a
    nop

    if-nez v9, :cond_b

    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    iget-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :goto_5
    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v14, v4

    move/from16 v4, p4

    move/from16 p13, v14

    move v14, v5

    move/from16 v5, p5

    move-object/from16 v18, v6

    move/from16 v6, p6

    move/from16 v7, p16

    move-object/from16 v8, p18

    move-object v14, v9

    move/from16 v9, p19

    move-object/from16 v10, v17

    move v13, v11

    move-object/from16 v11, p20

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v16

    if-eqz v14, :cond_d

    if-eqz p6, :cond_c

    iget-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    sub-float v1, v13, v16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_6

    :cond_c
    const/4 v2, 0x0

    iget-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v0, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    :goto_6
    iget-object v0, v12, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v14, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_d
    :goto_7
    iget v0, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v0, v15

    add-int/lit8 v11, v0, -0x1

    if-ltz v11, :cond_e

    iget-object v0, v12, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextUtils;->semNeedMoreWidth(C)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, " "

    move-object/from16 v13, p1

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float v16, v16, v0

    move/from16 v10, v16

    goto :goto_8

    :cond_e
    move-object/from16 v13, p1

    move/from16 v10, v16

    :goto_8
    if-eqz p6, :cond_f

    sub-float v0, p9, v10

    move/from16 v1, p9

    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_9

    :cond_f
    move/from16 v0, p9

    add-float v1, p9, v10

    move/from16 v16, v0

    move/from16 v17, v1

    :goto_9
    if-eqz p8, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Landroid/text/TextLine;->shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V

    :cond_10
    iget-boolean v0, v12, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v0, :cond_11

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, v18

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    :cond_11
    if-eqz p7, :cond_19

    iget v0, v13, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    iget v0, v13, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v13, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v9, p10

    int-to-float v2, v9

    move/from16 v8, p12

    int-to-float v4, v8

    move-object/from16 v0, p7

    move/from16 v1, v16

    move/from16 v3, v17

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual {v13, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v13, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_a

    :cond_12
    move/from16 v9, p10

    move/from16 v8, p12

    :goto_a
    iget v0, v13, Landroid/text/TextPaint;->baselineShift:I

    move/from16 v7, p11

    add-int v19, v7, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, v16

    move/from16 v9, v19

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    if-eqz p13, :cond_18

    const/4 v0, 0x0

    move v9, v0

    :goto_b
    move/from16 v0, p13

    if-ge v9, v0, :cond_17

    move-object/from16 v8, p17

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/text/TextLine$DecorationInfo;

    iget v1, v7, Landroid/text/TextLine$DecorationInfo;->start:I

    move/from16 v6, p2

    move/from16 v19, v0

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v20

    iget v0, v7, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p16

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v26, v7

    move/from16 v7, v20

    move-object/from16 v8, v24

    move/from16 v24, v9

    move/from16 v9, v25

    move/from16 v27, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move-object/from16 v11, v23

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v23

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v7, v21

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v8

    if-eqz p6, :cond_13

    sub-float v0, v17, v8

    sub-float v1, v17, v23

    move v9, v0

    move v10, v1

    goto :goto_c

    :cond_13
    add-float v0, v16, v23

    add-float v1, v16, v8

    move v9, v0

    move v10, v1

    :goto_c
    move-object/from16 v11, v26

    iget v0, v11, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_14

    iget v2, v11, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v11, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v7, p11

    int-to-float v6, v7

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v5, v9

    move/from16 v25, v6

    move v6, v10

    move/from16 p13, v8

    move v8, v7

    move/from16 v7, v25

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_d

    :cond_14
    move/from16 p13, v8

    move/from16 v8, p11

    :goto_d
    iget-boolean v0, v11, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v0, :cond_15

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v25

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v6, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move/from16 v4, v25

    move v5, v9

    move/from16 v26, v6

    move v6, v10

    move v12, v7

    move/from16 v7, v26

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_e

    :cond_15
    move v12, v7

    :goto_e
    iget-boolean v0, v11, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_16

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v8

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    move v4, v12

    move v5, v9

    move v6, v10

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    :cond_16
    add-int/lit8 v9, v24, 0x1

    move-object/from16 v12, p0

    move/from16 p13, v19

    move/from16 v11, v22

    move/from16 v10, v27

    goto/16 :goto_b

    :cond_17
    move/from16 v8, p11

    move/from16 v19, v0

    move/from16 v24, v9

    move/from16 v27, v10

    move/from16 v22, v11

    goto :goto_f

    :cond_18
    move/from16 v8, p11

    move/from16 v19, p13

    move/from16 v27, v10

    move/from16 v22, v11

    goto :goto_f

    :cond_19
    move/from16 v8, p11

    move/from16 v19, p13

    move/from16 v27, v10

    move/from16 v22, v11

    :goto_f
    if-eqz p6, :cond_1a

    move/from16 v0, v27

    neg-float v10, v0

    goto :goto_10

    :cond_1a
    move/from16 v0, v27

    move v10, v0

    :goto_10
    return v10
.end method

.method public static greylist-max-o isLineEndSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x9

    if-eq p0, v0, :cond_2

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_0

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_0

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private greylist-max-o isStretchableWhitespace(I)Z
    .locals 1

    const/16 v0, 0x20

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F
    .locals 19

    if-eqz p6, :cond_1

    move-object/from16 v15, p0

    iget v0, v15, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v14, p4

    if-ne v1, v14, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    neg-float v12, v0

    add-float v7, p9, v12

    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-object/from16 v11, p5

    move/from16 v18, v12

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0

    :cond_1
    const/4 v10, 0x0

    const/4 v13, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v7, p9

    move-object/from16 v11, p5

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move-object/from16 v16, p10

    move/from16 v17, p11

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method public static greylist obtain()Landroid/text/TextLine;
    .locals 5

    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static greylist-max-o recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static blacklist resolveRunFlagForSubSequence(IZIIII)I
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move v0, p0

    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    if-eq p5, p3, :cond_2

    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    :cond_1
    if-eq p4, p2, :cond_2

    and-int/lit16 v0, v0, -0x2001

    :cond_2
    :goto_0
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    if-eq p4, p2, :cond_4

    and-int/lit16 v0, v0, -0x4001

    goto :goto_1

    :cond_3
    if-eq p5, p3, :cond_4

    and-int/lit16 v0, v0, -0x4001

    :cond_4
    :goto_1
    return v0
.end method

.method private blacklist shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F
    .locals 19

    move-object/from16 v14, p0

    iget v0, v14, Landroid/text/TextLine;->mDir:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move/from16 v13, p4

    if-ne v1, v13, :cond_1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    neg-float v6, v0

    add-float v7, p5, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v0, 0x0

    move v13, v0

    const/4 v0, 0x0

    move-object v14, v0

    move-object/from16 v0, p0

    move/from16 v18, v6

    move-object/from16 v6, p1

    move/from16 v17, p7

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    return v18

    :cond_1
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p1

    move/from16 v7, p5

    move/from16 v13, p6

    move/from16 v17, p7

    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private blacklist shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V
    .locals 13

    move-object v0, p0

    move/from16 v10, p3

    sub-int v11, p4, v10

    sub-int v12, p6, p5

    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    const/4 v7, 0x0

    move/from16 v2, p3

    move v3, v11

    move/from16 v4, p5

    move v5, v12

    move/from16 v6, p8

    move/from16 v8, p7

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v10

    iget v3, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v3, p5

    const/4 v7, 0x0

    move v3, v11

    move v5, v12

    move/from16 v6, p8

    move/from16 v8, p7

    move-object v9, p2

    invoke-static/range {v1 .. v9}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v1

    :goto_0
    move-object v2, p1

    move-object v3, p2

    invoke-interface {p1, v10, v11, v1, p2}, Landroid/text/TextShaper$GlyphsConsumer;->accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V

    return-void
.end method

.method static greylist-max-o updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    return-void
.end method


# virtual methods
.method greylist-max-o draw(Landroid/graphics/Canvas;FIII)V
    .locals 21

    move-object/from16 v11, p0

    const/4 v0, 0x0

    iget-object v1, v11, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v12

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    if-ge v13, v12, :cond_8

    iget-object v1, v11, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v13}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v14

    iget v1, v11, Landroid/text/TextLine;->mLen:I

    if-le v14, v1, :cond_0

    move/from16 v20, v12

    goto/16 :goto_7

    :cond_0
    iget-object v1, v11, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v13}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v14

    iget v2, v11, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    iget-object v1, v11, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v13}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v16

    iget v1, v11, Landroid/text/TextLine;->mDir:I

    invoke-static {v13, v12, v1}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v17

    move v1, v14

    iget-boolean v2, v11, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_1

    move v2, v14

    goto :goto_1

    :cond_1
    move v2, v15

    :goto_1
    move/from16 v18, v0

    move/from16 v19, v1

    move v10, v2

    :goto_2
    if-gt v10, v15, :cond_7

    if-eq v10, v15, :cond_3

    invoke-direct {v11, v10}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v20, v12

    move v12, v10

    goto :goto_6

    :cond_3
    :goto_3
    add-float v5, p2, v18

    add-int/lit8 v0, v12, -0x1

    if-ne v13, v0, :cond_5

    iget v0, v11, Landroid/text/TextLine;->mLen:I

    if-eq v10, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v9, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    move v3, v10

    move/from16 v4, v16

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v20, v12

    move v12, v10

    move/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F

    move-result v0

    add-float v18, v18, v0

    if-eq v12, v15, :cond_6

    iget v0, v11, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v11, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v18

    invoke-virtual {v11, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    move/from16 v18, v0

    :cond_6
    add-int/lit8 v10, v12, 0x1

    move/from16 v19, v10

    :goto_6
    add-int/lit8 v10, v12, 0x1

    move/from16 v12, v20

    goto :goto_2

    :cond_7
    move/from16 v20, v12

    move v12, v10

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v18

    move/from16 v12, v20

    goto/16 :goto_0

    :cond_8
    move/from16 v20, v12

    :goto_7
    return-void
.end method

.method public blacklist getAddedLetterSpacingInPx()F
    .locals 1

    iget v0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    return v0
.end method

.method public blacklist getAddedWordSpacingInPx()F
    .locals 1

    iget v0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    return v0
.end method

.method greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 27

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    const/4 v10, 0x0

    iget v11, v7, Landroid/text/TextLine;->mLen:I

    iget v0, v7, Landroid/text/TextLine;->mDir:I

    const/4 v14, -0x1

    if-ne v0, v14, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    iget-object v0, v7, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v0, 0x0

    move v1, v10

    move v2, v11

    const/16 v16, -0x1

    const/4 v3, 0x0

    const v17, 0x3ffffff

    if-ne v8, v10, :cond_1

    const/4 v4, -0x2

    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move/from16 v22, v4

    move-object v8, v6

    move/from16 v6, v16

    goto/16 :goto_d

    :cond_1
    if-ne v8, v11, :cond_2

    array-length v4, v6

    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move/from16 v22, v4

    move-object v8, v6

    move/from16 v6, v16

    goto/16 :goto_d

    :cond_2
    const/4 v4, 0x0

    :goto_1
    array-length v5, v6

    if-ge v4, v5, :cond_c

    aget v5, v6, v4

    add-int v1, v10, v5

    if-lt v8, v1, :cond_b

    add-int/lit8 v5, v4, 0x1

    aget v5, v6, v5

    and-int v5, v5, v17

    add-int/2addr v5, v1

    if-le v5, v11, :cond_3

    move v5, v11

    :cond_3
    if-ge v8, v5, :cond_a

    add-int/lit8 v2, v4, 0x1

    aget v2, v6, v2

    ushr-int/lit8 v2, v2, 0x1a

    and-int/lit8 v0, v2, 0x3f

    if-ne v8, v1, :cond_9

    add-int/lit8 v2, v8, -0x1

    const/16 v18, 0x0

    move/from16 v12, v18

    :goto_2
    array-length v13, v6

    if-ge v12, v13, :cond_8

    aget v13, v6, v12

    add-int/2addr v13, v10

    if-lt v2, v13, :cond_6

    add-int/lit8 v19, v12, 0x1

    aget v19, v6, v19

    and-int v19, v19, v17

    add-int v14, v13, v19

    if-le v14, v11, :cond_4

    move v14, v11

    :cond_4
    if-ge v2, v14, :cond_5

    add-int/lit8 v19, v12, 0x1

    aget v19, v6, v19

    ushr-int/lit8 v19, v19, 0x1a

    move/from16 v20, v1

    and-int/lit8 v1, v19, 0x3f

    if-ge v1, v0, :cond_7

    move v4, v12

    move v0, v1

    move/from16 v19, v13

    move v5, v14

    const/4 v3, 0x1

    move/from16 v1, v19

    goto :goto_4

    :cond_5
    move/from16 v20, v1

    goto :goto_3

    :cond_6
    move/from16 v20, v1

    :cond_7
    :goto_3
    add-int/lit8 v12, v12, 0x2

    move/from16 v1, v20

    const/4 v14, -0x1

    goto :goto_2

    :cond_8
    move/from16 v20, v1

    :goto_4
    move v12, v0

    move/from16 v20, v1

    move v14, v3

    move v13, v5

    move v5, v4

    goto :goto_6

    :cond_9
    move/from16 v20, v1

    move v12, v0

    move v14, v3

    move v13, v5

    move v5, v4

    goto :goto_6

    :cond_a
    move/from16 v20, v1

    move v2, v5

    goto :goto_5

    :cond_b
    move/from16 v20, v1

    :goto_5
    add-int/lit8 v4, v4, 0x2

    move/from16 v1, v20

    const/4 v14, -0x1

    goto :goto_1

    :cond_c
    move v12, v0

    move/from16 v20, v1

    move v13, v2

    move v14, v3

    move v5, v4

    :goto_6
    array-length v0, v6

    if-eq v5, v0, :cond_14

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    :goto_7
    move v4, v0

    if-ne v9, v4, :cond_e

    const/4 v0, 0x1

    goto :goto_8

    :cond_e
    const/4 v0, 0x0

    :goto_8
    move v3, v0

    if-eqz v3, :cond_f

    move v0, v13

    goto :goto_9

    :cond_f
    move/from16 v0, v20

    :goto_9
    if-ne v8, v0, :cond_11

    if-eq v3, v14, :cond_10

    goto :goto_a

    :cond_10
    move/from16 v22, v5

    move-object v8, v6

    goto :goto_c

    :cond_11
    :goto_a
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v20

    move/from16 v19, v3

    move v3, v13

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v5, p1

    move-object v8, v6

    move/from16 v6, v19

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v0

    if-eqz v19, :cond_12

    move v1, v13

    goto :goto_b

    :cond_12
    move/from16 v1, v20

    :goto_b
    if-eq v0, v1, :cond_13

    return v0

    :cond_13
    move v6, v0

    goto :goto_d

    :cond_14
    move/from16 v22, v5

    move-object v8, v6

    :goto_c
    move/from16 v6, v16

    :goto_d
    if-ne v9, v15, :cond_15

    const/4 v0, 0x1

    goto :goto_e

    :cond_15
    const/4 v0, 0x0

    :goto_e
    if-eqz v0, :cond_16

    const/4 v1, 0x2

    goto :goto_f

    :cond_16
    const/4 v1, -0x2

    :goto_f
    add-int v5, v22, v1

    if-ltz v5, :cond_1e

    array-length v1, v8

    if-ge v5, v1, :cond_1e

    aget v1, v8, v5

    add-int v16, v10, v1

    add-int/lit8 v1, v5, 0x1

    aget v1, v8, v1

    and-int v1, v1, v17

    add-int v1, v16, v1

    if-le v1, v11, :cond_17

    move v1, v11

    move/from16 v19, v1

    goto :goto_10

    :cond_17
    move/from16 v19, v1

    :goto_10
    add-int/lit8 v1, v5, 0x1

    aget v1, v8, v1

    ushr-int/lit8 v1, v1, 0x1a

    and-int/lit8 v4, v1, 0x3f

    and-int/lit8 v1, v4, 0x1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_11

    :cond_18
    const/4 v1, 0x0

    :goto_11
    move v3, v1

    if-ne v9, v3, :cond_19

    const/4 v1, 0x1

    goto :goto_12

    :cond_19
    const/4 v1, 0x0

    :goto_12
    move/from16 v21, v1

    const/4 v0, -0x1

    if-ne v6, v0, :cond_1c

    nop

    if-eqz v21, :cond_1a

    move/from16 v23, v16

    goto :goto_13

    :cond_1a
    move/from16 v23, v19

    :goto_13
    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v16

    move/from16 v24, v3

    move/from16 v3, v19

    move/from16 v25, v4

    move/from16 v4, v24

    move/from16 v26, v5

    move/from16 v5, v23

    move-object/from16 v23, v8

    move v8, v6

    move/from16 v6, v21

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v6

    if-eqz v21, :cond_1b

    move/from16 v0, v19

    goto :goto_14

    :cond_1b
    move/from16 v0, v16

    :goto_14
    if-ne v6, v0, :cond_23

    move/from16 v22, v26

    move/from16 v12, v25

    move-object/from16 v8, v23

    goto :goto_d

    :cond_1c
    move/from16 v24, v3

    move/from16 v25, v4

    move/from16 v26, v5

    move-object/from16 v23, v8

    move v8, v6

    move/from16 v0, v25

    if-ge v0, v12, :cond_22

    if-eqz v21, :cond_1d

    move/from16 v1, v16

    goto :goto_15

    :cond_1d
    move/from16 v1, v19

    :goto_15
    move v6, v1

    goto :goto_17

    :cond_1e
    move/from16 v26, v5

    move-object/from16 v23, v8

    move v8, v6

    const/4 v1, -0x1

    if-ne v8, v1, :cond_20

    if-eqz v0, :cond_1f

    iget v1, v7, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :cond_1f
    move v6, v1

    goto :goto_17

    :cond_20
    if-gt v8, v11, :cond_22

    if-eqz v0, :cond_21

    move v1, v11

    goto :goto_16

    :cond_21
    move v1, v10

    :goto_16
    move v6, v1

    goto :goto_17

    :cond_22
    move v6, v8

    :cond_23
    :goto_17
    return v6
.end method

.method public blacklist isJustifying()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return v0
.end method

.method public blacklist justify(IF)V
    .locals 16

    move-object/from16 v12, p0

    iget v0, v12, Landroid/text/TextLine;->mLen:I

    move v13, v0

    :goto_0
    const/4 v14, 0x1

    if-lez v13, :cond_0

    iget-object v0, v12, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, v12, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v13

    sub-int/2addr v1, v14

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    :cond_0
    const/4 v15, 0x0

    move/from16 v11, p1

    if-ne v11, v14, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {v12, v1, v13}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sub-float v2, p2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    iput v2, v12, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    iput v15, v12, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    goto :goto_1

    :cond_2
    new-instance v5, Landroid/text/TextLine$LineInfo;

    invoke-direct {v5}, Landroid/text/TextLine$LineInfo;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v5}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    return-void

    :cond_3
    sub-float v2, p2, v0

    add-int/lit8 v3, v1, -0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, v12, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    iget v2, v12, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    float-to-double v2, v2

    const-wide v6, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v2, v2, v6

    if-lez v2, :cond_4

    iget-object v2, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", \"liga\" off, \"cliga\" off"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object/from16 v6, p0

    move v7, v13

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {v5}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v1

    sub-float v3, p2, v0

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v12, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    iget-object v3, v12, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    :cond_4
    iput v15, v12, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    :goto_1
    iput-boolean v14, v12, Landroid/text/TextLine;->mIsJustifying:Z

    return-void
.end method

.method public blacklist measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .locals 27

    move-object/from16 v12, p0

    move/from16 v13, p1

    move-object/from16 v14, p5

    iget v0, v12, Landroid/text/TextLine;->mLen:I

    if-gt v13, v0, :cond_12

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    invoke-virtual {v14, v15}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    :cond_0
    if-eqz p2, :cond_1

    add-int/lit8 v0, v13, -0x1

    goto :goto_0

    :cond_1
    move v0, v13

    :goto_0
    move v11, v0

    if-gez v11, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v10

    const/4 v1, 0x0

    move v9, v1

    :goto_1
    if-ge v9, v10, :cond_11

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v8

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    if-le v8, v1, :cond_3

    move/from16 v25, v10

    move v15, v11

    goto/16 :goto_a

    :cond_3
    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v8

    iget v2, v12, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v9}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v6

    iget v1, v12, Landroid/text/TextLine;->mDir:I

    invoke-static {v9, v10, v1}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v16

    move v1, v8

    iget-boolean v2, v12, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_4

    move v2, v8

    goto :goto_2

    :cond_4
    move v2, v7

    :goto_2
    move/from16 v17, v0

    move v5, v1

    move v4, v2

    :goto_3
    if-gt v4, v7, :cond_10

    if-eq v4, v7, :cond_6

    invoke-direct {v12, v4}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_5

    goto :goto_4

    :cond_5
    move v2, v4

    move/from16 v23, v6

    move v14, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move/from16 v25, v10

    move v15, v11

    goto/16 :goto_9

    :cond_6
    :goto_4
    const/4 v0, 0x1

    if-lt v11, v5, :cond_7

    if-ge v11, v4, :cond_7

    move v1, v0

    goto :goto_5

    :cond_7
    move v1, v15

    :goto_5
    move/from16 v18, v1

    iget v1, v12, Landroid/text/TextLine;->mDir:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    move v1, v0

    goto :goto_6

    :cond_8
    move v1, v15

    :goto_6
    if-ne v1, v6, :cond_9

    goto :goto_7

    :cond_9
    move v0, v15

    :goto_7
    move/from16 v19, v0

    if-eqz v18, :cond_a

    if-eqz v19, :cond_a

    const/4 v15, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p1

    move v3, v4

    move/from16 v21, v4

    move v4, v6

    move/from16 v22, v5

    move-object/from16 v5, p3

    move/from16 v23, v6

    move-object/from16 v6, p4

    move v14, v7

    move-object v7, v15

    move/from16 v24, v8

    move/from16 v8, v20

    move/from16 v20, v9

    move/from16 v9, v17

    move/from16 v25, v10

    move-object/from16 v10, p5

    move v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float v0, v17, v0

    return v0

    :cond_a
    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move v14, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move/from16 v25, v10

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v21

    move/from16 v3, v21

    move/from16 v4, v23

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v9, v17

    move-object/from16 v10, p5

    move v15, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v11

    if-eqz v19, :cond_b

    move v0, v11

    goto :goto_8

    :cond_b
    neg-float v0, v11

    :goto_8
    add-float v17, v17, v0

    if-eqz v18, :cond_c

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, v21

    move/from16 v4, v23

    move/from16 v9, v17

    move-object/from16 v10, p5

    move/from16 v26, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    add-float v0, v17, v0

    return v0

    :cond_c
    move/from16 v26, v11

    move/from16 v2, v21

    if-eq v2, v14, :cond_f

    if-ne v13, v2, :cond_d

    return v17

    :cond_d
    iget v0, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v17

    invoke-virtual {v12, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    if-ne v15, v2, :cond_e

    return v0

    :cond_e
    move/from16 v17, v0

    :cond_f
    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_9
    add-int/lit8 v4, v2, 0x1

    move v7, v14

    move v11, v15

    move/from16 v9, v20

    move/from16 v6, v23

    move/from16 v8, v24

    move/from16 v10, v25

    const/4 v15, 0x0

    move-object/from16 v14, p5

    goto/16 :goto_3

    :cond_10
    move v2, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move v14, v7

    move/from16 v24, v8

    move/from16 v20, v9

    move/from16 v25, v10

    move v15, v11

    add-int/lit8 v9, v20, 0x1

    move-object/from16 v14, p5

    move/from16 v0, v17

    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_11
    move/from16 v20, v9

    move/from16 v25, v10

    move v15, v11

    :goto_a
    return v0

    :cond_12
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "offset("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") should be less than line limit("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v12, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist measureAllBounds([F[F)V
    .locals 26

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    if-eqz v13, :cond_11

    array-length v0, v13

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v1, v1, 0x2

    const-string v2, " had: "

    if-lt v0, v1, :cond_10

    if-nez p2, :cond_0

    iget v0, v12, Landroid/text/TextLine;->mLen:I

    new-array v0, v0, [F

    move-object v14, v0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p2

    :goto_0
    array-length v0, v14

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v15

    const/4 v1, 0x0

    move v11, v1

    :goto_1
    if-ge v11, v15, :cond_e

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v10

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    if-le v10, v1, :cond_1

    goto/16 :goto_c

    :cond_1
    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v10

    iget v2, v12, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v9

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v8

    iget v1, v12, Landroid/text/TextLine;->mDir:I

    invoke-static {v11, v15, v1}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v16

    move v1, v10

    iget-boolean v2, v12, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_2

    move v2, v10

    goto :goto_2

    :cond_2
    move v2, v9

    :goto_2
    move/from16 v17, v0

    move/from16 v18, v1

    move v7, v2

    :goto_3
    if-gt v7, v9, :cond_d

    if-eq v7, v9, :cond_4

    invoke-direct {v12, v7}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    goto :goto_4

    :cond_3
    move v4, v7

    move/from16 v24, v8

    move v3, v9

    move/from16 v21, v10

    move/from16 v22, v11

    goto/16 :goto_b

    :cond_4
    :goto_4
    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/16 v19, 0x1

    if-ne v0, v1, :cond_5

    move/from16 v0, v19

    goto :goto_5

    :cond_5
    move v0, v2

    :goto_5
    if-ne v0, v8, :cond_6

    move/from16 v2, v19

    :cond_6
    move/from16 v20, v2

    nop

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move v2, v7

    move v3, v7

    move v4, v8

    move/from16 v23, v7

    move-object v7, v14

    move/from16 v24, v8

    move/from16 v8, v18

    move/from16 v25, v9

    move/from16 v9, v21

    move/from16 v21, v10

    move-object/from16 v10, v22

    move/from16 v22, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    move/from16 v1, v17

    if-eqz v20, :cond_7

    move v2, v0

    goto :goto_6

    :cond_7
    neg-float v2, v0

    :goto_6
    add-float v17, v17, v2

    if-eqz v20, :cond_8

    move v2, v1

    goto :goto_7

    :cond_8
    move/from16 v2, v17

    :goto_7
    move/from16 v3, v18

    :goto_8
    move/from16 v4, v23

    if-ge v3, v4, :cond_a

    iget v5, v12, Landroid/text/TextLine;->mLen:I

    if-ge v3, v5, :cond_a

    if-eqz v24, :cond_9

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aput v2, v13, v5

    aget v5, v14, v3

    sub-float/2addr v2, v5

    mul-int/lit8 v5, v3, 0x2

    aput v2, v13, v5

    goto :goto_9

    :cond_9
    mul-int/lit8 v5, v3, 0x2

    aput v2, v13, v5

    aget v5, v14, v3

    add-float/2addr v2, v5

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    aput v2, v13, v5

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v23, v4

    goto :goto_8

    :cond_a
    move/from16 v3, v25

    if-eq v4, v3, :cond_c

    if-eqz v24, :cond_b

    move/from16 v5, v17

    iget v6, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v6, v6

    iget v7, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v7, v7

    mul-float v7, v7, v17

    invoke-virtual {v12, v7}, Landroid/text/TextLine;->nextTab(F)F

    move-result v7

    mul-float/2addr v6, v7

    move v7, v6

    goto :goto_a

    :cond_b
    move/from16 v7, v17

    iget v5, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    iget v6, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v6, v6

    mul-float v6, v6, v17

    invoke-virtual {v12, v6}, Landroid/text/TextLine;->nextTab(F)F

    move-result v6

    mul-float/2addr v6, v5

    move v5, v6

    :goto_a
    mul-int/lit8 v8, v4, 0x2

    aput v7, v13, v8

    mul-int/lit8 v8, v4, 0x2

    add-int/lit8 v8, v8, 0x1

    aput v5, v13, v8

    sub-float v8, v5, v7

    aput v8, v14, v4

    move/from16 v17, v6

    :cond_c
    add-int/lit8 v7, v4, 0x1

    move/from16 v18, v7

    :goto_b
    add-int/lit8 v7, v4, 0x1

    move v9, v3

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v8, v24

    goto/16 :goto_3

    :cond_d
    move v4, v7

    move/from16 v24, v8

    move v3, v9

    move/from16 v21, v10

    move/from16 v22, v11

    add-int/lit8 v11, v22, 0x1

    move/from16 v0, v17

    goto/16 :goto_1

    :cond_e
    move/from16 v22, v11

    :goto_c
    return-void

    :cond_f
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "advance doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v12, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v14

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bounds doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v12, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bounds can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .locals 26

    move-object/from16 v12, p0

    iget v0, v12, Landroid/text/TextLine;->mLen:I

    const/4 v13, 0x1

    add-int/2addr v0, v13

    new-array v14, v0, [F

    const/4 v15, 0x0

    aget-boolean v0, p1, v15

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aput v0, v14, v15

    :cond_0
    const/4 v0, 0x0

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    if-ge v10, v11, :cond_13

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v9

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    if-le v9, v1, :cond_1

    move/from16 v23, v11

    goto/16 :goto_c

    :cond_1
    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v9

    iget v2, v12, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget-object v1, v12, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v10}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v7

    iget v1, v12, Landroid/text/TextLine;->mDir:I

    invoke-static {v10, v11, v1}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v16

    move v1, v9

    iget-boolean v2, v12, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_2

    move v2, v9

    goto :goto_1

    :cond_2
    move v2, v8

    :goto_1
    move/from16 v17, v0

    move v6, v1

    move v5, v2

    :goto_2
    if-gt v5, v8, :cond_12

    if-eq v5, v8, :cond_4

    invoke-direct {v12, v5}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    goto :goto_3

    :cond_3
    move v13, v5

    move/from16 v21, v7

    move v15, v8

    move/from16 v25, v9

    move/from16 v22, v10

    move/from16 v23, v11

    goto/16 :goto_b

    :cond_4
    :goto_3
    move/from16 v18, v17

    iget v0, v12, Landroid/text/TextLine;->mDir:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    move v0, v13

    goto :goto_4

    :cond_5
    move v0, v15

    :goto_4
    if-ne v0, v7, :cond_6

    move v0, v13

    goto :goto_5

    :cond_6
    move v0, v15

    :goto_5
    move/from16 v19, v0

    aget v20, v14, v6

    nop

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move v2, v5

    move v3, v5

    move v4, v7

    move v13, v5

    move-object/from16 v5, p2

    move/from16 v24, v6

    move-object/from16 v6, v21

    move/from16 v21, v7

    move-object v7, v14

    move v15, v8

    move/from16 v8, v24

    move/from16 v25, v9

    move/from16 v9, v22

    move/from16 v22, v10

    move-object/from16 v10, v23

    move/from16 v23, v11

    move/from16 v11, v16

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v0

    if-eqz v19, :cond_7

    move v1, v0

    goto :goto_6

    :cond_7
    neg-float v1, v0

    :goto_6
    add-float v17, v17, v1

    if-eqz v19, :cond_8

    move/from16 v1, v18

    goto :goto_7

    :cond_8
    move/from16 v1, v17

    :goto_7
    iget v2, v12, Landroid/text/TextLine;->mLen:I

    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v3, v24

    :goto_8
    if-gt v3, v2, :cond_e

    const/4 v4, 0x0

    if-ge v3, v2, :cond_a

    if-eqz v21, :cond_9

    aget v5, v14, v3

    neg-float v5, v5

    goto :goto_9

    :cond_9
    aget v5, v14, v3

    :goto_9
    move v4, v5

    :cond_a
    move/from16 v5, v24

    if-ne v3, v5, :cond_b

    aget-boolean v6, p1, v3

    if-eqz v6, :cond_b

    aput v20, v14, v3

    goto :goto_a

    :cond_b
    if-ne v3, v2, :cond_c

    aget-boolean v6, p1, v3

    if-eqz v6, :cond_d

    :cond_c
    aput v1, v14, v3

    :cond_d
    :goto_a
    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    move/from16 v24, v5

    goto :goto_8

    :cond_e
    move/from16 v5, v24

    if-eq v13, v15, :cond_11

    aget-boolean v3, p1, v13

    if-nez v3, :cond_f

    aput v17, v14, v13

    :cond_f
    iget v3, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v3, v3

    iget v4, v12, Landroid/text/TextLine;->mDir:I

    int-to-float v4, v4

    mul-float v4, v4, v17

    invoke-virtual {v12, v4}, Landroid/text/TextLine;->nextTab(F)F

    move-result v4

    mul-float/2addr v3, v4

    add-int/lit8 v4, v13, 0x1

    aget-boolean v4, p1, v4

    if-eqz v4, :cond_10

    add-int/lit8 v4, v13, 0x1

    aput v3, v14, v4

    :cond_10
    move/from16 v17, v3

    :cond_11
    add-int/lit8 v5, v13, 0x1

    move v6, v5

    :goto_b
    add-int/lit8 v5, v13, 0x1

    move v8, v15

    move/from16 v7, v21

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v9, v25

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_2

    :cond_12
    move v13, v5

    move v5, v6

    move/from16 v21, v7

    move v15, v8

    move/from16 v25, v9

    move/from16 v22, v10

    move/from16 v23, v11

    add-int/lit8 v10, v22, 0x1

    move/from16 v0, v17

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_13
    move/from16 v22, v10

    move/from16 v23, v11

    :goto_c
    iget v1, v12, Landroid/text/TextLine;->mLen:I

    aget-boolean v1, p1, v1

    if-nez v1, :cond_14

    iget v1, v12, Landroid/text/TextLine;->mLen:I

    aput v0, v14, v1

    :cond_14
    return-object v14
.end method

.method public blacklist metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F
    .locals 9

    if-eqz p3, :cond_4

    if-nez p2, :cond_1

    iget-object v0, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    :cond_0
    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    :cond_1
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-ltz v2, :cond_2

    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v2, v1

    goto :goto_0

    :cond_2
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v2, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    sub-float v2, v1, v2

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    return v0

    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v1

    mul-float/2addr v1, v2

    return v1

    :cond_4
    iget v4, p0, Landroid/text/TextLine;->mLen:I

    const/4 v5, 0x0

    move-object v3, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p4

    invoke-virtual/range {v3 .. v8}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v0

    return v0
.end method

.method greylist-max-o nextTab(F)F
    .locals 1

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v0

    return v0
.end method

.method public blacklist set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iput v3, v0, Landroid/text/TextLine;->mStart:I

    sub-int v7, v4, v3

    iput v7, v0, Landroid/text/TextLine;->mLen:I

    move/from16 v7, p5

    iput v7, v0, Landroid/text/TextLine;->mDir:I

    move-object/from16 v8, p6

    iput-object v8, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    move/from16 v9, p11

    iput-boolean v9, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    iget-object v10, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz v10, :cond_c

    move/from16 v10, p7

    iput-boolean v10, v0, Landroid/text/TextLine;->mHasTabs:Z

    const/4 v11, 0x0

    iput-object v11, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/4 v12, 0x0

    instance-of v13, v2, Landroid/text/Spanned;

    const/4 v15, 0x0

    if-eqz v13, :cond_1

    move-object v13, v2

    check-cast v13, Landroid/text/Spanned;

    iput-object v13, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget-object v14, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v13, v14, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v13, v13, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v13, :cond_0

    const/4 v13, 0x1

    goto :goto_0

    :cond_0
    move v13, v15

    :goto_0
    move v12, v13

    :cond_1
    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    instance-of v13, v2, Landroid/text/PrecomputedText;

    if-eqz v13, :cond_2

    move-object v13, v2

    check-cast v13, Landroid/text/PrecomputedText;

    iput-object v13, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget-object v13, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v13}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v13

    if-nez v13, :cond_2

    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    :cond_2
    iput-boolean v12, v0, Landroid/text/TextLine;->mCharsValid:Z

    iget-boolean v11, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v11, :cond_9

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v11, :cond_3

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    array-length v11, v11

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    if-ge v11, v13, :cond_4

    :cond_3
    iget v11, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v11

    iput-object v11, v0, Landroid/text/TextLine;->mChars:[C

    :cond_4
    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v11, v15}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    if-eqz v12, :cond_9

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    move/from16 v13, p3

    :goto_1
    if-ge v13, v4, :cond_9

    iget-object v14, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v14, v13, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v14

    iget-object v15, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v15, v13, v14}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v15

    if-eqz v15, :cond_7

    sub-int v15, v13, v3

    if-ge v15, v6, :cond_6

    sub-int v15, v14, v3

    if-gt v15, v5, :cond_5

    goto :goto_2

    :cond_5
    const/16 v16, 0x1

    goto :goto_4

    :cond_6
    :goto_2
    sub-int v15, v13, v3

    const v17, 0xfffc

    aput-char v17, v11, v15

    sub-int v15, v13, v3

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    sub-int v1, v14, v3

    :goto_3
    if-ge v15, v1, :cond_8

    const v17, 0xfeff

    aput-char v17, v11, v15

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    const/16 v16, 0x1

    :cond_8
    :goto_4
    move v13, v14

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v1, p8

    iput-object v1, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    const/4 v11, 0x0

    iput v11, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    const/4 v11, 0x0

    iput-boolean v11, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eq v5, v6, :cond_a

    move v13, v5

    goto :goto_5

    :cond_a
    move v13, v11

    :goto_5
    iput v13, v0, Landroid/text/TextLine;->mEllipsisStart:I

    if-eq v5, v6, :cond_b

    move v15, v6

    goto :goto_6

    :cond_b
    move v15, v11

    :goto_6
    iput v15, v0, Landroid/text/TextLine;->mEllipsisEnd:I

    return-void

    :cond_c
    move/from16 v10, p7

    move-object/from16 v1, p8

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Directions cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method blacklist shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    .locals 19

    move-object/from16 v8, p0

    const/4 v0, 0x0

    const/4 v9, 0x0

    iget-object v1, v8, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v10

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v10, :cond_8

    iget-object v1, v8, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v12

    iget v1, v8, Landroid/text/TextLine;->mLen:I

    if-le v12, v1, :cond_0

    move/from16 v18, v9

    goto/16 :goto_7

    :cond_0
    iget-object v1, v8, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v1

    add-int/2addr v1, v12

    iget v2, v8, Landroid/text/TextLine;->mLen:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget-object v1, v8, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v1, v11}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v14

    iget v1, v8, Landroid/text/TextLine;->mDir:I

    invoke-static {v11, v10, v1}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v15

    move v1, v12

    iget-boolean v2, v8, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v2, :cond_1

    move v2, v12

    goto :goto_1

    :cond_1
    move v2, v13

    :goto_1
    move/from16 v16, v0

    move/from16 v17, v1

    move v7, v2

    :goto_2
    if-gt v7, v13, :cond_7

    if-eq v7, v13, :cond_3

    invoke-direct {v8, v7}, Landroid/text/TextLine;->charAt(I)C

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v18, v9

    move v9, v7

    goto :goto_6

    :cond_3
    :goto_3
    add-float v5, v9, v16

    add-int/lit8 v0, v10, -0x1

    if-ne v11, v0, :cond_5

    iget v0, v8, Landroid/text/TextLine;->mLen:I

    if-eq v7, v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v0, 0x1

    :goto_5
    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v7

    move v4, v14

    move/from16 v18, v9

    move v9, v7

    move v7, v15

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F

    move-result v0

    add-float v16, v16, v0

    if-eq v9, v13, :cond_6

    iget v0, v8, Landroid/text/TextLine;->mDir:I

    int-to-float v0, v0

    iget v1, v8, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    mul-float v1, v1, v16

    invoke-virtual {v8, v1}, Landroid/text/TextLine;->nextTab(F)F

    move-result v1

    mul-float/2addr v0, v1

    move/from16 v16, v0

    :cond_6
    add-int/lit8 v7, v9, 0x1

    move/from16 v17, v7

    :goto_6
    add-int/lit8 v7, v9, 0x1

    move/from16 v9, v18

    goto :goto_2

    :cond_7
    move/from16 v18, v9

    move v9, v7

    add-int/lit8 v11, v11, 0x1

    move/from16 v0, v16

    move/from16 v9, v18

    goto/16 :goto_0

    :cond_8
    move/from16 v18, v9

    :goto_7
    return-void
.end method
