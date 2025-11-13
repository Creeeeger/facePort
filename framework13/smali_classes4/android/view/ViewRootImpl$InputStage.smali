.class abstract Landroid/view/ViewRootImpl$InputStage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "InputStage"
.end annotation


# static fields
.field protected static final greylist-max-o FINISH_HANDLED:I = 0x1

.field protected static final greylist-max-o FINISH_NOT_HANDLED:I = 0x2

.field protected static final greylist-max-o FORWARD:I


# instance fields
.field private final greylist-max-o mNext:Landroid/view/ViewRootImpl$InputStage;

.field private blacklist mTracePrefix:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;
    .param p2, "next"    # Landroid/view/ViewRootImpl$InputStage;

    .line 7197
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7198
    iput-object p2, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    .line 7199
    return-void
.end method

.method private blacklist traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "traceTag"    # J

    .line 7375
    invoke-static {p2, p3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7376
    return-void

    .line 7379
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7380
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    .line 7382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/view/ViewRootImpl$InputStage;->mTracePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7383
    invoke-virtual {v1}, Landroid/view/InputEvent;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7382
    invoke-static {p2, p3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 7384
    return-void
.end method


# virtual methods
.method protected greylist-max-o apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "result"    # I

    .line 7243
    if-nez p2, :cond_0

    .line 7244
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 7245
    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 7246
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 7247
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 7248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    .line 7252
    :goto_0
    return-void

    .line 7250
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final greylist-max-o deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7205
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    .line 7206
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 7207
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7208
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl$InputStage;->finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V

    goto :goto_0

    .line 7210
    :cond_1
    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$InputStage;->traceEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;J)V

    .line 7213
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7215
    .local v2, "result":I
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7216
    nop

    .line 7217
    invoke-virtual {p0, p1, v2}, Landroid/view/ViewRootImpl$InputStage;->apply(Landroid/view/ViewRootImpl$QueuedInputEvent;I)V

    .line 7219
    .end local v2    # "result":I
    :goto_0
    return-void

    .line 7215
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 7216
    throw v2
.end method

.method greylist-max-o dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .line 7361
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 7362
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7364
    :cond_0
    return-void
.end method

.method protected greylist-max-o finish(Landroid/view/ViewRootImpl$QueuedInputEvent;Z)V
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;
    .param p2, "handled"    # Z

    .line 7225
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7226
    if-eqz p2, :cond_0

    .line 7227
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7229
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7230
    return-void
.end method

.method protected greylist-max-o forward(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7236
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl$InputStage;->onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7237
    return-void
.end method

.method greylist-max-o isBack(Landroid/view/InputEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7367
    instance-of v0, p1, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 7368
    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 7370
    :cond_1
    return v1
.end method

.method protected greylist-max-o onDeliverToNext(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 3
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7266
    invoke-static {}, Landroid/view/ViewRootImpl;->-$$Nest$sfgetDEBUG_INPUT_STAGES()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7267
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7269
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_1

    .line 7270
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_0

    .line 7272
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->-$$Nest$mfinishInputEvent(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7274
    :goto_0
    return-void
.end method

.method protected greylist-max-o onDetachedFromWindow()V
    .locals 1

    .line 7283
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 7284
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 7286
    :cond_0
    return-void
.end method

.method protected greylist-max-o onProcess(Landroid/view/ViewRootImpl$QueuedInputEvent;)I
    .locals 1
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7259
    const/4 v0, 0x0

    return v0
.end method

.method protected greylist-max-o onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .line 7277
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->mNext:Landroid/view/ViewRootImpl$InputStage;

    if-eqz v0, :cond_0

    .line 7278
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 7280
    :cond_0
    return-void
.end method

.method protected greylist-max-o shouldDropInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)Z
    .locals 11
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7289
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const-string v1, " mPausedForTransition="

    const-string v2, " mHasWindowFocus="

    const-string/jumbo v3, "mStopped="

    const/4 v4, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 7299
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 7301
    .local v0, "hasWindowFocus":Z
    iget-object v5, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v5, v5, Lcom/android/internal/policy/DecorView;

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v5, v5, Landroid/view/KeyEvent;

    if-eqz v5, :cond_1

    iget-object v5, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v5, Landroid/view/KeyEvent;

    .line 7303
    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 7304
    iget-object v5, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/internal/policy/DecorView;

    invoke-virtual {v5}, Lcom/android/internal/policy/DecorView;->hasWindowFocusInTask()Z

    move-result v5

    or-int/2addr v0, v5

    .line 7309
    :cond_1
    const/4 v5, 0x0

    .line 7311
    .local v5, "hasFakeFocusFlag":Z
    iget-object v6, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    move v5, v6

    .line 7318
    if-nez v0, :cond_3

    if-nez v5, :cond_3

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v8, 0x2

    .line 7322
    invoke-virtual {v6, v8}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    .line 7323
    invoke-static {v6}, Landroid/view/ViewRootImpl;->-$$Nest$misAutofillUiShowing(Landroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 7327
    const-string/jumbo v6, "no window focus"

    .local v6, "reason":Ljava/lang/String;
    goto :goto_1

    .line 7328
    .end local v6    # "reason":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v6, :cond_4

    .line 7329
    const-string/jumbo v6, "window is stopped"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_1

    .line 7330
    .end local v6    # "reason":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    if-eqz v6, :cond_5

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7331
    invoke-virtual {v6, v4}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v6

    if-nez v6, :cond_5

    .line 7332
    const-string/jumbo v6, "non-button event in ambient mode"

    .restart local v6    # "reason":Ljava/lang/String;
    goto :goto_1

    .line 7333
    .end local v6    # "reason":Ljava/lang/String;
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v6, v6, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v6, :cond_7

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {p0, v6}, Landroid/view/ViewRootImpl$InputStage;->isBack(Landroid/view/InputEvent;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 7334
    const-string/jumbo v6, "paused for transition"

    .line 7340
    .restart local v6    # "reason":Ljava/lang/String;
    :goto_1
    iget-object v8, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-static {v8}, Landroid/view/ViewRootImpl;->isTerminalInputEvent(Landroid/view/InputEvent;)Z

    move-result v8

    const-string v9, "):"

    if-eqz v8, :cond_6

    .line 7342
    iget-object v4, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->cancel()V

    .line 7344
    iget-object v4, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cancelling event ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7345
    iget-object v4, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v4}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v8, v8, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7348
    return v7

    .line 7353
    :cond_6
    iget-object v7, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dropping event ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7354
    iget-object v7, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v7}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v8, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v8, v8, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7357
    return v4

    .line 7337
    .end local v6    # "reason":Ljava/lang/String;
    :cond_7
    return v7

    .line 7291
    .end local v0    # "hasWindowFocus":Z
    .end local v5    # "hasFakeFocusFlag":Z
    :cond_8
    :goto_2
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping event due to root view being removed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7292
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-$$Nest$fgetmTag(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v5, v5, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-object v3, v3, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/ViewRootImpl$InputStage;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v2, v2, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7295
    return v4
.end method
