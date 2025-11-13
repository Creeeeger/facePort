.class public Landroid/text/BoringLayout;
.super Landroid/text/Layout;
.source "BoringLayout.java"

# interfaces
.implements Landroid/text/TextUtils$EllipsizeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BoringLayout$Metrics;
    }
.end annotation


# instance fields
.field greylist-max-o mBottom:I

.field private greylist-max-o mBottomPadding:I

.field greylist-max-o mDesc:I

.field private greylist-max-o mDirect:Ljava/lang/String;

.field private final blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsizedCount:I

.field private greylist-max-o mEllipsizedStart:I

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mMax:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private greylist-max-o mTopPadding:I

.field private blacklist mUseFallbackLineSpacing:Z


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V
    .locals 22

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v10, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p8

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v8, p0

    iput-object v0, v8, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    move/from16 v9, p3

    iput v9, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    iput-boolean v0, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v19, p7

    move/from16 v8, p8

    move-object/from16 v11, p9

    move/from16 v10, p10

    move/from16 v9, p11

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZZILandroid/text/TextUtils$TruncateAt;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v19, p11

    move/from16 v20, p12

    move/from16 v21, p13

    move-object/from16 v22, p14

    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/16 v17, 0x0

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v0 .. v22}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V
    .locals 22

    move-object/from16 v15, p0

    move/from16 v14, p10

    move-object/from16 v13, p11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p18

    move/from16 v19, p20

    move/from16 v20, p21

    move-object/from16 v21, p22

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v8, p0

    iput-object v0, v8, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    move-object/from16 v9, p11

    if-eqz v9, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v0, :cond_0

    move/from16 v10, p10

    goto :goto_0

    :cond_0
    move/from16 v10, p10

    int-to-float v2, v10

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p11

    move-object/from16 v5, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput v10, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    move/from16 v11, p3

    move v12, v0

    goto :goto_1

    :cond_1
    move/from16 v10, p10

    :goto_0
    move/from16 v11, p3

    iput v11, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v12, v0

    :goto_1
    move/from16 v13, p9

    iput-boolean v13, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    invoke-virtual/range {p0 .. p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p19

    move/from16 v5, p8

    move v6, v12

    move/from16 v7, p9

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    return-void
.end method

.method private static greylist-max-o hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z
    .locals 8

    const/16 v0, 0x1f4

    const/16 v1, 0x1f4

    invoke-static {v1}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, p1, :cond_3

    add-int/lit16 v4, v2, 0x1f4

    :try_start_0
    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {p0, v2, v4, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    sub-int v3, v4, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_2

    aget-char v6, v1, v5

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x9

    if-eq v6, v7, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->couldAffectRtl(C)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    nop

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    const/4 v7, 0x1

    return v7

    :cond_2
    add-int/lit16 v2, v2, 0x1f4

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    throw v2

    :cond_3
    nop

    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    return v3
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;
    .locals 2

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, v0, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static greylist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 21

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p4

    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v15

    invoke-static {v12, v15}, Landroid/text/BoringLayout;->hasAnyInterestingChars(Ljava/lang/CharSequence;I)Z

    move-result v0

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    return-object v11

    :cond_0
    const/4 v10, 0x0

    if-eqz v13, :cond_1

    invoke-interface {v13, v12, v10, v15}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v11

    :cond_1
    instance-of v0, v12, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    move-object v0, v12

    check-cast v0, Landroid/text/Spanned;

    const-class v1, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v10, v15, v1}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_2

    return-object v11

    :cond_2
    move-object/from16 v0, p5

    if-nez v0, :cond_3

    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    move-object v0, v1

    move-object v9, v0

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/text/BoringLayout$Metrics;->-$$Nest$mreset(Landroid/text/BoringLayout$Metrics;)V

    move-object v9, v0

    :goto_0
    move-object/from16 v8, p1

    invoke-virtual {v8, v8}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    invoke-static {}, Landroid/text/ClientFlags;->fixLineHeightForLocale()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v14, :cond_4

    invoke-virtual {v9, v14}, Landroid/text/BoringLayout$Metrics;->set(Landroid/graphics/Paint$FontMetrics;)V

    iget v0, v9, Landroid/text/BoringLayout$Metrics;->top:I

    iget v1, v9, Landroid/text/BoringLayout$Metrics;->ascent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v9, Landroid/text/BoringLayout$Metrics;->top:I

    iget v0, v9, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v1, v9, Landroid/text/BoringLayout$Metrics;->descent:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v9, Landroid/text/BoringLayout$Metrics;->bottom:I

    :cond_4
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v7

    sget-object v6, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v7

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move v4, v15

    move-object/from16 v20, v7

    move/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v18, v9

    move/from16 v9, v16

    move/from16 v10, v17

    move-object v12, v11

    move/from16 v11, p3

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    invoke-static/range {v18 .. v18}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v0

    move-object/from16 v2, v18

    move-object/from16 v1, v20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v12}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    iput v0, v2, Landroid/text/BoringLayout$Metrics;->width:I

    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    return-object v2
.end method

.method public static whitelist isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10

    new-instance v9, Landroid/text/BoringLayout;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)V

    return-object v9
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 12

    new-instance v11, Landroid/text/BoringLayout;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)V

    return-object v11
.end method

.method public static whitelist make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 13

    new-instance v12, Landroid/text/BoringLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, v12

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object/from16 v4, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)V

    return-object v12
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 5

    iget-object v0, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getShiftDrawingOffsetForStartOverhang()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/text/BoringLayout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v1

    iget v3, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v0, v3

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_0
    iget-object v1, p0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    iget v3, p0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, p0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpl-float v1, v0, v2

    if-eqz v1, :cond_1

    neg-float v1, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    :goto_0
    return-void
.end method

.method public whitelist ellipsized(II)V
    .locals 1

    iput p1, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    sub-int v0, p2, p1

    iput v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return-void
.end method

.method public whitelist getBottomPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    return v0
.end method

.method public whitelist getEllipsizedWidth()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public whitelist getHeight()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mDesc:I

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1

    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0
.end method

.method public whitelist getLineMax(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    return v0
.end method

.method public whitelist getLineStart(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method public whitelist getLineTop(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Landroid/text/BoringLayout;->mBottom:I

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .locals 1

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getUseBoundsForWidth()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    return v0

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Landroid/text/BoringLayout;->mMax:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist getTopPadding()I
    .locals 1

    iget v0, p0, Landroid/text/BoringLayout;->mTopPadding:I

    return v0
.end method

.method blacklist init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v14, p1

    instance-of v2, v14, Ljava/lang/String;

    const/4 v15, 0x0

    if-eqz v2, :cond_0

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v13, p3

    if-ne v13, v2, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v13, p3

    :cond_1
    iput-object v15, v0, Landroid/text/BoringLayout;->mDirect:Ljava/lang/String;

    :goto_0
    move-object/from16 v12, p2

    iput-object v12, v0, Landroid/text/BoringLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz p5, :cond_2

    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->top:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iput v3, v0, Landroid/text/BoringLayout;->mDesc:I

    move v11, v2

    goto :goto_1

    :cond_2
    iget v2, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    iput v3, v0, Landroid/text/BoringLayout;->mDesc:I

    move v11, v2

    :goto_1
    iput v11, v0, Landroid/text/BoringLayout;->mBottom:I

    if-eqz p6, :cond_3

    iget v2, v1, Landroid/text/BoringLayout$Metrics;->width:I

    int-to-float v2, v2

    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    move/from16 v17, v11

    goto :goto_2

    :cond_3
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    sget-object v8, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    iget v9, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v2, v0, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iget v3, v0, Landroid/text/BoringLayout;->mEllipsizedCount:I

    add-int v16, v2, v3

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v2, v10

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v19, v9

    move/from16 v9, v17

    move-object/from16 v20, v10

    move-object/from16 v10, v18

    move/from16 v17, v11

    move/from16 v11, v19

    move/from16 v12, v16

    move/from16 v13, p7

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    const/4 v2, 0x0

    move-object/from16 v3, v20

    invoke-virtual {v3, v15, v15, v2, v15}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    int-to-float v2, v2

    iput v2, v0, Landroid/text/BoringLayout;->mMax:F

    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    :goto_2
    if-eqz p5, :cond_4

    iget v2, v1, Landroid/text/BoringLayout$Metrics;->top:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->ascent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mTopPadding:I

    iget v2, v1, Landroid/text/BoringLayout$Metrics;->bottom:I

    iget v3, v1, Landroid/text/BoringLayout$Metrics;->descent:I

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/text/BoringLayout;->mBottomPadding:I

    :cond_4
    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    invoke-static/range {p4 .. p4}, Landroid/text/BoringLayout$Metrics;->-$$Nest$fgetmDrawingBounds(Landroid/text/BoringLayout$Metrics;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    iget-object v2, v0, Landroid/text/BoringLayout;->mDrawingBounds:Landroid/graphics/RectF;

    iget v3, v0, Landroid/text/BoringLayout;->mBottom:I

    iget v4, v0, Landroid/text/BoringLayout;->mDesc:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->offset(FF)V

    return-void
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    return v0
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;
    .locals 10

    move-object v8, p0

    invoke-virtual/range {p0 .. p6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move v9, p3

    iput v9, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    iput-boolean v0, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    return-object v8
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-virtual/range {v0 .. v9}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;

    move-result-object v0

    return-object v0
.end method

.method public blacklist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p9

    move/from16 v10, p10

    if-eqz v9, :cond_1

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v0, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, v10

    const/4 v4, 0x1

    move-object v0, p1

    move-object/from16 v1, p2

    move-object/from16 v3, p9

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    iput v10, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    move/from16 v11, p3

    move v12, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Landroid/text/BoringLayout;->replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    move/from16 v11, p3

    iput v11, v8, Landroid/text/BoringLayout;->mEllipsizedWidth:I

    const/4 v0, 0x0

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedStart:I

    iput v0, v8, Landroid/text/BoringLayout;->mEllipsizedCount:I

    const/4 v0, 0x1

    move v12, v0

    :goto_1
    move/from16 v13, p11

    iput-boolean v13, v8, Landroid/text/BoringLayout;->mUseFallbackLineSpacing:Z

    invoke-virtual {p0}, Landroid/text/BoringLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p7

    move/from16 v5, p8

    move v6, v12

    move/from16 v7, p11

    invoke-virtual/range {v0 .. v7}, Landroid/text/BoringLayout;->init(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZZZ)V

    return-object v8
.end method

.method public whitelist replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZ)Landroid/text/BoringLayout;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v0 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;IZZLandroid/graphics/Paint$FontMetrics;)Landroid/text/BoringLayout;

    move-result-object v0

    return-object v0
.end method
