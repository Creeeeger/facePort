.class public Landroid/view/WindowlessWindowManager;
.super Ljava/lang/Object;
.source "WindowlessWindowManager.java"

# interfaces
.implements Landroid/view/IWindowSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowlessWindowManager$State;,
        Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "WindowlessWindowManager"


# instance fields
.field private final blacklist mConfiguration:Landroid/content/res/Configuration;

.field private blacklist mGlobalConfig:Landroid/content/res/Configuration;

.field final blacklist mHostInputTransferToken:Landroid/window/InputTransferToken;

.field private final blacklist mInputTransferToken:Landroid/window/InputTransferToken;

.field private blacklist mInsetsState:Landroid/view/InsetsState;

.field private final blacklist mLayout:Landroid/view/WindowlessWindowLayout;

.field private blacklist mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

.field private final blacklist mRealWm:Landroid/view/IWindowSession;

.field final blacklist mResizeCompletionForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist mRootSurface:Landroid/view/SurfaceControl;

.field final blacklist mStateForWindow:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Landroid/view/WindowlessWindowManager$State;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSurfaceSession:Landroid/view/SurfaceSession;

.field private blacklist mTaskToken:Landroid/window/WindowContainerToken;

.field private final blacklist mTmpConfig:Landroid/util/MergedConfiguration;

.field private final blacklist mTmpFrames:Landroid/window/ClientWindowFrames;


# direct methods
.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    new-instance v0, Landroid/window/InputTransferToken;

    invoke-direct {v0}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    new-instance v0, Landroid/util/MergedConfiguration;

    invoke-direct {v0}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    new-instance v0, Landroid/view/WindowlessWindowLayout;

    invoke-direct {v0}, Landroid/view/WindowlessWindowLayout;-><init>()V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    iput-object p4, p0, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    iput-object p5, p0, Landroid/view/WindowlessWindowManager;->mGlobalConfig:Landroid/content/res/Configuration;

    iput-object p2, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iput-object p3, p0, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    return-void
.end method

.method private blacklist clearLastReportedParams()V
    .locals 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowlessWindowManager$State;

    iget-object v3, v2, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist isInTouchModeInternal(I)Z
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/IWindowManager;->isInTouchMode(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "WindowlessWindowManager"

    const-string v2, "Unable to check if the window is in touch mode"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isOpaque(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 1

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    move-object/from16 v5, p11

    move-object/from16 v6, p12

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    move-object v7, v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_a

    iget-object v15, v7, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v14, v7, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v13, v0

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    iget-object v8, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    move/from16 v16, v0

    goto :goto_0

    :cond_0
    move/from16 v16, v0

    :goto_0
    iget-object v12, v7, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    new-instance v0, Landroid/window/ClientWindowFrames;

    invoke-direct {v0}, Landroid/window/ClientWindowFrames;-><init>()V

    move-object v11, v0

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    iput-object v0, v11, Landroid/window/ClientWindowFrames;->attachedFrame:Landroid/graphics/Rect;

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mLayout:Landroid/view/WindowlessWindowLayout;

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v0

    move-object/from16 v18, v12

    move/from16 v23, p3

    move/from16 v24, p4

    move-object/from16 v27, v11

    invoke-virtual/range {v17 .. v27}, Landroid/view/WindowlessWindowLayout;->computeFrames(Landroid/view/WindowManager$LayoutParams;Landroid/view/InsetsState;Landroid/graphics/Rect;Landroid/graphics/Rect;IIIIFLandroid/window/ClientWindowFrames;)V

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v3, :cond_2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_1

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    invoke-direct {v1, v12, v11}, Landroid/view/WindowlessWindowManager;->updateTooltipBounds(Landroid/view/WindowManager$LayoutParams;Landroid/window/ClientWindowFrames;)V

    :cond_1
    iget-object v0, v3, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v3, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v3, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    iget-object v0, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v8, v11, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    invoke-virtual {v13, v14, v0, v8}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-nez p5, :cond_3

    invoke-direct {v1, v12}, Landroid/view/WindowlessWindowManager;->isOpaque(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {v13, v15, v0}, Landroid/view/SurfaceControl$Transaction;->setOpaque(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz v5, :cond_4

    const-string v0, "WindowlessWindowManager.relayout"

    invoke-virtual {v5, v15, v0}, Landroid/view/SurfaceControl;->copyFrom(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    if-eqz v5, :cond_4

    invoke-virtual/range {p11 .. p11}, Landroid/view/SurfaceControl;->release()V

    :cond_4
    :goto_1
    if-eqz v4, :cond_6

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mGlobalConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v8, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v0, v8}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_2

    :cond_5
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v8, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v0, v8}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_6
    :goto_2
    const v17, 0x10004

    const v0, 0x10004

    and-int v0, v16, v0

    if-eqz v0, :cond_8

    iget-object v0, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    :try_start_1
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/view/IWindowSession$Stub;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v8, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v9, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    new-instance v10, Landroid/view/SurfaceControl;

    const-string v2, "WindowlessWindowManager.relayout"

    invoke-direct {v10, v15, v2}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v5, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    move-object/from16 v18, v0

    move-object/from16 v19, v8

    move/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v22, v2

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v5

    invoke-interface/range {v18 .. v25}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v2, v14

    move-object v3, v15

    goto :goto_4

    :cond_7
    :try_start_3
    iget-object v8, v1, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v9, v7, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v10, v7, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget v0, v12, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v12, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v3, v12, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v4, v7, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v5, v11

    move-object v11, v15

    move-object/from16 v18, v12

    move v12, v0

    move-object/from16 v19, v13

    move v13, v2

    move-object v2, v14

    move v14, v3

    move-object v3, v15

    move-object v15, v4

    :try_start_4
    invoke-interface/range {v8 .. v15}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    :goto_3
    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v5, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v2, v14

    move-object v3, v15

    :goto_4
    const-string v4, "WindowlessWindowManager"

    const-string v8, "Failed to update surface input channel: "

    invoke-static {v4, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :cond_8
    move-object v5, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v13

    move-object v2, v14

    move-object v3, v15

    :goto_5
    if-eqz v6, :cond_9

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    if-eqz v0, :cond_9

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v6, v0}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    :cond_9
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    const/4 v0, 0x0

    return v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private blacklist sendLayoutParamsToParent()V
    .locals 8

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowlessWindowManager$State;

    iget-object v5, v4, Landroid/view/WindowlessWindowManager$State;->mLastReportedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v6}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    or-int/2addr v2, v6

    add-int/lit8 v6, v1, 0x1

    iget-object v7, v4, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    aput-object v7, v0, v1

    move v1, v6

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    :try_start_0
    iget-object v3, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v3, v0}, Landroid/view/ISurfaceControlViewHostParent;->updateParams([Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    :cond_3
    :goto_2
    return-void
.end method

.method private blacklist updateTooltipBounds(Landroid/view/WindowManager$LayoutParams;Landroid/window/ClientWindowFrames;)V
    .locals 7

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_0

    iget-object v2, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget-object v5, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    goto/16 :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p2, Landroid/window/ClientWindowFrames;->parentFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v4, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v2

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_1

    iget-object v4, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v2

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_1
    goto :goto_0

    :cond_2
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-ge v2, v4, :cond_3

    iget-object v2, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :cond_3
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v4, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget-object v4, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    if-le v2, v4, :cond_4

    iget-object v2, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v6, p2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 30

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p9

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v9, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Leash"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual/range {p0 .. p2}, Landroid/view/WindowlessWindowManager;->getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v12

    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, v9, Landroid/view/WindowlessWindowManager;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget v1, v10, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setBLASTLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "WindowlessWindowManager.addToDisplay"

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v13, 0x0

    invoke-virtual {v0, v13}, Landroid/view/SurfaceControl$Builder;->setHidden(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v15

    new-instance v0, Landroid/view/WindowlessWindowManager$State;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v15

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-object/from16 v6, p1

    move-object v7, v12

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowlessWindowManager$State;-><init>(Landroid/view/WindowlessWindowManager;Landroid/view/SurfaceControl;Landroid/view/WindowManager$LayoutParams;ILandroid/view/IWindow;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V

    monitor-enter p0

    :try_start_0
    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v2, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v2, v0, Landroid/view/WindowlessWindowManager$State;->mFrame:Landroid/graphics/Rect;

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v29, v15

    goto/16 :goto_8

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_1

    :try_start_3
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_4
    new-instance v2, Landroid/window/InputTransferToken;

    invoke-direct {v2}, Landroid/window/InputTransferToken;-><init>()V

    iput-object v2, v1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    :goto_1
    iget-object v2, v9, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    invoke-virtual {v11, v13, v13, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    :cond_2
    iget-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mAttachedFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2
    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p10, v13

    iget v0, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_6

    :try_start_5
    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    instance-of v0, v0, Landroid/view/IWindowSession$Stub;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v0, :cond_3

    :try_start_6
    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    new-instance v2, Landroid/view/SurfaceControl;

    const-string v3, "WindowlessWindowManager.addToDisplay"

    invoke-direct {v2, v15, v3}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceControl;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v19

    iget-object v3, v9, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v6, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v7, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v8, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v13, v1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v16, v0

    move/from16 v17, p4

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v13

    move-object/from16 v28, p6

    invoke-interface/range {v16 .. v28}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    move-object/from16 v29, v15

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object/from16 v29, v15

    goto/16 :goto_5

    :cond_3
    :try_start_7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_4

    iget-object v14, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    iget-object v8, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v13, v9, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    move-object/from16 v29, v15

    move/from16 v15, p4

    move-object/from16 v16, v29

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v26, p6

    move/from16 v27, v8

    move-object/from16 v28, v13

    :try_start_8
    invoke-interface/range {v14 .. v28}, Landroid/view/IWindowSession;->grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V

    goto :goto_3

    :cond_4
    move-object/from16 v29, v15

    iget-object v14, v9, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface/range {p1 .. p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v17

    iget-object v0, v9, Landroid/view/WindowlessWindowManager;->mHostInputTransferToken:Landroid/window/InputTransferToken;

    iget v2, v10, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v3, v10, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v4, v10, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget v5, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v6, v10, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v7, v1, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    invoke-virtual/range {p2 .. p2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v25

    move/from16 v15, p4

    move-object/from16 v16, v29

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v26, p6

    invoke-interface/range {v14 .. v26}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V

    :goto_3
    nop

    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    iput-object v0, v1, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v29, v15

    :goto_5
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to grant input to surface: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_6
    move-object/from16 v29, v15

    :goto_6
    const/4 v0, 0x2

    invoke-direct/range {p0 .. p0}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    move/from16 v2, p4

    invoke-direct {v9, v2}, Landroid/view/WindowlessWindowManager;->isInTouchModeInternal(I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x3

    goto :goto_7

    :cond_7
    const/4 v3, 0x2

    :goto_7
    return v3

    :catchall_1
    move-exception v0

    move/from16 v2, p4

    move-object/from16 v29, v15

    :goto_8
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_8
.end method

.method public blacklist addToDisplayAsUser(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    invoke-virtual/range {v0 .. v10}, Landroid/view/WindowlessWindowManager;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v0

    return v0
.end method

.method public blacklist addToDisplayWithoutInputChannel(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IILandroid/view/InsetsState;Landroid/graphics/Rect;[F)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist cancelDragAndDrop(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method public blacklist cancelDraw(Landroid/view/IWindow;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist clearTouchableRegion(Landroid/view/IWindow;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method

.method public blacklist clearTspDeadzone(Landroid/view/IWindow;)V
    .locals 0

    return-void
.end method

.method public blacklist dragRecipientEntered(Landroid/view/IWindow;)V
    .locals 0

    return-void
.end method

.method public blacklist dragRecipientExited(Landroid/view/IWindow;)V
    .locals 0

    return-void
.end method

.method public blacklist dropForAccessibility(Landroid/view/IWindow;II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    monitor-exit p0

    return-void

    :cond_0
    invoke-interface {v0, p2}, Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;->finished(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public blacklist finishMovingTask(Landroid/view/IWindow;)V
    .locals 0

    return-void
.end method

.method blacklist forwardBackKeyToParent(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0, p1}, Landroid/view/ISurfaceControlViewHostParent;->forwardBackKeyToParent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to forward back key To Parent: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist generateDisplayHash(Landroid/view/IWindow;Landroid/graphics/Rect;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 0

    return-void
.end method

.method public blacklist getDragDeviceId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDragPointerId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getDragStateInputToken()Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist getInputTransferToken(Landroid/os/IBinder;)Landroid/window/InputTransferToken;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputTransferToken:Landroid/window/InputTransferToken;

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WindowlessWindowManager"

    const-string v1, "Failed to get focusGrantToken. Returning null token"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected blacklist getParentSurface(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;)Landroid/view/SurfaceControl;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRootSurface:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    iget-object v1, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    iget-object v0, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected blacklist getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;
    .locals 2

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    return-object v1
.end method

.method protected blacklist getSurfaceControl(Landroid/view/View;)Landroid/view/SurfaceControl;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->getSurfaceControl(Landroid/view/IWindow;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist getWindowBinder(Landroid/view/View;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$W;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getWindowId(Landroid/os/IBinder;)Landroid/view/IWindowId;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist grantEmbeddedWindowFocus(Landroid/view/IWindow;Landroid/window/InputTransferToken;Z)V
    .locals 0

    return-void
.end method

.method public blacklist grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    .locals 0

    return-void
.end method

.method public blacklist grantInputChannelWithTaskToken(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;ILandroid/window/WindowContainerToken;)V
    .locals 0

    return-void
.end method

.method public blacklist moveFocusToAdjacentWindow(Landroid/view/IWindow;I)Z
    .locals 2

    const-string v0, "WindowlessWindowManager"

    const-string v1, "Received request to moveFocusToAdjacentWindow on WindowlessWindowManager. We shouldn\'t get here!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public blacklist outOfMemory(Landroid/view/IWindow;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist performClipDataUpdate(Landroid/content/ClipData;)V
    .locals 0

    return-void
.end method

.method public blacklist performDrag(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist performDragWithArea(Landroid/view/IWindow;ILandroid/view/SurfaceControl;IIIFFFFLandroid/content/ClipData;Landroid/graphics/RectF;Landroid/graphics/Point;)Landroid/os/IBinder;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist performHapticFeedback(IZZ)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/IWindowSession;->performHapticFeedback(IZZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public blacklist performHapticFeedbackAsync(IZZ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/view/WindowlessWindowManager;->performHapticFeedback(IZZ)Z

    return-void
.end method

.method public blacklist pokeDrawLock(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public blacklist relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/view/WindowRelayoutResult;)I
    .locals 20

    move-object/from16 v0, p9

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/view/WindowRelayoutResult;->frames:Landroid/window/ClientWindowFrames;

    iget-object v2, v0, Landroid/view/WindowRelayoutResult;->mergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v3, v0, Landroid/view/WindowRelayoutResult;->surfaceControl:Landroid/view/SurfaceControl;

    iget-object v4, v0, Landroid/view/WindowRelayoutResult;->insetsState:Landroid/view/InsetsState;

    iget-object v5, v0, Landroid/view/WindowRelayoutResult;->activeControls:Landroid/view/InsetsSourceControl$Array;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move/from16 v14, p8

    move-object v15, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    invoke-direct/range {v6 .. v19}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    move-result v6

    return v6
.end method

.method public blacklist relayoutAsync(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIII)V
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v13}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    return-void
.end method

.method public blacklist relayoutLegacy(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I
    .locals 1

    invoke-direct/range {p0 .. p13}, Landroid/view/WindowlessWindowManager;->relayoutInner(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)I

    move-result v0

    return v0
.end method

.method public blacklist remove(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/WindowlessWindowManager;->mTaskToken:Landroid/window/WindowContainerToken;

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowSession;->removeWithTaskToken(Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p0, v1}, Landroid/view/WindowlessWindowManager;->removeSurface(Landroid/view/SurfaceControl;)V

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid window token (never added or removed already)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected blacklist removeSurface(Landroid/view/SurfaceControl;)V
    .locals 3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public blacklist removeWithTaskToken(Landroid/os/IBinder;Landroid/window/WindowContainerToken;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public blacklist reportDecorViewGestureInterceptionChanged(Landroid/view/IWindow;Z)V
    .locals 0

    return-void
.end method

.method public blacklist reportDropResult(Landroid/view/IWindow;Z)V
    .locals 0

    return-void
.end method

.method public blacklist reportKeepClearAreasChanged(Landroid/view/IWindow;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist reportSystemGestureExclusionChanged(Landroid/view/IWindow;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/IWindow;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blacklist sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Z)V
    .locals 0

    return-void
.end method

.method blacklist setCompletionCallback(Landroid/os/IBinder;Landroid/view/WindowlessWindowManager$ResizeCompleteCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "WindowlessWindowManager"

    const-string v1, "Unsupported overlapping resizes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mResizeCompletionForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public blacklist setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Rect;)V
    .locals 1

    invoke-interface {p1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Landroid/view/WindowlessWindowManager;->setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V

    return-void
.end method

.method public blacklist setInsetsState(Landroid/view/InsetsState;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v13, p1

    iput-object v13, v1, Landroid/view/WindowlessWindowManager;->mInsetsState:Landroid/view/InsetsState;

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/view/WindowlessWindowManager$State;

    :try_start_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iget-object v2, v15, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v3, v15, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v0, v0, Landroid/window/ClientWindowFrames;->displayFrame:Landroid/graphics/Rect;

    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v2, v2, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mGlobalConfig:Landroid/content/res/Configuration;

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mGlobalConfig:Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_1

    :cond_0
    iget-object v0, v1, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget-object v2, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :goto_1
    iget-object v2, v15, Landroid/view/WindowlessWindowManager$State;->mClient:Landroid/view/IWindow;

    iget-object v3, v1, Landroid/view/WindowlessWindowManager;->mTmpFrames:Landroid/window/ClientWindowFrames;

    iget-object v5, v1, Landroid/view/WindowlessWindowManager;->mTmpConfig:Landroid/util/MergedConfiguration;

    iget v9, v15, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v10, 0x7fffffff

    move-object/from16 v6, p1

    invoke-interface/range {v2 .. v12}, Landroid/view/IWindow;->resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    goto :goto_0

    :cond_1
    return-void
.end method

.method public blacklist setKeyguardWallpaperTouchAllowed(Landroid/view/IWindow;Z)V
    .locals 0

    return-void
.end method

.method public blacklist setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method blacklist setParentInterface(Landroid/view/ISurfaceControlViewHostParent;)V
    .locals 2

    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-interface {v0}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Landroid/view/ISurfaceControlViewHostParent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_1
    if-eq v0, v1, :cond_2

    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->clearLastReportedParams()V

    :cond_2
    iput-object p1, p0, Landroid/view/WindowlessWindowManager;->mParentInterface:Landroid/view/ISurfaceControlViewHostParent;

    invoke-direct {p0}, Landroid/view/WindowlessWindowManager;->sendLayoutParamsToParent()V

    return-void
.end method

.method public blacklist setShouldZoomOutWallpaper(Landroid/os/IBinder;Z)V
    .locals 0

    return-void
.end method

.method protected blacklist setTouchRegion(Landroid/os/IBinder;Landroid/graphics/Region;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/view/WindowlessWindowManager;->mStateForWindow:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowlessWindowManager$State;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    if-eqz p2, :cond_2

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1, p2}, Landroid/graphics/Region;-><init>(Landroid/graphics/Region;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v2, p0, Landroid/view/WindowlessWindowManager;->mRealWm:Landroid/view/IWindowSession;

    iget-object v3, v0, Landroid/view/WindowlessWindowManager$State;->mInputChannelToken:Landroid/os/IBinder;

    iget v4, v0, Landroid/view/WindowlessWindowManager$State;->mDisplayId:I

    iget-object v5, v0, Landroid/view/WindowlessWindowManager$State;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v6, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v7, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, v0, Landroid/view/WindowlessWindowManager$State;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v9, v0, Landroid/view/WindowlessWindowManager$State;->mInputRegion:Landroid/graphics/Region;

    invoke-interface/range {v2 .. v9}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "WindowlessWindowManager"

    const-string v3, "Failed to update surface input channel: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public blacklist setTspDeadzone(Landroid/view/IWindow;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist setTspNoteMode(Landroid/view/IWindow;Z)V
    .locals 0

    return-void
.end method

.method public blacklist setWallpaperDisplayOffset(Landroid/os/IBinder;II)V
    .locals 0

    return-void
.end method

.method public blacklist setWallpaperPosition(Landroid/os/IBinder;FFFF)V
    .locals 0

    return-void
.end method

.method public blacklist setWallpaperZoomOut(Landroid/os/IBinder;F)V
    .locals 0

    return-void
.end method

.method public blacklist startMovingTask(Landroid/view/IWindow;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public blacklist updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public blacklist updateRequestedVisibleTypes(Landroid/view/IWindow;I)V
    .locals 0

    return-void
.end method

.method public blacklist updateTapExcludeRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    .locals 0

    return-void
.end method

.method public blacklist wallpaperCommandComplete(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public blacklist wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method
