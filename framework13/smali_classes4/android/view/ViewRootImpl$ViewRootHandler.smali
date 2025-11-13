.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor blacklist <init>(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .line 6593
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 6704
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_7

    .line 6929
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    move v0, v2

    .line 6930
    .local v0, "showing":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v1, v1, Lcom/android/internal/policy/DecorView;

    if-eqz v1, :cond_12

    .line 6931
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/DecorView;->onFreeformResizeGuideViewChanged(Z)V

    goto/16 :goto_7

    .line 6925
    .end local v0    # "showing":Z
    :sswitch_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusInTaskChanged(Landroid/view/ViewRootImpl;)V

    .line 6927
    goto/16 :goto_7

    .line 6920
    :sswitch_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchLetterboxDirectionChanged(Landroid/view/ViewRootImpl;I)V

    .line 6922
    goto/16 :goto_7

    .line 6914
    :sswitch_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SPEN:Z

    if-eqz v0, :cond_12

    .line 6915
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputEvent;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSPenGestureEvent(Landroid/view/ViewRootImpl;[Landroid/view/InputEvent;)V

    goto/16 :goto_7

    .line 6904
    :sswitch_4
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 6905
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 6906
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onFinishMovingTask()V

    .line 6905
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 6908
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 6910
    goto/16 :goto_7

    .line 6908
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6896
    :sswitch_5
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    .line 6897
    goto/16 :goto_7

    .line 6893
    :sswitch_6
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->keepClearRectsChanged()V

    .line 6894
    goto/16 :goto_7

    .line 6791
    :sswitch_7
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_2

    .line 6792
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSG_WINDOW_TOUCH_MODE_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    .line 6795
    goto/16 :goto_7

    .line 6899
    :sswitch_8
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    .line 6900
    goto/16 :goto_7

    .line 6765
    :sswitch_9
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsController;->hide(IZ)V

    .line 6766
    goto/16 :goto_7

    .line 6755
    :sswitch_a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_5

    .line 6756
    const-string v0, "ViewRootImpl"

    const-string v1, "Calling showInsets(%d,%b) on window that no longer has views."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 6758
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v5, v3, :cond_4

    move v5, v3

    goto :goto_1

    :cond_4
    move v5, v2

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v3

    .line 6757
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 6756
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6760
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    move v4, v2

    :goto_2
    invoke-static {v0, v1, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V

    .line 6761
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v3, :cond_7

    move v2, v3

    :cond_7
    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsController;->show(IZ)V

    .line 6762
    goto/16 :goto_7

    .line 6890
    :sswitch_b
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    .line 6891
    goto/16 :goto_7

    .line 6733
    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6740
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InsetsState;

    invoke-virtual {v1, v3}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 6741
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InsetsSourceControl;

    .line 6742
    .local v1, "controls":[Landroid/view/InsetsSourceControl;
    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v3, v3, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_8

    .line 6743
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/InsetsController;->onControlsChanged([Landroid/view/InsetsSourceControl;)V

    goto :goto_4

    .line 6744
    :cond_8
    if-eqz v1, :cond_a

    .line 6745
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_a

    aget-object v4, v1, v2

    .line 6746
    .local v4, "control":Landroid/view/InsetsSourceControl;
    if-eqz v4, :cond_9

    .line 6747
    new-instance v5, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Landroid/view/InsetsAnimationThreadControlRunner$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v4, v5}, Landroid/view/InsetsSourceControl;->release(Ljava/util/function/Consumer;)V

    .line 6745
    .end local v4    # "control":Landroid/view/InsetsSourceControl;
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 6751
    :cond_a
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 6752
    goto/16 :goto_7

    .line 6886
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "controls":[Landroid/view/InsetsSourceControl;
    :sswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_b

    move v2, v3

    :cond_b
    move v0, v2

    .line 6887
    .local v0, "hasCapture":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    .line 6888
    .end local v0    # "hasCapture":Z
    goto/16 :goto_7

    .line 6882
    :sswitch_e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    .line 6883
    .local v0, "event":Landroid/view/MotionEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mresetPointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V

    .line 6884
    .end local v0    # "event":Landroid/view/MotionEvent;
    goto/16 :goto_7

    .line 6877
    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    .line 6878
    .local v0, "receiver":Lcom/android/internal/os/IResultReceiver;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 6879
    .local v1, "deviceId":I
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    .line 6880
    .end local v0    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v1    # "deviceId":I
    goto/16 :goto_7

    .line 6874
    :sswitch_10
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    .line 6875
    goto/16 :goto_7

    .line 6807
    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    .line 6808
    .local v0, "event":Landroid/view/InputEvent;
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v4, 0x20

    invoke-virtual {v2, v0, v1, v4, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6809
    .end local v0    # "event":Landroid/view/InputEvent;
    goto/16 :goto_7

    .line 6769
    :sswitch_12
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_12

    .line 6770
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 6771
    .local v0, "w":I
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 6772
    .local v1, "h":I
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 6773
    .local v2, "l":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 6774
    .local v3, "t":I
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->left:I

    .line 6775
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v5, v2, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 6776
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 6777
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v4

    iget-object v4, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v5, v3, v1

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 6778
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v5

    iget-object v5, v5, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 6779
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    .line 6780
    .end local v0    # "w":I
    .end local v1    # "h":I
    .end local v2    # "l":I
    .end local v3    # "t":I
    goto/16 :goto_7

    .line 6869
    :sswitch_13
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 6870
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_7

    .line 6866
    :sswitch_14
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v1, v1}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 6867
    goto/16 :goto_7

    .line 6715
    :sswitch_15
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 6716
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 6717
    goto/16 :goto_7

    .line 6851
    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    .line 6852
    .local v0, "config":Landroid/content/res/Configuration;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    .line 6853
    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 6852
    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6855
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 6859
    :cond_c
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    .line 6860
    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 6859
    invoke-virtual {v1, v0, v3}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 6862
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v3, Landroid/util/MergedConfiguration;

    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    const/4 v4, -0x1

    invoke-static {v1, v3, v2, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V

    .line 6864
    .end local v0    # "config":Landroid/content/res/Configuration;
    goto/16 :goto_7

    .line 6848
    :sswitch_17
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-static {v0, v1}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 6849
    goto/16 :goto_7

    .line 6842
    :sswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/DragEvent;

    .line 6844
    .local v0, "event":Landroid/view/DragEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v1, v1, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v1, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 6845
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    .line 6846
    .end local v0    # "event":Landroid/view/DragEvent;
    goto/16 :goto_7

    .line 6835
    :sswitch_19
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 6836
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 6832
    :sswitch_1a
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ImeFocusController;->checkFocus(ZZ)Z

    .line 6833
    goto/16 :goto_7

    .line 6828
    :sswitch_1b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 6829
    .local v0, "event":Landroid/view/KeyEvent;
    iget-object v4, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6830
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_7

    .line 6814
    :sswitch_1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    .line 6815
    .restart local v0    # "event":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_d

    .line 6819
    nop

    .line 6820
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    .line 6819
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 6822
    :cond_d
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6823
    .end local v0    # "event":Landroid/view/KeyEvent;
    goto/16 :goto_7

    .line 6722
    :sswitch_1d
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    .line 6723
    goto/16 :goto_7

    .line 6719
    :sswitch_1e
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_e

    move v2, v3

    :cond_e
    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    .line 6720
    goto/16 :goto_7

    .line 6800
    :sswitch_1f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6801
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/view/InputEvent;

    .line 6802
    .local v1, "event":Landroid/view/InputEvent;
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputEventReceiver;

    .line 6803
    .local v4, "receiver":Landroid/view/InputEventReceiver;
    iget-object v5, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v1, v4, v2, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 6804
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 6805
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "event":Landroid/view/InputEvent;
    .end local v4    # "receiver":Landroid/view/InputEventReceiver;
    goto/16 :goto_7

    .line 6783
    :sswitch_20
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_11

    .line 6784
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MSG_WINDOW_FOCUS_CHANGED "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6785
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    if-eqz v2, :cond_f

    const-string v2, "1 "

    goto :goto_5

    :cond_f
    const-string v2, "0 "

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6786
    iget-object v2, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    if-eqz v2, :cond_10

    const/16 v2, 0x31

    goto :goto_6

    :cond_10
    const/16 v2, 0x30

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6784
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6788
    :cond_11
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    .line 6789
    goto :goto_7

    .line 6726
    :sswitch_21
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 6727
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v1}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Landroid/view/InsetsState;

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->onStateChanged(Landroid/view/InsetsState;)Z

    .line 6728
    iget-object v1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;ILcom/android/internal/os/SomeArgs;)V

    .line 6729
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 6730
    goto :goto_7

    .line 6797
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_22
    iget-object v0, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 6798
    goto :goto_7

    .line 6709
    :sswitch_23
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 6711
    .local v0, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v2, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->invalidate(IIII)V

    .line 6712
    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    .line 6713
    goto :goto_7

    .line 6706
    .end local v0    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6707
    nop

    .line 6936
    :cond_12
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x3 -> :sswitch_22
        0x4 -> :sswitch_21
        0x5 -> :sswitch_21
        0x6 -> :sswitch_20
        0x7 -> :sswitch_1f
        0x8 -> :sswitch_1e
        0x9 -> :sswitch_1d
        0xb -> :sswitch_1c
        0xc -> :sswitch_1b
        0xd -> :sswitch_1a
        0xe -> :sswitch_19
        0xf -> :sswitch_18
        0x10 -> :sswitch_18
        0x11 -> :sswitch_17
        0x12 -> :sswitch_16
        0x13 -> :sswitch_15
        0x15 -> :sswitch_14
        0x16 -> :sswitch_13
        0x17 -> :sswitch_12
        0x18 -> :sswitch_11
        0x19 -> :sswitch_10
        0x1a -> :sswitch_f
        0x1b -> :sswitch_e
        0x1c -> :sswitch_d
        0x1d -> :sswitch_c
        0x1e -> :sswitch_b
        0x1f -> :sswitch_a
        0x20 -> :sswitch_9
        0x21 -> :sswitch_8
        0x22 -> :sswitch_7
        0x23 -> :sswitch_6
        0x24 -> :sswitch_5
        0x64 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_2
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .line 6596
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 6678
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 6675
    :sswitch_0
    const-string v0, "MSG_FREEFORM_RESIZE_GUIDE_VIEW_CHANGED"

    return-object v0

    .line 6671
    :sswitch_1
    const-string v0, "MSG_WINDOW_FOCUS_IN_TASK_CHANGED"

    return-object v0

    .line 6667
    :sswitch_2
    const-string v0, "MSG_DISPATCH_LETTERBOX_DIRECTION_CHANGED"

    return-object v0

    .line 6663
    :sswitch_3
    const-string v0, "MSG_SPEN_GESTURE_EVENT"

    return-object v0

    .line 6655
    :sswitch_4
    const-string v0, "MSG_FINISH_MOVING_TASK"

    return-object v0

    .line 6660
    :sswitch_5
    const-string v0, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object v0

    .line 6658
    :sswitch_6
    const-string v0, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object v0

    .line 6652
    :sswitch_7
    const-string v0, "MSG_HIDE_INSETS"

    return-object v0

    .line 6650
    :sswitch_8
    const-string v0, "MSG_SHOW_INSETS"

    return-object v0

    .line 6648
    :sswitch_9
    const-string v0, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object v0

    .line 6646
    :sswitch_a
    const-string v0, "MSG_INSETS_CONTROL_CHANGED"

    return-object v0

    .line 6644
    :sswitch_b
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    .line 6642
    :sswitch_c
    const-string v0, "MSG_UPDATE_POINTER_ICON"

    return-object v0

    .line 6640
    :sswitch_d
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    .line 6638
    :sswitch_e
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    .line 6636
    :sswitch_f
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    .line 6634
    :sswitch_10
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    .line 6632
    :sswitch_11
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    .line 6630
    :sswitch_12
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    .line 6628
    :sswitch_13
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    .line 6626
    :sswitch_14
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    .line 6624
    :sswitch_15
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    .line 6622
    :sswitch_16
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    .line 6620
    :sswitch_17
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    .line 6618
    :sswitch_18
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    .line 6616
    :sswitch_19
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    .line 6614
    :sswitch_1a
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    .line 6612
    :sswitch_1b
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    .line 6610
    :sswitch_1c
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    .line 6608
    :sswitch_1d
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    .line 6606
    :sswitch_1e
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    .line 6604
    :sswitch_1f
    const-string v0, "MSG_RESIZED"

    return-object v0

    .line 6602
    :sswitch_20
    const-string v0, "MSG_DIE"

    return-object v0

    .line 6600
    :sswitch_21
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    .line 6598
    :sswitch_22
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_21
        0x3 -> :sswitch_20
        0x4 -> :sswitch_1f
        0x5 -> :sswitch_1e
        0x6 -> :sswitch_1d
        0x7 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x9 -> :sswitch_1a
        0xb -> :sswitch_19
        0xc -> :sswitch_18
        0xd -> :sswitch_17
        0xe -> :sswitch_16
        0xf -> :sswitch_15
        0x10 -> :sswitch_14
        0x11 -> :sswitch_13
        0x12 -> :sswitch_12
        0x13 -> :sswitch_11
        0x15 -> :sswitch_10
        0x17 -> :sswitch_f
        0x18 -> :sswitch_e
        0x19 -> :sswitch_d
        0x1b -> :sswitch_c
        0x1c -> :sswitch_b
        0x1d -> :sswitch_a
        0x1e -> :sswitch_9
        0x1f -> :sswitch_8
        0x20 -> :sswitch_7
        0x22 -> :sswitch_6
        0x23 -> :sswitch_5
        0x64 -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_2
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 6693
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6694
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6697
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6699
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6700
    nop

    .line 6701
    return-void

    .line 6699
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 6700
    throw v2
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "uptimeMillis"    # J

    .line 6683
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6685
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6688
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
