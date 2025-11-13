.class public final Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mClientToken:Landroid/os/IBinder;

.field public final mDecorationSurface:Landroid/view/SurfaceControl;

.field public final mDisplayId:I

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public final mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

.field public mLayerBoosted:Z

.field public final mTaskId:I

.field public final mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

.field public mTouchableState:Z

.field public final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;ILandroid/view/InputChannel;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p8

    const-string v2, "FreeformDimInputListener of "

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragPointerId:I

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    move-object/from16 v4, p2

    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mHandler:Landroid/os/Handler;

    move-object/from16 v4, p3

    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mChoreographer:Landroid/view/Choreographer;

    move/from16 v4, p7

    iput v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    move/from16 v4, p4

    iput v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDisplayId:I

    move-object/from16 v5, p5

    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    new-instance v6, Landroid/os/Binder;

    invoke-direct {v6}, Landroid/os/Binder;-><init>()V

    iput-object v6, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mClientToken:Landroid/os/IBinder;

    new-instance v13, Landroid/window/InputTransferToken;

    invoke-direct {v13}, Landroid/window/InputTransferToken;-><init>()V

    move-object/from16 v7, p6

    iput-object v7, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    if-nez v0, :cond_0

    new-instance v15, Landroid/view/InputChannel;

    invoke-direct {v15}, Landroid/view/InputChannel;-><init>()V

    iput-object v15, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/high16 v9, 0x20000000

    const/4 v10, 0x0

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-interface/range {v3 .. v15}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0

    :cond_0
    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    :goto_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mHandler:Landroid/os/Handler;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mChoreographer:Landroid/view/Choreographer;

    const/4 v5, 0x0

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, v2

    move-object/from16 p5, v3

    move-object/from16 p6, v4

    move/from16 p7, v5

    invoke-direct/range {p2 .. p7}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;I)V

    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;-><init>(Landroid/view/ViewConfiguration;)V

    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mFreeformCaptionTouchState:Lcom/android/wm/shell/windowdecor/FreeformCaptionTouchState;

    :cond_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateBoostIfNeeded(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener$TaskDimInputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mClientToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public final updateBoostIfNeeded(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mLayerBoosted:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mLayerBoosted:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateBoostIfNeeded: t #"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformDimInputListener"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget p0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTaskId:I

    invoke-virtual {v0, p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setBoostFreeformTaskLayer(IZ)V

    :cond_0
    return-void
.end method

.method public final updateTouchableState(Z)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mTouchableState:Z

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    :goto_0
    move v4, p1

    goto :goto_1

    :cond_1
    const/16 p1, 0x18

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDisplayId:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v5, 0x20000000

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2
    return-void
.end method
