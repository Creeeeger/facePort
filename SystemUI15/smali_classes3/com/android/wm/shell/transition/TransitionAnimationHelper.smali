.class public final Lcom/android/wm/shell/transition/TransitionAnimationHelper;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Builder;-><init>()V

    invoke-virtual {v0, p5}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "TransitionAnimationHelper#createExtensionSurface"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    new-instance v2, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-direct {v2, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {v2, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setChildrenOnly(Z)Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setAllowProtected(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0, v1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p0

    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 p1, 0x4

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide p2, -0x6d9e1fc06df2c8dbL

    const/4 p4, 0x0

    const-string p5, "Failed to capture edge of window."

    const/4 p6, 0x0

    invoke-static/range {p1 .. p6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    new-instance v2, Landroid/graphics/BitmapShader;

    invoke-virtual {p0}, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;->asBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, p0, v3, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    new-instance p0, Landroid/graphics/Paint;

    invoke-direct {p0}, Landroid/graphics/Paint;-><init>()V

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_EDGE_EXTENSION_ANIM_DEBUG:Z

    if-eqz v3, :cond_6

    const/4 v2, -0x1

    invoke-virtual {p5}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move p1, v2

    goto :goto_1

    :sswitch_0
    const-string p1, "Top Edge Extension"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string p1, "Bottom Edge Extension"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_2
    const-string p1, "Left Edge Extension"

    invoke-virtual {p5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    move p1, v1

    goto :goto_1

    :sswitch_3
    const-string v3, "Right Edge Extension"

    invoke-virtual {p5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    packed-switch p1, :pswitch_data_0

    const p1, -0xff01

    goto :goto_2

    :pswitch_0
    const p1, -0xff0100

    goto :goto_2

    :pswitch_1
    const p1, -0xff0001

    goto :goto_2

    :pswitch_2
    const/high16 p1, -0x10000

    goto :goto_2

    :pswitch_3
    const p1, -0xffff01

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_3
    new-instance p1, Landroid/view/Surface;

    invoke-direct {p1, v0}, Landroid/view/Surface;-><init>(Landroid/view/SurfaceControl;)V

    invoke-virtual {p1}, Landroid/view/Surface;->lockHardwareCanvas()Landroid/graphics/Canvas;

    move-result-object p5

    invoke-virtual {p5, p2, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1, p5}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/high16 p0, -0x80000000

    invoke-virtual {p6, v0, p0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    int-to-float p0, p3

    int-to-float p1, p4

    invoke-virtual {p6, v0, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p6, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p7, v0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6745efc0 -> :sswitch_3
        -0xfe12d4b -> :sswitch_2
        -0xf1eabef -> :sswitch_1
        0x238b1fe7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static edgeExtendWindow(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x4000000

    move-object/from16 v2, p0

    invoke-virtual {v2, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    new-instance v3, Landroid/view/animation/Transformation;

    invoke-direct {v3}, Landroid/view/animation/Transformation;-><init>()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v3}, Landroid/view/animation/Animation;->getTransformationAt(FLandroid/view/animation/Transformation;)V

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Insets;->min(Landroid/graphics/Insets;Landroid/graphics/Insets;)Landroid/graphics/Insets;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getStartAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, v0, Landroid/graphics/Insets;->left:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v3, :cond_2

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5, v5, v4, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Insets;->left:I

    neg-int v3, v3

    invoke-direct {v11, v5, v5, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v12, v0, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v13, 0x0

    const-string v14, "Left Edge Extension"

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iget v3, v0, Landroid/graphics/Insets;->top:I

    if-gez v3, :cond_3

    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Insets;->top:I

    neg-int v3, v3

    invoke-direct {v11, v5, v5, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v13, v0, Landroid/graphics/Insets;->top:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v12, 0x0

    const-string v14, "Top Edge Extension"

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_3
    iget v3, v0, Landroid/graphics/Insets;->right:I

    if-gez v3, :cond_4

    new-instance v10, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x1

    invoke-direct {v10, v3, v5, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Insets;->right:I

    neg-int v3, v3

    invoke-direct {v11, v5, v5, v3, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    const/4 v13, 0x0

    const-string v14, "Right Edge Extension"

    move v12, v1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    invoke-static/range {v9 .. v16}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_4
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    if-gez v3, :cond_5

    new-instance v3, Landroid/graphics/Rect;

    add-int/lit8 v4, v8, -0x1

    invoke-direct {v3, v5, v4, v1, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    neg-int v4, v4

    invoke-direct {v6, v5, v5, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v7, v0, Landroid/graphics/Insets;->left:I

    invoke-virtual/range {p0 .. p0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v4

    const-string v9, "Bottom Edge Extension"

    move-object v5, v3

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    invoke-static/range {v4 .. v11}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->createExtensionSurface(Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_5
    return-void
.end method

.method public static getTransitionBackgroundColorIfSet(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;I)I
    .locals 1

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getShowBackdrop()Z

    move-result v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getBackdropColor()I

    move-result p0

    return p0

    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getBackgroundColor()I

    move-result p0

    return p0

    :cond_3
    return p3
.end method

.method public static getTransitionTypeFromInfo(Landroid/window/TransitionInfo;)I
    .locals 4

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-nez v3, :cond_2

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/android/wm/shell/shared/TransitionUtil;->isOrderOnly(Landroid/window/TransitionInfo$Change;)Z

    move-result v3

    if-nez v3, :cond_3

    return v0

    :cond_3
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_4

    const v3, 0x10122

    invoke-virtual {v1, v3}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_5
    const/4 p0, 0x2

    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public static loadAttributeAnimation(ILandroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ILcom/android/internal/policy/TransitionAnimation;Z)Landroid/view/animation/Animation;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {}, Lcom/android/window/flags/Flags;->moveAnimationOptionsToChange()Z

    invoke-virtual/range {p1 .. p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0xe

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x2

    const/4 v14, 0x7

    const/4 v15, 0x4

    if-eqz p5, :cond_5

    if-ne v0, v7, :cond_3

    if-eqz v3, :cond_2

    const/16 v13, 0x1c

    goto :goto_2

    :cond_2
    const/16 v13, 0x1d

    :goto_2
    const/4 v6, 0x0

    goto/16 :goto_8

    :cond_3
    if-ne v0, v13, :cond_1f

    if-eqz v3, :cond_4

    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/16 v13, 0x1b

    goto :goto_2

    :cond_5
    if-ne v1, v15, :cond_7

    if-eqz v3, :cond_6

    const/16 v13, 0x14

    goto :goto_2

    :cond_6
    const/16 v13, 0x15

    goto :goto_2

    :cond_7
    if-ne v1, v12, :cond_9

    if-eqz v3, :cond_8

    const/16 v13, 0x16

    goto :goto_2

    :cond_8
    const/16 v13, 0x17

    goto :goto_2

    :cond_9
    if-ne v1, v13, :cond_b

    if-eqz v3, :cond_a

    const/16 v13, 0x10

    goto :goto_2

    :cond_a
    const/16 v13, 0x11

    goto :goto_2

    :cond_b
    const/4 v6, 0x3

    if-ne v1, v6, :cond_d

    if-eqz v3, :cond_c

    const/16 v6, 0x12

    :goto_3
    move v13, v6

    goto :goto_2

    :cond_c
    const/16 v6, 0x13

    goto :goto_3

    :cond_d
    sget-boolean v16, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_EXTENSION:Z

    if-eqz v16, :cond_f

    if-ne v1, v11, :cond_f

    if-eqz v3, :cond_e

    move v13, v15

    goto :goto_4

    :cond_e
    const/4 v13, 0x0

    :goto_4
    move v6, v7

    goto/16 :goto_8

    :cond_f
    if-ne v0, v7, :cond_16

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_10

    move v6, v7

    goto :goto_5

    :cond_10
    const/4 v6, 0x0

    :goto_5
    if-eqz v5, :cond_12

    if-eqz v6, :cond_12

    if-nez v3, :cond_12

    :cond_11
    :goto_6
    move v13, v14

    goto/16 :goto_8

    :cond_12
    if-eqz v5, :cond_14

    if-nez v6, :cond_14

    if-eqz v3, :cond_13

    const/16 v13, 0x8

    goto :goto_8

    :cond_13
    const/16 v13, 0x9

    goto :goto_8

    :cond_14
    if-eqz v3, :cond_15

    move v13, v15

    goto :goto_8

    :cond_15
    move v13, v12

    goto :goto_8

    :cond_16
    if-ne v0, v6, :cond_19

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v6, :cond_17

    if-eqz v5, :cond_17

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_17

    if-nez v3, :cond_17

    move v6, v7

    goto :goto_6

    :cond_17
    if-eqz v3, :cond_18

    const/16 v6, 0xc

    goto :goto_3

    :cond_18
    const/16 v6, 0xd

    goto :goto_3

    :cond_19
    if-ne v0, v13, :cond_1d

    and-int/lit8 v6, v4, 0x4

    if-eqz v6, :cond_1a

    if-nez v3, :cond_1a

    move v6, v7

    goto :goto_7

    :cond_1a
    const/4 v6, 0x0

    :goto_7
    if-eqz v5, :cond_1c

    if-nez v6, :cond_1c

    if-eqz v3, :cond_1b

    const/16 v13, 0xa

    goto :goto_8

    :cond_1b
    const/16 v13, 0xb

    goto :goto_8

    :cond_1c
    if-eqz v3, :cond_11

    move v13, v11

    goto :goto_8

    :cond_1d
    if-ne v0, v15, :cond_1f

    if-eqz v3, :cond_1e

    move v13, v10

    goto/16 :goto_2

    :cond_1e
    const/16 v6, 0xf

    goto :goto_3

    :cond_1f
    const/4 v6, 0x0

    const/4 v13, 0x0

    :goto_8
    const/16 v16, 0x0

    if-eqz v13, :cond_27

    if-ne v9, v10, :cond_25

    if-nez v5, :cond_25

    if-eq v13, v15, :cond_21

    if-eq v13, v12, :cond_21

    if-eq v13, v11, :cond_20

    if-eq v13, v14, :cond_20

    goto :goto_a

    :cond_20
    const/4 v4, 0x0

    goto :goto_9

    :cond_21
    move v4, v7

    :goto_9
    invoke-virtual {v8, v4}, Landroid/window/TransitionInfo$AnimationOptions;->getCustomActivityTransition(Z)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    move-result-object v16

    :goto_a
    if-eqz v16, :cond_24

    invoke-virtual {v8}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_22

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomEnterResId()I

    move-result v5

    goto :goto_b

    :cond_22
    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomExitResId()I

    move-result v5

    :goto_b
    invoke-virtual {v2, v4, v5}, Lcom/android/internal/policy/TransitionAnimation;->loadAppTransitionAnimation(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_23

    invoke-virtual/range {v16 .. v16}, Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;->getCustomBackgroundColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setBackdropColor(I)V

    :cond_23
    :goto_c
    move-object/from16 v16, v2

    goto :goto_d

    :cond_24
    invoke-virtual {v8}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Landroid/window/TransitionInfo$AnimationOptions;->getAnimations()I

    move-result v5

    invoke-virtual {v2, v4, v5, v13, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadAnimationAttr(Ljava/lang/String;IIZ)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_c

    :cond_25
    if-eqz v6, :cond_26

    if-nez v5, :cond_26

    const v5, 0x10102

    and-int/2addr v4, v5

    if-nez v4, :cond_26

    goto :goto_d

    :cond_26
    invoke-virtual {v2, v13, v6}, Lcom/android/internal/policy/TransitionAnimation;->loadDefaultAnimationAttr(IZ)Landroid/view/animation/Animation;

    move-result-object v16

    :cond_27
    :goto_d
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v2, v2, v7

    if-eqz v2, :cond_28

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v4, v13

    invoke-static/range {p0 .. p0}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v2, v4, v0, v3}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x47ca01eaa5aec497L    # -6.46301879139433E-38

    const/16 v11, 0xc4

    const-string v12, "loadAnimation: anim=%s animAttr=0x%x type=%s isEntrance=%b"

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    if-eqz v0, :cond_2a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_29

    invoke-static/range {p3 .. p3}, Lcom/android/internal/policy/TransitionAnimation;->wallpaperTransitTypeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v8, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-wide v9, -0x5a955683c30ac96eL

    const/16 v11, 0xc

    const-string v12, "   wallpaperTransit=%s translucent=%b"

    invoke-static/range {v8 .. v13}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_29
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_2a

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v2, "   change=%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-wide v3, 0x3c4adc430bc330e7L    # 2.9122101908755148E-18

    const/4 v5, 0x0

    move-object/from16 p0, v1

    move-wide/from16 p1, v3

    move/from16 p3, v5

    move-object/from16 p4, v2

    move-object/from16 p5, v0

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2a
    return-object v16
.end method
