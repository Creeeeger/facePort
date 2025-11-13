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
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private blacklist handleMessageImpl(Landroid/os/Message;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/high16 v3, 0xb000000

    const/4 v4, 0x0

    const-wide/16 v5, 0x2ee

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_10

    :sswitch_0
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchHint(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrameRateCategoryForTouchHint(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_10

    :sswitch_1
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusInTaskChanged(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_10

    :sswitch_2
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchLetterboxDirectionChanged(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_10

    :sswitch_3
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Landroid/view/InputEvent;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSPenGestureEvent(Landroid/view/ViewRootImpl;[Landroid/view/InputEvent;)V

    goto/16 :goto_10

    :sswitch_4
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmSurfaceReplaced(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_10

    :sswitch_5
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput v8, v0, Landroid/view/ViewRootImpl;->mFrameRateCompatibility:I

    goto/16 :goto_10

    :sswitch_6
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_10

    :cond_0
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPointerIconEvent(Landroid/view/ViewRootImpl;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mupdatePointerIcon(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z

    goto/16 :goto_10

    :sswitch_7
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsTouchBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsFrameRateBoosting(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsAnimationRunning(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    const-wide/32 v12, 0xf4240

    div-long/2addr v10, v12

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastUpdateTimeMillis(Landroid/view/ViewRootImpl;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/16 v10, 0x0

    :goto_1
    cmp-long v0, v10, v5

    if-ltz v0, :cond_4

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighCount(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryHighHintCount(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryNormalCount(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryLowCount(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v4}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->-$$Nest$fputmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    if-eqz v0, :cond_3

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/high16 v3, 0xc000000

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    :cond_3
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mupdateFrameRateFromThreadedRendererViews(Landroid/view/ViewRootImpl;)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRate(Landroid/view/ViewRootImpl;)F

    move-result v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRate(Landroid/view/ViewRootImpl;F)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPreferredFrameRateCategory(Landroid/view/ViewRootImpl;)I

    move-result v3

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsPressedGesture(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_10

    :cond_4
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->-$$Nest$fputmInvalidationIdleMessagePosted(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x28

    sub-long/2addr v5, v10

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_10

    :sswitch_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_PROLONG_TOUCH_BOOST:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmIsDragging(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x27

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v3, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsDragging(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_10

    :cond_5
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsFrameRateBoosting(Landroid/view/ViewRootImpl;Z)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmIsTouchBoosting(Landroid/view/ViewRootImpl;Z)V

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DVRR_TOOLKIT_POLICY:Z

    if-eqz v0, :cond_6

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$fputmFrameRateCategoryChangeReason(Landroid/view/ViewRootImpl;I)V

    :cond_6
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmDrawnThisFrame(Landroid/view/ViewRootImpl;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v8}, Landroid/view/ViewRootImpl;->-$$Nest$msetPreferredFrameRateCategory(Landroid/view/ViewRootImpl;I)V

    goto/16 :goto_10

    :sswitch_9
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_7

    goto :goto_2

    :cond_7
    move v8, v9

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/ViewRootImpl;->decorViewInterceptionChanged(Z)V

    goto/16 :goto_10

    :sswitch_a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Timedout waiting to unpause for sync"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v9}, Landroid/view/ViewRootImpl;->-$$Nest$fputmNumPausedForSync(Landroid/view/ViewRootImpl;I)V

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_10

    :sswitch_b
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->reportKeepClearAreasChanged()V

    goto/16 :goto_10

    :sswitch_c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_8

    goto :goto_3

    :cond_8
    move v8, v9

    :goto_3
    invoke-virtual {v0, v8}, Landroid/view/ViewRootImpl;->keepClearRectsChanged(Z)V

    goto/16 :goto_10

    :sswitch_d
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowTouchModeChanged(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_10

    :sswitch_e
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/IScrollCaptureResponseListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->handleScrollCaptureRequest(Landroid/view/IScrollCaptureResponseListener;)V

    goto/16 :goto_10

    :sswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x1f

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_9

    goto :goto_4

    :cond_9
    move v8, v9

    :goto_4
    invoke-virtual {v3, v4, v8, v0}, Landroid/view/InsetsController;->hide(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_10

    :sswitch_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/ImeTracker$Token;

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v3

    const/16 v4, 0x1e

    invoke-interface {v3, v0, v4}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v3, :cond_b

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg2:I

    if-ne v4, v8, :cond_a

    move v4, v8

    goto :goto_5

    :cond_a
    move v4, v9

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Calling showInsets(%d,%b) on window that no longer has views."

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewRootImpl"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_c

    move v5, v8

    goto :goto_6

    :cond_c
    move v5, v9

    :goto_6
    invoke-static {v3, v4, v5}, Landroid/view/ViewRootImpl;->-$$Nest$mclearLowProfileModeIfNeeded(Landroid/view/ViewRootImpl;IZ)V

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmInsetsController(Landroid/view/ViewRootImpl;)Landroid/view/InsetsController;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    if-ne v5, v8, :cond_d

    goto :goto_7

    :cond_d
    move v8, v9

    :goto_7
    invoke-virtual {v3, v4, v8, v0}, Landroid/view/InsetsController;->show(IZLandroid/view/inputmethod/ImeTracker$Token;)V

    goto/16 :goto_10

    :sswitch_11
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->systemGestureExclusionChanged()V

    goto/16 :goto_10

    :sswitch_12
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InsetsState;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InsetsSourceControl$Array;

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5, v3, v4}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleInsetsControlChanged(Landroid/view/ViewRootImpl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_10

    :sswitch_13
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_e

    goto :goto_8

    :cond_e
    move v8, v9

    :goto_8
    move v0, v8

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3, v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandlePointerCaptureChanged(Landroid/view/ViewRootImpl;Z)V

    goto/16 :goto_10

    :sswitch_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/IResultReceiver;

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4, v0, v3}, Landroid/view/ViewRootImpl;->handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V

    goto/16 :goto_10

    :sswitch_15
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleDispatchWindowShown()V

    goto/16 :goto_10

    :sswitch_16
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/InputEvent;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/16 v4, 0x20

    invoke-virtual {v3, v0, v7, v4, v8}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_10

    :sswitch_17
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget v5, v2, Landroid/os/Message;->arg2:I

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v4, v6, Landroid/graphics/Rect;->left:I

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v7, v4, v0

    iput v7, v6, Landroid/graphics/Rect;->right:I

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    iput v5, v6, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v6

    iget-object v6, v6, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    add-int v7, v5, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTmpFrames(Landroid/view/ViewRootImpl;)Landroid/window/ClientWindowFrames;

    move-result-object v7

    iget-object v7, v7, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-static {v6, v7, v9}, Landroid/view/ViewRootImpl;->-$$Nest$msetFrame(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Z)V

    iget-object v6, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-static {v6, v7}, Landroid/view/ViewRootImpl;->-$$Nest$mmaybeHandleWindowMove(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V

    goto/16 :goto_10

    :sswitch_18
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_10

    :sswitch_19
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0, v7, v7}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_10

    :sswitch_1a
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v9, v0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto/16 :goto_10

    :sswitch_1b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/res/Configuration;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    :cond_f
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v3

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    if-eqz v3, :cond_10

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v3}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v3

    iget-object v4, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmLastReportedActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/window/ActivityWindowInfo;->set(Landroid/window/ActivityWindowInfo;)V

    :cond_10
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v4, Landroid/util/MergedConfiguration;

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingMergedConfiguration(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v5

    if-eqz v5, :cond_11

    new-instance v7, Landroid/window/ActivityWindowInfo;

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v5}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmPendingActivityWindowInfo(Landroid/view/ViewRootImpl;)Landroid/window/ActivityWindowInfo;

    move-result-object v5

    invoke-direct {v7, v5}, Landroid/window/ActivityWindowInfo;-><init>(Landroid/window/ActivityWindowInfo;)V

    goto :goto_9

    :cond_11
    nop

    :goto_9
    const/4 v5, -0x1

    invoke-static {v3, v4, v9, v5, v7}, Landroid/view/ViewRootImpl;->-$$Nest$mperformConfigurationChange(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZILandroid/window/ActivityWindowInfo;)V

    goto/16 :goto_10

    :sswitch_1c
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_10

    :sswitch_1d
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/DragEvent;

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v0, v3, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    iget v0, v3, Landroid/view/DragEvent;->mAction:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_12

    goto :goto_a

    :cond_12
    move v8, v9

    :goto_a
    move v4, v8

    const-wide/16 v5, 0x8

    if-eqz v4, :cond_13

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "c#"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v7, v3, Landroid/view/DragEvent;->mAction:I

    invoke-static {v7}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v6, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_13
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, v3}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleDragEvent(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_14

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_14
    goto/16 :goto_10

    :catchall_0
    move-exception v0

    if-eqz v4, :cond_15

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    :cond_15
    throw v0

    :sswitch_1e
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1c

    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_10

    :sswitch_1f
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getImeFocusController()Landroid/view/ImeFocusController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ImeFocusController;->onScheduledCheckFocus()V

    goto/16 :goto_10

    :sswitch_20
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0, v7, v9, v8}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_10

    :sswitch_21
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_16

    nop

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, -0x9

    invoke-static {v0, v3}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    :cond_16
    iget-object v3, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v3, v0, v7, v8, v8}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_10

    :sswitch_22
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_10

    :sswitch_23
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_17

    goto :goto_b

    :cond_17
    move v8, v9

    :goto_b
    invoke-virtual {v0, v8}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_10

    :sswitch_24
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/InputEvent;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputEventReceiver;

    iget-object v5, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v5, v3, v4, v9, v8}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto/16 :goto_10

    :sswitch_25
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleWindowFocusChanged(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_10

    :sswitch_26
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/window/ClientWindowFrames;

    iget v4, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_18

    move v12, v8

    goto :goto_c

    :cond_18
    move v12, v9

    :goto_c
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/util/MergedConfiguration;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, Landroid/view/InsetsState;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Landroid/window/ActivityWindowInfo;

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    if-eqz v7, :cond_19

    move v15, v8

    goto :goto_d

    :cond_19
    move v15, v9

    :goto_d
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    if-eqz v7, :cond_1a

    move/from16 v16, v8

    goto :goto_e

    :cond_1a
    move/from16 v16, v9

    :goto_e
    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v14, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-eqz v10, :cond_1b

    move/from16 v19, v8

    goto :goto_f

    :cond_1b
    move/from16 v19, v9

    :goto_f
    iget-object v10, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object v11, v3

    move-object v13, v4

    move v8, v14

    move-object v14, v5

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v20, v6

    invoke-static/range {v10 .. v20}, Landroid/view/ViewRootImpl;->-$$Nest$mhandleResized(Landroid/view/ViewRootImpl;Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIIZLandroid/window/ActivityWindowInfo;)V

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    goto :goto_10

    :sswitch_27
    iget-object v0, v1, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->doDie()V

    goto :goto_10

    :sswitch_28
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View$AttachInfo$InvalidateInfo;

    iget-object v3, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v7, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/View;->invalidate(IIII)V

    invoke-virtual {v0}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_10

    :sswitch_29
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    nop

    :cond_1c
    :goto_10
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_28
        0x3 -> :sswitch_27
        0x4 -> :sswitch_26
        0x5 -> :sswitch_26
        0x6 -> :sswitch_25
        0x7 -> :sswitch_24
        0x8 -> :sswitch_23
        0x9 -> :sswitch_22
        0xb -> :sswitch_21
        0xc -> :sswitch_20
        0xd -> :sswitch_1f
        0xe -> :sswitch_1e
        0xf -> :sswitch_1d
        0x10 -> :sswitch_1d
        0x11 -> :sswitch_1c
        0x12 -> :sswitch_1b
        0x13 -> :sswitch_1a
        0x15 -> :sswitch_19
        0x16 -> :sswitch_18
        0x17 -> :sswitch_17
        0x18 -> :sswitch_16
        0x19 -> :sswitch_15
        0x1a -> :sswitch_14
        0x1c -> :sswitch_13
        0x1d -> :sswitch_12
        0x1e -> :sswitch_11
        0x1f -> :sswitch_10
        0x20 -> :sswitch_f
        0x21 -> :sswitch_e
        0x22 -> :sswitch_d
        0x23 -> :sswitch_c
        0x24 -> :sswitch_b
        0x25 -> :sswitch_a
        0x26 -> :sswitch_9
        0x27 -> :sswitch_8
        0x28 -> :sswitch_7
        0x29 -> :sswitch_6
        0x2a -> :sswitch_5
        0x2b -> :sswitch_4
        0x67 -> :sswitch_3
        0x68 -> :sswitch_2
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public whitelist getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string v0, "MSG_TOUCH_HINT_TIMEOUT"

    return-object v0

    :sswitch_1
    const-string v0, "MSG_DISPATCH_LETTERBOX_DIRECTION_CHANGED"

    return-object v0

    :sswitch_2
    const-string v0, "MSG_SPEN_GESTURE_EVENT"

    return-object v0

    :sswitch_3
    const-string v0, "MSG_SURFACE_REPLACED_TIMEOUT"

    return-object v0

    :sswitch_4
    const-string v0, "MSG_FRAME_RATE_SETTING"

    return-object v0

    :sswitch_5
    const-string v0, "MSG_REFRESH_POINTER_ICON"

    return-object v0

    :sswitch_6
    const-string v0, "MSG_CHECK_INVALIDATION_IDLE"

    return-object v0

    :sswitch_7
    const-string v0, "MSG_TOUCH_BOOST_TIMEOUT"

    return-object v0

    :sswitch_8
    const-string v0, "MSG_KEEP_CLEAR_RECTS_CHANGED"

    return-object v0

    :sswitch_9
    const-string v0, "MSG_WINDOW_TOUCH_MODE_CHANGED"

    return-object v0

    :sswitch_a
    const-string v0, "MSG_HIDE_INSETS"

    return-object v0

    :sswitch_b
    const-string v0, "MSG_SHOW_INSETS"

    return-object v0

    :sswitch_c
    const-string v0, "MSG_SYSTEM_GESTURE_EXCLUSION_CHANGED"

    return-object v0

    :sswitch_d
    const-string v0, "MSG_INSETS_CONTROL_CHANGED"

    return-object v0

    :sswitch_e
    const-string v0, "MSG_POINTER_CAPTURE_CHANGED"

    return-object v0

    :sswitch_f
    const-string v0, "MSG_DISPATCH_WINDOW_SHOWN"

    return-object v0

    :sswitch_10
    const-string v0, "MSG_SYNTHESIZE_INPUT_EVENT"

    return-object v0

    :sswitch_11
    const-string v0, "MSG_WINDOW_MOVED"

    return-object v0

    :sswitch_12
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    return-object v0

    :sswitch_13
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    return-object v0

    :sswitch_14
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    return-object v0

    :sswitch_15
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    return-object v0

    :sswitch_16
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    return-object v0

    :sswitch_17
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    return-object v0

    :sswitch_18
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    return-object v0

    :sswitch_19
    const-string v0, "MSG_CHECK_FOCUS"

    return-object v0

    :sswitch_1a
    const-string v0, "MSG_DISPATCH_KEY_FROM_AUTOFILL"

    return-object v0

    :sswitch_1b
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    return-object v0

    :sswitch_1c
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    return-object v0

    :sswitch_1d
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    return-object v0

    :sswitch_1e
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    return-object v0

    :sswitch_1f
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    return-object v0

    :sswitch_20
    const-string v0, "MSG_RESIZED_REPORT"

    return-object v0

    :sswitch_21
    const-string v0, "MSG_RESIZED"

    return-object v0

    :sswitch_22
    const-string v0, "MSG_DIE"

    return-object v0

    :sswitch_23
    const-string v0, "MSG_INVALIDATE_RECT"

    return-object v0

    :sswitch_24
    const-string v0, "MSG_INVALIDATE"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_23
        0x3 -> :sswitch_22
        0x4 -> :sswitch_21
        0x5 -> :sswitch_20
        0x6 -> :sswitch_1f
        0x7 -> :sswitch_1e
        0x8 -> :sswitch_1d
        0x9 -> :sswitch_1c
        0xb -> :sswitch_1b
        0xc -> :sswitch_1a
        0xd -> :sswitch_19
        0xe -> :sswitch_18
        0xf -> :sswitch_17
        0x10 -> :sswitch_16
        0x11 -> :sswitch_15
        0x12 -> :sswitch_14
        0x13 -> :sswitch_13
        0x15 -> :sswitch_12
        0x17 -> :sswitch_11
        0x18 -> :sswitch_10
        0x19 -> :sswitch_f
        0x1c -> :sswitch_e
        0x1d -> :sswitch_d
        0x1e -> :sswitch_c
        0x1f -> :sswitch_b
        0x20 -> :sswitch_a
        0x22 -> :sswitch_9
        0x23 -> :sswitch_8
        0x27 -> :sswitch_7
        0x28 -> :sswitch_6
        0x29 -> :sswitch_5
        0x2a -> :sswitch_4
        0x2b -> :sswitch_3
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6a -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 3

    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->handleMessageImpl(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method public whitelist sendMessageAtTime(Landroid/os/Message;J)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to call MSG_REQUEST_KEYBOARD_SHORTCUTS with null receiver:"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    move-result v0

    return v0
.end method
