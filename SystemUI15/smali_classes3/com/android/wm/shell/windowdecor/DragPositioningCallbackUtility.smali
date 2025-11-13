.class public final Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateDelta(FFLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p0, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, p0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p2
.end method

.method public static changeBounds(ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/WindowDecoration;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    and-int/lit8 p2, p0, 0x1

    if-eqz p2, :cond_2

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget v5, p4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->left:I

    if-le p2, v5, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iput p2, p1, Landroid/graphics/Rect;->left:I

    :cond_2
    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_4

    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget v5, p4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->right:I

    if-ge p2, v5, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_4
    and-int/lit8 p2, p0, 0x4

    if-eqz p2, :cond_6

    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget v5, p4, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    add-int/2addr p2, v5

    iget v5, p3, Landroid/graphics/Rect;->top:I

    if-le p2, v5, :cond_5

    goto :goto_2

    :cond_5
    move p2, v2

    :goto_2
    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_6
    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_8

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    iget p2, p4, Landroid/graphics/PointF;->y:F

    float-to-int p2, p2

    add-int/2addr p0, p2

    iget p2, p3, Landroid/graphics/Rect;->bottom:I

    if-ge p0, p2, :cond_7

    goto :goto_3

    :cond_7
    move p0, v4

    :goto_3
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    const p3, 0x3bcccccd    # 0.00625f

    if-gez p2, :cond_a

    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingSizeConstraints()Z

    :cond_9
    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iget-object p4, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p4, p4, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    int-to-float p4, p4

    mul-float/2addr p4, p2

    goto :goto_4

    :cond_a
    int-to-float p4, p2

    :goto_4
    cmpg-float p0, p0, p4

    if-gez p0, :cond_b

    iput v3, p1, Landroid/graphics/Rect;->right:I

    iput v1, p1, Landroid/graphics/Rect;->left:I

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-gez p2, :cond_d

    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingSizeConstraints()Z

    :cond_c
    iget-object p2, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p5, p2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p2

    iget p2, p2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    int-to-float p2, p2

    mul-float/2addr p2, p3

    iget-object p3, p6, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->defaultMinSize:I

    int-to-float p3, p3

    mul-float/2addr p3, p2

    goto :goto_5

    :cond_d
    int-to-float p3, p2

    :goto_5
    cmpg-float p0, p0, p3

    if-gez p0, :cond_e

    iput v2, p1, Landroid/graphics/Rect;->top:I

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    :cond_e
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-ne v1, p0, :cond_f

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-ne v2, p0, :cond_f

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-ne v3, p0, :cond_f

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v4, p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public static snapTaskBoundsIfNecessary(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_1

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-le v0, v2, :cond_2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_1
    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ge v2, v4, :cond_3

    sub-int/2addr v4, v2

    invoke-virtual {p0, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_3
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-le v2, p1, :cond_4

    sub-int/2addr p1, v2

    invoke-virtual {p0, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    return v3
.end method

.method public static updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V
    .locals 1

    iget v0, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr p3, v0

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p4, p2

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int p1, p3

    float-to-int p2, p4

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public static updateTaskBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/PointF;FF)V
    .locals 1

    iget v0, p3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p4, v0

    iget p3, p3, Landroid/graphics/PointF;->y:F

    sub-float/2addr p5, p3

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    float-to-int p2, p4

    float-to-int p3, p5

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->offset(II)V

    if-eqz p0, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Landroid/graphics/Rect;->bottom:I

    if-le p2, p3, :cond_0

    const/4 p4, 0x0

    sub-int/2addr p3, p2

    invoke-virtual {p1, p4, p3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->top:I

    if-ge p2, p0, :cond_1

    iget p2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, p2, p0}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_1
    return-void
.end method
