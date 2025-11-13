.class public final Landroid/view/ImeInsetsSourceConsumer;
.super Landroid/view/InsetsSourceConsumer;
.source "ImeInsetsSourceConsumer.java"


# instance fields
.field private blacklist mHasPendingRequest:Z

.field private blacklist mIsRequestedVisibleAwaitingLeash:Z


# direct methods
.method public constructor blacklist <init>(ILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InsetsState;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Landroid/view/InsetsController;",
            ")V"
        }
    .end annotation

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/view/InsetsSourceConsumer;-><init>(IILandroid/view/InsetsState;Ljava/util/function/Supplier;Landroid/view/InsetsController;)V

    return-void
.end method

.method private blacklist getImm()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    return-object v0
.end method

.method private blacklist hasLeash()Z
    .locals 2

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getControl()Landroid/view/InsetsSourceControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V
    .locals 4

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->notifyImeHidden(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    const-wide/16 v1, 0x8

    const-string v3, "IC.hideRequestFromApi"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist applyLocalVisibilityOverride()Z
    .locals 4

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const-string v2, "ImeInsetsSourceConsumer#applyLocalVisibilityOverride"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v0

    return v0
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3}, Landroid/view/InsetsSourceConsumer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x10800000003L

    iget-boolean v4, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000006L

    iget-boolean v4, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method protected blacklist isRequestedVisibleAwaitingControl()Z
    .locals 1

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->isRequestedVisibleAwaitingControl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public blacklist onAnimationStateChanged(Z)Z
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v0

    return v0

    :cond_0
    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const-string v2, "ImeInsetsSourceConsumer#onAnimationFinished"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_1
    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onAnimationStateChanged(Z)Z

    move-result v0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->applyLocalVisibilityOverride()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->isShowRequested()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-nez p1, :cond_3

    iget-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    if-nez v1, :cond_3

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v1

    iget-object v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x5

    const/16 v6, 0x33

    invoke-interface {v1, v4, v5, v6, v3}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_3
    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    return v0
.end method

.method public blacklist onPerceptible(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onPerceptible(Z)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/view/inputmethod/InputMethodManager;->reportPerceptible(Landroid/os/IBinder;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onShowRequested()V
    .locals 2

    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->isPredictiveBackImeHideAnimInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    :cond_1
    return-void
.end method

.method public blacklist onWindowFocusGained(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/InsetsSourceConsumer;->onWindowFocusGained(Z)V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->registerImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getRequestedVisibleTypes()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_0
    return-void
.end method

.method public blacklist onWindowFocusLost()V
    .locals 1

    invoke-super {p0}, Landroid/view/InsetsSourceConsumer;->onWindowFocusLost()V

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->unregisterImeConsumer(Landroid/view/ImeInsetsSourceConsumer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_0
    return-void
.end method

.method public blacklist removeSurface()V
    .locals 2

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v0}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/inputmethod/InputMethodManager;->removeImeSurface(Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method blacklist requestHide(ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->isHandlingPointerEvent()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x5

    const/16 v4, 0x34

    invoke-interface {v0, v2, v3, v4, v1}, Landroid/view/inputmethod/ImeTracker;->onStart(IIIZ)Landroid/view/inputmethod/ImeTracker$Token;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    nop

    invoke-direct {p0, v0}, Landroid/view/ImeInsetsSourceConsumer;->notifyHidden(Landroid/view/inputmethod/ImeTracker$Token;)V

    :cond_1
    iget v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mAnimationState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mHasPendingRequest:Z

    :cond_2
    return-void
.end method

.method public blacklist requestShow(ZLandroid/view/inputmethod/ImeTracker$Token;)I
    .locals 5

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_5

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v2}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    const-string v3, "ImeInsetsSourceConsumer#requestShow"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    :cond_0
    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->onShowRequested()V

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v2, 0x24

    invoke-interface {v0, p2, v2}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iput-boolean v2, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_1
    if-nez p1, :cond_4

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mState:Landroid/view/InsetsState;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getId()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/view/InsetsState;->isSourceOrDefaultVisible(II)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Landroid/view/ImeInsetsSourceConsumer;->getImm()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v3, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v3}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/InsetsController$Host;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3, p2}, Landroid/view/inputmethod/InputMethodManager;->requestImeShow(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    nop

    :goto_0
    return v1

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_5
    return v1
.end method

.method public blacklist setControl(Landroid/view/InsetsSourceControl;[I[I)Z
    .locals 4

    invoke-static {}, Landroid/view/inputmethod/Flags;->refactorInsetsController()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/inputmethod/ImeTracing;->getInstance()Lcom/android/internal/inputmethod/ImeTracing;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {v1}, Landroid/view/InsetsController;->getHost()Landroid/view/InsetsController$Host;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/InsetsController$Host;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    const-string v2, "ImeInsetsSourceConsumer#setControl"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/internal/inputmethod/ImeTracing;->triggerClientDump(Ljava/lang/String;Landroid/view/inputmethod/InputMethodManager;[B)V

    invoke-super {p0, p1, p2, p3}, Landroid/view/InsetsSourceConsumer;->setControl(Landroid/view/InsetsSourceControl;[I[I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    if-nez p1, :cond_2

    iget-boolean v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ImeInsetsSourceConsumer;->mController:Landroid/view/InsetsController;

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->getType()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/InsetsController;->setRequestedVisibleTypes(II)V

    invoke-virtual {p0}, Landroid/view/ImeInsetsSourceConsumer;->removeSurface()V

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/InsetsSourceControl;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-eqz v2, :cond_4

    iput-boolean v1, p0, Landroid/view/ImeInsetsSourceConsumer;->mIsRequestedVisibleAwaitingLeash:Z

    :cond_4
    return v0
.end method
