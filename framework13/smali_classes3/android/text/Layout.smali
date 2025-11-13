.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
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

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

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

.field private greylist-max-o mJustificationMode:I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist mPaint:Landroid/text/TextPaint;

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private greylist-max-o mWidth:I

.field private greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
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

.method static constructor blacklist <clinit>()V
    .locals 3

    .line 139
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 140
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 2599
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2644
    new-instance v0, Landroid/text/Layout$Directions;

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2650
    new-instance v0, Landroid/text/Layout$Directions;

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3ffffff
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x7ffffff
    .end array-data
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .line 259
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 261
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2594
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2596
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 282
    if-ltz p3, :cond_1

    .line 289
    if-eqz p2, :cond_0

    .line 290
    const/4 v0, 0x0

    iput v0, p2, Landroid/text/TextPaint;->bgColor:I

    .line 291
    iput v0, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 294
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 295
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 296
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 297
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 298
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 299
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 300
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 301
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 302
    return-void

    .line 283
    :cond_1
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

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 24
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 1983
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1984
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1985
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1987
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 1988
    add-int/lit8 v5, v5, -0x1

    .line 1991
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_5

    .line 1992
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    .line 1993
    .local v8, "here":I
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 1995
    .local v9, "there":I
    if-le v9, v5, :cond_1

    .line 1996
    move v9, v5

    .line 1999
    :cond_1
    if-gt v2, v9, :cond_4

    if-lt v3, v8, :cond_4

    .line 2000
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2001
    .local v10, "st":I
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2003
    .local v11, "en":I
    if-eq v10, v11, :cond_3

    .line 2004
    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 2005
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    .line 2007
    .local v15, "h2":F
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v22

    .line 2008
    .local v22, "left":F
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 2011
    .local v23, "right":F
    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v17, v7, 0x1

    aget v12, v12, v17

    const/high16 v17, 0x4000000

    and-int v12, v12, v17

    if-eqz v12, :cond_2

    .line 2012
    const/16 v21, 0x0

    goto :goto_1

    .line 2013
    :cond_2
    move/from16 v21, v14

    :goto_1
    nop

    .line 2015
    .local v21, "layout":I
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

    .line 2003
    .end local v13    # "h1":F
    .end local v15    # "h2":F
    .end local v21    # "layout":I
    .end local v22    # "left":F
    .end local v23    # "right":F
    :cond_3
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_2

    .line 1999
    .end local v10    # "st":I
    .end local v11    # "en":I
    :cond_4
    move/from16 v12, p4

    move/from16 v0, p5

    .line 1991
    .end local v8    # "here":I
    .end local v9    # "there":I
    :goto_2
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_0

    :cond_5
    move/from16 v12, p4

    move/from16 v0, p5

    .line 2019
    .end local v7    # "i":I
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 14
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 2389
    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 2390
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_0

    .line 2391
    return-void

    .line 2393
    :cond_0
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 2394
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2396
    .local v4, "lineStart":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    .line 2397
    .local v5, "ellipsisString":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2399
    .local v6, "ellipsisStringLen":I
    const/4 v7, 0x0

    if-lt v2, v6, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v7

    .line 2400
    .local v8, "useEllipsisString":Z
    :goto_0
    sub-int v9, p1, v3

    sub-int/2addr v9, v4

    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2401
    .local v7, "min":I
    sub-int v9, p2, v3

    sub-int/2addr v9, v4

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 2403
    .local v9, "max":I
    move v10, v7

    .local v10, "i":I
    :goto_1
    if-ge v10, v9, :cond_3

    .line 2405
    if-eqz v8, :cond_2

    if-ge v10, v6, :cond_2

    .line 2406
    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "c":C
    goto :goto_2

    .line 2408
    .end local v11    # "c":C
    :cond_2
    const v11, 0xfeff

    .line 2411
    .restart local v11    # "c":C
    :goto_2
    add-int v12, v10, v3

    add-int/2addr v12, v4

    .line 2412
    .local v12, "a":I
    add-int v13, p5, v12

    sub-int/2addr v13, p1

    aput-char v11, p4, v13

    .line 2403
    .end local v11    # "c":C
    .end local v12    # "a":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 2414
    .end local v10    # "i":I
    :cond_3
    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 1
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .line 193
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .locals 6
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 204
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F

    move-result v0

    return v0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 181
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;F)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "upperLimit"    # F

    .line 216
    invoke-virtual {p3, p3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 219
    const/4 v0, 0x0

    .line 222
    .local v0, "need":F
    move v1, p1

    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_3

    .line 223
    const/16 v2, 0xa

    invoke-static {p0, v2, v1, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 225
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 226
    move v2, p2

    .line 229
    :cond_0
    invoke-static {p3, p0, v1, v2, p4}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F

    move-result v3

    .line 230
    .local v3, "w":F
    cmpl-float v4, v3, p5

    if-lez v4, :cond_1

    .line 231
    return p5

    .line 234
    :cond_1
    cmpl-float v4, v3, v0

    if-lez v4, :cond_2

    .line 235
    move v0, v3

    .line 237
    :cond_2
    nop

    .end local v3    # "w":F
    add-int/lit8 v2, v2, 0x1

    .line 222
    move v1, v2

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    .end local v2    # "next":I
    :cond_3
    return v0
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 1224
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
    .locals 22
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .line 1234
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1235
    .local v14, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1236
    .local v15, "end":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    .line 1237
    .local v16, "dir":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v17

    .line 1238
    .local v17, "hasTab":Z
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v18

    .line 1240
    .local v18, "directions":Landroid/text/Layout$Directions;
    const/4 v2, 0x0

    .line 1241
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v17, :cond_0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v4, v3, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 1244
    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v14, v15, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1245
    .local v3, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v4, v3

    if-lez v4, :cond_0

    .line 1246
    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v4, v5, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object/from16 v19, v2

    goto :goto_0

    .line 1250
    .end local v3    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object/from16 v19, v2

    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v19, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v13

    .line 1251
    .local v13, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1252
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v12, v2, v5

    .line 1253
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1251
    move-object v2, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move-object/from16 v8, v18

    move/from16 v9, v17

    move-object/from16 v10, v19

    move/from16 v21, v15

    move-object v15, v13

    .end local v13    # "tl":Landroid/text/TextLine;
    .local v15, "tl":Landroid/text/TextLine;
    .local v21, "end":I
    move/from16 v13, v20

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1254
    sub-int v2, p1, v14

    const/4 v3, 0x0

    move/from16 v4, p2

    invoke-virtual {v15, v2, v4, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v2

    .line 1255
    .local v2, "wid":F
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1257
    if-eqz p4, :cond_1

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v3

    cmpl-float v5, v2, v5

    if-lez v5, :cond_1

    .line 1258
    int-to-float v2, v3

    .line 1260
    :cond_1
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1261
    .local v3, "left":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    .line 1263
    .local v5, "right":I
    invoke-direct {v0, v1, v3, v5}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v2

    return v6
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .line 1228
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1230
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .locals 16
    .param p1, "lineNum"    # I

    .line 364
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 366
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 367
    .local v3, "left":I
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    .line 369
    .local v4, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 371
    .local v5, "dir":I
    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 372
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_8

    .line 373
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 374
    .local v7, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 376
    .local v9, "start":I
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

    .line 378
    .local v10, "isFirstParaLine":Z
    :goto_1
    if-eqz v10, :cond_3

    .line 379
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 381
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    .line 383
    array-length v12, v6

    sub-int/2addr v12, v8

    .local v12, "n":I
    :goto_2
    if-ltz v12, :cond_3

    .line 384
    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_2

    .line 385
    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 386
    goto :goto_3

    .line 383
    :cond_2
    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .line 391
    .end local v11    # "spanEnd":I
    .end local v12    # "n":I
    :cond_3
    :goto_3
    array-length v11, v6

    .line 392
    .local v11, "length":I
    move v12, v10

    .line 393
    .local v12, "useFirstLineMargin":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_4
    if-ge v13, v11, :cond_5

    .line 394
    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_4

    .line 395
    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 396
    .local v14, "count":I
    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 397
    .local v15, "startLine":I
    add-int v8, v15, v14

    if-ge v1, v8, :cond_4

    .line 398
    const/4 v12, 0x1

    .line 399
    goto :goto_5

    .line 393
    .end local v14    # "count":I
    .end local v15    # "startLine":I
    :cond_4
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_4

    .line 403
    .end local v13    # "n":I
    :cond_5
    :goto_5
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_6
    if-ge v8, v11, :cond_8

    .line 404
    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_7

    .line 405
    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    .line 406
    .local v13, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v14, -0x1

    if-ne v5, v14, :cond_6

    .line 407
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_7

    .line 409
    :cond_6
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    .line 403
    .end local v13    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 416
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "n":I
    .end local v9    # "start":I
    .end local v10    # "isFirstParaLine":Z
    .end local v11    # "length":I
    .end local v12    # "useFirstLineMargin":Z
    :cond_8
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_a

    .line 417
    const/4 v7, 0x1

    if-ne v5, v7, :cond_9

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_8

    :cond_9
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .local v7, "align":Landroid/text/Layout$Alignment;
    :goto_8
    goto :goto_a

    .line 418
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_a
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_c

    .line 419
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_9

    :cond_b
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_9
    goto :goto_a

    .line 421
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_c
    move-object v7, v2

    .line 425
    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_a
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e

    .line 426
    const/4 v8, 0x1

    if-ne v5, v8, :cond_d

    .line 427
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .local v8, "indentWidth":I
    goto :goto_b

    .line 429
    .end local v8    # "indentWidth":I
    :cond_d
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 431
    .end local v8    # "indentWidth":I
    :cond_e
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_10

    .line 432
    const/4 v8, 0x1

    if-ne v5, v8, :cond_f

    .line 433
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 435
    .end local v8    # "indentWidth":I
    :cond_f
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .restart local v8    # "indentWidth":I
    goto :goto_b

    .line 438
    .end local v8    # "indentWidth":I
    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 441
    .restart local v8    # "indentWidth":I
    :goto_b
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 20
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .line 1498
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1499
    .local v13, "start":I
    if-eqz p3, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v5, v1

    .line 1500
    .local v5, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v14

    .line 1501
    .local v14, "hasTabs":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v15

    .line 1502
    .local v15, "directions":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v16

    .line 1504
    .local v16, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1505
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1506
    .local v11, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1507
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1508
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1509
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1510
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v17, v1, v2

    .line 1511
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    .line 1509
    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move/from16 v6, v16

    move-object v7, v15

    move v8, v14

    move-object/from16 v9, p2

    move-object/from16 v19, v11

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v19, "paint":Landroid/text/TextPaint;
    move/from16 v11, v17

    move-object v0, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move/from16 v12, v18

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1512
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1513
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1515
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1516
    .local v1, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1517
    return v1
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .locals 22
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .line 1453
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1454
    .local v13, "start":I
    if-eqz p2, :cond_0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v1

    :goto_0
    move v14, v1

    .line 1456
    .local v14, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v15

    .line 1457
    .local v15, "hasTabs":Z
    const/4 v1, 0x0

    .line 1458
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v15, :cond_1

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_1

    .line 1461
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1462
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_1

    .line 1463
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v16, v1

    goto :goto_1

    .line 1466
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_1
    move-object/from16 v16, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v16, "tabStops":Landroid/text/Layout$TabStops;
    :goto_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    .line 1468
    .local v17, "directions":Landroid/text/Layout$Directions;
    if-nez v17, :cond_2

    .line 1469
    const/4 v1, 0x0

    return v1

    .line 1471
    :cond_2
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v18

    .line 1473
    .local v18, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1474
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1475
    .local v11, "paint":Landroid/text/TextPaint;
    iget-object v1, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1476
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1477
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v1

    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1478
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1479
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    add-int v19, v1, v2

    .line 1480
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1478
    move-object v1, v12

    move-object v2, v11

    move v4, v13

    move v5, v14

    move/from16 v6, v18

    move-object/from16 v7, v17

    move v8, v15

    move-object/from16 v9, v16

    move-object/from16 v21, v11

    .end local v11    # "paint":Landroid/text/TextPaint;
    .local v21, "paint":Landroid/text/TextPaint;
    move/from16 v11, v19

    move-object v0, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move/from16 v12, v20

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1481
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1482
    invoke-direct/range {p0 .. p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->justify(F)V

    .line 1484
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    .line 1485
    .local v1, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1486
    return v1
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .locals 21
    .param p1, "line"    # I
    .param p2, "clamped"    # Z
    .param p3, "primary"    # Z

    .line 1275
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 1276
    .local v13, "start":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 1277
    .local v14, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v15

    .line 1278
    .local v15, "dir":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v16

    .line 1279
    .local v16, "hasTab":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v17

    .line 1281
    .local v17, "directions":Landroid/text/Layout$Directions;
    const/4 v1, 0x0

    .line 1282
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v16, :cond_0

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v2, Landroid/text/Spanned;

    if-eqz v3, :cond_0

    .line 1285
    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v13, v14, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1286
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_0

    .line 1287
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v4, 0x41a00000    # 20.0f

    invoke-direct {v3, v4, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object/from16 v18, v1

    goto :goto_0

    .line 1291
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    move-object/from16 v18, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v18, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1292
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1293
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    add-int v11, v1, v4

    .line 1294
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v19

    .line 1292
    move-object v1, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move-object/from16 v7, v17

    move/from16 v8, v16

    move-object/from16 v9, v18

    move/from16 v20, v15

    move-object v15, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v15, "tl":Landroid/text/TextLine;
    .local v20, "dir":I
    move/from16 v12, v19

    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1295
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v1

    .line 1296
    .local v1, "trailings":[Z
    if-nez p3, :cond_1

    .line 1297
    const/4 v2, 0x0

    .local v2, "offset":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 1298
    aget-boolean v3, v1, v2

    xor-int/lit8 v3, v3, 0x1

    aput-boolean v3, v1, v2

    .line 1297
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1301
    .end local v2    # "offset":I
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v2

    .line 1302
    .local v2, "wid":[F
    invoke-static {v15}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1304
    if-eqz p2, :cond_3

    .line 1305
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1306
    aget v4, v2, v3

    iget v5, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v5

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    .line 1307
    int-to-float v4, v5

    aput v4, v2, v3

    .line 1305
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1311
    .end local v3    # "offset":I
    :cond_3
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1312
    .local v3, "left":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1314
    .local v4, "right":I
    move/from16 v5, p1

    invoke-direct {v0, v5, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    .line 1315
    .local v6, "lineStartPos":I
    sub-int v7, v14, v13

    add-int/lit8 v7, v7, 0x1

    new-array v7, v7, [F

    .line 1316
    .local v7, "horizontal":[F
    const/4 v8, 0x0

    .local v8, "offset":I
    :goto_3
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 1317
    int-to-float v9, v6

    aget v10, v2, v8

    add-float/2addr v9, v10

    aput v9, v7, v8

    .line 1316
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1319
    .end local v8    # "offset":I
    :cond_4
    return-object v7
.end method

.method private greylist-max-o getLineStartPos(III)I
    .locals 10
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 731
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 732
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 734
    .local v1, "dir":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 735
    if-ne v1, v3, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_0
    move-object v0, v2

    goto :goto_2

    .line 736
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_3

    .line 737
    if-ne v1, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_1
    move-object v0, v2

    .line 741
    :cond_3
    :goto_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_5

    .line 742
    if-ne v1, v3, :cond_4

    .line 743
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    .local v2, "x":I
    goto :goto_3

    .line 745
    .end local v2    # "x":I
    :cond_4
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    .restart local v2    # "x":I
    goto :goto_3

    .line 748
    .end local v2    # "x":I
    :cond_5
    const/4 v2, 0x0

    .line 749
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 750
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 751
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 752
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 754
    .local v6, "spanEnd":I
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    .line 756
    .local v7, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v8, v7

    if-lez v8, :cond_6

    .line 757
    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    .line 760
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "spanEnd":I
    .end local v7    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    .line 761
    .local v4, "max":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8

    .line 762
    if-ne v1, v3, :cond_7

    .line 763
    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .local v3, "x":I
    goto :goto_3

    .line 766
    .end local v3    # "x":I
    :cond_7
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .restart local v3    # "x":I
    goto :goto_3

    .line 769
    .end local v3    # "x":I
    :cond_8
    and-int/lit8 v4, v4, -0x2

    .line 770
    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    .line 773
    .end local v4    # "max":I
    .local v2, "x":I
    :goto_3
    return v2
.end method

.method private greylist-max-o getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1732
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1734
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1735
    return p3

    .line 1738
    :cond_0
    :goto_0
    if-le p3, p2, :cond_3

    .line 1739
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1741
    .local v1, "ch":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    .line 1742
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1745
    :cond_1
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1746
    goto :goto_1

    .line 1738
    :cond_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 1751
    .end local v1    # "ch":C
    :cond_3
    :goto_1
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .locals 7
    .param p1, "offset"    # I

    .line 1864
    if-nez p1, :cond_0

    .line 1865
    const/4 v0, 0x0

    return v0

    .line 1867
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1868
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1870
    .local v1, "c":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_1

    const v2, 0xdfff

    if-gt v1, v2, :cond_1

    .line 1871
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1873
    .local v2, "c1":C
    const v3, 0xd800

    if-lt v2, v3, :cond_1

    const v3, 0xdbff

    if-gt v2, v3, :cond_1

    .line 1874
    add-int/lit8 p1, p1, -0x1

    .line 1877
    .end local v2    # "c1":C
    :cond_1
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_3

    .line 1878
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 1881
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 1882
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 1883
    .local v4, "start":I
    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 1885
    .local v5, "end":I
    if-ge v4, p1, :cond_2

    if-le v5, p1, :cond_2

    .line 1886
    move p1, v4

    .line 1881
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1890
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_3
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .locals 22
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .line 1808
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1809
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1810
    .local v4, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1811
    .local v5, "lineEnd":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1813
    .local v6, "lineDir":I
    const/4 v7, 0x0

    .line 1814
    .local v7, "lineChanged":Z
    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x1

    if-ne v6, v9, :cond_0

    move v9, v10

    goto :goto_0

    :cond_0
    move v9, v8

    :goto_0
    if-ne v2, v9, :cond_1

    move v8, v10

    .line 1816
    .local v8, "advance":Z
    :cond_1
    if-eqz v8, :cond_3

    .line 1817
    if-ne v1, v5, :cond_5

    .line 1818
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v3, v9, :cond_2

    .line 1819
    const/4 v7, 0x1

    .line 1820
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1822
    :cond_2
    return v1

    .line 1826
    :cond_3
    if-ne v1, v4, :cond_5

    .line 1827
    if-lez v3, :cond_4

    .line 1828
    const/4 v7, 0x1

    .line 1829
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1831
    :cond_4
    return v1

    .line 1836
    :cond_5
    :goto_1
    if-eqz v7, :cond_6

    .line 1837
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1838
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1839
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v9

    .line 1840
    .local v9, "newDir":I
    if-eq v9, v6, :cond_6

    .line 1844
    xor-int/lit8 v10, v2, 0x1

    move v2, v10

    .line 1845
    .end local p2    # "toLeft":Z
    .local v2, "toLeft":Z
    move v6, v9

    .line 1849
    .end local v9    # "newDir":I
    :cond_6
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v21

    .line 1851
    .local v21, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v15

    .line 1853
    .local v15, "tl":Landroid/text/TextLine;
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 1854
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v18

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int v19, v9, v12

    .line 1855
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v20

    .line 1853
    move-object v9, v15

    move v12, v4

    move v13, v5

    move v14, v6

    move-object v0, v15

    .end local v15    # "tl":Landroid/text/TextLine;
    .local v0, "tl":Landroid/text/TextLine;
    move-object/from16 v15, v21

    invoke-virtual/range {v9 .. v20}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1856
    sub-int v9, v1, v4

    invoke-virtual {v0, v9, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v9

    add-int/2addr v9, v4

    .line 1857
    .end local p1    # "caret":I
    .local v9, "caret":I
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1858
    return v9
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .locals 14
    .param p1, "line"    # I

    .line 2155
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2156
    return v1

    .line 2158
    :cond_0
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 2160
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2161
    .local v2, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2162
    .local v3, "lineEnd":I
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 2164
    .local v4, "spanEnd":I
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    .line 2166
    .local v5, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v6, v5

    if-nez v6, :cond_1

    .line 2167
    return v1

    .line 2170
    :cond_1
    const/4 v6, 0x0

    .line 2172
    .local v6, "margin":I
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

    .line 2173
    .local v8, "useFirstLineMargin":Z
    :goto_1
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    array-length v10, v5

    if-ge v9, v10, :cond_6

    .line 2174
    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5

    .line 2175
    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 2176
    .local v10, "spStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2177
    .local v11, "spanLine":I
    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 2179
    .local v12, "count":I
    add-int v13, v11, v12

    if-ge p1, v13, :cond_4

    move v13, v7

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    or-int/2addr v8, v13

    .line 2173
    .end local v10    # "spStart":I
    .end local v11    # "spanLine":I
    .end local v12    # "count":I
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 2182
    .end local v9    # "i":I
    :cond_6
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v7, v5

    if-ge v1, v7, :cond_7

    .line 2183
    aget-object v7, v5, v1

    .line 2184
    .local v7, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    .line 2182
    .end local v7    # "span":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2187
    .end local v1    # "i":I
    :cond_7
    return v6
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
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

    .line 2376
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 2377
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2380
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_1

    .line 2381
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 2383
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .locals 4
    .param p1, "lineNum"    # I

    .line 358
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 360
    .local v0, "lineEnd":I
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

.method static synthetic blacklist lambda$addSelectionPath$1(Landroid/graphics/Path;FFFFI)V
    .locals 7
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 2698
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

.method static synthetic blacklist lambda$getSelectionPath$0(Landroid/graphics/Path;FFFFI)V
    .locals 6
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 2030
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method private static greylist-max-o measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)F
    .locals 24
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 2192
    move-object/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p3

    const/4 v1, 0x0

    .line 2193
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 2195
    .local v12, "tl":Landroid/text/TextLine;
    move-object/from16 v11, p4

    :try_start_0
    invoke-static {v13, v14, v15, v11, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v10, v0

    .line 2196
    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .local v10, "mt":Landroid/text/MeasuredParagraph;
    :try_start_1
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 2197
    .local v0, "chars":[C
    array-length v1, v0

    move v9, v1

    .line 2198
    .local v9, "len":I
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v9}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 2199
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {v10}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 2200
    .local v6, "dir":I
    const/4 v2, 0x0

    .line 2201
    .local v2, "hasTabs":Z
    const/4 v3, 0x0

    .line 2203
    .local v3, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v4, 0x0

    .line 2204
    .local v4, "margin":I
    instance-of v5, v13, Landroid/text/Spanned;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    .line 2205
    :try_start_2
    move-object v5, v13

    check-cast v5, Landroid/text/Spanned;

    .line 2206
    .local v5, "spanned":Landroid/text/Spanned;
    const-class v8, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v5, v14, v15, v8}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/LeadingMarginSpan;

    .line 2208
    .local v8, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v1, v8

    move/from16 v16, v4

    const/4 v4, 0x0

    .end local v4    # "margin":I
    .local v16, "margin":I
    :goto_0
    if-ge v4, v1, :cond_0

    aget-object v17, v8, v4

    move-object/from16 v18, v17

    .line 2209
    .local v18, "lms":Landroid/text/style/LeadingMarginSpan;
    move/from16 v17, v1

    const/4 v1, 0x1

    move/from16 v19, v2

    move-object/from16 v2, v18

    .end local v18    # "lms":Landroid/text/style/LeadingMarginSpan;
    .local v2, "lms":Landroid/text/style/LeadingMarginSpan;
    .local v19, "hasTabs":Z
    invoke-interface {v2, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    add-int v16, v16, v1

    .line 2208
    .end local v2    # "lms":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v17

    move/from16 v2, v19

    goto :goto_0

    .end local v19    # "hasTabs":Z
    .local v2, "hasTabs":Z
    :cond_0
    move/from16 v19, v2

    .end local v2    # "hasTabs":Z
    .restart local v19    # "hasTabs":Z
    move/from16 v8, v16

    goto :goto_1

    .line 2233
    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v5    # "spanned":Landroid/text/Spanned;
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "spans":[Landroid/text/style/LeadingMarginSpan;
    .end local v9    # "len":I
    .end local v16    # "margin":I
    .end local v19    # "hasTabs":Z
    :catchall_0
    move-exception v0

    move-object v1, v10

    move-object v13, v12

    goto/16 :goto_5

    .line 2204
    .restart local v0    # "chars":[C
    .restart local v2    # "hasTabs":Z
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v4    # "margin":I
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v9    # "len":I
    :cond_1
    move/from16 v19, v2

    .end local v2    # "hasTabs":Z
    .restart local v19    # "hasTabs":Z
    move v8, v4

    .line 2212
    .end local v4    # "margin":I
    .local v8, "margin":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v9, :cond_5

    .line 2213
    aget-char v2, v0, v1

    const/16 v4, 0x9

    if-ne v2, v4, :cond_4

    .line 2214
    const/4 v2, 0x1

    .line 2215
    .end local v19    # "hasTabs":Z
    .restart local v2    # "hasTabs":Z
    instance-of v4, v13, Landroid/text/Spanned;

    if-eqz v4, :cond_3

    .line 2216
    move-object v4, v13

    check-cast v4, Landroid/text/Spanned;

    .line 2217
    .local v4, "spanned":Landroid/text/Spanned;
    const-class v5, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v14, v15, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    .line 2219
    .local v5, "spanEnd":I
    move-object/from16 v16, v0

    .end local v0    # "chars":[C
    .local v16, "chars":[C
    const-class v0, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v14, v5, v0}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/TabStopSpan;

    .line 2221
    .local v0, "spans":[Landroid/text/style/TabStopSpan;
    move/from16 v17, v2

    .end local v2    # "hasTabs":Z
    .local v17, "hasTabs":Z
    array-length v2, v0

    if-lez v2, :cond_2

    .line 2222
    new-instance v2, Landroid/text/Layout$TabStops;

    move-object/from16 v18, v3

    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .local v18, "tabStops":Landroid/text/Layout$TabStops;
    const/high16 v3, 0x41a00000    # 20.0f

    invoke-direct {v2, v3, v0}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v2

    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_3

    .line 2221
    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_2
    move-object/from16 v18, v3

    .line 2224
    .end local v0    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "spanEnd":I
    :goto_3
    move-object/from16 v18, v3

    goto :goto_4

    .line 2215
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .local v0, "chars":[C
    .local v2, "hasTabs":Z
    :cond_3
    move-object/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v2    # "hasTabs":Z
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v17    # "hasTabs":Z
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_4

    .line 2212
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v19    # "hasTabs":Z
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v16    # "chars":[C
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "chars":[C
    .restart local v3    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v18, v3

    .end local v0    # "chars":[C
    .end local v3    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "chars":[C
    .restart local v18    # "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v17, v19

    .line 2228
    .end local v1    # "i":I
    .end local v19    # "hasTabs":Z
    .restart local v17    # "hasTabs":Z
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

    .end local v8    # "margin":I
    .local v21, "margin":I
    move/from16 v8, v17

    move/from16 v22, v9

    .end local v9    # "len":I
    .local v22, "len":I
    move-object/from16 v9, v18

    move-object/from16 v23, v10

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .local v23, "mt":Landroid/text/MeasuredParagraph;
    move v10, v0

    move/from16 v11, v19

    move-object v13, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v13, "tl":Landroid/text/TextLine;
    move/from16 v12, v20

    :try_start_3
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2231
    move/from16 v4, v21

    .end local v21    # "margin":I
    .local v4, "margin":I
    int-to-float v0, v4

    const/4 v1, 0x0

    invoke-virtual {v13, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-float/2addr v0, v1

    .line 2233
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2234
    if-eqz v23, :cond_6

    .line 2235
    invoke-virtual/range {v23 .. v23}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 2231
    :cond_6
    return v0

    .line 2233
    .end local v4    # "margin":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v16    # "chars":[C
    .end local v17    # "hasTabs":Z
    .end local v18    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v22    # "len":I
    :catchall_1
    move-exception v0

    move-object/from16 v1, v23

    goto :goto_5

    .end local v13    # "tl":Landroid/text/TextLine;
    .end local v23    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v12    # "tl":Landroid/text/TextLine;
    :catchall_2
    move-exception v0

    move-object/from16 v23, v10

    move-object v13, v12

    move-object/from16 v1, v23

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .end local v12    # "tl":Landroid/text/TextLine;
    .restart local v13    # "tl":Landroid/text/TextLine;
    .restart local v23    # "mt":Landroid/text/MeasuredParagraph;
    goto :goto_5

    .end local v13    # "tl":Landroid/text/TextLine;
    .end local v23    # "mt":Landroid/text/MeasuredParagraph;
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    .restart local v12    # "tl":Landroid/text/TextLine;
    :catchall_3
    move-exception v0

    move-object v13, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .restart local v13    # "tl":Landroid/text/TextLine;
    :goto_5
    invoke-static {v13}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2234
    if-eqz v1, :cond_7

    .line 2235
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 2237
    :cond_7
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 5
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .line 2319
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 2320
    .local v0, "nh":F
    const/4 v1, 0x0

    .line 2322
    .local v1, "alltabs":Z
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_4

    .line 2323
    if-nez p4, :cond_0

    .line 2324
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 2325
    const/4 v1, 0x1

    .line 2328
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p4

    if-ge v2, v3, :cond_3

    .line 2329
    if-nez v1, :cond_1

    .line 2330
    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_1

    .line 2331
    goto :goto_1

    .line 2334
    :cond_1
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 2336
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_2

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_2

    .line 2337
    int-to-float v0, v3

    .line 2328
    .end local v3    # "where":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2340
    .end local v2    # "i":I
    :cond_3
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_4

    .line 2341
    return v0

    .line 2344
    :cond_4
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method


# virtual methods
.method public blacklist addSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 2694
    sget-boolean v0, Lcom/samsung/android/rune/ViewRune;->WIDGET_MULTIPLE_PEN_TEXT_SUPPORTED:Z

    if-nez v0, :cond_0

    .line 2695
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 2697
    :cond_0
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2699
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 332
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 333
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .line 347
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 348
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v9

    .line 349
    .local v9, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v10

    .line 350
    .local v10, "lastLine":I
    if-gez v10, :cond_0

    return-void

    .line 352
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, v9

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 354
    invoke-virtual {p0, p1, v9, v10}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 355
    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 32
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .line 624
    move-object/from16 v0, p0

    move-object/from16 v13, p1

    move/from16 v14, p4

    move/from16 v15, p5

    iget-boolean v1, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_a

    .line 625
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v1, :cond_0

    .line 626
    new-instance v1, Landroid/text/SpanSet;

    const-class v2, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v1, v2}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 629
    :cond_0
    iget-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v12, v1

    check-cast v12, Landroid/text/Spanned;

    .line 630
    .local v12, "buffer":Landroid/text/Spanned;
    invoke-interface {v12}, Landroid/text/Spanned;->length()I

    move-result v11

    .line 631
    .local v11, "textLength":I
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v12, v2, v11}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 633
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v1, :cond_9

    .line 634
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    .line 635
    .local v1, "previousLineBottom":I
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 636
    .local v2, "previousLineEnd":I
    sget-object v3, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 637
    .local v3, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v4, 0x0

    .line 638
    .local v4, "spansLength":I
    iget-object v10, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 639
    .local v10, "paint":Landroid/text/TextPaint;
    const/4 v5, 0x0

    .line 640
    .local v5, "spanEnd":I
    iget v9, v0, Landroid/text/Layout;->mWidth:I

    .line 641
    .local v9, "width":I
    move/from16 v6, p5

    move v8, v6

    .local v8, "i":I
    :goto_0
    move/from16 v7, p6

    if-gt v8, v7, :cond_8

    .line 642
    move v6, v2

    .line 643
    .local v6, "start":I
    move/from16 v16, v2

    .end local v2    # "previousLineEnd":I
    .local v16, "previousLineEnd":I
    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 644
    .local v2, "end":I
    move/from16 v16, v2

    .line 646
    move/from16 v17, v4

    move v4, v6

    .end local v6    # "start":I
    .local v4, "start":I
    .local v17, "spansLength":I
    move v6, v1

    .line 647
    .local v6, "ltop":I
    move/from16 v18, v1

    .end local v1    # "previousLineBottom":I
    .local v18, "previousLineBottom":I
    add-int/lit8 v1, v8, 0x1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v19

    .line 648
    .local v19, "lbottom":I
    move/from16 v18, v19

    .line 649
    invoke-virtual {v0, v8}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int v20, v19, v1

    .line 651
    .local v20, "lbaseline":I
    if-lt v2, v5, :cond_6

    .line 654
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v4, v11}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    .line 656
    .end local v5    # "spanEnd":I
    .local v1, "spanEnd":I
    const/4 v5, 0x0

    .line 658
    .end local v17    # "spansLength":I
    .local v5, "spansLength":I
    if-ne v4, v2, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v21, v1

    move-object/from16 v17, v3

    move v7, v5

    goto :goto_4

    .line 661
    :cond_2
    :goto_1
    const/16 v17, 0x0

    move/from16 v21, v1

    move/from16 v1, v17

    .local v1, "j":I
    .local v21, "spanEnd":I
    :goto_2
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v7, :cond_5

    .line 664
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanStarts:[I

    aget v7, v7, v1

    if-ge v7, v2, :cond_4

    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spanEnds:[I

    aget v7, v7, v1

    if-gt v7, v4, :cond_3

    .line 665
    goto :goto_3

    .line 666
    :cond_3
    iget-object v7, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v7, v7, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v7, [Landroid/text/style/LineBackgroundSpan;

    aget-object v7, v7, v1

    invoke-static {v3, v5, v7}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    move-object v3, v7

    check-cast v3, [Landroid/text/style/ParagraphStyle;

    .line 668
    add-int/lit8 v5, v5, 0x1

    .line 661
    :cond_4
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move/from16 v7, p6

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    move v7, v5

    goto :goto_4

    .line 651
    .end local v1    # "j":I
    .end local v21    # "spanEnd":I
    .local v5, "spanEnd":I
    .restart local v17    # "spansLength":I
    :cond_6
    move/from16 v21, v5

    move/from16 v7, v17

    move-object/from16 v17, v3

    .line 673
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spanEnd":I
    .local v7, "spansLength":I
    .local v17, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v21    # "spanEnd":I
    :goto_4
    const/4 v1, 0x0

    move v5, v1

    .local v5, "n":I
    :goto_5
    if-ge v5, v7, :cond_7

    .line 674
    aget-object v1, v17, v5

    move-object/from16 v22, v1

    check-cast v22, Landroid/text/style/LineBackgroundSpan;

    .line 675
    .local v22, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/16 v23, 0x0

    move-object/from16 v1, v22

    move/from16 v24, v2

    .end local v2    # "end":I
    .local v24, "end":I
    move-object/from16 v2, p1

    move-object v3, v10

    move/from16 v25, v4

    .end local v4    # "start":I
    .local v25, "start":I
    move/from16 v4, v23

    move/from16 v23, v5

    .end local v5    # "n":I
    .local v23, "n":I
    move v5, v9

    move/from16 v26, v7

    .end local v7    # "spansLength":I
    .local v26, "spansLength":I
    move/from16 v7, v20

    move/from16 v27, v8

    .end local v8    # "i":I
    .local v27, "i":I
    move/from16 v8, v19

    move/from16 v28, v9

    .end local v9    # "width":I
    .local v28, "width":I
    move-object v9, v12

    move-object/from16 v29, v10

    .end local v10    # "paint":Landroid/text/TextPaint;
    .local v29, "paint":Landroid/text/TextPaint;
    move/from16 v10, v25

    move/from16 v30, v11

    .end local v11    # "textLength":I
    .local v30, "textLength":I
    move/from16 v11, v24

    move-object/from16 v31, v12

    .end local v12    # "buffer":Landroid/text/Spanned;
    .local v31, "buffer":Landroid/text/Spanned;
    move/from16 v12, v27

    invoke-interface/range {v1 .. v12}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 673
    .end local v22    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    add-int/lit8 v5, v23, 0x1

    move/from16 v2, v24

    move/from16 v4, v25

    move/from16 v7, v26

    move/from16 v8, v27

    move/from16 v9, v28

    move-object/from16 v10, v29

    move/from16 v11, v30

    move-object/from16 v12, v31

    .end local v23    # "n":I
    .restart local v5    # "n":I
    goto :goto_5

    .end local v24    # "end":I
    .end local v25    # "start":I
    .end local v26    # "spansLength":I
    .end local v27    # "i":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .restart local v2    # "end":I
    .restart local v4    # "start":I
    .restart local v7    # "spansLength":I
    .restart local v8    # "i":I
    .restart local v9    # "width":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_7
    move/from16 v24, v2

    move/from16 v25, v4

    move/from16 v23, v5

    move/from16 v26, v7

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    .line 641
    .end local v2    # "end":I
    .end local v4    # "start":I
    .end local v5    # "n":I
    .end local v6    # "ltop":I
    .end local v7    # "spansLength":I
    .end local v8    # "i":I
    .end local v9    # "width":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .end local v19    # "lbottom":I
    .end local v20    # "lbaseline":I
    .restart local v26    # "spansLength":I
    .restart local v27    # "i":I
    .restart local v28    # "width":I
    .restart local v29    # "paint":Landroid/text/TextPaint;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    add-int/lit8 v8, v27, 0x1

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v1, v18

    move/from16 v5, v21

    move/from16 v4, v26

    .end local v27    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_0

    .end local v16    # "previousLineEnd":I
    .end local v17    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v18    # "previousLineBottom":I
    .end local v21    # "spanEnd":I
    .end local v26    # "spansLength":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .local v1, "previousLineBottom":I
    .local v2, "previousLineEnd":I
    .restart local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v4, "spansLength":I
    .local v5, "spanEnd":I
    .restart local v9    # "width":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_8
    move/from16 v18, v1

    move/from16 v16, v2

    move/from16 v17, v4

    move/from16 v27, v8

    move/from16 v28, v9

    move-object/from16 v29, v10

    move/from16 v30, v11

    move-object/from16 v31, v12

    .end local v1    # "previousLineBottom":I
    .end local v2    # "previousLineEnd":I
    .end local v4    # "spansLength":I
    .end local v8    # "i":I
    .end local v9    # "width":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v16    # "previousLineEnd":I
    .local v17, "spansLength":I
    .restart local v18    # "previousLineBottom":I
    .restart local v27    # "i":I
    .restart local v28    # "width":I
    .restart local v29    # "paint":Landroid/text/TextPaint;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    goto :goto_6

    .line 633
    .end local v3    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "spanEnd":I
    .end local v16    # "previousLineEnd":I
    .end local v17    # "spansLength":I
    .end local v18    # "previousLineBottom":I
    .end local v27    # "i":I
    .end local v28    # "width":I
    .end local v29    # "paint":Landroid/text/TextPaint;
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    .restart local v11    # "textLength":I
    .restart local v12    # "buffer":Landroid/text/Spanned;
    :cond_9
    move/from16 v30, v11

    move-object/from16 v31, v12

    .line 681
    .end local v11    # "textLength":I
    .end local v12    # "buffer":Landroid/text/Spanned;
    .restart local v30    # "textLength":I
    .restart local v31    # "buffer":Landroid/text/Spanned;
    :goto_6
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 686
    .end local v30    # "textLength":I
    .end local v31    # "buffer":Landroid/text/Spanned;
    :cond_a
    if-eqz p2, :cond_c

    .line 687
    const/4 v1, 0x0

    if-eqz v14, :cond_b

    int-to-float v2, v14

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 688
    :cond_b
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 689
    if-eqz v14, :cond_c

    neg-int v2, v14

    int-to-float v2, v2

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 691
    :cond_c
    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .locals 43
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 449
    move-object/from16 v15, p0

    move/from16 v14, p2

    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 450
    .local v0, "previousLineBottom":I
    invoke-virtual {v15, v14}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 451
    .local v1, "previousLineEnd":I
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 452
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v3, 0x0

    .line 453
    .local v3, "spanEnd":I
    iget-object v13, v15, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 454
    .local v13, "paint":Landroid/text/TextPaint;
    iget-object v4, v15, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v13, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 455
    iget-object v12, v15, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 457
    .local v12, "buf":Ljava/lang/CharSequence;
    iget-object v4, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 458
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 459
    .local v5, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v6, 0x0

    .line 461
    .local v6, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 465
    .local v11, "tl":Landroid/text/TextLine;
    move/from16 v7, p2

    move-object v10, v5

    move v9, v7

    .end local v5    # "tabStops":Landroid/text/Layout$TabStops;
    .local v9, "lineNum":I
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v8, p3

    if-gt v9, v8, :cond_1a

    .line 466
    move v7, v1

    .line 467
    .local v7, "start":I
    add-int/lit8 v5, v9, 0x1

    invoke-virtual {v15, v5}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 468
    invoke-direct {v15, v9}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v20

    .line 469
    .local v20, "justify":Z
    invoke-direct {v15, v9, v7, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v21

    .line 470
    .local v21, "end":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 471
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v5

    invoke-virtual {v13, v5}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 473
    move v5, v0

    .line 474
    .local v5, "ltop":I
    move/from16 v16, v0

    .end local v0    # "previousLineBottom":I
    .local v16, "previousLineBottom":I
    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v15, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v22

    .line 475
    .local v22, "lbottom":I
    move/from16 v23, v22

    .line 476
    .end local v16    # "previousLineBottom":I
    .local v23, "previousLineBottom":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v0

    sub-int v0, v22, v0

    .line 478
    .local v0, "lbaseline":I
    move/from16 v24, v5

    .end local v5    # "ltop":I
    .local v24, "ltop":I
    invoke-virtual {v15, v9}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 479
    .local v5, "dir":I
    const/16 v16, 0x0

    .line 480
    .local v16, "left":I
    move/from16 v17, v0

    .end local v0    # "lbaseline":I
    .local v17, "lbaseline":I
    iget v0, v15, Landroid/text/Layout;->mWidth:I

    .line 482
    .local v0, "right":I
    move/from16 v18, v0

    .end local v0    # "right":I
    .local v18, "right":I
    iget-boolean v0, v15, Landroid/text/Layout;->mSpannedText:Z

    move-object/from16 v19, v11

    .end local v11    # "tl":Landroid/text/TextLine;
    .local v19, "tl":Landroid/text/TextLine;
    if-eqz v0, :cond_d

    .line 483
    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    .line 484
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v11

    .line 485
    .local v11, "textLength":I
    if-eqz v7, :cond_1

    move/from16 v27, v1

    .end local v1    # "previousLineEnd":I
    .local v27, "previousLineEnd":I
    add-int/lit8 v1, v7, -0x1

    invoke-interface {v12, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-object/from16 v28, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v28, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_2

    .end local v27    # "previousLineEnd":I
    .end local v28    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v1    # "previousLineEnd":I
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_1
    move/from16 v27, v1

    move-object/from16 v28, v2

    .end local v1    # "previousLineEnd":I
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v27    # "previousLineEnd":I
    .restart local v28    # "spans":[Landroid/text/style/ParagraphStyle;
    :goto_1
    const/4 v1, 0x1

    :goto_2
    move/from16 v29, v1

    .line 497
    .local v29, "isFirstParaLine":Z
    if-lt v7, v3, :cond_6

    if-eq v9, v14, :cond_3

    if-eqz v29, :cond_2

    goto :goto_3

    :cond_2
    const/16 v26, 0x1

    goto :goto_6

    .line 498
    :cond_3
    :goto_3
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v7, v11, v1}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 500
    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-static {v0, v7, v3, v1}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [Landroid/text/style/ParagraphStyle;

    .line 502
    .end local v28    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v1, v15, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 503
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v1, "paraAlign":Landroid/text/Layout$Alignment;
    array-length v4, v2

    const/16 v26, 0x1

    add-int/lit8 v4, v4, -0x1

    .local v4, "n":I
    :goto_4
    if-ltz v4, :cond_5

    .line 504
    move-object/from16 v28, v1

    .end local v1    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v28, "paraAlign":Landroid/text/Layout$Alignment;
    aget-object v1, v2, v4

    instance-of v1, v1, Landroid/text/style/AlignmentSpan;

    if-eqz v1, :cond_4

    .line 505
    aget-object v1, v2, v4

    check-cast v1, Landroid/text/style/AlignmentSpan;

    invoke-interface {v1}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 506
    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v1    # "paraAlign":Landroid/text/Layout$Alignment;
    move-object v4, v1

    goto :goto_5

    .line 503
    .end local v1    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_4
    add-int/lit8 v4, v4, -0x1

    move-object/from16 v1, v28

    goto :goto_4

    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v1    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_5
    move-object/from16 v28, v1

    .end local v1    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    move-object/from16 v4, v28

    .line 510
    .end local v28    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    :goto_5
    const/4 v1, 0x0

    move/from16 v31, v1

    move-object v6, v2

    move/from16 v28, v3

    move-object/from16 v30, v4

    .end local v6    # "tabStopsIsInitialized":Z
    .local v1, "tabStopsIsInitialized":Z
    goto :goto_7

    .line 497
    .end local v1    # "tabStopsIsInitialized":Z
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v6    # "tabStopsIsInitialized":Z
    .local v28, "spans":[Landroid/text/style/ParagraphStyle;
    :cond_6
    const/16 v26, 0x1

    .line 515
    :goto_6
    move-object/from16 v30, v4

    move/from16 v31, v6

    move-object/from16 v6, v28

    move/from16 v28, v3

    .end local v3    # "spanEnd":I
    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    .local v28, "spanEnd":I
    .local v30, "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "tabStopsIsInitialized":Z
    :goto_7
    array-length v4, v6

    .line 516
    .local v4, "length":I
    move/from16 v1, v29

    .line 517
    .local v1, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_8
    if-ge v2, v4, :cond_9

    .line 518
    aget-object v3, v6, v2

    instance-of v3, v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v3, :cond_7

    .line 519
    aget-object v3, v6, v2

    check-cast v3, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v3}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v3

    .line 520
    .local v3, "count":I
    move/from16 v32, v1

    .end local v1    # "useFirstLineMargin":Z
    .local v32, "useFirstLineMargin":Z
    aget-object v1, v6, v2

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v15, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 523
    .local v1, "startLine":I
    move-object/from16 v33, v0

    .end local v0    # "sp":Landroid/text/Spanned;
    .local v33, "sp":Landroid/text/Spanned;
    add-int v0, v1, v3

    if-ge v9, v0, :cond_8

    .line 524
    const/4 v0, 0x1

    .line 525
    .end local v32    # "useFirstLineMargin":Z
    .local v0, "useFirstLineMargin":Z
    move v3, v0

    goto :goto_9

    .line 518
    .end local v3    # "count":I
    .end local v33    # "sp":Landroid/text/Spanned;
    .local v0, "sp":Landroid/text/Spanned;
    .local v1, "useFirstLineMargin":Z
    :cond_7
    move-object/from16 v33, v0

    move/from16 v32, v1

    .line 517
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "useFirstLineMargin":Z
    .restart local v32    # "useFirstLineMargin":Z
    .restart local v33    # "sp":Landroid/text/Spanned;
    :cond_8
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v32

    move-object/from16 v0, v33

    goto :goto_8

    .end local v32    # "useFirstLineMargin":Z
    .end local v33    # "sp":Landroid/text/Spanned;
    .restart local v0    # "sp":Landroid/text/Spanned;
    .restart local v1    # "useFirstLineMargin":Z
    :cond_9
    move-object/from16 v33, v0

    move/from16 v32, v1

    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v1    # "useFirstLineMargin":Z
    .restart local v32    # "useFirstLineMargin":Z
    .restart local v33    # "sp":Landroid/text/Spanned;
    move/from16 v3, v32

    .line 529
    .end local v2    # "n":I
    .end local v32    # "useFirstLineMargin":Z
    .local v3, "useFirstLineMargin":Z
    :goto_9
    const/4 v0, 0x0

    move v2, v0

    move/from16 v34, v16

    move/from16 v32, v18

    .end local v16    # "left":I
    .end local v18    # "right":I
    .restart local v2    # "n":I
    .local v32, "right":I
    .local v34, "left":I
    :goto_a
    if-ge v2, v4, :cond_c

    .line 530
    aget-object v0, v6, v2

    instance-of v0, v0, Landroid/text/style/LeadingMarginSpan;

    if-eqz v0, :cond_b

    .line 531
    aget-object v0, v6, v2

    move-object v1, v0

    check-cast v1, Landroid/text/style/LeadingMarginSpan;

    .line 532
    .local v1, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v0, -0x1

    if-ne v5, v0, :cond_a

    .line 533
    move/from16 v35, v17

    .end local v17    # "lbaseline":I
    .local v35, "lbaseline":I
    move-object v0, v1

    move-object v15, v1

    .end local v1    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v15, "margin":Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v1, p1

    move/from16 v36, v2

    .end local v2    # "n":I
    .local v36, "n":I
    move-object v2, v13

    move v14, v3

    .end local v3    # "useFirstLineMargin":Z
    .local v14, "useFirstLineMargin":Z
    move/from16 v3, v32

    move/from16 v37, v4

    .end local v4    # "length":I
    .local v37, "length":I
    move v4, v5

    move-object/from16 v38, v6

    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v38, "spans":[Landroid/text/style/ParagraphStyle;
    move/from16 v6, v35

    move/from16 v39, v7

    .end local v7    # "start":I
    .local v39, "start":I
    move/from16 v7, v22

    move-object v8, v12

    move/from16 v40, v9

    .end local v9    # "lineNum":I
    .local v40, "lineNum":I
    move/from16 v9, v39

    move-object/from16 v41, v10

    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v10, v21

    move-object/from16 v42, v19

    move/from16 v19, v11

    .end local v11    # "textLength":I
    .local v19, "textLength":I
    .local v42, "tl":Landroid/text/TextLine;
    move/from16 v11, v29

    move-object/from16 v25, v12

    .end local v12    # "buf":Ljava/lang/CharSequence;
    .local v25, "buf":Ljava/lang/CharSequence;
    move-object/from16 v12, p0

    move/from16 v26, v5

    move/from16 v5, v24

    .end local v24    # "ltop":I
    .local v5, "ltop":I
    .local v26, "dir":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 536
    invoke-interface {v15, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0

    sub-int v32, v32, v0

    move-object/from16 v2, p0

    move-object v0, v13

    move v1, v14

    goto/16 :goto_b

    .line 538
    .end local v14    # "useFirstLineMargin":Z
    .end local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v25    # "buf":Ljava/lang/CharSequence;
    .end local v26    # "dir":I
    .end local v35    # "lbaseline":I
    .end local v36    # "n":I
    .end local v37    # "length":I
    .end local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v39    # "start":I
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .restart local v1    # "margin":Landroid/text/style/LeadingMarginSpan;
    .restart local v2    # "n":I
    .restart local v3    # "useFirstLineMargin":Z
    .restart local v4    # "length":I
    .local v5, "dir":I
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "start":I
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "textLength":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v17    # "lbaseline":I
    .local v19, "tl":Landroid/text/TextLine;
    .restart local v24    # "ltop":I
    :cond_a
    move-object v15, v1

    move/from16 v36, v2

    move v14, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    .end local v1    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v2    # "n":I
    .end local v3    # "useFirstLineMargin":Z
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "start":I
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "textLength":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v17    # "lbaseline":I
    .end local v24    # "ltop":I
    .local v5, "ltop":I
    .restart local v14    # "useFirstLineMargin":Z
    .restart local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v19, "textLength":I
    .restart local v25    # "buf":Ljava/lang/CharSequence;
    .restart local v26    # "dir":I
    .restart local v35    # "lbaseline":I
    .restart local v36    # "n":I
    .restart local v37    # "length":I
    .restart local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v39    # "start":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    move-object v6, v15

    move-object/from16 v7, p1

    move-object v8, v13

    move/from16 v9, v34

    move/from16 v10, v26

    move v11, v5

    move/from16 v12, v35

    move-object v0, v13

    .end local v13    # "paint":Landroid/text/TextPaint;
    .local v0, "paint":Landroid/text/TextPaint;
    move/from16 v13, v22

    move v1, v14

    .end local v14    # "useFirstLineMargin":Z
    .local v1, "useFirstLineMargin":Z
    move-object/from16 v14, v25

    move-object/from16 v2, p0

    move-object v3, v15

    .end local v15    # "margin":Landroid/text/style/LeadingMarginSpan;
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    move/from16 v15, v39

    move/from16 v16, v21

    move/from16 v17, v29

    move-object/from16 v18, p0

    invoke-interface/range {v6 .. v18}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 541
    invoke-interface {v3, v1}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v34, v34, v4

    goto :goto_b

    .line 530
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v1    # "useFirstLineMargin":Z
    .end local v25    # "buf":Ljava/lang/CharSequence;
    .end local v26    # "dir":I
    .end local v35    # "lbaseline":I
    .end local v36    # "n":I
    .end local v37    # "length":I
    .end local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v39    # "start":I
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .restart local v2    # "n":I
    .local v3, "useFirstLineMargin":Z
    .restart local v4    # "length":I
    .local v5, "dir":I
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "start":I
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "textLength":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .restart local v17    # "lbaseline":I
    .local v19, "tl":Landroid/text/TextLine;
    .restart local v24    # "ltop":I
    :cond_b
    move/from16 v36, v2

    move v1, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    .line 529
    .end local v2    # "n":I
    .end local v3    # "useFirstLineMargin":Z
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "start":I
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "textLength":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v17    # "lbaseline":I
    .end local v24    # "ltop":I
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .restart local v1    # "useFirstLineMargin":Z
    .local v5, "ltop":I
    .local v19, "textLength":I
    .restart local v25    # "buf":Ljava/lang/CharSequence;
    .restart local v26    # "dir":I
    .restart local v35    # "lbaseline":I
    .restart local v36    # "n":I
    .restart local v37    # "length":I
    .restart local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v39    # "start":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    :goto_b
    add-int/lit8 v3, v36, 0x1

    move/from16 v14, p2

    move/from16 v8, p3

    move-object v13, v0

    move-object v15, v2

    move v2, v3

    move/from16 v24, v5

    move/from16 v11, v19

    move-object/from16 v12, v25

    move/from16 v5, v26

    move/from16 v17, v35

    move/from16 v4, v37

    move-object/from16 v6, v38

    move/from16 v7, v39

    move/from16 v9, v40

    move-object/from16 v10, v41

    move-object/from16 v19, v42

    const/16 v26, 0x1

    move v3, v1

    .end local v36    # "n":I
    .local v3, "n":I
    goto/16 :goto_a

    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v1    # "useFirstLineMargin":Z
    .end local v25    # "buf":Ljava/lang/CharSequence;
    .end local v26    # "dir":I
    .end local v35    # "lbaseline":I
    .end local v37    # "length":I
    .end local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v39    # "start":I
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .restart local v2    # "n":I
    .local v3, "useFirstLineMargin":Z
    .restart local v4    # "length":I
    .local v5, "dir":I
    .restart local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v7    # "start":I
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v11    # "textLength":I
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .restart local v17    # "lbaseline":I
    .local v19, "tl":Landroid/text/TextLine;
    .restart local v24    # "ltop":I
    :cond_c
    move/from16 v36, v2

    move v1, v3

    move/from16 v37, v4

    move/from16 v26, v5

    move-object/from16 v38, v6

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    move/from16 v19, v11

    .end local v2    # "n":I
    .end local v3    # "useFirstLineMargin":Z
    .end local v4    # "length":I
    .end local v6    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "start":I
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v11    # "textLength":I
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v17    # "lbaseline":I
    .end local v24    # "ltop":I
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .restart local v1    # "useFirstLineMargin":Z
    .local v5, "ltop":I
    .local v19, "textLength":I
    .restart local v25    # "buf":Ljava/lang/CharSequence;
    .restart local v26    # "dir":I
    .restart local v35    # "lbaseline":I
    .restart local v36    # "n":I
    .restart local v37    # "length":I
    .restart local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v39    # "start":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    move/from16 v3, v28

    move-object/from16 v4, v30

    move/from16 v6, v31

    move-object/from16 v1, v38

    goto :goto_c

    .line 482
    .end local v0    # "paint":Landroid/text/TextPaint;
    .end local v25    # "buf":Ljava/lang/CharSequence;
    .end local v26    # "dir":I
    .end local v27    # "previousLineEnd":I
    .end local v28    # "spanEnd":I
    .end local v29    # "isFirstParaLine":Z
    .end local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v31    # "tabStopsIsInitialized":Z
    .end local v32    # "right":I
    .end local v33    # "sp":Landroid/text/Spanned;
    .end local v34    # "left":I
    .end local v35    # "lbaseline":I
    .end local v36    # "n":I
    .end local v37    # "length":I
    .end local v38    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v39    # "start":I
    .end local v40    # "lineNum":I
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v42    # "tl":Landroid/text/TextLine;
    .local v1, "previousLineEnd":I
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "spanEnd":I
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    .local v5, "dir":I
    .local v6, "tabStopsIsInitialized":Z
    .restart local v7    # "start":I
    .restart local v9    # "lineNum":I
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v12    # "buf":Ljava/lang/CharSequence;
    .restart local v13    # "paint":Landroid/text/TextPaint;
    .restart local v16    # "left":I
    .restart local v17    # "lbaseline":I
    .restart local v18    # "right":I
    .local v19, "tl":Landroid/text/TextLine;
    .restart local v24    # "ltop":I
    :cond_d
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v26, v5

    move/from16 v39, v7

    move/from16 v40, v9

    move-object/from16 v41, v10

    move-object/from16 v25, v12

    move-object v0, v13

    move-object v2, v15

    move/from16 v35, v17

    move-object/from16 v42, v19

    move/from16 v5, v24

    .end local v1    # "previousLineEnd":I
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v7    # "start":I
    .end local v9    # "lineNum":I
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v12    # "buf":Ljava/lang/CharSequence;
    .end local v13    # "paint":Landroid/text/TextPaint;
    .end local v17    # "lbaseline":I
    .end local v19    # "tl":Landroid/text/TextLine;
    .end local v24    # "ltop":I
    .restart local v0    # "paint":Landroid/text/TextPaint;
    .local v5, "ltop":I
    .restart local v25    # "buf":Ljava/lang/CharSequence;
    .restart local v26    # "dir":I
    .restart local v27    # "previousLineEnd":I
    .local v28, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v35    # "lbaseline":I
    .restart local v39    # "start":I
    .restart local v40    # "lineNum":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v42    # "tl":Landroid/text/TextLine;
    move/from16 v34, v16

    move/from16 v32, v18

    move-object/from16 v1, v28

    .line 547
    .end local v16    # "left":I
    .end local v18    # "right":I
    .end local v28    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v32    # "right":I
    .restart local v34    # "left":I
    :goto_c
    move/from16 v15, v40

    .end local v40    # "lineNum":I
    .local v15, "lineNum":I
    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v24

    .line 549
    .local v24, "hasTab":Z
    if-eqz v24, :cond_f

    if-nez v6, :cond_f

    .line 550
    const/high16 v7, 0x41a00000    # 20.0f

    move-object/from16 v8, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-nez v8, :cond_e

    .line 551
    new-instance v9, Landroid/text/Layout$TabStops;

    invoke-direct {v9, v7, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v9

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_d

    .line 553
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_e
    invoke-virtual {v8, v7, v1}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    move-object v10, v8

    .line 555
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_d
    const/4 v6, 0x1

    move/from16 v28, v6

    move-object v14, v10

    goto :goto_e

    .line 549
    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_f
    move-object/from16 v8, v41

    .line 559
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v8    # "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v28, v6

    move-object v14, v8

    .end local v6    # "tabStopsIsInitialized":Z
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    .local v14, "tabStops":Landroid/text/Layout$TabStops;
    .local v28, "tabStopsIsInitialized":Z
    :goto_e
    move-object v6, v4

    .line 560
    .local v6, "align":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_11

    .line 561
    move/from16 v13, v26

    const/4 v7, 0x1

    .end local v26    # "dir":I
    .local v13, "dir":I
    if-ne v13, v7, :cond_10

    .line 562
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_f

    :cond_10
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_f
    move-object v6, v8

    move-object v12, v6

    goto :goto_11

    .line 563
    .end local v13    # "dir":I
    .restart local v26    # "dir":I
    :cond_11
    move/from16 v13, v26

    const/4 v7, 0x1

    .end local v26    # "dir":I
    .restart local v13    # "dir":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v8, :cond_13

    .line 564
    if-ne v13, v7, :cond_12

    .line 565
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_10

    :cond_12
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_10
    move-object v6, v8

    move-object v12, v6

    goto :goto_11

    .line 563
    :cond_13
    move-object v12, v6

    .line 570
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .local v12, "align":Landroid/text/Layout$Alignment;
    :goto_11
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v12, v6, :cond_15

    .line 571
    if-ne v13, v7, :cond_14

    .line 572
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 573
    .local v6, "indentWidth":I
    add-int v7, v34, v6

    move/from16 v26, v6

    move v11, v7

    .local v7, "x":I
    goto :goto_12

    .line 575
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_14
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    .line 576
    .restart local v6    # "indentWidth":I
    sub-int v7, v32, v6

    move/from16 v26, v6

    move v11, v7

    .restart local v7    # "x":I
    goto :goto_12

    .line 579
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_15
    const/4 v6, 0x0

    invoke-direct {v2, v15, v14, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 580
    .local v6, "max":I
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v12, v8, :cond_17

    .line 581
    if-ne v13, v7, :cond_16

    .line 582
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    .line 583
    .local v7, "indentWidth":I
    sub-int v8, v32, v6

    sub-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    .local v8, "x":I
    goto :goto_12

    .line 585
    .end local v7    # "indentWidth":I
    .end local v8    # "x":I
    :cond_16
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 586
    .restart local v7    # "indentWidth":I
    sub-int v8, v34, v6

    add-int/2addr v8, v7

    move/from16 v26, v7

    move v11, v8

    .restart local v8    # "x":I
    goto :goto_12

    .line 589
    .end local v7    # "indentWidth":I
    .end local v8    # "x":I
    :cond_17
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v2, v15, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 590
    .local v8, "indentWidth":I
    and-int/lit8 v6, v6, -0x2

    .line 591
    add-int v9, v32, v34

    sub-int/2addr v9, v6

    shr-int/lit8 v7, v9, 0x1

    add-int/2addr v7, v8

    move v11, v7

    move/from16 v26, v8

    .line 595
    .end local v6    # "max":I
    .end local v8    # "indentWidth":I
    .local v11, "x":I
    .local v26, "indentWidth":I
    :goto_12
    invoke-virtual {v2, v15}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 596
    .local v10, "directions":Landroid/text/Layout$Directions;
    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v10, v6, :cond_18

    iget-boolean v6, v2, Landroid/text/Layout;->mSpannedText:Z

    if-nez v6, :cond_18

    if-nez v24, :cond_18

    if-nez v20, :cond_18

    .line 598
    int-to-float v9, v11

    move/from16 v8, v35

    .end local v35    # "lbaseline":I
    .local v8, "lbaseline":I
    int-to-float v7, v8

    move-object/from16 v6, p1

    move/from16 v16, v7

    move-object/from16 v7, v25

    move/from16 v29, v8

    .end local v8    # "lbaseline":I
    .local v29, "lbaseline":I
    move/from16 v8, v39

    move/from16 v17, v9

    move/from16 v9, v21

    move-object/from16 v30, v10

    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .local v30, "directions":Landroid/text/Layout$Directions;
    move/from16 v10, v17

    move-object/from16 v31, v1

    move v1, v11

    .end local v11    # "x":I
    .local v1, "x":I
    .local v31, "spans":[Landroid/text/style/ParagraphStyle;
    move/from16 v11, v16

    move-object/from16 v33, v12

    .end local v12    # "align":Landroid/text/Layout$Alignment;
    .local v33, "align":Landroid/text/Layout$Alignment;
    move-object v12, v0

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move-object/from16 v36, v14

    move/from16 v37, v15

    move-object/from16 v7, v42

    goto :goto_14

    .line 596
    .end local v29    # "lbaseline":I
    .end local v30    # "directions":Landroid/text/Layout$Directions;
    .end local v31    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "align":Landroid/text/Layout$Alignment;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    .restart local v11    # "x":I
    .restart local v12    # "align":Landroid/text/Layout$Alignment;
    .restart local v35    # "lbaseline":I
    :cond_18
    move-object/from16 v31, v1

    move-object/from16 v30, v10

    move v1, v11

    move-object/from16 v33, v12

    move/from16 v29, v35

    .line 600
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "x":I
    .end local v12    # "align":Landroid/text/Layout$Alignment;
    .end local v35    # "lbaseline":I
    .local v1, "x":I
    .restart local v29    # "lbaseline":I
    .restart local v30    # "directions":Landroid/text/Layout$Directions;
    .restart local v31    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v33    # "align":Landroid/text/Layout$Alignment;
    nop

    .line 601
    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v16

    .line 602
    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v6

    invoke-virtual {v2, v15}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v7

    add-int v17, v6, v7

    .line 603
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v18

    .line 600
    move-object/from16 v6, v42

    move-object v7, v0

    move-object/from16 v8, v25

    move/from16 v9, v39

    move/from16 v10, v21

    move v11, v13

    move-object/from16 v12, v30

    move/from16 v35, v13

    .end local v13    # "dir":I
    .local v35, "dir":I
    move/from16 v13, v24

    move-object/from16 v36, v14

    .end local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .local v36, "tabStops":Landroid/text/Layout$TabStops;
    move/from16 v37, v15

    .end local v15    # "lineNum":I
    .local v37, "lineNum":I
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    invoke-virtual/range {v6 .. v17}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 604
    if-eqz v20, :cond_19

    .line 605
    sub-int v6, v32, v34

    sub-int v6, v6, v26

    int-to-float v6, v6

    move-object/from16 v7, v42

    .end local v42    # "tl":Landroid/text/TextLine;
    .local v7, "tl":Landroid/text/TextLine;
    invoke-virtual {v7, v6}, Landroid/text/TextLine;->justify(F)V

    goto :goto_13

    .line 604
    .end local v7    # "tl":Landroid/text/TextLine;
    .restart local v42    # "tl":Landroid/text/TextLine;
    :cond_19
    move-object/from16 v7, v42

    .line 607
    .end local v42    # "tl":Landroid/text/TextLine;
    .restart local v7    # "tl":Landroid/text/TextLine;
    :goto_13
    int-to-float v6, v1

    move-object v14, v7

    move-object/from16 v15, p1

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v29

    move/from16 v19, v22

    invoke-virtual/range {v14 .. v19}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 465
    .end local v1    # "x":I
    .end local v5    # "ltop":I
    .end local v20    # "justify":Z
    .end local v21    # "end":I
    .end local v22    # "lbottom":I
    .end local v24    # "hasTab":Z
    .end local v26    # "indentWidth":I
    .end local v29    # "lbaseline":I
    .end local v30    # "directions":Landroid/text/Layout$Directions;
    .end local v32    # "right":I
    .end local v33    # "align":Landroid/text/Layout$Alignment;
    .end local v34    # "left":I
    .end local v35    # "dir":I
    .end local v39    # "start":I
    :goto_14
    add-int/lit8 v9, v37, 0x1

    move/from16 v14, p2

    move-object v13, v0

    move-object v15, v2

    move-object v11, v7

    move/from16 v0, v23

    move-object/from16 v12, v25

    move/from16 v1, v27

    move/from16 v6, v28

    move-object/from16 v2, v31

    move-object/from16 v10, v36

    .end local v37    # "lineNum":I
    .restart local v9    # "lineNum":I
    goto/16 :goto_0

    .end local v7    # "tl":Landroid/text/TextLine;
    .end local v23    # "previousLineBottom":I
    .end local v25    # "buf":Ljava/lang/CharSequence;
    .end local v27    # "previousLineEnd":I
    .end local v28    # "tabStopsIsInitialized":Z
    .end local v31    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v36    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "previousLineBottom":I
    .local v1, "previousLineEnd":I
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v6, "tabStopsIsInitialized":Z
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    .local v11, "tl":Landroid/text/TextLine;
    .local v12, "buf":Ljava/lang/CharSequence;
    .local v13, "paint":Landroid/text/TextPaint;
    :cond_1a
    move-object v7, v11

    .line 611
    .end local v9    # "lineNum":I
    .end local v11    # "tl":Landroid/text/TextLine;
    .restart local v7    # "tl":Landroid/text/TextLine;
    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 612
    return-void
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .line 842
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 16
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .line 1919
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Path;->reset()V

    .line 1921
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1922
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 1923
    .local v4, "top":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v5

    .line 1925
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 1926
    .local v6, "clamped":Z
    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 1928
    .local v8, "h1":F
    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 1929
    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    .line 1930
    .local v11, "caps":I
    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 1931
    .local v13, "fn":I
    const/4 v14, 0x0

    .line 1933
    .local v14, "dist":I
    if-nez v11, :cond_0

    if-eqz v13, :cond_2

    .line 1934
    :cond_0
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    .line 1936
    if-eqz v13, :cond_1

    .line 1937
    add-int/2addr v4, v14

    .line 1938
    :cond_1
    if-eqz v11, :cond_2

    .line 1939
    sub-int/2addr v5, v14

    .line 1942
    :cond_2
    cmpg-float v15, v8, v9

    if-gez v15, :cond_3

    .line 1943
    const/high16 v8, 0x3f000000    # 0.5f

    .line 1945
    :cond_3
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1946
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1948
    if-ne v11, v12, :cond_4

    .line 1949
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1950
    int-to-float v15, v14

    sub-float v15, v8, v15

    add-int v12, v5, v14

    int-to-float v12, v12

    invoke-virtual {v1, v15, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1951
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1952
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    .line 1953
    :cond_4
    if-ne v11, v10, :cond_5

    .line 1954
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1955
    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1957
    int-to-float v12, v14

    sub-float v12, v8, v12

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1958
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float/2addr v15, v9

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1960
    int-to-float v12, v14

    add-float/2addr v12, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v12, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1961
    int-to-float v12, v5

    invoke-virtual {v1, v8, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1964
    :cond_5
    :goto_0
    const/4 v12, 0x2

    if-ne v13, v12, :cond_6

    .line 1965
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1966
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1967
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1968
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1969
    :cond_6
    if-ne v13, v10, :cond_7

    .line 1970
    int-to-float v10, v4

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1971
    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1973
    int-to-float v10, v14

    sub-float v10, v8, v10

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1974
    int-to-float v10, v14

    add-float/2addr v10, v8

    sub-int v12, v4, v14

    int-to-float v12, v12

    add-float/2addr v12, v9

    invoke-virtual {v1, v10, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1976
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1977
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1979
    :cond_7
    :goto_1
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    .line 804
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .locals 1
    .param p1, "line"    # I

    .line 959
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    .line 824
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .locals 1
    .param p1, "cap"    # Z

    .line 835
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .line 968
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .line 1785
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
    .param p1, "line"    # I

    .line 1776
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
    .param p1, "line"    # I

    .line 1758
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getLineBottomWithoutSpacing(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1768
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
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 881
    if-eqz p2, :cond_0

    .line 882
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 883
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 884
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 885
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 887
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
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
    .param p1, "line"    # I

    .line 1720
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .locals 1
    .param p1, "line"    # I

    .line 1796
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineForOffset(I)I
    .locals 4
    .param p1, "offset"    # I

    .line 1550
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1552
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1553
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1555
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1556
    move v0, v2

    goto :goto_0

    .line 1558
    :cond_0
    move v1, v2

    goto :goto_0

    .line 1561
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1562
    const/4 v2, 0x0

    return v2

    .line 1564
    :cond_2
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .locals 4
    .param p1, "vertical"    # I

    .line 1527
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 1529
    .local v1, "low":I
    :goto_0
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 1530
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 1532
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1533
    move v0, v2

    goto :goto_0

    .line 1535
    :cond_0
    move v1, v2

    goto :goto_0

    .line 1538
    .end local v2    # "guess":I
    :cond_1
    if-gez v1, :cond_2

    .line 1539
    const/4 v2, 0x0

    return v2

    .line 1541
    :cond_2
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .line 1327
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1328
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1332
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_0

    .line 1333
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1340
    :cond_0
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    .line 1356
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1353
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1354
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1350
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1351
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1347
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_2
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1348
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_0
    goto :goto_2

    .line 1343
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_3
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1344
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_1
    nop

    .line 1362
    :goto_2
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1373
    const/4 v3, 0x0

    return v3

    .line 1371
    :pswitch_4
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 1364
    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1365
    .local v3, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1369
    .local v4, "max":F
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
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public whitelist getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1430
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1431
    .local v0, "margin":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1432
    .local v1, "signedExtent":F
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 702
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 703
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 705
    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 708
    :cond_0
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 709
    .local v1, "dtop":I
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 710
    .local v4, "dbottom":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 713
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 715
    .local v5, "bottom":I
    if-lt v0, v5, :cond_1

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 716
    :cond_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 710
    .end local v0    # "top":I
    .end local v1    # "dtop":I
    .end local v4    # "dbottom":I
    .end local v5    # "bottom":I
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
    .param p1, "line"    # I

    .line 1382
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1383
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1387
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_0

    .line 1388
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1392
    :cond_0
    sget-object v2, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    .line 1408
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1405
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_0
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1406
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1402
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1403
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2

    .line 1399
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_2
    if-ne v0, v3, :cond_1

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1400
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_0
    goto :goto_2

    .line 1395
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_3
    if-ne v0, v3, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_1

    :cond_2
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1396
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_1
    nop

    .line 1411
    :goto_2
    sget-object v3, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 1421
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    .line 1419
    :pswitch_4
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    .line 1413
    :pswitch_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 1414
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1417
    .local v4, "max":F
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
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .line 1728
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .line 1440
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 1441
    .local v0, "margin":F
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1442
    .local v1, "signedExtent":F
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

.method public whitelist getOffsetForHorizontal(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .line 1573
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .locals 21
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    .line 1588
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v14

    .line 1589
    .local v14, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v15

    .line 1591
    .local v15, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v13

    .line 1593
    .local v13, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v12

    .line 1595
    .local v12, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1597
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v16, v2, v5

    .line 1598
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v17

    .line 1595
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v12

    move v5, v15

    move v6, v14

    move-object v8, v13

    move-object/from16 v18, v12

    .end local v12    # "tl":Landroid/text/TextLine;
    .local v18, "tl":Landroid/text/TextLine;
    move/from16 v12, v16

    move-object/from16 v19, v13

    .end local v13    # "dirs":Landroid/text/Layout$Directions;
    .local v19, "dirs":Landroid/text/Layout$Directions;
    move/from16 v13, v17

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1599
    new-instance v2, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v3, p3

    invoke-direct {v2, v0, v1, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 1603
    .local v2, "horizontal":Landroid/text/Layout$HorizontalMeasurementProvider;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v1, v4, :cond_0

    .line 1604
    move v4, v14

    move-object/from16 v7, v18

    .local v4, "max":I
    goto :goto_0

    .line 1606
    .end local v4    # "max":I
    :cond_0
    sub-int v4, v14, v15

    add-int/lit8 v6, v14, -0x1

    .line 1607
    invoke-virtual {v0, v6}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v6

    .line 1606
    xor-int/2addr v6, v5

    move-object/from16 v7, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .local v7, "tl":Landroid/text/TextLine;
    invoke-virtual {v7, v4, v6}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int/2addr v4, v15

    .line 1609
    .restart local v4    # "max":I
    :goto_0
    move v6, v15

    .line 1610
    .local v6, "best":I
    invoke-virtual {v2, v15}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v8

    sub-float v8, v8, p2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1612
    .local v8, "bestdist":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    move-object/from16 v10, v19

    .end local v19    # "dirs":Landroid/text/Layout$Directions;
    .local v10, "dirs":Landroid/text/Layout$Directions;
    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v11, v11

    if-ge v9, v11, :cond_c

    .line 1613
    iget-object v11, v10, Landroid/text/Layout$Directions;->mDirections:[I

    aget v11, v11, v9

    add-int/2addr v11, v15

    .line 1614
    .local v11, "here":I
    iget-object v12, v10, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v13, v9, 0x1

    aget v12, v12, v13

    const v13, 0x3ffffff

    and-int/2addr v12, v13

    add-int/2addr v12, v11

    .line 1615
    .local v12, "there":I
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

    .line 1616
    .local v13, "isRtl":Z
    :goto_2
    if-eqz v13, :cond_2

    const/16 v17, -0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v5

    :goto_3
    move/from16 v18, v17

    .line 1618
    .local v18, "swap":I
    if-le v12, v4, :cond_3

    .line 1619
    move v12, v4

    .line 1620
    :cond_3
    add-int/lit8 v17, v12, -0x1

    add-int/lit8 v17, v17, 0x1

    .local v17, "high":I
    add-int/lit8 v19, v11, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v5, v19

    .line 1622
    .local v5, "low":I
    :goto_4
    sub-int v1, v17, v5

    const/4 v3, 0x1

    if-le v1, v3, :cond_5

    .line 1623
    add-int v1, v17, v5

    div-int/lit8 v1, v1, 0x2

    .line 1624
    .local v1, "guess":I
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v3

    .line 1626
    .local v3, "adguess":I
    invoke-virtual {v2, v3}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v3

    .end local v3    # "adguess":I
    .local v0, "swap":I
    .local v18, "adguess":I
    int-to-float v3, v0

    mul-float v20, v20, v3

    int-to-float v3, v0

    mul-float v3, v3, p2

    cmpl-float v3, v20, v3

    if-ltz v3, :cond_4

    .line 1627
    move v3, v1

    move/from16 v17, v3

    .end local v17    # "high":I
    .local v3, "high":I
    goto :goto_5

    .line 1629
    .end local v3    # "high":I
    .restart local v17    # "high":I
    :cond_4
    move v3, v1

    move v5, v3

    .line 1631
    .end local v18    # "adguess":I
    :goto_5
    move/from16 v1, p1

    move/from16 v3, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_4

    .line 1633
    .end local v0    # "swap":I
    .end local v1    # "guess":I
    .local v18, "swap":I
    :cond_5
    move/from16 v0, v18

    .end local v18    # "swap":I
    .restart local v0    # "swap":I
    add-int/lit8 v1, v11, 0x1

    if-ge v5, v1, :cond_6

    .line 1634
    add-int/lit8 v5, v11, 0x1

    .line 1636
    :cond_6
    if-ge v5, v12, :cond_9

    .line 1637
    sub-int v1, v5, v15

    invoke-virtual {v7, v1, v13}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v15

    .line 1638
    .local v1, "aft":I
    sub-int v3, v1, v15

    move/from16 v18, v0

    if-nez v13, :cond_7

    const/4 v0, 0x1

    goto :goto_6

    :cond_7
    move/from16 v0, v16

    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :goto_6
    invoke-virtual {v7, v3, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v5, v0, v15

    .line 1639
    if-lt v5, v11, :cond_a

    if-ge v5, v12, :cond_a

    .line 1640
    invoke-virtual {v2, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1641
    .local v0, "dist":F
    if-ge v1, v12, :cond_8

    .line 1642
    invoke-virtual {v2, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v3

    sub-float v3, v3, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 1644
    .local v3, "other":F
    cmpg-float v16, v3, v0

    if-gez v16, :cond_8

    .line 1645
    move v0, v3

    .line 1646
    move v5, v1

    .line 1650
    .end local v3    # "other":F
    :cond_8
    cmpg-float v3, v0, v8

    if-gez v3, :cond_a

    .line 1651
    move v8, v0

    .line 1652
    move v6, v5

    goto :goto_7

    .line 1636
    .end local v1    # "aft":I
    .end local v18    # "swap":I
    .local v0, "swap":I
    :cond_9
    move/from16 v18, v0

    .line 1657
    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :cond_a
    :goto_7
    invoke-virtual {v2, v11}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1659
    .local v0, "dist":F
    cmpg-float v1, v0, v8

    if-gez v1, :cond_b

    .line 1660
    move v1, v0

    .line 1661
    .end local v8    # "bestdist":F
    .local v1, "bestdist":F
    move v3, v11

    move v8, v1

    move v6, v3

    .line 1612
    .end local v0    # "dist":F
    .end local v1    # "bestdist":F
    .end local v5    # "low":I
    .end local v11    # "here":I
    .end local v12    # "there":I
    .end local v13    # "isRtl":Z
    .end local v17    # "high":I
    .end local v18    # "swap":I
    .restart local v8    # "bestdist":F
    :cond_b
    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v3, p3

    move-object/from16 v19, v10

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1665
    .end local v9    # "i":I
    :cond_c
    invoke-virtual {v2, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 1667
    .restart local v0    # "dist":F
    cmpg-float v1, v0, v8

    if-gtz v1, :cond_d

    .line 1668
    move v6, v4

    .line 1671
    :cond_d
    invoke-static {v7}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1672
    return v6
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1800
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 1804
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .locals 1

    .line 789
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 5
    .param p1, "line"    # I

    .line 2107
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 2109
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_0

    .line 2110
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 2111
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 2112
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    .line 2111
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 2115
    .local v2, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    .line 2116
    .local v3, "spanLength":I
    if-lez v3, :cond_0

    .line 2117
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 2121
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "spanLength":I
    :cond_0
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2128
    const/4 v0, 0x0

    .line 2129
    .local v0, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2130
    .local v1, "dir":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2133
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 2131
    :cond_1
    :goto_0
    return v0
.end method

.method public final whitelist getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .line 2140
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 2141
    .local v0, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 2142
    .local v1, "dir":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 2145
    :cond_0
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 2143
    :cond_1
    :goto_0
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .line 1189
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1199
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1200
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public greylist-max-o getRunRange(I)J
    .locals 10
    .param p1, "offset"    # I

    .line 1048
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1049
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1050
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1053
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1054
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1055
    .local v4, "lineStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_2

    .line 1056
    aget v6, v2, v5

    add-int/2addr v6, v4

    .line 1057
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 1058
    .local v7, "limit":I
    if-lt p1, v6, :cond_1

    if-ge p1, v7, :cond_1

    .line 1059
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 1055
    .end local v6    # "start":I
    .end local v7    # "limit":I
    :cond_1
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1063
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    .line 1051
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
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
    .param p1, "offset"    # I

    .line 1209
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1219
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1220
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .locals 21
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 2045
    move-object/from16 v7, p0

    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 2046
    return-void

    .line 2049
    :cond_0
    if-ge v1, v0, :cond_1

    .line 2050
    move/from16 v2, p2

    .line 2051
    .local v2, "temp":I
    move/from16 v1, p1

    .line 2052
    .end local p2    # "end":I
    .local v1, "end":I
    move v0, v2

    move v8, v0

    move v9, v1

    .end local p1    # "start":I
    .local v0, "start":I
    goto :goto_0

    .line 2049
    .end local v0    # "start":I
    .end local v1    # "end":I
    .end local v2    # "temp":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_1
    move v8, v0

    move v9, v1

    .line 2055
    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v8, "start":I
    .local v9, "end":I
    :goto_0
    invoke-virtual {v7, v8}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 2056
    .local v10, "startline":I
    invoke-virtual {v7, v9}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 2058
    .local v11, "endline":I
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2059
    .local v12, "top":I
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 2061
    .local v13, "bottom":I
    if-ne v10, v11, :cond_2

    .line 2062
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    goto/16 :goto_4

    .line 2064
    :cond_2
    iget v0, v7, Landroid/text/Layout;->mWidth:I

    int-to-float v14, v0

    .line 2066
    .local v14, "width":F
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 2067
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 2066
    move-object/from16 v0, p0

    move v1, v10

    move v2, v8

    move v4, v12

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2069
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    const/4 v15, -0x1

    if-ne v0, v15, :cond_3

    .line 2070
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    int-to-float v3, v12

    const/4 v4, 0x0

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x0

    move-object/from16 v1, p3

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_1

    .line 2073
    :cond_3
    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineRight(I)F

    move-result v2

    int-to-float v3, v12

    invoke-virtual {v7, v10}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    int-to-float v5, v0

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2077
    :goto_1
    add-int/lit8 v0, v10, 0x1

    .local v0, "i":I
    :goto_2
    if-ge v0, v11, :cond_5

    .line 2078
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2079
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    .line 2080
    invoke-virtual {v7, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    if-ne v1, v15, :cond_4

    .line 2081
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_3

    .line 2083
    :cond_4
    const/4 v2, 0x0

    int-to-float v3, v12

    int-to-float v5, v13

    const/4 v6, 0x1

    move-object/from16 v1, p3

    move v4, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2077
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2087
    .end local v0    # "i":I
    :cond_5
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 2088
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineBottomWithoutSpacing(I)I

    move-result v13

    .line 2090
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move-object/from16 v0, p0

    move v1, v11

    move v3, v9

    move v4, v12

    move v5, v13

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2092
    invoke-virtual {v7, v11}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-ne v0, v15, :cond_6

    .line 2093
    int-to-float v3, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineRight(I)F

    move-result v4

    int-to-float v5, v13

    const/4 v6, 0x0

    move-object/from16 v1, p3

    move v2, v14

    invoke-interface/range {v1 .. v6}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_4

    .line 2096
    :cond_6
    const/16 v16, 0x0

    int-to-float v0, v12

    invoke-virtual {v7, v11}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v18

    int-to-float v1, v13

    const/16 v20, 0x1

    move-object/from16 v15, p3

    move/from16 v17, v0

    move/from16 v19, v1

    invoke-interface/range {v15 .. v20}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 2100
    .end local v14    # "width":F
    :goto_4
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 2028
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 2029
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 2031
    return-void
.end method

.method public blacklist getSelectionRect(IIIIILandroid/graphics/Rect;)V
    .locals 16
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Rect;

    .line 2708
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2709
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2710
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2712
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_0

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_0

    .line 2713
    add-int/lit8 v5, v5, -0x1

    .line 2715
    :cond_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 2716
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    .line 2717
    .local v8, "here":I
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 2719
    .local v9, "there":I
    if-le v9, v5, :cond_1

    .line 2720
    move v9, v5

    .line 2722
    :cond_1
    if-gt v2, v9, :cond_3

    if-lt v3, v8, :cond_3

    .line 2723
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2724
    .local v10, "st":I
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 2726
    .local v11, "en":I
    if-eq v10, v11, :cond_2

    .line 2727
    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 2728
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 2730
    .local v12, "h2":F
    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v14

    float-to-int v14, v14

    .line 2731
    .local v14, "left":I
    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v15

    float-to-int v15, v15

    .line 2733
    .local v15, "right":I
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v2, v14, v0, v15, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 2726
    .end local v12    # "h2":F
    .end local v13    # "h1":F
    .end local v14    # "left":I
    .end local v15    # "right":I
    :cond_2
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    goto :goto_1

    .line 2722
    .end local v10    # "st":I
    .end local v11    # "en":I
    :cond_3
    move/from16 v0, p4

    move/from16 v1, p5

    move-object/from16 v2, p6

    .line 2715
    .end local v8    # "here":I
    .end local v9    # "there":I
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

    .line 2737
    .end local v7    # "i":I
    return-void
.end method

.method public final whitelist getSpacingAdd()F
    .locals 1

    .line 856
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .locals 1

    .line 849
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .locals 1
    .param p1, "line"    # I

    .line 950
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .locals 1

    .line 780
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final greylist-max-o getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 864
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public final whitelist getWidth()I
    .locals 1

    .line 796
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .line 813
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_0

    .line 817
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 818
    return-void

    .line 814
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    .line 977
    const/4 v0, 0x0

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .locals 10
    .param p1, "offset"    # I

    .line 989
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 990
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 991
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_8

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 995
    :cond_0
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 996
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 997
    .local v4, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 998
    .local v5, "lineEnd":I
    const/4 v6, 0x1

    if-eq p1, v4, :cond_4

    if-ne p1, v5, :cond_1

    goto :goto_1

    .line 1004
    :cond_1
    sub-int/2addr p1, v4

    .line 1005
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v2

    if-ge v7, v8, :cond_3

    .line 1006
    aget v8, v2, v7

    if-ne p1, v8, :cond_2

    .line 1007
    return v6

    .line 1005
    :cond_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 1010
    .end local v7    # "i":I
    :cond_3
    return v3

    .line 999
    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_5

    move v7, v3

    goto :goto_2

    :cond_5
    move v7, v6

    .line 1000
    .local v7, "paraLevel":I
    :goto_2
    if-ne p1, v4, :cond_6

    move v8, v3

    goto :goto_3

    :cond_6
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    .line 1001
    .local v8, "runIndex":I
    :goto_3
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_7

    move v3, v6

    :cond_7
    return v3

    .line 992
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v7    # "paraLevel":I
    .end local v8    # "runIndex":I
    :cond_8
    :goto_4
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .locals 11
    .param p1, "offset"    # I

    .line 1019
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1020
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1021
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1022
    return v3

    .line 1024
    :cond_0
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_1

    .line 1025
    return v4

    .line 1027
    :cond_1
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1028
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1029
    .local v5, "lineStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_4

    .line 1030
    aget v7, v2, v6

    add-int/2addr v7, v5

    .line 1031
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1032
    .local v8, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v8, :cond_3

    .line 1033
    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    .line 1034
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 1029
    .end local v7    # "start":I
    .end local v8    # "limit":I
    .end local v9    # "level":I
    :cond_3
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1038
    .end local v6    # "i":I
    :cond_4
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .locals 1

    .line 2348
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .locals 12
    .param p1, "offset"    # I

    .line 1095
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1096
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1097
    .local v1, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1098
    .local v2, "lineEnd":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1100
    .local v3, "runs":[I
    const/4 v4, -0x1

    .line 1101
    .local v4, "levelAt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3

    .line 1102
    aget v6, v3, v5

    add-int/2addr v6, v1

    .line 1103
    .local v6, "start":I
    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    .line 1104
    .local v9, "limit":I
    if-le v9, v2, :cond_0

    .line 1105
    move v9, v2

    .line 1107
    :cond_0
    if-lt p1, v6, :cond_2

    if-ge p1, v9, :cond_2

    .line 1108
    if-le p1, v6, :cond_1

    .line 1110
    return v8

    .line 1112
    :cond_1
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    .line 1113
    goto :goto_1

    .line 1101
    .end local v6    # "start":I
    .end local v9    # "limit":I
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 1116
    .end local v5    # "i":I
    :cond_3
    :goto_1
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_5

    .line 1118
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_4

    move v5, v8

    goto :goto_2

    :cond_4
    move v5, v6

    :goto_2
    move v4, v5

    .line 1122
    :cond_5
    const/4 v5, -0x1

    .line 1123
    .local v5, "levelBefore":I
    if-ne p1, v1, :cond_7

    .line 1124
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

    .line 1126
    :cond_7
    add-int/lit8 p1, p1, -0x1

    .line 1127
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_4
    array-length v10, v3

    if-ge v9, v10, :cond_a

    .line 1128
    aget v10, v3, v9

    add-int/2addr v10, v1

    .line 1129
    .local v10, "start":I
    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 1130
    .local v11, "limit":I
    if-le v11, v2, :cond_8

    .line 1131
    move v11, v2

    .line 1133
    :cond_8
    if-lt p1, v10, :cond_9

    if-ge p1, v11, :cond_9

    .line 1134
    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    .line 1135
    goto :goto_5

    .line 1127
    .end local v10    # "start":I
    .end local v11    # "limit":I
    :cond_9
    add-int/lit8 v9, v9, 0x2

    goto :goto_4

    .line 1140
    .end local v9    # "i":I
    :cond_a
    :goto_5
    if-ge v5, v4, :cond_b

    move v8, v6

    :cond_b
    return v8
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .locals 12
    .param p1, "line"    # I

    .line 1152
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1153
    .local v0, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1154
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1156
    .local v2, "runs":[I
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 1158
    .local v3, "trailing":[Z
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1159
    .local v5, "level":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v2

    if-ge v6, v7, :cond_2

    .line 1160
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1161
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1162
    .local v8, "limit":I
    if-le v8, v1, :cond_0

    .line 1163
    move v8, v1

    .line 1165
    :cond_0
    if-ne v8, v7, :cond_1

    .line 1166
    goto :goto_1

    .line 1168
    :cond_1
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 1159
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :goto_1
    add-int/lit8 v6, v6, 0x2

    goto :goto_0

    .line 1172
    .end local v6    # "i":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    array-length v7, v2

    if-ge v6, v7, :cond_6

    .line 1173
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1174
    .restart local v7    # "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    .line 1175
    .local v8, "currentLevel":B
    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_4

    .line 1176
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_3

    move v11, v10

    goto :goto_3

    :cond_3
    move v11, v4

    goto :goto_3

    .line 1177
    :cond_4
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_3
    if-le v8, v11, :cond_5

    move v10, v4

    :cond_5
    aput-boolean v10, v3, v9

    .line 1172
    .end local v7    # "start":I
    .end local v8    # "currentLevel":B
    add-int/lit8 v6, v6, 0x2

    goto :goto_2

    .line 1180
    .end local v6    # "i":I
    :cond_6
    return-object v3
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .line 315
    if-ltz p3, :cond_0

    .line 319
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 320
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 321
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 322
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 323
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 324
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 325
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 326
    return-void

    .line 316
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

.method protected greylist-max-o setJustificationMode(I)V
    .locals 0
    .param p1, "justificationMode"    # I

    .line 306
    iput p1, p0, Landroid/text/Layout;->mJustificationMode:I

    .line 307
    return-void
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .locals 3
    .param p1, "line"    # I

    .line 1901
    sget-object v0, Landroid/text/Layout$1;->$SwitchMap$android$text$Layout$Alignment:[I

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 1907
    return v1

    .line 1903
    :sswitch_0
    return v2

    .line 1905
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
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
