.class public Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist adjustMinimalTaskBounds(Landroid/graphics/Rect;III)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    const/4 v1, 0x1

    if-lt p2, v1, :cond_7

    if-ge p3, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v2, p2, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v3, p3, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    if-eqz v2, :cond_3

    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->right:I

    :cond_3
    if-eqz v3, :cond_5

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    goto :goto_2

    :sswitch_1
    if-eqz v2, :cond_4

    iget v4, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, p2

    iput v4, p0, Landroid/graphics/Rect;->left:I

    :cond_4
    if-eqz v3, :cond_5

    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, p3

    iput v4, p0, Landroid/graphics/Rect;->top:I

    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    move v0, v1

    :cond_6
    return v0

    :cond_7
    :goto_3
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist applyResizeRect(Landroid/graphics/Rect;III)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iput p2, p0, Landroid/graphics/Rect;->right:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :sswitch_1
    iput p2, p0, Landroid/graphics/Rect;->left:I

    iput p3, p0, Landroid/graphics/Rect;->top:I

    nop

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static blacklist dipToPixel(IF)I
    .locals 1

    int-to-float v0, p0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method public static blacklist edgeFlagToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "INVALID"

    return-object v0

    :sswitch_0
    const-string v0, "EDGE_RIGHT_TOP"

    return-object v0

    :sswitch_1
    const-string v0, "EDGE_LEFT_TOP"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
