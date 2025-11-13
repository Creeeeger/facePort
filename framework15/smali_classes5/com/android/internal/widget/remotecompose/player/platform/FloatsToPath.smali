.class public Lcom/android/internal/widget/remotecompose/player/platform/FloatsToPath;
.super Ljava/lang/Object;
.source "FloatsToPath.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist genPath(Landroid/graphics/Path;[FFF)V
    .locals 9

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-static {v2}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Odd command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Lcom/android/internal/widget/remotecompose/core/operations/Utils;->idFromNan(F)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x0

    aget v3, p1, v2

    add-int/lit8 v2, v0, 0x1

    aget v4, p1, v2

    add-int/lit8 v2, v0, 0x2

    aget v5, p1, v2

    add-int/lit8 v2, v0, 0x3

    aget v6, p1, v2

    add-int/lit8 v2, v0, 0x4

    aget v7, p1, v2

    add-int/lit8 v2, v0, 0x5

    aget v8, p1, v2

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    add-int/lit8 v0, v0, 0x6

    goto :goto_0

    :pswitch_3
    add-int/lit8 v0, v0, 0x3

    nop

    add-int/lit8 v2, v0, 0x0

    aget v3, p1, v2

    add-int/lit8 v2, v0, 0x1

    aget v4, p1, v2

    add-int/lit8 v2, v0, 0x2

    aget v5, p1, v2

    add-int/lit8 v2, v0, 0x3

    aget v6, p1, v2

    add-int/lit8 v2, v0, 0x4

    aget v7, p1, v2

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->conicTo(FFFFF)V

    add-int/lit8 v0, v0, 0x5

    goto :goto_0

    :pswitch_4
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    add-int/lit8 v5, v0, 0x3

    aget v5, p1, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_0

    :pswitch_5
    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v2, v0, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :pswitch_6
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v0, 0x0

    aget v2, p1, v2

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    cmpl-float v3, p2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    if-gtz v3, :cond_2

    cmpg-float v3, p3, v4

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    goto :goto_2

    :cond_2
    :goto_1
    cmpg-float v3, p2, p3

    if-gez v3, :cond_3

    new-instance v3, Landroid/graphics/PathMeasure;

    invoke-direct {v3}, Landroid/graphics/PathMeasure;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    invoke-virtual {v3}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    invoke-static {p2, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    mul-float/2addr v2, v5

    invoke-static {p3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    mul-float/2addr v4, v5

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v4, p0, v6}, Landroid/graphics/PathMeasure;->getSegment(FFLandroid/graphics/Path;Z)Z

    nop

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
