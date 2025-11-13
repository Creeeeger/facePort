.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$CharacterBoundsListener;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$TextInclusionStrategy;,
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$Builder;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final whitelist DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final greylist DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final greylist DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final whitelist DIR_LEFT_TO_RIGHT:I = 0x1

.field static final greylist DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final greylist-max-o DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final greylist-max-o DIR_REQUEST_LTR:I = 0x1

.field static final greylist-max-o DIR_REQUEST_RTL:I = -0x1

.field public static final whitelist DIR_RIGHT_TO_LEFT:I = -0x1

.field private static final blacklist HIGH_CONTRAST_LAB_THRESHOLD:F = 60.75f

.field private static final blacklist HIGH_CONTRAST_RGB_THRESHOLD:I = 0x1cb

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_FACTOR:F = 0.2f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_MIN_PX:F = 4.0f

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

.field public static final whitelist INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final greylist-max-o NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final greylist-max-o RUN_LENGTH_MASK:I = 0x3ffffff

.field static final greylist-max-o RUN_LEVEL_MASK:I = 0x3f

.field static final greylist-max-o RUN_LEVEL_SHIFT:I = 0x1a

.field static final greylist-max-o RUN_RTL_FLAG:I = 0x4000000

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final greylist-max-o sTempRect:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mLineInfo:Landroid/text/TextLine$LineInfo;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private blacklist mSpanColors:Landroid/text/SpanColors;

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;

.field private final blacklist mWorkPlainPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;
    .locals 0

    iget-object p0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v5, 0x0

    iput-object v5, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-ltz v3, :cond_2

    if-eqz v2, :cond_0

    const/4 v5, 0x0

    iput v5, v2, Landroid/text/TextPaint;->bgColor:I

    iput v5, v2, Landroid/text/TextPaint;->baselineShift:I

    :cond_0
    iput-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput v3, v0, Landroid/text/Layout;->mWidth:I

    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move/from16 v6, p6

    iput v6, v0, Landroid/text/Layout;->mSpacingMult:F

    move/from16 v7, p7

    iput v7, v0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v8, v1, Landroid/text/Spanned;

    iput-boolean v8, v0, Landroid/text/Layout;->mSpannedText:Z

    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/text/Layout;->mIncludePad:Z

    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    if-nez v4, :cond_1

    move v11, v3

    goto :goto_0

    :cond_1
    move/from16 v11, p10

    :goto_0
    iput v11, v0, Landroid/text/Layout;->mEllipsizedWidth:I

    iput-object v4, v0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move/from16 v11, p12

    iput v11, v0, Landroid/text/Layout;->mMaxLines:I

    move/from16 v12, p13

    iput v12, v0, Landroid/text/Layout;->mBreakStrategy:I

    move/from16 v13, p14

    iput v13, v0, Landroid/text/Layout;->mHyphenationFrequency:I

    move-object/from16 v14, p15

    iput-object v14, v0, Landroid/text/Layout;->mLeftIndents:[I

    move-object/from16 v15, p16

    iput-object v15, v0, Landroid/text/Layout;->mRightIndents:[I

    move/from16 v1, p17

    iput v1, v0, Landroid/text/Layout;->mJustificationMode:I

    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    invoke-direct/range {p0 .. p0}, Landroid/text/Layout;->initSpanColors()V

    return-void

    :cond_2
    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v1, p21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_5

    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    if-le v9, v5, :cond_1

    move v9, v5

    :cond_1
    if-gt v2, v9, :cond_4

    if-lt v3, v8, :cond_4

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eq v10, v11, :cond_3

    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v17, v7, 0x1

    aget v12, v12, v17

    const/high16 v17, 0x4000000

    and-int v12, v12, v17

    if-eqz v12, :cond_2

    const/16 v21, 0x0

    goto :goto_1

    :cond_2
    move/from16 v21, v14

    :goto_1
    nop

    move/from16 v12, p4

    int-to-float v14, v12

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v17, v22

    move/from16 v18, v14

    move/from16 v19, v23

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_2

    :cond_3
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_2

    :cond_4
    move/from16 v12, p4

    move/from16 v0, p5

    :goto_2
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_0

    :cond_5
    move/from16 v12, p4

    move/from16 v0, p5

    return-void
.end method

.method private blacklist determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;
    .locals 1

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    :goto_0
    return-object v0
.end method

.method private blacklist drawHighContrastBackground(Landroid/graphics/Canvas;II)V
    .locals 15

    move-object v6, p0

    invoke-static/range {p1 .. p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v6, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget-object v0, v6, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v8

    iget-object v9, v6, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->reset()V

    invoke-direct {p0, v8}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move/from16 v10, p2

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    move/from16 v12, p3

    invoke-virtual {p0, v12}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    iget-boolean v0, v6, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v0, :cond_2

    iget-object v0, v6, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    iget-object v1, v6, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, v6, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    invoke-virtual {v0, v1, v2, v11, v13}, Landroid/text/SpanColors;->init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V

    :cond_2
    new-instance v14, Landroid/text/Layout$1;

    move-object v0, v14

    move-object v1, p0

    move v2, v8

    move-object v3, v9

    move v4, v7

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout$1;-><init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;)V

    move-object v0, p0

    move v1, v11

    move v2, v13

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v5, v14

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    iget-object v0, v6, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v0, :cond_3

    iget-object v0, v6, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    :cond_3
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 14

    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x0

    if-lt v2, v6, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v7

    :goto_0
    sub-int v9, p1, v3

    sub-int/2addr v9, v4

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int v9, p2, v3

    sub-int/2addr v9, v4

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    move v10, v7

    :goto_1
    if-ge v10, v9, :cond_3

    if-eqz v8, :cond_2

    if-ge v10, v6, :cond_2

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    goto :goto_2

    :cond_2
    const v11, 0xfeff

    :goto_2
    add-int v12, v10, v3

    add-int/2addr v12, v4

    add-int v13, p5, v12

    sub-int/2addr v13, p1

    aput-char v11, p4, v13

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private blacklist fillHorizontalBoundsForLine(I[F)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    sub-int v16, v15, v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v17

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v19

    const/4 v2, 0x0

    if-eqz v19, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v14, v15, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    array-length v4, v3

    if-lez v4, :cond_0

    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object/from16 v20, v2

    goto :goto_0

    :cond_0
    move-object/from16 v20, v2

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v12, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v21

    move-object v2, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v17

    move-object/from16 v8, v18

    move/from16 v9, v19

    move-object/from16 v10, v20

    move-object v0, v13

    move/from16 v13, v21

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    if-eqz v1, :cond_1

    array-length v2, v1

    mul-int/lit8 v3, v16, 0x2

    if-ge v2, v3, :cond_2

    :cond_1
    mul-int/lit8 v2, v16, 0x2

    new-array v1, v2, [F

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/TextLine;->measureAllBounds([F[F)V

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method private blacklist forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p3

    move v9, v2

    :goto_0
    move/from16 v10, p4

    if-gt v9, v10, :cond_3

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v11

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    sub-int v13, v12, v11

    if-eqz v1, :cond_0

    array-length v2, v1

    mul-int/lit8 v3, v13, 0x2

    if-ge v2, v3, :cond_1

    :cond_0
    mul-int/lit8 v2, v13, 0x2

    new-array v1, v2, [F

    :cond_1
    invoke-direct {v0, v9, v1}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v14

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v15

    invoke-direct {v0, v9, v14, v15}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v8

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v6

    move/from16 v5, p1

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v4, p2

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    move/from16 v2, v16

    :goto_1
    if-ge v2, v3, :cond_2

    sub-int v17, v2, v11

    mul-int/lit8 v18, v17, 0x2

    aget v18, v1, v18

    int-to-float v0, v8

    add-float v18, v18, v0

    mul-int/lit8 v0, v17, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    move-object/from16 v19, v1

    int-to-float v1, v8

    add-float/2addr v0, v1

    int-to-float v1, v7

    move/from16 v20, v8

    int-to-float v8, v6

    move/from16 v21, v2

    move-object/from16 v2, p5

    move/from16 v22, v3

    move/from16 v3, v21

    move v4, v9

    move/from16 v5, v18

    move/from16 v23, v6

    move v6, v1

    move v1, v7

    move v7, v0

    invoke-interface/range {v2 .. v8}, Landroid/text/Layout$CharacterBoundsListener;->onCharacterBounds(IIFFFF)V

    add-int/lit8 v2, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v4, p2

    move v7, v1

    move-object/from16 v1, v19

    move/from16 v8, v20

    move/from16 v3, v22

    move/from16 v6, v23

    goto :goto_1

    :cond_2
    move-object/from16 v19, v1

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v6

    move v1, v7

    move/from16 v20, v8

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    goto/16 :goto_0

    :cond_3
    invoke-interface/range {p5 .. p5}, Landroid/text/Layout$CharacterBoundsListener;->onEnd()V

    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 7

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F

    move-result v0

    return v0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static blacklist getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F
    .locals 9

    invoke-virtual {p3, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    const/4 v0, 0x0

    move v1, p1

    move v7, v1

    :goto_0
    if-gt v7, p2, :cond_3

    const/16 v1, 0xa

    invoke-static {p0, v1, v7, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_0

    move v1, p2

    move v8, v1

    goto :goto_1

    :cond_0
    move v8, v1

    :goto_1
    move-object v1, p3

    move-object v2, p0

    move v3, v7

    move v4, v8

    move-object v5, p4

    move v6, p6

    invoke-static/range {v1 .. v6}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F

    move-result v1

    cmpl-float v2, v1, p5

    if-lez v2, :cond_1

    return p5

    :cond_1
    cmpl-float v2, v1, v0

    if-lez v2, :cond_2

    move v0, v1

    :cond_2
    nop

    add-int/lit8 v8, v8, 0x1

    move v7, v8

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static blacklist getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p11

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p9, v3

    const/4 v4, -0x1

    if-ltz v3, :cond_13

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p8, v3

    if-lez v3, :cond_0

    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v13, p12

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x1

    if-nez p10, :cond_1

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, p9

    if-gez v5, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, p8

    if-gtz v5, :cond_3

    :cond_2
    add-int/lit8 v5, p7, -0x1

    goto :goto_3

    :cond_3
    move/from16 v5, p6

    move/from16 v6, p7

    :goto_0
    sub-int v7, v6, v5

    if-le v7, v3, :cond_7

    add-int v7, v6, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v8, v1

    mul-int/lit8 v9, v7, 0x2

    aget v9, p5, v9

    add-float/2addr v8, v9

    if-nez p10, :cond_4

    iget v9, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v8, v9

    if-gtz v9, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v9, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    goto :goto_0

    :cond_7
    if-eqz p10, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    move v5, v7

    :goto_3
    add-int v6, p3, v5

    add-int/2addr v6, v3

    invoke-virtual {v2, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    return v4

    :cond_9
    invoke-virtual {v2, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v7

    add-int v8, p3, p6

    if-gt v7, v8, :cond_a

    return v4

    :cond_a
    add-int v8, p3, p6

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int v8, p3, p7

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-instance v8, Landroid/graphics/RectF;

    move/from16 v9, p1

    int-to-float v10, v9

    move/from16 v11, p2

    int-to-float v12, v11

    const/4 v13, 0x0

    invoke-direct {v8, v13, v10, v13, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_4
    int-to-float v10, v1

    sub-int v12, v7, p3

    sub-int/2addr v12, v3

    mul-int/lit8 v12, v12, 0x2

    xor-int/lit8 v13, p10, 0x1

    add-int/2addr v12, v13

    aget v12, p5, v12

    add-float/2addr v10, v12

    if-nez p10, :cond_b

    iget v12, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v10, v12

    if-ltz v12, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v12, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v10, v12

    if-lez v12, :cond_d

    :cond_c
    return v4

    :cond_d
    int-to-float v12, v1

    sub-int v13, v6, p3

    mul-int/lit8 v13, v13, 0x2

    add-int v13, v13, p10

    aget v13, p5, v13

    add-float/2addr v12, v13

    if-eqz p10, :cond_e

    move v13, v10

    goto :goto_5

    :cond_e
    move v13, v12

    :goto_5
    iput v13, v8, Landroid/graphics/RectF;->left:F

    if-eqz p10, :cond_f

    move v13, v12

    goto :goto_6

    :cond_f
    move v13, v10

    :goto_6
    iput v13, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v13, p12

    invoke-interface {v13, v8, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v14

    if-eqz v14, :cond_10

    return v7

    :cond_10
    invoke-virtual {v2, v7}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v7

    if-eq v7, v4, :cond_12

    add-int v14, p3, p6

    if-gt v7, v14, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v2, v7}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v6

    add-int v14, p3, p6

    invoke-static {v6, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4

    :cond_12
    :goto_7
    return v4

    :cond_13
    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v13, p12

    :goto_8
    return v4
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_0
    return v0
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    const/4 v2, 0x0

    if-eqz v17, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v14, v15, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    array-length v4, v3

    if-lez v4, :cond_0

    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object/from16 v19, v2

    goto :goto_0

    :cond_0
    move-object/from16 v19, v2

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v20

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v12, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    move-object/from16 v2, v20

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v18

    move/from16 v9, v17

    move-object/from16 v10, v19

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    sub-int v3, p1, v14

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    invoke-static/range {v20 .. v20}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p4, :cond_1

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v3

    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    return v5
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v3, 0x0

    iget v4, v0, Landroid/text/Layout;->mWidth:I

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    if-eqz v9, :cond_1

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v10, v8

    :goto_1
    if-eqz v10, :cond_3

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    array-length v12, v6

    sub-int/2addr v12, v8

    :goto_2
    if-ltz v12, :cond_3

    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_2

    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    goto :goto_3

    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    :cond_3
    :goto_3
    array-length v11, v6

    move v12, v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v11, :cond_5

    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    add-int v8, v15, v14

    if-ge v1, v8, :cond_4

    const/4 v12, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    const/4 v8, 0x0

    :goto_6
    if-ge v8, v11, :cond_8

    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_7

    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_7

    :cond_6
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_a

    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_8
    goto :goto_a

    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_c

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_9
    goto :goto_a

    :cond_c
    move-object v7, v2

    :goto_a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e

    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_b

    :cond_d
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    :cond_e
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_10

    const/4 v8, 0x1

    if-ne v5, v8, :cond_f

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    goto :goto_b

    :cond_f
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    goto :goto_b

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    :goto_b
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 20

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v5, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v17, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move/from16 v6, v16

    move-object v7, v15

    move v8, v14

    move-object/from16 v9, p2

    move-object/from16 v19, v11

    move/from16 v11, v17

    move/from16 v17, v13

    move-object v13, v12

    move/from16 v12, v18

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v2

    invoke-virtual {v13, v1, v2}, Landroid/text/TextLine;->justify(IF)V

    :cond_1
    iget-boolean v1, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v2, v1, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v1

    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .locals 22

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v14, v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v15

    const/4 v1, 0x0

    if-eqz v15, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_1

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v16, v1

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    :goto_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    if-nez v17, :cond_2

    const/4 v1, 0x0

    return v1

    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v19, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move v5, v14

    move/from16 v6, v18

    move-object/from16 v7, v17

    move v8, v15

    move-object/from16 v9, v16

    move-object/from16 v21, v11

    move/from16 v11, v19

    move/from16 v19, v13

    move-object v13, v12

    move/from16 v12, v20

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v2

    invoke-virtual {v13, v1, v2}, Landroid/text/TextLine;->justify(IF)V

    :cond_3
    iget-boolean v1, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v2, v1, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v1

    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v1
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .locals 21

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    const/4 v1, 0x0

    if-eqz v16, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v18, v1

    goto :goto_0

    :cond_0
    move-object/from16 v18, v1

    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    add-int v11, v1, v4

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v19

    move-object v1, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move-object/from16 v7, v17

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v20, v15

    move-object v15, v12

    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    if-nez p3, :cond_1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-boolean v3, v1, v2

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v2

    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz p2, :cond_3

    const/4 v3, 0x0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget v4, v2, v3

    iget v5, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    iget v4, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v4, v4

    aput v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    move/from16 v5, p1

    invoke-direct {v0, v5, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    sub-int v7, v14, v13

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [F

    const/4 v8, 0x0

    :goto_3
    array-length v9, v7

    if-ge v8, v9, :cond_4

    int-to-float v9, v6

    aget v10, v2, v8

    add-float/2addr v9, v10

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    return-object v7
.end method

.method private greylist-max-o getLineStartPos(III)I
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v0, v2

    goto :goto_2

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v0, v2

    :cond_3
    :goto_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    if-ne v1, v3, :cond_4

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    goto :goto_3

    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    array-length v8, v7

    if-lez v8, :cond_6

    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8

    if-ne v1, v3, :cond_7

    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    goto :goto_3

    :cond_7
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    goto :goto_3

    :cond_8
    and-int/lit8 v4, v4, -0x2

    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    :goto_3
    return v2
.end method

.method private blacklist getLineVisibleEnd(IIIZ)I
    .locals 3

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    return p3

    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    add-int/lit8 v2, p3, -0x1

    return v2

    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .locals 7

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v2, 0xdc00

    if-lt v1, v2, :cond_1

    const v2, 0xdfff

    if-gt v1, v2, :cond_1

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    add-int/lit8 p1, p1, -0x1

    :cond_1
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    if-ge v4, p1, :cond_2

    if-le v5, p1, :cond_2

    move p1, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v8, :cond_0

    move v8, v10

    goto :goto_0

    :cond_0
    move v8, v9

    :goto_0
    if-ne v2, v8, :cond_1

    move v9, v10

    :cond_1
    move v8, v9

    if-eqz v8, :cond_3

    if-ne v1, v5, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_2

    const/4 v7, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    if-ne v1, v4, :cond_5

    if-lez v3, :cond_4

    const/4 v7, 0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    if-eq v9, v6, :cond_6

    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    move v6, v9

    :cond_6
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v21

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int v19, v9, v12

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    move-object/from16 v15, v21

    invoke-virtual/range {v9 .. v20}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v9
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .locals 14

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    array-length v6, v5

    if-nez v6, :cond_1

    return v1

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v8, v7

    :goto_1
    const/4 v9, 0x0

    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_6

    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5

    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    add-int v13, v11, v12

    if-ge p1, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    or-int/2addr v8, v13

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_4
    array-length v7, v5

    if-ge v1, v7, :cond_7

    aget-object v7, v5, v1

    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    return v6
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p4

    move-object/from16 v2, p11

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p9, v3

    const/4 v4, -0x1

    if-ltz v3, :cond_13

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p8, v3

    if-lez v3, :cond_0

    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v13, p12

    goto/16 :goto_8

    :cond_0
    const/4 v3, 0x1

    if-nez p10, :cond_1

    iget v5, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v5, v5, p8

    if-lez v5, :cond_2

    :cond_1
    if-eqz p10, :cond_3

    iget v5, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v5, v5, p9

    if-ltz v5, :cond_3

    :cond_2
    move/from16 v5, p6

    goto :goto_3

    :cond_3
    move/from16 v5, p6

    move/from16 v6, p7

    :goto_0
    sub-int v7, v6, v5

    if-le v7, v3, :cond_7

    add-int v7, v6, v5

    div-int/lit8 v7, v7, 0x2

    int-to-float v8, v1

    mul-int/lit8 v9, v7, 0x2

    aget v9, p5, v9

    add-float/2addr v8, v9

    if-nez p10, :cond_4

    iget v9, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v9, v8, v9

    if-gtz v9, :cond_5

    :cond_4
    if-eqz p10, :cond_6

    iget v9, v0, Landroid/graphics/RectF;->right:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_6

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v5, v7

    :goto_1
    goto :goto_0

    :cond_7
    if-eqz p10, :cond_8

    move v7, v6

    goto :goto_2

    :cond_8
    move v7, v5

    :goto_2
    move v5, v7

    :goto_3
    add-int v6, p3, v5

    invoke-virtual {v2, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    if-ne v6, v4, :cond_9

    return v4

    :cond_9
    invoke-virtual {v2, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v7

    add-int v8, p3, p7

    if-lt v7, v8, :cond_a

    return v4

    :cond_a
    add-int v8, p3, p6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int v8, p3, p7

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v8, Landroid/graphics/RectF;

    move/from16 v9, p1

    int-to-float v10, v9

    move/from16 v11, p2

    int-to-float v12, v11

    const/4 v13, 0x0

    invoke-direct {v8, v13, v10, v13, v12}, Landroid/graphics/RectF;-><init>(FFFF)V

    :goto_4
    int-to-float v10, v1

    sub-int v12, v7, p3

    mul-int/lit8 v12, v12, 0x2

    add-int v12, v12, p10

    aget v12, p5, v12

    add-float/2addr v10, v12

    if-nez p10, :cond_b

    iget v12, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v12, v10, v12

    if-gtz v12, :cond_c

    :cond_b
    if-eqz p10, :cond_d

    iget v12, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v12, v10, v12

    if-gez v12, :cond_d

    :cond_c
    return v4

    :cond_d
    int-to-float v12, v1

    sub-int v13, v6, p3

    sub-int/2addr v13, v3

    mul-int/lit8 v13, v13, 0x2

    xor-int/lit8 v14, p10, 0x1

    add-int/2addr v13, v14

    aget v13, p5, v13

    add-float/2addr v12, v13

    if-eqz p10, :cond_e

    move v13, v12

    goto :goto_5

    :cond_e
    move v13, v10

    :goto_5
    iput v13, v8, Landroid/graphics/RectF;->left:F

    if-eqz p10, :cond_f

    move v13, v10

    goto :goto_6

    :cond_f
    move v13, v12

    :goto_6
    iput v13, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v13, p12

    invoke-interface {v13, v8, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v14

    if-eqz v14, :cond_10

    return v7

    :cond_10
    invoke-virtual {v2, v7}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v7

    if-eq v7, v4, :cond_12

    add-int v14, p3, p7

    if-lt v7, v14, :cond_11

    goto :goto_7

    :cond_11
    invoke-virtual {v2, v7}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    add-int v14, p3, p7

    invoke-static {v6, v14}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_4

    :cond_12
    :goto_7
    return v4

    :cond_13
    move/from16 v9, p1

    move/from16 v11, p2

    move-object/from16 v13, p12

    :goto_8
    return v4
.end method

.method private blacklist getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v15

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v16

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v13

    const/16 v17, -0x1

    if-ne v14, v13, :cond_0

    return v17

    :cond_0
    sub-int v3, v13, v14

    mul-int/lit8 v3, v3, 0x2

    new-array v12, v3, [F

    invoke-direct {v0, v1, v12}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    const/16 v18, 0x1

    if-eqz p5, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    move v9, v2

    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual {v10}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v2

    if-lt v9, v2, :cond_3

    :cond_2
    if-nez p5, :cond_9

    if-ltz v9, :cond_9

    :cond_3
    invoke-virtual {v10, v9}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v19

    nop

    invoke-virtual {v10, v9}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v2

    add-int v2, v19, v2

    sub-int v3, v13, v14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v20

    invoke-virtual {v10, v9}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v21

    int-to-float v2, v11

    if-eqz v21, :cond_4

    add-int/lit8 v3, v20, -0x1

    mul-int/lit8 v3, v3, 0x2

    aget v3, v12, v3

    goto :goto_2

    :cond_4
    mul-int/lit8 v3, v19, 0x2

    aget v3, v12, v3

    :goto_2
    add-float v22, v2, v3

    int-to-float v2, v11

    if-eqz v21, :cond_5

    mul-int/lit8 v3, v19, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, v12, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v3, v20, -0x1

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, v12, v3

    :goto_3
    add-float v23, v2, v3

    if-eqz p5, :cond_6

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    move v6, v11

    move-object v7, v12

    move/from16 v8, v19

    move/from16 v24, v9

    move/from16 v9, v20

    move-object/from16 v25, v10

    move/from16 v10, v22

    move/from16 v26, v11

    move/from16 v11, v23

    move-object/from16 v27, v12

    move/from16 v12, v21

    move/from16 v28, v13

    move-object/from16 v13, p3

    move/from16 v29, v14

    move-object/from16 v14, p4

    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v2

    goto :goto_4

    :cond_6
    move/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v2, p2

    move v3, v15

    move/from16 v4, v16

    move/from16 v5, v29

    move/from16 v6, v26

    move-object/from16 v7, v27

    move/from16 v8, v19

    move/from16 v9, v20

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v12, v21

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v2

    :goto_4
    nop

    if-ltz v2, :cond_7

    return v2

    :cond_7
    if-eqz p5, :cond_8

    move/from16 v3, v18

    goto :goto_5

    :cond_8
    move/from16 v3, v17

    :goto_5
    add-int v9, v24, v3

    move-object/from16 v10, v25

    move/from16 v11, v26

    move-object/from16 v12, v27

    move/from16 v13, v28

    move/from16 v14, v29

    goto/16 :goto_1

    :cond_9
    move/from16 v24, v9

    move-object/from16 v25, v10

    move/from16 v26, v11

    move-object/from16 v27, v12

    move/from16 v28, v13

    move/from16 v29, v14

    return v17
.end method

.method private blacklist initSpanColors()V
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/SpanColors;

    invoke-direct {v0}, Landroid/text/SpanColors;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    :goto_0
    return-void
.end method

.method private blacklist isHighContrastTextDark(I)Z
    .locals 7

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextLuminance()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    aget-wide v3, v0, v2

    const-wide v5, 0x404e600000000000L    # 60.75

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    add-int/2addr v0, v3

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    add-int/2addr v0, v3

    const/16 v3, 0x1cb

    if-ge v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .locals 4

    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static synthetic blacklist lambda$addSelectionPath$4(Landroid/graphics/Path;FFFFI)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    add-float v3, p2, v0

    sub-float v5, p4, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v1, p0

    move v2, p1

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$fillCharacterBounds$2(II[FIIFFFF)V
    .locals 2

    sub-int v0, p3, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    aput p5, p2, v0

    add-int/lit8 v1, v0, 0x1

    aput p6, p2, v1

    add-int/lit8 v1, v0, 0x2

    aput p7, p2, v1

    add-int/lit8 v1, v0, 0x3

    aput p8, p2, v1

    return-void
.end method

.method static synthetic blacklist lambda$getSelectionPath$3(Landroid/graphics/Path;FFFFI)V
    .locals 6

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 1

    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method private static blacklist measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F
    .locals 24

    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    const/4 v1, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    move-object/from16 v11, p4

    :try_start_0
    invoke-static {v13, v14, v15, v11, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object v10, v0

    :try_start_1
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    array-length v1, v0

    move v9, v1

    const/4 v1, 0x0

    invoke-virtual {v10, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    instance-of v5, v13, Landroid/text/Spanned;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v5, :cond_1

    :try_start_2
    move-object v5, v13

    check-cast v5, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v14, v15, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    array-length v1, v8

    move/from16 v16, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v17, v8, v4

    move-object/from16 v18, v17

    move/from16 v17, v1

    const/4 v1, 0x1

    move/from16 v19, v2

    move-object/from16 v2, v18

    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    add-int v16, v16, v1

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v2, v19

    goto :goto_0

    :cond_0
    move/from16 v19, v2

    move/from16 v8, v16

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v2, p5

    move-object v1, v10

    move-object v13, v12

    goto/16 :goto_6

    :cond_1
    move/from16 v19, v2

    move v8, v4

    :goto_1
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v9, :cond_5

    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    instance-of v4, v13, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    move-object v4, v13

    check-cast v4, Landroid/text/Spanned;

    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v14, v15, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    move-object/from16 v16, v0

    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v14, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    move/from16 v17, v2

    array-length v2, v0

    if-lez v2, :cond_2

    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v18, v3

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    goto :goto_3

    :cond_2
    move-object/from16 v18, v3

    :goto_3
    move-object/from16 v18, v3

    goto :goto_4

    :cond_3
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_4

    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    move/from16 v17, v19

    :goto_4
    const/4 v0, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v21, v8

    move/from16 v8, v17

    move/from16 v22, v9

    move-object/from16 v9, v18

    move-object/from16 v23, v10

    move/from16 v10, v20

    move v11, v0

    move-object v13, v12

    move/from16 v12, v19

    :try_start_3
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v4, v21

    int-to-float v0, v4

    const/4 v1, 0x0

    move/from16 v2, p5

    :try_start_4
    invoke-virtual {v13, v1, v1, v2, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-float/2addr v0, v1

    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v23, :cond_6

    invoke-virtual/range {v23 .. v23}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_6
    return v0

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move/from16 v2, p5

    :goto_5
    move-object/from16 v1, v23

    goto :goto_6

    :catchall_3
    move-exception v0

    move/from16 v2, p5

    move-object/from16 v23, v10

    move-object v13, v12

    move-object/from16 v1, v23

    goto :goto_6

    :catchall_4
    move-exception v0

    move/from16 v2, p5

    move-object v13, v12

    :goto_6
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    :cond_7
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 5

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    if-nez p4, :cond_0

    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    const/4 v1, 0x1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_3

    if-nez v1, :cond_1

    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_2

    int-to-float v0, v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    return v0

    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method

.method private static blacklist setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    const/16 v0, -0x100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-object p2
.end method

.method private static blacklist shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z
    .locals 1

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public blacklist addSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v0, :cond_0

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    :cond_0
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 29

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    move-object v14, v5

    const/4 v5, 0x0

    move v13, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    if-ge v13, v5, :cond_5

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v11

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v17

    const/4 v5, 0x0

    if-eqz v17, :cond_0

    iget-object v6, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v6, v6, Landroid/text/Spanned;

    if-eqz v6, :cond_0

    iget-object v6, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spanned;

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v6, v12, v11, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    array-length v7, v6

    if-lez v7, :cond_0

    new-instance v7, Landroid/text/Layout$TabStops;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v7, v8, v6}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v5, v7

    move-object/from16 v18, v5

    goto :goto_1

    :cond_0
    move-object/from16 v18, v5

    :goto_1
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v19

    if-nez v19, :cond_1

    move v9, v2

    move v10, v3

    move v11, v4

    move v4, v13

    move-object v3, v14

    move-object v2, v15

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v20

    iget-object v10, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v5

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v6

    add-int v21, v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v22

    move-object v5, v15

    move-object v6, v10

    move v8, v12

    move v9, v11

    move-object/from16 v23, v10

    move/from16 v10, v20

    move/from16 v24, v11

    move-object/from16 v11, v19

    move/from16 v25, v12

    move/from16 v12, v17

    move/from16 v26, v4

    move v4, v13

    move-object/from16 v13, v18

    move/from16 v27, v3

    move-object v3, v14

    move/from16 v14, v16

    move/from16 v28, v2

    move-object v2, v15

    move/from16 v15, v21

    move/from16 v16, v22

    invoke-virtual/range {v5 .. v16}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-direct {v0, v4}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {v0, v4}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/text/TextLine;->justify(IF)V

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v3, v5, v6}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    iget v5, v3, Landroid/graphics/RectF;->left:F

    iget v6, v3, Landroid/graphics/RectF;->right:F

    iget v7, v3, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v5, v9

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v6, v9

    :cond_3
    if-nez v4, :cond_4

    move v1, v5

    move v9, v6

    move v10, v7

    move v11, v8

    goto :goto_2

    :cond_4
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    move-result v1

    move/from16 v9, v28

    invoke-static {v9, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    move/from16 v10, v27

    invoke-static {v10, v7}, Ljava/lang/Math;->min(FF)F

    move-result v10

    move/from16 v11, v26

    invoke-static {v11, v8}, Ljava/lang/Math;->max(FF)F

    move-result v11

    :goto_2
    add-int/lit8 v13, v4, 0x1

    move-object v15, v2

    move-object v14, v3

    move v2, v9

    move v3, v10

    move v4, v11

    goto/16 :goto_0

    :cond_5
    move v9, v2

    move v10, v3

    move v11, v4

    move-object v2, v15

    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v1, v10, v9, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2

    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const/4 v0, 0x0

    iget-boolean v1, v9, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, v9, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v11

    if-gez v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v2

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    move v12, v0

    goto :goto_0

    :cond_0
    move v12, v0

    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v13

    invoke-static {v13, v14}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v15

    invoke-static {v13, v14}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    if-gez v8, :cond_1

    return-void

    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v9, v10, v15, v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    move/from16 v16, v8

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v15

    move/from16 v16, v8

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    :goto_1
    move/from16 v8, v16

    invoke-virtual {v9, v10, v15, v8}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    invoke-static/range {p1 .. p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move v7, v15

    move/from16 v16, v8

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    goto :goto_2

    :cond_3
    move/from16 v16, v8

    :goto_2
    cmpl-float v0, v12, v11

    if-eqz v0, :cond_4

    neg-float v0, v12

    invoke-virtual {v10, v0, v11}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    return-void
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;II)V
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V

    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_a

    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    :cond_0
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v15

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v15}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_9

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    sget-object v5, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v6, 0x0

    iget-object v14, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    const/4 v7, 0x0

    iget v13, v0, Landroid/text/Layout;->mWidth:I

    move/from16 v8, p2

    move v12, v8

    :goto_0
    move/from16 v11, p3

    if-gt v12, v11, :cond_8

    move v10, v4

    add-int/lit8 v8, v12, 0x1

    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    move/from16 v16, v9

    move v8, v3

    add-int/lit8 v4, v12, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v17

    move/from16 v18, v17

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v19, v17, v3

    if-lt v9, v7, :cond_6

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3, v10, v15}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v3

    const/4 v4, 0x0

    if-ne v10, v9, :cond_2

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v3

    move v7, v4

    move-object/from16 v20, v5

    goto :goto_4

    :cond_2
    :goto_1
    const/4 v6, 0x0

    :goto_2
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v6, v7, :cond_5

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanStarts:[I

    aget v7, v7, v6

    if-ge v7, v9, :cond_4

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanEnds:[I

    aget v7, v7, v6

    if-gt v7, v10, :cond_3

    goto :goto_3

    :cond_3
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v7, [Landroid/text/style/LineBackgroundSpan;

    aget-object v7, v7, v6

    invoke-static {v5, v4, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    add-int/lit8 v4, v4, 0x1

    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    move/from16 v21, v3

    move v7, v4

    move-object/from16 v20, v5

    goto :goto_4

    :cond_6
    move-object/from16 v20, v5

    move/from16 v21, v7

    move v7, v6

    :goto_4
    const/4 v3, 0x0

    move v6, v3

    :goto_5
    if-ge v6, v7, :cond_7

    aget-object v3, v20, v6

    move-object/from16 v22, v3

    check-cast v22, Landroid/text/style/LineBackgroundSpan;

    const/16 v23, 0x0

    move-object/from16 v3, v22

    move-object/from16 v4, p1

    move-object v5, v14

    move/from16 v24, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move v7, v13

    move/from16 v25, v9

    move/from16 v9, v19

    move/from16 v26, v10

    move/from16 v10, v17

    move-object v11, v2

    move/from16 v27, v12

    move/from16 v12, v26

    move/from16 v28, v13

    move/from16 v13, v25

    move-object/from16 v29, v14

    move/from16 v14, v27

    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    add-int/lit8 v6, v24, 0x1

    move/from16 v11, p3

    move/from16 v7, v23

    move/from16 v9, v25

    move/from16 v10, v26

    move/from16 v12, v27

    move/from16 v13, v28

    move-object/from16 v14, v29

    goto :goto_5

    :cond_7
    move/from16 v24, v6

    move/from16 v23, v7

    move/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v29, v14

    add-int/lit8 v12, v27, 0x1

    move/from16 v4, v16

    move/from16 v3, v18

    move-object/from16 v5, v20

    move/from16 v7, v21

    move/from16 v6, v23

    goto/16 :goto_0

    :cond_8
    move/from16 v27, v12

    move/from16 v28, v13

    move-object/from16 v29, v14

    :cond_9
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    :cond_a
    return-void
.end method

.method public blacklist drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p6, :cond_1

    int-to-float v1, p6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;

    move-result-object v1

    if-eqz p2, :cond_6

    if-eqz p3, :cond_5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1, v5}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v4, v5

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The highlight path size is different from the size of highlight paints"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "if highlight is specified, highlightPaint must be specified."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_6
    if-eqz p4, :cond_8

    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {p5, v1, v2}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    move-object p5, v2

    :cond_7
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    if-eqz p6, :cond_9

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_9
    return-void

    :catchall_0
    move-exception v1

    if-eqz p6, :cond_a

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_a
    throw v1
.end method

.method public whitelist drawText(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    if-gez v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .locals 45

    move-object/from16 v15, p0

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    const/4 v3, 0x0

    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    move/from16 v7, p2

    move-object v10, v5

    move v9, v7

    :goto_0
    move/from16 v8, p3

    if-gt v9, v8, :cond_1a

    move v7, v1

    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {v15, v9}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v20

    const/4 v5, 0x1

    invoke-direct {v15, v9, v7, v1, v5}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v21

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    move-object/from16 v17, v11

    const/4 v11, 0x1

    move v5, v0

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {v15, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    move/from16 v23, v22

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    sub-int v11, v22, v0

    invoke-virtual {v15, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/16 v18, 0x0

    move/from16 v19, v1

    iget v1, v15, Landroid/text/Layout;->mWidth:I

    move/from16 v24, v1

    iget-boolean v1, v15, Landroid/text/Layout;->mSpannedText:Z

    move/from16 v25, v5

    if-eqz v1, :cond_d

    move-object v1, v12

    check-cast v1, Landroid/text/Spanned;

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-eqz v7, :cond_1

    move-object/from16 v27, v2

    add-int/lit8 v2, v7, -0x1

    invoke-interface {v12, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move-object/from16 v28, v4

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v27, v2

    move-object/from16 v28, v4

    :goto_1
    const/4 v2, 0x1

    :goto_2
    move/from16 v29, v2

    if-lt v7, v3, :cond_6

    if-eq v9, v14, :cond_3

    if-eqz v29, :cond_2

    goto :goto_3

    :cond_2
    const/16 v16, 0x1

    goto :goto_6

    :cond_3
    :goto_3
    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-interface {v1, v7, v5, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    const-class v2, Landroid/text/style/ParagraphStyle;

    invoke-static {v1, v7, v3, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move/from16 v30, v3

    array-length v3, v2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    :goto_4
    if-ltz v3, :cond_5

    move-object/from16 v27, v4

    aget-object v4, v2, v3

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_4

    aget-object v4, v2, v3

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v4

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v27

    goto :goto_4

    :cond_5
    move-object/from16 v27, v4

    :goto_5
    const/4 v3, 0x0

    move-object v6, v2

    move/from16 v27, v3

    move-object/from16 v28, v4

    goto :goto_7

    :cond_6
    const/16 v16, 0x1

    :goto_6
    move/from16 v30, v3

    move-object/from16 v44, v27

    move/from16 v27, v6

    move-object/from16 v6, v44

    :goto_7
    array-length v4, v6

    move/from16 v2, v29

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v4, :cond_9

    move/from16 v31, v2

    aget-object v2, v6, v3

    instance-of v2, v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v2, :cond_7

    aget-object v2, v6, v3

    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v2

    move/from16 v32, v5

    aget-object v5, v6, v3

    invoke-interface {v1, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    move-object/from16 v33, v1

    add-int v1, v5, v2

    if-ge v9, v1, :cond_8

    const/4 v1, 0x1

    move v5, v1

    goto :goto_9

    :cond_7
    move-object/from16 v33, v1

    move/from16 v32, v5

    :cond_8
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v31

    move/from16 v5, v32

    move-object/from16 v1, v33

    goto :goto_8

    :cond_9
    move-object/from16 v33, v1

    move/from16 v31, v2

    move/from16 v32, v5

    move/from16 v5, v31

    :goto_9
    const/4 v1, 0x0

    move v3, v1

    move/from16 v31, v18

    :goto_a
    if-ge v3, v4, :cond_c

    aget-object v1, v6, v3

    instance-of v1, v1, Landroid/text/style/LeadingMarginSpan;

    if-eqz v1, :cond_b

    aget-object v1, v6, v3

    move-object v2, v1

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_a

    move v1, v0

    move-object v0, v2

    move/from16 v34, v1

    move-object/from16 v44, v33

    move/from16 v33, v19

    move-object/from16 v19, v44

    move-object/from16 v1, p1

    move-object v15, v2

    move-object v2, v13

    move/from16 v35, v3

    move/from16 v3, v24

    move/from16 v36, v4

    move/from16 v4, v34

    move-object/from16 v37, v6

    move v6, v11

    move/from16 v38, v7

    move/from16 v7, v22

    move-object v8, v12

    move/from16 v39, v9

    move/from16 v9, v38

    move-object/from16 v40, v10

    move/from16 v10, v21

    move/from16 v42, v11

    move-object/from16 v41, v17

    move/from16 v11, v29

    move-object/from16 v43, v12

    move-object/from16 v12, p0

    move v14, v5

    move/from16 v5, v25

    move/from16 v25, v32

    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v15, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v24, v24, v0

    move-object/from16 v4, p0

    move v1, v14

    goto/16 :goto_b

    :cond_a
    move/from16 v34, v0

    move-object v15, v2

    move/from16 v35, v3

    move/from16 v36, v4

    move v14, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move/from16 v39, v9

    move-object/from16 v40, v10

    move/from16 v42, v11

    move-object/from16 v43, v12

    move-object/from16 v41, v17

    move/from16 v5, v25

    move/from16 v25, v32

    move-object/from16 v44, v33

    move/from16 v33, v19

    move-object/from16 v19, v44

    move-object v6, v15

    move-object/from16 v7, p1

    move-object v8, v13

    move/from16 v9, v31

    move/from16 v10, v34

    move v11, v5

    move/from16 v12, v42

    move-object v2, v13

    move/from16 v13, v22

    move v1, v14

    move-object/from16 v14, v43

    move-object/from16 v4, p0

    move-object v0, v15

    move/from16 v15, v38

    move/from16 v16, v21

    move/from16 v17, v29

    move-object/from16 v18, p0

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    invoke-interface {v0, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v3

    add-int v31, v31, v3

    goto :goto_b

    :cond_b
    move/from16 v34, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move v1, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move/from16 v39, v9

    move-object/from16 v40, v10

    move/from16 v42, v11

    move-object/from16 v43, v12

    move-object v2, v13

    move-object v4, v15

    move-object/from16 v41, v17

    move/from16 v5, v25

    move/from16 v25, v32

    move-object/from16 v44, v33

    move/from16 v33, v19

    move-object/from16 v19, v44

    :goto_b
    add-int/lit8 v3, v35, 0x1

    move/from16 v14, p2

    move/from16 v8, p3

    move-object v13, v2

    move-object v15, v4

    move/from16 v32, v25

    move/from16 v0, v34

    move/from16 v4, v36

    move-object/from16 v6, v37

    move/from16 v7, v38

    move/from16 v9, v39

    move-object/from16 v10, v40

    move-object/from16 v17, v41

    move/from16 v11, v42

    move-object/from16 v12, v43

    const/16 v16, 0x1

    move/from16 v25, v5

    move v5, v1

    move/from16 v44, v33

    move-object/from16 v33, v19

    move/from16 v19, v44

    goto/16 :goto_a

    :cond_c
    move/from16 v34, v0

    move/from16 v35, v3

    move/from16 v36, v4

    move v1, v5

    move-object/from16 v37, v6

    move/from16 v38, v7

    move/from16 v39, v9

    move-object/from16 v40, v10

    move/from16 v42, v11

    move-object/from16 v43, v12

    move-object v2, v13

    move-object v4, v15

    move-object/from16 v41, v17

    move/from16 v5, v25

    move/from16 v25, v32

    move-object/from16 v44, v33

    move/from16 v33, v19

    move-object/from16 v19, v44

    move/from16 v1, v24

    move/from16 v6, v27

    move/from16 v3, v30

    move-object/from16 v0, v37

    goto :goto_c

    :cond_d
    move/from16 v34, v0

    move-object/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v38, v7

    move/from16 v39, v9

    move-object/from16 v40, v10

    move/from16 v42, v11

    move-object/from16 v43, v12

    move-object v2, v13

    move-object v4, v15

    move-object/from16 v41, v17

    move/from16 v33, v19

    move/from16 v5, v25

    move/from16 v31, v18

    move/from16 v1, v24

    move-object/from16 v0, v27

    :goto_c
    move/from16 v15, v39

    invoke-virtual {v4, v15}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v24

    if-eqz v24, :cond_f

    if-nez v6, :cond_f

    const/high16 v7, 0x41a00000    # 20.0f

    move-object/from16 v8, v40

    if-nez v8, :cond_e

    new-instance v9, Landroid/text/Layout$TabStops;

    invoke-direct {v9, v7, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v9

    goto :goto_d

    :cond_e
    invoke-virtual {v8, v7, v0}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    move-object v10, v8

    :goto_d
    const/4 v6, 0x1

    move/from16 v25, v6

    move-object v14, v10

    goto :goto_e

    :cond_f
    move-object/from16 v8, v40

    move/from16 v25, v6

    move-object v14, v8

    :goto_e
    move-object/from16 v6, v28

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_11

    move/from16 v13, v34

    const/4 v7, 0x1

    if-ne v13, v7, :cond_10

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v6, v8

    move-object v12, v6

    goto :goto_11

    :cond_11
    move/from16 v13, v34

    const/4 v7, 0x1

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_13

    if-ne v13, v7, :cond_12

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_12
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object v6, v8

    move-object v12, v6

    goto :goto_11

    :cond_13
    move-object v12, v6

    :goto_11
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v12, v6, :cond_15

    if-ne v13, v7, :cond_14

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int v7, v31, v6

    move/from16 v26, v6

    move v11, v7

    goto :goto_12

    :cond_14
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    sub-int v7, v1, v6

    move/from16 v26, v6

    move v11, v7

    goto :goto_12

    :cond_15
    const/4 v6, 0x0

    invoke-direct {v4, v15, v14, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v12, v8, :cond_17

    if-ne v13, v7, :cond_16

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    sub-int v8, v1, v6

    sub-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    goto :goto_12

    :cond_16
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    sub-int v8, v31, v6

    add-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    goto :goto_12

    :cond_17
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v4, v15, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    and-int/lit8 v6, v6, -0x2

    add-int v9, v1, v31

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    move v11, v7

    move/from16 v26, v8

    :goto_12
    invoke-virtual {v4, v15}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v10, v6, :cond_18

    iget-boolean v6, v4, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_18

    if-nez v24, :cond_18

    if-nez v20, :cond_18

    int-to-float v9, v11

    move/from16 v8, v42

    int-to-float v7, v8

    move-object/from16 v6, p1

    move/from16 v16, v7

    move-object/from16 v7, v43

    move/from16 v27, v8

    move/from16 v8, v38

    move/from16 v17, v9

    move/from16 v9, v21

    move-object/from16 v29, v10

    move/from16 v10, v17

    move-object/from16 v30, v0

    move v0, v11

    move/from16 v11, v16

    move-object/from16 v32, v12

    move-object v12, v2

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v35, v14

    move/from16 v36, v15

    move-object/from16 v9, v41

    goto :goto_14

    :cond_18
    move-object/from16 v30, v0

    move-object/from16 v29, v10

    move v0, v11

    move-object/from16 v32, v12

    move/from16 v27, v42

    nop

    invoke-virtual {v4, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    invoke-virtual {v4, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v6

    invoke-virtual {v4, v15}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v7

    add-int v17, v6, v7

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    move-object/from16 v6, v41

    move-object v7, v2

    move-object/from16 v8, v43

    move/from16 v9, v38

    move/from16 v10, v21

    move v11, v13

    move-object/from16 v12, v29

    move/from16 v34, v13

    move/from16 v13, v24

    move-object/from16 v35, v14

    move/from16 v36, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v6 .. v17}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    if-eqz v20, :cond_19

    iget v6, v4, Landroid/text/Layout;->mJustificationMode:I

    sub-int v7, v1, v31

    sub-int v7, v7, v26

    int-to-float v7, v7

    move-object/from16 v9, v41

    invoke-virtual {v9, v6, v7}, Landroid/text/TextLine;->justify(IF)V

    goto :goto_13

    :cond_19
    move-object/from16 v9, v41

    :goto_13
    int-to-float v6, v0

    move-object v14, v9

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v27

    move/from16 v19, v22

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    :goto_14
    add-int/lit8 v0, v36, 0x1

    move/from16 v14, p2

    move-object v13, v2

    move-object v15, v4

    move-object v11, v9

    move/from16 v6, v25

    move-object/from16 v4, v28

    move-object/from16 v2, v30

    move/from16 v1, v33

    move-object/from16 v10, v35

    move-object/from16 v12, v43

    move v9, v0

    move/from16 v0, v23

    goto/16 :goto_0

    :cond_1a
    move/from16 v36, v9

    move-object v9, v11

    invoke-static {v9}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-void
.end method

.method public blacklist drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p7, p8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    invoke-virtual/range {p0 .. p8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    return-void
.end method

.method public whitelist fillCharacterBounds(II[FI)V
    .locals 9

    if-ltz p1, :cond_3

    if-lt p2, p1, :cond_3

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_3

    if-eqz p3, :cond_2

    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x4

    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_1

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    new-instance v7, Landroid/text/Layout$$ExternalSyntheticLambda5;

    invoke-direct {v7, p4, p1, p3}, Landroid/text/Layout$$ExternalSyntheticLambda5;-><init>(II[F)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, v1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bounds doesn\'t have enough space to store the result, needed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " had: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    sub-int/2addr v3, p4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bounds can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "given range: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is out of the text range: 0, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public final whitelist getBreakStrategy()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    const/4 v14, 0x0

    if-nez v11, :cond_0

    if-eqz v13, :cond_2

    :cond_0
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    if-eqz v13, :cond_1

    add-int/2addr v4, v14

    :cond_1
    if-eqz v11, :cond_2

    sub-int/2addr v5, v14

    :cond_2
    cmpg-float v15, v8, v9

    if-gez v15, :cond_3

    const/high16 v8, 0x3f000000    # 0.5f

    :cond_3
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    if-ne v11, v12, :cond_4

    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v15, v14

    sub-float v15, v8, v15

    add-int v12, v5, v14

    int-to-float v12, v12

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_4
    if-ne v11, v10, :cond_5

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    :goto_0
    const/4 v12, 0x2

    if-ne v13, v12, :cond_6

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_6
    if-ne v13, v10, :cond_7

    int-to-float v10, v4

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v10, v14

    add-float/2addr v10, v8

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_7
    :goto_1
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public final whitelist getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final whitelist getHyphenationFrequency()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getJustificationMode()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    return v0
.end method

.method public final whitelist getLeftIndents()[I
    .locals 4

    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public final whitelist getLineAscent(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .locals 2

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBottom(IZ)I
    .locals 2

    if-eqz p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public abstract whitelist getLineContainsTab(I)Z
.end method

.method public abstract whitelist getLineCount()I
.end method

.method public abstract whitelist getLineDescent(I)I
.end method

.method public abstract whitelist getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final whitelist getLineEnd(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineForOffset(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, -0x1

    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-gez v1, :cond_2

    const/4 v2, 0x0

    return v2

    :cond_2
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .locals 8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_3
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_0
    goto :goto_2

    :pswitch_4
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_1
    nop

    :goto_2
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_5
    const/4 v3, 0x0

    return v3

    :pswitch_6
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public whitelist getLineLetterSpacingUnitCount(IZ)I
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    const/4 v15, 0x0

    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    move v6, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    invoke-direct {v0, v1, v2, v3, v15}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v2

    move v6, v2

    :goto_0
    nop

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    if-nez v16, :cond_1

    return v15

    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v17

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    iget-object v12, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v12, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    add-int v18, v2, v3

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v19

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v13

    move-object v3, v12

    move v5, v14

    move/from16 v7, v17

    move-object/from16 v8, v16

    move-object/from16 v20, v12

    move/from16 v12, v18

    move-object/from16 v21, v13

    move/from16 v13, v19

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    iget-object v2, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-nez v2, :cond_2

    new-instance v2, Landroid/text/TextLine$LineInfo;

    invoke-direct {v2}, Landroid/text/TextLine$LineInfo;-><init>()V

    iput-object v2, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    :cond_2
    iget-object v2, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2, v15}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    iget-boolean v2, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    iget-object v3, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    const/4 v4, 0x0

    move-object/from16 v5, v21

    invoke-virtual {v5, v4, v4, v2, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    invoke-static {v5}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    iget-object v2, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    return v2
.end method

.method public whitelist getLineMax(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 6

    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :cond_0
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-lt v0, v5, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getLineRight(I)F
    .locals 8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    :cond_0
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_2

    :pswitch_3
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    :goto_0
    goto :goto_2

    :pswitch_4
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    :goto_1
    nop

    :goto_2
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    :pswitch_6
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_7
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final whitelist getLineSpacingAmount()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getLineSpacingMultiplier()F
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 3

    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    neg-float v2, v1

    :goto_0
    add-float/2addr v2, v0

    return v2
.end method

.method public final whitelist getMaxLines()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mMaxLines:I

    return v0
.end method

.method public whitelist getMinimumFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v16, v2, v5

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v17

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move v5, v15

    move v6, v14

    move-object v8, v13

    move-object/from16 v18, v12

    move/from16 v12, v16

    move-object/from16 v19, v13

    move/from16 v13, v17

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    move v4, v14

    move-object/from16 v7, v18

    goto :goto_0

    :cond_0
    sub-int v4, v14, v15

    add-int/lit8 v6, v14, -0x1

    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    xor-int/2addr v6, v5

    move-object/from16 v7, v18

    invoke-virtual {v7, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v15

    :goto_0
    move v6, v15

    invoke-virtual {v2, v15}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v8

    sub-float v8, v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    const/4 v9, 0x0

    :goto_1
    move-object/from16 v10, v19

    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v11, v11

    if-ge v9, v11, :cond_c

    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    aget v11, v11, v9

    add-int/2addr v11, v15

    iget-object v12, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v13, v9, 0x1

    aget v12, v12, v13

    const v13, 0x3ffffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    iget-object v13, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v9, 0x1

    aget v13, v13, v16

    const/high16 v16, 0x4000000

    and-int v13, v13, v16

    const/16 v16, 0x0

    if-eqz v13, :cond_1

    move v13, v5

    goto :goto_2

    :cond_1
    move/from16 v13, v16

    :goto_2
    if-eqz v13, :cond_2

    const/16 v17, -0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v5

    :goto_3
    move/from16 v18, v17

    if-le v12, v4, :cond_3

    move v12, v4

    :cond_3
    add-int/lit8 v17, v12, -0x1

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v19, v11, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v5, v19

    :goto_4
    sub-int v1, v17, v5

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    add-int v1, v17, v5

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v3

    int-to-float v3, v0

    mul-float v20, v20, v3

    int-to-float v3, v0

    mul-float v3, v3, p2

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_4

    move v3, v1

    move/from16 v17, v3

    goto :goto_5

    :cond_4
    move v3, v1

    move v5, v3

    :goto_5
    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_5
    move/from16 v0, v18

    add-int/lit8 v1, v11, 0x1

    if-ge v5, v1, :cond_6

    add-int/lit8 v5, v11, 0x1

    :cond_6
    if-ge v5, v12, :cond_9

    sub-int v1, v5, v15

    invoke-virtual {v7, v1, v13}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v15

    sub-int v3, v1, v15

    move/from16 v18, v0

    if-nez v13, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    :goto_6
    invoke-virtual {v7, v3, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v5, v0, v15

    if-lt v5, v11, :cond_a

    if-ge v5, v12, :cond_a

    invoke-virtual {v2, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-ge v1, v12, :cond_8

    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v3

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v16, v3, v0

    if-gez v16, :cond_8

    move v0, v3

    move v5, v1

    :cond_8
    cmpg-float v3, v0, v8

    if-gez v3, :cond_a

    move v8, v0

    move v6, v5

    goto :goto_7

    :cond_9
    move/from16 v18, v0

    :cond_a
    :goto_7
    invoke-virtual {v2, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v8

    if-gez v1, :cond_b

    move v1, v0

    move v3, v11

    move v8, v1

    move v6, v3

    :cond_b
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v19, v10

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v1, v0, v8

    if-gtz v1, :cond_d

    move v6, v4

    :cond_d
    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return v6
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 5

    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    array-length v3, v2

    if-lez v3, :cond_0

    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public final whitelist getParagraphRight(I)I
    .locals 3

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget v0, v7, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    iget v1, v7, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v9, 0x0

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-object v9

    :cond_0
    move v10, v0

    goto :goto_0

    :cond_1
    move v10, v0

    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {v6, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v11

    if-nez v11, :cond_2

    iget v0, v7, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v6, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    return-object v9

    :cond_2
    if-ge v11, v10, :cond_3

    return-object v9

    :cond_3
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v10

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result v0

    move v12, v10

    move v10, v0

    :goto_1
    const/4 v13, -0x1

    if-ne v10, v13, :cond_4

    if-ge v12, v11, :cond_4

    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result v10

    goto :goto_1

    :cond_4
    if-ne v10, v13, :cond_5

    return-object v9

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v11

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result v0

    move v15, v11

    move v11, v0

    move v0, v15

    :goto_2
    if-ne v11, v13, :cond_6

    if-ge v12, v0, :cond_6

    add-int/lit8 v14, v0, -0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result v11

    move v0, v14

    goto :goto_2

    :cond_6
    if-ne v11, v13, :cond_7

    return-object v9

    :cond_7
    add-int/lit8 v1, v10, 0x1

    invoke-virtual {v8, v1}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v1

    add-int/lit8 v2, v11, -0x1

    invoke-virtual {v8, v2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v3

    return-object v3
.end method

.method public final whitelist getRightIndents()[I
    .locals 4

    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    iget-object v1, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public greylist-max-o getRunRange(I)J
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    aget v6, v2, v5

    add-int/2addr v6, v4

    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    if-lt p1, v6, :cond_1

    if-ge p1, v7, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .locals 2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 22

    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    if-ge v1, v0, :cond_1

    move/from16 v2, p2

    move/from16 v1, p1

    move v0, v2

    move v8, v0

    move v9, v1

    goto :goto_0

    :cond_1
    move v8, v0

    move v9, v1

    :goto_0
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v14

    if-ne v10, v11, :cond_2

    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v14

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_4

    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v15, v0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_3

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v17

    int-to-float v0, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    int-to-float v1, v1

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-object/from16 v16, p3

    move/from16 v18, v0

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v13, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v0, 0x1

    move-object/from16 v1, p3

    move v4, v15

    move v13, v6

    move v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_1
    add-int/lit8 v0, v10, 0x1

    :goto_2
    if-ge v0, v11, :cond_5

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v14

    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v13, :cond_4

    int-to-float v3, v12

    int-to-float v5, v14

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object/from16 v1, p3

    move v4, v15

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    :cond_4
    int-to-float v3, v12

    int-to-float v5, v14

    const/4 v6, 0x1

    const/4 v2, 0x0

    move-object/from16 v1, p3

    move v4, v15

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    const/4 v0, 0x0

    invoke-virtual {v7, v11, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v14

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v14

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v13, :cond_6

    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v14

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v15

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_4

    :cond_6
    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v19

    int-to-float v1, v14

    const/16 v21, 0x1

    const/16 v17, 0x0

    move-object/from16 v16, p3

    move/from16 v18, v0

    move/from16 v20, v1

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    :goto_4
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    return-void
.end method

.method public blacklist getSelectionRect(IIIIILandroid/graphics/Rect;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    add-int/lit8 v5, v5, -0x1

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_4

    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    if-le v9, v5, :cond_1

    move v9, v5

    :cond_1
    if-gt v2, v9, :cond_3

    if-lt v3, v8, :cond_3

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    if-eq v10, v11, :cond_2

    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    float-to-int v14, v14

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v15, v15

    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v2, v14, v0, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    goto :goto_1

    :cond_3
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    :goto_1
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_0

    :cond_4
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    return-void
.end method

.method public whitelist getShiftDrawingOffsetForStartOverhang()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    return v0
.end method

.method public final whitelist getSpacingAdd()F
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingAmount()F

    move-result v0

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .locals 1

    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public whitelist getUseBoundsForWidth()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    return v0
.end method

.method public final whitelist getWidth()I
    .locals 1

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .locals 2

    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    iput p1, p0, Landroid/text/Layout;->mWidth:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    return v0
.end method

.method public final whitelist isFontPaddingIncluded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mIncludePad:Z

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .locals 10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    const/4 v6, 0x1

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_1

    goto :goto_1

    :cond_1
    sub-int/2addr p1, v4

    const/4 v7, 0x0

    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_3

    aget v8, v2, v7

    if-ne p1, v8, :cond_2

    return v6

    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v6

    :goto_2
    if-ne p1, v4, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    :goto_3
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_7

    move v3, v6

    :cond_7
    return v3

    :cond_8
    :goto_4
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .locals 11

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    return v3

    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    return v4

    :cond_1
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    aget v7, v2, v6

    add-int/2addr v7, v5

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v3, v4

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_4
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    const/4 v4, -0x1

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3

    aget v6, v3, v5

    add-int/2addr v6, v1

    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    if-le v9, v2, :cond_0

    move v9, v2

    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v9, :cond_2

    if-le p1, v6, :cond_1

    return v8

    :cond_1
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v8

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    move v4, v5

    :cond_5
    const/4 v5, -0x1

    if-ne p1, v1, :cond_7

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_6

    move v7, v8

    goto :goto_3

    :cond_6
    move v7, v6

    :goto_3
    move v5, v7

    goto :goto_5

    :cond_7
    add-int/lit8 p1, p1, -0x1

    const/4 v9, 0x0

    :goto_4
    array-length v10, v3

    if-ge v9, v10, :cond_a

    aget v10, v3, v9

    add-int/2addr v10, v1

    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    if-le v11, v2, :cond_8

    move v11, v2

    :cond_8
    if-lt p1, v10, :cond_9

    if-ge p1, v11, :cond_9

    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    goto :goto_5

    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    :cond_a
    :goto_5
    if-ge v5, v4, :cond_b

    move v8, v6

    :cond_b
    return v8
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    const/4 v6, 0x0

    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    aget v7, v2, v6

    add-int/2addr v7, v0

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    if-le v8, v1, :cond_0

    move v8, v1

    :cond_0
    if-ne v8, v7, :cond_1

    goto :goto_1

    :cond_1
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_6

    aget v7, v2, v6

    add-int/2addr v7, v0

    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_4

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_3

    move v11, v10

    goto :goto_3

    :cond_3
    move v11, v4

    goto :goto_3

    :cond_4
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_3
    if-le v8, v11, :cond_5

    move v10, v4

    :cond_5
    aput-boolean v10, v3, v9

    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    :cond_6
    return-object v3
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3

    if-ltz p3, :cond_0

    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iput p3, p0, Landroid/text/Layout;->mWidth:I

    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .locals 3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    return v1

    :sswitch_0
    return v2

    :sswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x3 -> :sswitch_0
    .end sparse-switch
.end method
