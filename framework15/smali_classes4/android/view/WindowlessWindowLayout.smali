.class public Landroid/view/WindowlessWindowLayout;
.super Landroid/view/WindowLayout;
.source "WindowlessWindowLayout.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/WindowLayout;-><init>()V

    return-void
.end method

.method private static blacklist calculateLength(III)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p2

    :cond_0
    const/4 v0, -0x2

    if-ne p0, v0, :cond_1

    return p1

    :cond_1
    return p0
.end method


# virtual methods
.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V
    .locals 12

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V

    return-void
.end method

.method public blacklist computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;I)V
    .locals 13

    move-object v0, p1

    move-object/from16 v1, p10

    iget-object v2, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    if-nez v2, :cond_0

    iget-object v2, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v2, v1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void

    :cond_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v3, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v4, p7

    invoke-static {v2, v4, v3}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v2

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v5, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    move/from16 v12, p6

    invoke-static {v3, v12, v5}, Landroid/view/WindowlessWindowLayout;->calculateLength(III)I

    move-result v3

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v8, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    add-float/2addr v6, v7

    float-to-int v9, v6

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v6, v6

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    add-float/2addr v6, v7

    float-to-int v10, v6

    iget-object v11, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    move v6, v3

    move v7, v2

    invoke-static/range {v5 .. v11}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    iget-object v5, v1, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v1, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method
