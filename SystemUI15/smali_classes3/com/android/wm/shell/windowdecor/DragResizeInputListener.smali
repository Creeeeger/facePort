.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field public final mClientToken:Landroid/os/IBinder;

.field public final mDecorationSurface:Landroid/view/SurfaceControl;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayId:I

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

.field public final mInputSinkSurface:Landroid/view/SurfaceControl;

.field public final mLastTouchRegion:Landroid/graphics/Region;

.field public final mPointerTouchableRegion:Landroid/graphics/Region;

.field public final mSinkClientToken:Landroid/os/IBinder;

.field public final mSinkInputChannel:Landroid/view/InputChannel;

.field public final mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

.field public final mTouchRegion:Landroid/graphics/Region;

.field public mTouchableState:Z

.field public final mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "I",
            "Landroid/view/SurfaceControl;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallback;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v15, p5

    const-string v0, "DragResizeInputListener of "

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v2

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    move-object/from16 v3, p8

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    move/from16 v3, p4

    iput v3, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    iput-object v15, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    move-object/from16 v4, p9

    iput-object v4, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance v5, Landroid/os/Binder;

    invoke-direct {v5}, Landroid/os/Binder;-><init>()V

    iput-object v5, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mClientToken:Landroid/os/IBinder;

    new-instance v16, Landroid/window/InputTransferToken;

    invoke-direct/range {v16 .. v16}, Landroid/window/InputTransferToken;-><init>()V

    new-instance v14, Landroid/view/InputChannel;

    invoke-direct {v14}, Landroid/view/InputChannel;-><init>()V

    iput-object v14, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/high16 v8, 0x20000000

    const/4 v9, 0x4

    move/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v12, v16

    invoke-interface/range {v2 .. v14}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    new-instance v8, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda0;

    invoke-direct {v8, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)V

    new-instance v9, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;)V

    move-object v2, v0

    move-object/from16 v3, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda0;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;)V

    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput v2, v0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    invoke-interface/range {p7 .. p7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TaskInputSink of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v2, "DragResizeInputListener.constructor"

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v8

    iput-object v8, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputSinkSurface:Landroid/view/SurfaceControl;

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    const/4 v2, -0x2

    invoke-virtual {v0, v8, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    iput-object v9, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSinkClientToken:Landroid/os/IBinder;

    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iput-object v0, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSinkInputChannel:Landroid/view/InputChannel;

    :try_start_1
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget v7, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v14, 0x7e6

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object/from16 v18, v0

    invoke-interface/range {v6 .. v18}, Landroid/view/IWindowSession;->grantInputChannel(ILandroid/view/SurfaceControl;Landroid/os/IBinder;Landroid/window/InputTransferToken;IIIILandroid/os/IBinder;Landroid/window/InputTransferToken;Ljava/lang/String;Landroid/view/InputChannel;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->dispose()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mClientToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSinkInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSinkClientToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputSinkSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public final setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchableState:Z

    if-ne p3, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput p2, v0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {p2}, Landroid/graphics/Region;->setEmpty()V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->union(Landroid/graphics/Region;Landroid/graphics/Region;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->union(Landroid/graphics/Region;Landroid/graphics/Region;)V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputEventReceiver:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;

    iput-object p1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTouchRegion:Landroid/graphics/Region;

    if-eqz p2, :cond_4

    iput-boolean p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchableState:Z

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    invoke-virtual {p2, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-nez p3, :cond_3

    const/16 p2, 0x18

    :goto_1
    move v4, p2

    goto :goto_2

    :cond_3
    const/16 p2, 0x8

    goto :goto_1

    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLastTouchRegion:Landroid/graphics/Region;

    iget-object v8, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mPointerTouchableRegion:Landroid/graphics/Region;

    const/high16 v5, 0x20000000

    const/4 v6, 0x4

    invoke-interface/range {v0 .. v8}, Landroid/view/IWindowSession;->updateInputChannelWithPointerRegion(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;Landroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_3

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {p2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v1

    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDecorationSurface:Landroid/view/SurfaceControl;

    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    const/high16 v5, 0x20000000

    const/4 v6, 0x4

    const/16 v4, 0x8

    invoke-interface/range {v0 .. v7}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_3
    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->mTaskSize:Landroid/util/Size;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputSinkSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p2, p3, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->updateSinkInputChannel(Landroid/graphics/Region;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSinkInputChannel(Landroid/graphics/Region;)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTouchableState:Z

    if-nez v0, :cond_0

    const/16 v0, 0x18

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mSinkInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDisplayId:I

    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputSinkSurface:Landroid/view/SurfaceControl;

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v8, p1

    invoke-interface/range {v1 .. v8}, Landroid/view/IWindowSession;->updateInputChannel(Landroid/os/IBinder;ILandroid/view/SurfaceControl;IIILandroid/graphics/Region;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_2
    return-void
.end method
