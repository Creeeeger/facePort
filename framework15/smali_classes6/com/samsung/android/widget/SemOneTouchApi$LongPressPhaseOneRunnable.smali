.class Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;
.super Ljava/lang/Object;
.source "SemOneTouchApi.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemOneTouchApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongPressPhaseOneRunnable"
.end annotation


# instance fields
.field private final blacklist context:Landroid/content/Context;

.field private final blacklist rootView:Landroid/view/View;

.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemOneTouchApi;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    return-void
.end method

.method private blacklist checkCurrentViewValid()Z
    .locals 4

    const-string v0, "OTCH$SemOneTouchApi"

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid, getDisplayId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "checkCurrentViewValid failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public blacklist remove()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist test-api run()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "OTCH$SemOneTouchApi"

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->checkCurrentViewValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgeteventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)I

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LongPressPhaseOneRunnable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputeventFlag(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    iget-object v4, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-static {v4, v5, v3, v6, v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputRootViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)V

    iget-object v4, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v5, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    iget-object v6, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/widget/SemOneTouchApi;->queryFindViewInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0, v4}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputfindViewInfos(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Ljava/util/List;)V

    iget-object v5, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v5, v6}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    :cond_2
    iget-object v5, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v6, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedPoint(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/graphics/PointF;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetTouchedView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;Landroid/graphics/PointF;)Landroid/view/View;

    move-result-object v5

    iget-object v6, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v6}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;

    move-object v0, v6

    invoke-static {v0, v5}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputtouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/view/View;)V

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetfoundViewContent(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-ne v6, v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LongPressPhaseOneRunnable found block view: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v7}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    return-void

    :cond_3
    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v8, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v9

    invoke-static {v7, v8, v3, v9, v6}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputTouchedViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Landroid/view/View;Ljava/lang/Object;)V

    if-eqz v6, :cond_4

    instance-of v7, v6, Ljava/lang/CharSequence;

    if-eqz v7, :cond_5

    :cond_4
    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v8, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v7, v8, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mgetFindVideoViewEventInfo(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;)Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v9, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    check-cast v9, Landroid/view/ViewGroup;

    invoke-static {v7}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetvideoViewClassName(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetfindTopToDown(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Z

    move-result v11

    invoke-static {v8, v9, v10, v11}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mfindVideoView(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/ViewGroup;Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v9, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v10, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v7}, Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;->-$$Nest$fgetvideoViewClassName(Lcom/samsung/android/widget/SemOneTouchApi$FindVideoViewEventInfo;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v3, v11, v8}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$mputVideoViewInfoToBundle(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/os/Bundle;Ljava/lang/String;Landroid/view/View;)V

    :cond_5
    invoke-static {v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fputbundle(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)V

    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v7, v8}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmCurrentLongPressEvent(Lcom/samsung/android/widget/SemOneTouchApi;Ljava/util/concurrent/atomic/AtomicReference;)V

    iget-object v7, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v8, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v7, v8, v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$msendOnLongPressedEvent(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    iget-object v8, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v8, v7}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misEventSuccess(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/os/Bundle;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v9, "key_skip_drag_and_drop"

    invoke-virtual {v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "LongPressPhaseOneRunnable skip DragAndDrop, skip LongPressPhaseTwo"

    invoke-static {v2, v9}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    iget-object v9, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$misSaveBitmapFileNeeded(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v9, Ljava/lang/Thread;

    new-instance v10, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;

    iget-object v11, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v12, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgettouchedView(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)Landroid/view/View;

    move-result-object v13

    invoke-direct {v10, v11, v12, v13}, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    invoke-direct {v9, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_7
    instance-of v9, v6, Landroid/graphics/Bitmap;

    if-eqz v9, :cond_8

    move-object v9, v6

    check-cast v9, Landroid/graphics/Bitmap;

    new-instance v10, Ljava/lang/Thread;

    new-instance v11, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;

    iget-object v12, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    iget-object v13, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    invoke-direct {v11, v12, v13, v9}, Lcom/samsung/android/widget/SemOneTouchApi$SaveBitmapFileRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/graphics/Bitmap;)V

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    :cond_8
    :goto_0
    const-string v9, "key_long_press_phase_two_custom_threshold"

    iget-object v10, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v10}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v10

    iget-object v10, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v7, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;->-$$Nest$fgetrequestCode(Lcom/samsung/android/widget/SemOneTouchApi$OtchLongPressEvent;)J

    move-result-wide v11

    iget-object v13, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v13}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v13

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v11, v13

    add-long/2addr v11, v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget-object v13, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    new-instance v14, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    iget-object v15, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    move-object/from16 v16, v0

    iget-object v0, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->context:Landroid/content/Context;

    move-object/from16 v17, v3

    iget-object v3, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    invoke-direct {v14, v15, v0, v3}, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;-><init>(Lcom/samsung/android/widget/SemOneTouchApi;Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v13, v14}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fputmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;)V

    iget-object v0, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->rootView:Landroid/view/View;

    iget-object v3, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmLongPressPhaseTwoRunnable(Lcom/samsung/android/widget/SemOneTouchApi;)Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseTwoRunnable;

    move-result-object v3

    const-wide/16 v13, 0x0

    cmp-long v13, v11, v13

    if-lez v13, :cond_9

    move-wide v13, v11

    goto :goto_1

    :cond_9
    iget-object v13, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v13}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$fgetmOneTouchLongPressThreshold(Lcom/samsung/android/widget/SemOneTouchApi;)Landroid/util/Pair;

    move-result-object v13

    iget-object v13, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    int-to-long v13, v13

    :goto_1
    invoke-virtual {v0, v3, v13, v14}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    goto :goto_2

    :cond_a
    move-object/from16 v16, v0

    move-object/from16 v17, v3

    const-string v0, "LongPressPhaseOneRunnable call fail"

    invoke-static {v2, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v0}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :goto_2
    goto :goto_4

    :cond_b
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LongPressPhaseOneRunnable state error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v3}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LongPressPhaseOneRunnable call error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, v1, Lcom/samsung/android/widget/SemOneTouchApi$LongPressPhaseOneRunnable;->this$0:Lcom/samsung/android/widget/SemOneTouchApi;

    invoke-static {v2}, Lcom/samsung/android/widget/SemOneTouchApi;->-$$Nest$monLongPressError(Lcom/samsung/android/widget/SemOneTouchApi;)V

    :goto_4
    return-void
.end method
