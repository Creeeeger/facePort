.class Landroid/view/inputmethod/InputMethodManager$H;
.super Landroid/os/Handler;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "H"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$I_rRPtZ_qTSdKK46C0wWRGEaNhU(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputMethodManager$H;->lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/view/inputmethod/InputMethodManager;Landroid/os/Looper;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0(Landroid/view/ViewRootImpl;)V
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eq v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$monViewFocusChangedInternal(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_e

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/InputBindResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting input: Bind result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    :try_start_0
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v6, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v6, v0}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v5, v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_0
    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-static {v6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v6, v5, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v5, :cond_5

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v6

    if-eq v5, v6, :cond_5

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v5}, Landroid/view/InputChannel;->dispose()V

    :cond_5
    :goto_1
    iget v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->result:I

    packed-switch v5, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedView(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;)V

    :goto_2
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object v3

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCompletions(Landroid/view/inputmethod/InputMethodManager;)[Landroid/view/inputmethod/CompletionInfo;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->displayCompletions([Landroid/view/inputmethod/CompletionInfo;)V

    :cond_6
    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v3

    iget v3, v3, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->mSequenceNum:I

    if-ne v3, v2, :cond_7

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;->run()V

    :cond_7
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmReportInputConnectionOpenedRunner(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$ReportInputConnectionOpenedRunner;)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :sswitch_1
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, v0, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeInsetsConsumer(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/ImeInsetsSourceConsumer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    :cond_8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :sswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    move v3, v2

    :goto_3
    move v0, v3

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    if-eqz v0, :cond_a

    :try_start_2
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedView(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_4

    :cond_a
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getInsetsController()Landroid/view/InsetsController;

    move-result-object v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/InsetsController;->hide(I)V

    :cond_b
    :goto_4
    monitor-exit v4

    goto/16 :goto_e

    :catchall_2
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :sswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_c

    move v0, v3

    goto :goto_5

    :cond_c
    move v0, v2

    :goto_5
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_d

    move v2, v3

    :cond_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: MSG_SET_INTERACTIVE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->usingWritingToolkit()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v1, "InputMethodManager"

    const-string/jumbo v3, "set interactive return because of using writing toolkit"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v3, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_3
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    if-eqz v0, :cond_12

    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-eqz v4, :cond_10

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v1

    :cond_10
    if-nez v1, :cond_11

    monitor-exit v3

    return-void

    :cond_11
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    new-instance v5, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InputMethodManager$H;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    nop

    goto :goto_6

    :cond_12
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->finishInputLocked()V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$misImeSessionAvailableLocked(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurBindState(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/InputMethodManager$BindState;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager$BindState;->mImeSession:Landroid/view/inputmethod/IInputMethodSessionInvoker;

    invoke-virtual {v1}, Landroid/view/inputmethod/IInputMethodSessionInvoker;->finishInput()V

    :cond_13
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v4, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/view/inputmethod/InputMethodManager$H$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mforAccessibilitySessionsLocked(Landroid/view/inputmethod/InputMethodManager;Ljava/util/function/Consumer;)V

    :goto_6
    monitor-exit v3

    return-void

    :catchall_3
    move-exception v1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v1

    :sswitch_4
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_14

    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: MSG_UNBIND_ACCESSIBILITY_SERVICE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v2

    :try_start_4
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v3

    if-eq v3, v0, :cond_16

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current BindSequence ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sequence ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    monitor-exit v2

    return-void

    :cond_16
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;I)V

    monitor-exit v2

    return-void

    :catchall_4
    move-exception v3

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v3

    :sswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/inputmethod/InputBindResult;

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage: MSG_BIND_ACCESSIBILITY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    :try_start_5
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v2

    if-ltz v2, :cond_1b

    iget v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v2, v3, :cond_18

    goto :goto_8

    :cond_18
    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    if-eqz v3, :cond_1a

    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->accessibilitySessions:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-static {v3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    move-result-object v3

    if-eqz v3, :cond_1a

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmAccessibilityInputMethodSession(Landroid/view/inputmethod/InputMethodManager;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v0, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    if-eqz v5, :cond_19

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v6

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmInitialSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v7

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v8

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorSelEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v9

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandStart(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v10

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCursorCandEnd(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v11

    move-object v5, v3

    invoke-virtual/range {v5 .. v11}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    goto :goto_7

    :cond_19
    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    move-object v5, v3

    invoke-virtual/range {v5 .. v11}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelection(IIIIII)V

    :cond_1a
    :goto_7
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    return-void

    :cond_1b
    :goto_8
    :try_start_6
    const-string v3, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring onBind: cur seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", given seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v3, :cond_1c

    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v5

    if-eq v3, v5, :cond_1c

    iget-object v3, v1, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v3}, Landroid/view/InputChannel;->dispose()V

    :cond_1c
    monitor-exit v4

    return-void

    :catchall_5
    move-exception v2

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v2

    :sswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_1d

    move v2, v3

    :cond_1d
    move v0, v2

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v3

    :try_start_7
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v2

    if-eq v2, v0, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v2

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    :cond_1e
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v1, :cond_1f

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->dispatchReportFullscreenMode(Z)V

    :cond_1f
    return-void

    :catchall_6
    move-exception v2

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw v2

    :sswitch_7
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    return-void

    :sswitch_8
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mfinishedInputEvent(Landroid/view/inputmethod/InputMethodManager;IZZ)V

    return-void

    :sswitch_9
    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/inputmethod/InputMethodManager$PendingEvent;

    invoke-static {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$msendInputEventAndReportResultOnMainLooper(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$PendingEvent;)V

    return-void

    :sswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-eqz v0, :cond_20

    move v0, v3

    goto :goto_9

    :cond_20
    move v0, v2

    :goto_9
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_21

    move v2, v3

    :cond_21
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string v4, "InputMethodManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleMessage: MSG_SET_ACTIVE "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v4, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    :try_start_9
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v0}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmActive(Landroid/view/inputmethod/InputMethodManager;Z)V

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmFullscreenMode(Landroid/view/inputmethod/InputMethodManager;Z)V

    if-nez v0, :cond_24

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;Z)V

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmFallbackInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->finishComposingTextFromImm()V

    sget-boolean v5, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v5, :cond_23

    const-string v5, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    if-eqz v5, :cond_23

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmServedInputConnection(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/inputmethod/RemoteInputConnectionImpl;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/inputmethod/RemoteInputConnectionImpl;->setWritingToolkitMode(Z)V

    :cond_23
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearCurRootViewIfNeeded(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v5

    if-eqz v5, :cond_24

    monitor-exit v4

    return-void

    :cond_24
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_29

    invoke-static {v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$smcanStartInput(Landroid/view/View;)Z

    move-result v6

    if-nez v6, :cond_25

    goto :goto_b

    :cond_25
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, v6, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    if-nez v6, :cond_26

    monitor-exit v4

    return-void

    :cond_26
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v7, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v7}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmRestartOnNextWindowFocus(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v7

    iget-object v8, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v8, v8, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v6, v7, v8}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    move-result v6

    if-nez v6, :cond_27

    monitor-exit v4

    return-void

    :cond_27
    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurrentEditorInfo(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/EditorInfo;)V

    iget-object v6, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v6, v1}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCompletions(Landroid/view/inputmethod/InputMethodManager;[Landroid/view/inputmethod/CompletionInfo;)V

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    if-eqz v0, :cond_28

    const/16 v1, 0x8

    move v4, v1

    goto :goto_a

    :cond_28
    const/16 v1, 0x9

    move v4, v1

    :goto_a
    nop

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    return-void

    :cond_29
    :goto_b
    :try_start_a
    monitor-exit v4

    return-void

    :catchall_7
    move-exception v1

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw v1

    :sswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: MSG_UNBIND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/android/internal/inputmethod/InputMethodDebug;->unbindReasonToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, v2, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2b

    :try_start_b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmImeDispatcher(Landroid/view/inputmethod/InputMethodManager;)Landroid/window/ImeOnBackInvokedDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    :cond_2b
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v2

    if-eq v2, v0, :cond_2c

    monitor-exit v4

    return-void

    :cond_2c
    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearAllAccessibilityBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mclearBindingLocked(Landroid/view/inputmethod/InputMethodManager;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetServedViewLocked(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Landroid/view/View;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2d

    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    :cond_2d
    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmActive(Landroid/view/inputmethod/InputMethodManager;)Z

    move-result v3

    move v2, v3

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v2, :cond_2f

    sget-boolean v3, Landroid/view/inputmethod/InputMethodManager;->DEBUG_SEP:Z

    if-eqz v3, :cond_2e

    const-string v3, "InputMethodManager_LC"

    const-string v4, "MSG_UNBIND: startInputInner is called with null IBinder "

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    :cond_2f
    return-void

    :catchall_8
    move-exception v2

    :try_start_c
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v2

    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/inputmethod/InputBindResult;

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$sfgetDEBUG()Z

    move-result v1

    if-eqz v1, :cond_30

    const-string v1, "InputMethodManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage: MSG_BIND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_30
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v1, Landroid/view/inputmethod/InputMethodManager;->mH:Landroid/view/inputmethod/InputMethodManager$H;

    monitor-enter v1

    :try_start_d
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mgetBindSequenceLocked(Landroid/view/inputmethod/InputMethodManager;)I

    move-result v4

    if-ltz v4, :cond_33

    iget v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    if-eq v4, v5, :cond_31

    goto :goto_c

    :cond_31
    iget-object v5, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v5, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmRequestUpdateCursorAnchorInfoMonitorMode(Landroid/view/inputmethod/InputMethodManager;I)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-static {v2, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mupdateInputChannelLocked(Landroid/view/inputmethod/InputMethodManager;Landroid/view/InputChannel;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->method:Lcom/android/internal/inputmethod/IInputMethodSession;

    iput-object v5, v2, Landroid/view/inputmethod/InputMethodManager;->mCurMethod:Lcom/android/internal/inputmethod/IInputMethodSession;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    new-instance v5, Landroid/view/inputmethod/InputMethodManager$BindState;

    invoke-direct {v5, v0}, Landroid/view/inputmethod/InputMethodManager$BindState;-><init>(Lcom/android/internal/inputmethod/InputBindResult;)V

    invoke-static {v2, v5}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmCurBindState(Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodManager$BindState;)V

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->id:Ljava/lang/String;

    iput-object v5, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    sget-boolean v1, Lcom/samsung/android/rune/ViewRune;->SUPPORT_WRITING_TOOLKIT:Z

    if-eqz v1, :cond_32

    const-string v1, "com.samsung.android.honeyboard/com.samsung.android.writingtoolkit.service.FakeHoneyBoardService"

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v2, Landroid/view/inputmethod/InputMethodManager;->mCurRootView:Landroid/view/ViewRootImpl;

    invoke-static {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mcheckFocusInternalLocked(Landroid/view/inputmethod/InputMethodManager;ZLandroid/view/ViewRootImpl;)Z

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v1, v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fputmServedConnecting(Landroid/view/inputmethod/InputMethodManager;Z)V

    :cond_32
    iget-object v4, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mstartInputInner(Landroid/view/inputmethod/InputMethodManager;ILandroid/os/IBinder;III)Z

    return-void

    :cond_33
    :goto_c
    :try_start_e
    const-string v2, "InputMethodManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring onBind: cur seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", given seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v0, Lcom/android/internal/inputmethod/InputBindResult;->sequence:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    if-eqz v2, :cond_34

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    iget-object v3, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v3}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$fgetmCurChannel(Landroid/view/inputmethod/InputMethodManager;)Landroid/view/InputChannel;

    move-result-object v3

    if-eq v2, v3, :cond_34

    iget-object v2, v0, Lcom/android/internal/inputmethod/InputBindResult;->channel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    :cond_34
    monitor-exit v1

    return-void

    :catchall_9
    move-exception v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    throw v2

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    :try_start_f
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$H;->this$0:Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/io/FileDescriptor;

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Ljava/io/PrintWriter;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->-$$Nest$mdoDump(Landroid/view/inputmethod/InputMethodManager;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_d

    :catch_0
    move-exception v1

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v1

    :try_start_10
    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :catchall_a
    move-exception v2

    :try_start_11
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v2

    :goto_e
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_d
        0x2 -> :sswitch_c
        0x3 -> :sswitch_b
        0x4 -> :sswitch_a
        0x5 -> :sswitch_9
        0x6 -> :sswitch_8
        0x7 -> :sswitch_7
        0xa -> :sswitch_6
        0xb -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0xe -> :sswitch_2
        0x1f -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method
