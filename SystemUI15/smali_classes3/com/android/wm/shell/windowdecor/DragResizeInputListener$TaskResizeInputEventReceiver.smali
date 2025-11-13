.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

.field public mConsumeBatchEventScheduled:Z

.field public final mContext:Landroid/content/Context;

.field public final mDisplayLayoutSizeSupplier:Ljava/util/function/Supplier;

.field public final mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPointerId:I

.field public mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

.field public mDragStartTaskBounds:Landroid/graphics/Rect;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputChannel:Landroid/view/InputChannel;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsDexEnabled:Z

.field public mIsPointerInput:Z

.field public mIsStylusFromTouchPad:Z

.field public mIsStylusInput:Z

.field public mLastCursorType:I

.field public final mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$1;

.field public mShouldHandleEvents:Z

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mTouchRegion:Landroid/graphics/Region;

.field public final mTouchRegionConsumer:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda0;Lcom/android/wm/shell/windowdecor/DragResizeInputListener$$ExternalSyntheticLambda1;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Landroid/os/Handler;Landroid/view/Choreographer;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Landroid/os/Handler;Landroid/view/Choreographer;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/InputChannel;",
            "Lcom/android/wm/shell/windowdecor/DragPositioningCallback;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Ljava/util/function/Supplier<",
            "Landroid/util/Size;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/Region;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTmpRect:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mLastCursorType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragPointerId:I

    new-instance v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$1;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$1;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputManager:Landroid/hardware/input/InputManager;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    iput-object p3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iput-object p5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/android/wm/shell/windowdecor/DragDetector;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragDetector;-><init>(Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;)V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput-object p6, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDisplayLayoutSizeSupplier:Ljava/util/function/Supplier;

    iput-object p7, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTouchRegionConsumer:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    invoke-super {p0}, Landroid/view/InputEventReceiver;->dispose()V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-interface {p0, v0, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    return-void
.end method

.method public final handleMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v6, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const/16 v2, 0x4002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsStylusInput:Z

    if-nez v2, :cond_1

    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v6

    :goto_1
    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsPointerInput:Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getFlags()I

    move-result v2

    const/high16 v4, 0x4000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsStylusInput:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    move v2, v6

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsStylusFromTouchPad:Z

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputManager:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, v2}, Landroid/hardware/input/InputManager;->setIsStylusFromTouchpad(Z)V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsPointerInput:Z

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v4, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->sIsPointerInput:Z

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const-string v4, "DragResizeInputListener"

    if-eqz v2, :cond_f

    if-eq v2, v6, :cond_b

    const/4 v5, 0x2

    if-eq v2, v5, :cond_8

    const/4 v5, 0x3

    if-eq v2, v5, :cond_b

    const/4 v4, 0x7

    if-eq v2, v4, :cond_7

    const/16 v4, 0x9

    if-eq v2, v4, :cond_7

    const/16 v1, 0xa

    if-eq v2, v1, :cond_5

    goto/16 :goto_5

    :cond_5
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mHandler:Landroid/os/Handler;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mSetDefaultPointerRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$1;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_6

    :cond_6
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputManager:Landroid/hardware/input/InputManager;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto/16 :goto_6

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move v2, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateCursorType(IIIFF)V

    goto/16 :goto_6

    :cond_8
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-nez v2, :cond_9

    goto/16 :goto_5

    :cond_9
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v5}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/hardware/input/InputManager;->pilferPointers(Landroid/os/IBinder;)V

    iget v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_a

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_13

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, 0x7c1c026dba073ab5L    # 6.824031103167302E289

    const/4 v8, 0x0

    const-string v9, "%s: Handling action move, but ignore event due to invalid pointer index"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v3

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-interface {v2, v3, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateInputSinkRegionForDrag(Landroid/graphics/Rect;)V

    goto/16 :goto_6

    :cond_b
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v2, :cond_e

    iget v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragPointerId:I

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_d

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_c

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    int-to-long v1, v1

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x4

    const-string v9, "%s: Handling action %d, but ignore event due to invalid pointer index"

    const-wide v6, 0x5ba2972a6eb639c8L

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    if-eqz v1, :cond_13

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v2, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    goto/16 :goto_5

    :cond_d
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v5

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v1

    invoke-interface {v4, v5, v1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragStartTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTouchRegionConsumer:Ljava/util/function/Consumer;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTouchRegion:Landroid/graphics/Region;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_e
    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragPointerId:I

    goto/16 :goto_6

    :cond_f
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v2, v1, v5}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->shouldHandleEvent(Landroid/view/MotionEvent;Landroid/graphics/Point;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    if-eqz v2, :cond_12

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragPointerId:I

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    move-result v7

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    move-result v8

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    const/16 v11, 0x1002

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_10

    move v10, v6

    goto :goto_4

    :cond_10
    move v10, v3

    :goto_4
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getToolType(I)I

    invoke-virtual {v9, v2, v5, v10}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateCtrlType(FFZ)I

    move-result v2

    sget-object v5, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v5, v5, v3

    if-eqz v5, :cond_11

    int-to-long v9, v2

    sget-object v11, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v16

    const/4 v14, 0x4

    const-string v15, "%s: Handling action down, update ctrlType to %d"

    const-wide v12, 0x1bdeabf17a0f309aL

    invoke-static/range {v11 .. v16}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    invoke-interface {v4, v7, v8, v2}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)Landroid/graphics/Rect;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragStartTaskBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateInputSinkRegionForDrag(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXCursorPosition()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYCursorPosition()F

    move-result v7

    move-object/from16 v0, p0

    move v1, v2

    move v2, v4

    move v4, v5

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->updateCursorType(IIIFF)V

    goto :goto_6

    :cond_12
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_13

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v10

    const-wide v6, -0x194c7f8fb6b2c385L    # -5.303347654176952E186

    const/4 v8, 0x0

    const-string v9, "%s: Handling action down, but ignore event"

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_5
    move v6, v3

    :cond_14
    :goto_6
    return v6
.end method

.method public final onBatchedInputEventPending(I)V
    .locals 3

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    :goto_0
    return-void
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 3

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void
.end method

.method public final updateCursorType(IIIFF)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p5

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual {v6, v1, v2, v5}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateCtrlType(FFZ)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDragResizeWindowGeometry:Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    invoke-virtual {v6, v1, v2, v4}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;->calculateCtrlType(FFZ)I

    move-result v1

    :goto_0
    const/16 v2, 0x3e8

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_2

    :pswitch_1
    const/16 v5, 0x3f8

    goto :goto_2

    :pswitch_2
    const/16 v5, 0x3f9

    goto :goto_2

    :pswitch_3
    const/16 v5, 0x3f7

    goto :goto_2

    :pswitch_4
    const/16 v5, 0x3f6

    :goto_2
    if-eqz v3, :cond_4

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsStylusInput:Z

    const/16 v3, 0x2789

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsStylusFromTouchPad:Z

    if-nez v1, :cond_3

    const/16 v1, 0x4e21

    if-eq v5, v1, :cond_2

    packed-switch v5, :pswitch_data_1

    goto :goto_3

    :pswitch_5
    const/16 v5, 0x4e28

    goto :goto_3

    :pswitch_6
    const/16 v5, 0x4e29

    goto :goto_3

    :pswitch_7
    const/16 v5, 0x4e27

    goto :goto_3

    :pswitch_8
    const/16 v5, 0x4e26

    goto :goto_3

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mIsDexEnabled:Z

    if-eqz v1, :cond_4

    if-eq v5, v2, :cond_2

    packed-switch v5, :pswitch_data_2

    goto :goto_3

    :pswitch_9
    const/16 v5, 0x278c

    goto :goto_3

    :pswitch_a
    const/16 v5, 0x278d

    goto :goto_3

    :pswitch_b
    const/16 v5, 0x278b

    goto :goto_3

    :pswitch_c
    const/16 v5, 0x278a

    :cond_4
    :goto_3
    iget v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mLastCursorType:I

    if-ne v1, v5, :cond_5

    if-eq v5, v2, :cond_7

    :cond_5
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v2, v2, v4

    if-eqz v2, :cond_6

    int-to-long v1, v1

    int-to-long v3, v5

    sget-object v6, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "DragResizeInputListener"

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v11

    const/16 v9, 0x14

    const-string v10, "%s: update pointer icon from %d to %d"

    const-wide v7, 0x2446a12cae8f3f3cL    # 6.226852611137359E-134

    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputManager:Landroid/hardware/input/InputManager;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v13

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v17

    move/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    invoke-virtual/range {v12 .. v17}, Landroid/hardware/input/InputManager;->setPointerIcon(Landroid/view/PointerIcon;IIILandroid/os/IBinder;)Z

    iput v5, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mLastCursorType:I

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3f6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public final updateInputSinkRegionForDrag(Landroid/graphics/Rect;)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mDisplayLayoutSizeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    new-instance v1, Landroid/graphics/Region;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v3, v2

    iget v4, p1, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    neg-int v2, v2

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    invoke-direct {v1, v3, v4, v5, v0}, Landroid/graphics/Region;-><init>(IIII)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTmpRect:Landroid/graphics/Rect;

    sget-object v0, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mTouchRegionConsumer:Ljava/util/function/Consumer;

    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
