.class public Lcom/android/internal/policy/BackdropFrameRenderer;
.super Ljava/lang/Thread;
.source "BackdropFrameRenderer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field private blacklist mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mChoreographer:Landroid/view/Choreographer;

.field private blacklist mDecorView:Lcom/android/internal/policy/DecorView;

.field private blacklist mFrameAndBackdropNode:Landroid/graphics/RenderNode;

.field private blacklist mFullscreen:Z

.field private blacklist mLastCaptionHeight:I

.field private blacklist mLastContentHeight:I

.field private blacklist mLastContentWidth:I

.field private blacklist mLastXOffset:I

.field private blacklist mLastYOffset:I

.field private blacklist mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private final blacklist mNewTargetRect:Landroid/graphics/Rect;

.field private blacklist mOldFullscreen:Z

.field private final blacklist mOldSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mOldTargetRect:Landroid/graphics/Rect;

.field private blacklist mRenderer:Landroid/view/ThreadedRenderer;

.field private blacklist mReportNextDraw:Z

.field private blacklist mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private blacklist mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

.field private blacklist mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

.field private final blacklist mSystemBarInsets:Landroid/graphics/Rect;

.field private final blacklist mTargetRect:Landroid/graphics/Rect;

.field private final blacklist mTmpRect:Landroid/graphics/Rect;

.field private blacklist mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/policy/DecorView;Landroid/view/ThreadedRenderer;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;IIZLandroid/graphics/Insets;)V
    .locals 13
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "renderer"    # Landroid/view/ThreadedRenderer;
    .param p3, "initialBounds"    # Landroid/graphics/Rect;
    .param p4, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "captionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p6, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p7, "statusBarColor"    # I
    .param p8, "navigationBarColor"    # I
    .param p9, "fullscreen"    # Z
    .param p10, "systemBarInsets"    # Landroid/graphics/Insets;

    .line 80
    move-object v7, p0

    move/from16 v8, p9

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 43
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    .line 50
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    .line 73
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    iput-object v10, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    .line 74
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    .line 75
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    .line 81
    const-string v0, "ResizeFrame"

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->setName(Ljava/lang/String;)V

    .line 83
    move-object v12, p2

    iput-object v12, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 84
    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/BackdropFrameRenderer;->onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V

    .line 89
    const-string v0, "FrameAndBackdropNode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    .line 91
    iget-object v1, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/graphics/RenderNode;Z)V

    .line 94
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 95
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 96
    iput-boolean v8, v7, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 97
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 98
    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Insets;->toRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->start()V

    .line 102
    return-void
.end method

.method private blacklist addSystemBarNodeIfNeeded()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    .line 141
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    const-string v1, "SystemBarBackgroundNode"

    invoke-static {v1, v0}, Landroid/graphics/RenderNode;->create(Ljava/lang/String;Landroid/graphics/RenderNode$AnimationHost;)Landroid/graphics/RenderNode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/ThreadedRenderer;->addRenderNode(Landroid/graphics/RenderNode;Z)V

    .line 145
    return-void
.end method

.method private blacklist doFrameUncheckedLocked()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    .line 244
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    .line 246
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldFullscreen:Z

    .line 247
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 248
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldSystemBarInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNewTargetRect:Landroid/graphics/Rect;

    iget-boolean v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->redrawLocked(Landroid/graphics/Rect;Z)V

    .line 251
    :cond_1
    return-void
.end method

.method private blacklist drawColorViews(IIIIZ)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "fullscreen"    # Z

    .line 356
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-virtual {v0, p3, p4}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v0

    .line 360
    .local v0, "canvas":Landroid/graphics/RecordingCanvas;
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-virtual {v1, p1, p2, v2, v3}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 361
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 362
    .local v1, "topInset":I
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1

    .line 363
    add-int v3, p1, p3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v4, v3, v1}, Landroid/graphics/drawable/ColorDrawable;->setBounds(IIII)V

    .line 364
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    if-eqz p5, :cond_2

    .line 371
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p3, p4, v2, v3, v4}, Lcom/android/internal/policy/DecorView;->getNavigationBarRect(IILandroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 372
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ColorDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 373
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->endRecording()V

    .line 376
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 377
    return-void
.end method

.method private blacklist pingRenderLocked(Z)V
    .locals 1
    .param p1, "drawImmediate"    # Z

    .line 397
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 398
    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 402
    :goto_0
    return-void
.end method

.method private blacklist redrawLocked(Landroid/graphics/Rect;Z)V
    .locals 13
    .param p1, "newBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z

    .line 305
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getCaptionHeight()I

    move-result v0

    .line 309
    .local v0, "captionHeight":I
    if-eqz v0, :cond_0

    .line 311
    iput v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    .line 316
    :cond_0
    iget v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v1

    if-nez v1, :cond_6

    :cond_1
    iget v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    if-nez v1, :cond_2

    goto :goto_1

    .line 323
    :cond_2
    iget v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    .line 324
    .local v1, "left":I
    iget v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    .line 325
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 326
    .local v9, "width":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 328
    .local v10, "height":I
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    add-int v4, v1, v9

    add-int v5, v2, v10

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 331
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v9, v10}, Landroid/graphics/RenderNode;->beginRecording(II)Landroid/graphics/RecordingCanvas;

    move-result-object v11

    .line 332
    .local v11, "canvas":Landroid/graphics/RecordingCanvas;
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3

    .line 333
    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    move-object v12, v3

    .line 335
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v3, 0x0

    if-eqz v12, :cond_4

    .line 336
    add-int v4, v1, v9

    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v12, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 337
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 341
    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 342
    iget v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    add-int v6, v1, v9

    add-int v7, v2, v10

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 343
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 345
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->endRecording()V

    .line 347
    move-object v3, p0

    move v4, v1

    move v5, v2

    move v6, v9

    move v7, v10

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/policy/BackdropFrameRenderer;->drawColorViews(IIIIZ)V

    .line 350
    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3, v4}, Landroid/view/ThreadedRenderer;->drawRenderNode(Landroid/graphics/RenderNode;)V

    .line 352
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 353
    return-void

    .line 318
    .end local v1    # "left":I
    .end local v2    # "top":I
    .end local v9    # "width":I
    .end local v10    # "height":I
    .end local v11    # "canvas":Landroid/graphics/RecordingCanvas;
    .end local v12    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_6
    :goto_1
    return-void
.end method

.method private blacklist reportDrawIfNeeded()V
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    if-eqz v0, :cond_1

    .line 382
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    invoke-virtual {v0}, Lcom/android/internal/policy/DecorView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportDrawFinish()V

    .line 385
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 387
    :cond_1
    return-void
.end method


# virtual methods
.method public whitelist doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .line 229
    monitor-enter p0

    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->reportDrawIfNeeded()V

    .line 233
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 234
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->doFrameUncheckedLocked()V

    .line 237
    monitor-exit p0

    .line 238
    return-void

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist onConfigurationChange()V
    .locals 2

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 174
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 176
    :cond_0
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onContentDrawn(IIII)Z
    .locals 7
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I
    .param p3, "xSize"    # I
    .param p4, "ySize"    # I

    .line 264
    monitor-enter p0

    .line 265
    :try_start_0
    iget v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 267
    .local v0, "firstCall":Z
    :goto_0
    iput p3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentWidth:I

    .line 268
    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    sub-int v4, p4, v3

    iput v4, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastContentHeight:I

    .line 269
    iput p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastXOffset:I

    .line 270
    iput p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastYOffset:I

    .line 273
    iget-object v5, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    add-int v6, p1, p3

    add-int/2addr v3, p2

    add-int/2addr v3, v4

    invoke-virtual {v5, p1, p2, v6, v3}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 281
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mLastCaptionHeight:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 282
    invoke-virtual {v3}, Lcom/android/internal/policy/DecorView;->isShowingCaption()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    monitor-exit p0

    .line 281
    return v1

    .line 283
    .end local v0    # "firstCall":Z
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onRequestDraw(Z)V
    .locals 2
    .param p1, "reportNextDraw"    # Z

    .line 287
    monitor-enter p0

    .line 288
    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mReportNextDraw:Z

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mOldTargetRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist onResourcesLoaded(Lcom/android/internal/policy/DecorView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)V
    .locals 2
    .param p1, "decorView"    # Lcom/android/internal/policy/DecorView;
    .param p2, "resizingBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "captionBackgroundDrawableDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p4, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p5, "statusBarColor"    # I
    .param p6, "navigationBarColor"    # I

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mDecorView:Lcom/android/internal/policy/DecorView;

    .line 109
    nop

    .line 110
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    .line 112
    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    nop

    .line 114
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 116
    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 117
    nop

    .line 118
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 119
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 120
    :cond_2
    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 122
    iget-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mResizingBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    :cond_3
    if-eqz p5, :cond_4

    .line 125
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 126
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_3

    .line 128
    :cond_4
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mStatusBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 130
    :goto_3
    if-eqz p6, :cond_5

    .line 131
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->addSystemBarNodeIfNeeded()V

    goto :goto_4

    .line 134
    :cond_5
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mNavigationBarColor:Landroid/graphics/drawable/ColorDrawable;

    .line 136
    :goto_4
    monitor-exit p0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist releaseRenderer()V
    .locals 3

    .line 184
    monitor-enter p0

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/ThreadedRenderer;->setContentDrawBounds(IIII)V

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFrameAndBackdropNode:Landroid/graphics/RenderNode;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/graphics/RenderNode;)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarBackgroundNode:Landroid/graphics/RenderNode;

    if-eqz v0, :cond_0

    .line 193
    iget-object v2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2, v0}, Landroid/view/ThreadedRenderer;->removeRenderNode(Landroid/graphics/RenderNode;)V

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mRenderer:Landroid/view/ThreadedRenderer;

    .line 199
    invoke-direct {p0, v1}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 201
    :cond_1
    monitor-exit p0

    .line 202
    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 207
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 208
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 209
    :try_start_1
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 210
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 211
    :try_start_2
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 213
    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 214
    nop

    .line 215
    monitor-enter p0

    .line 217
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mChoreographer:Landroid/view/Choreographer;

    .line 218
    invoke-static {}, Landroid/view/Choreographer;->releaseInstance()V

    .line 219
    monitor-exit p0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 210
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .end local p0    # "this":Lcom/android/internal/policy/BackdropFrameRenderer;
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 213
    .restart local p0    # "this":Lcom/android/internal/policy/BackdropFrameRenderer;
    :catchall_2
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/policy/BackdropFrameRenderer;->releaseRenderer()V

    .line 214
    throw v0
.end method

.method public blacklist setTargetRect(Landroid/graphics/Rect;ZLandroid/graphics/Rect;)V
    .locals 1
    .param p1, "newTargetBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemBarInsets"    # Landroid/graphics/Rect;

    .line 157
    monitor-enter p0

    .line 158
    :try_start_0
    iput-boolean p2, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mFullscreen:Z

    .line 159
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mTargetRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 160
    iget-object v0, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mSystemBarInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/BackdropFrameRenderer;->pingRenderLocked(Z)V

    .line 163
    monitor-exit p0

    .line 164
    return-void

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist setUserCaptionBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "userCaptionBackgroundDrawable"    # Landroid/graphics/drawable/Drawable;

    .line 405
    monitor-enter p0

    .line 406
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/BackdropFrameRenderer;->mUserCaptionBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 407
    monitor-exit p0

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
