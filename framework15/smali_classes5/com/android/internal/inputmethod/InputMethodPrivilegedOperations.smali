.class public final Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;
.super Ljava/lang/Object;
.source "InputMethodPrivilegedOperations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodPrivilegedOperations"


# instance fields
.field private final blacklist mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;


# direct methods
.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;-><init>(Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder-IA;)V

    iput-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    return-void
.end method


# virtual methods
.method public blacklist applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    const/16 v1, 0x2e

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p3, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->applyImeVisibilityAsync(Landroid/os/IBinder;ZLandroid/view/inputmethod/ImeTracker$Token;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v2}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, v2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v2}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v2

    return-object v1
.end method

.method public blacklist hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    const/16 v1, 0x2e

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->hideMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist notifyUserActionAsync()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->notifyUserActionAsync()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onStylusHandwritingReady(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->onStylusHandwritingReady(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist reportFullscreenModeAsync(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportFullscreenModeAsync(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist reportStartInputAsync(Landroid/os/IBinder;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->reportStartInputAsync(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist resetStylusHandwriting(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->resetStylusHandwriting(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V
    .locals 1

    const-string/jumbo v0, "privOps must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0, p1}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->set(Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;)V

    return-void
.end method

.method public blacklist setHandwritingSurfaceNotTouchable(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setHandwritingSurfaceNotTouchable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setImeWindowStatusAsync(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setImeWindowStatusAsync(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInputMethod(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethod(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist shouldOfferSwitchingToNextInputMethod()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->shouldOfferSwitchingToNextInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    const/16 v1, 0x2e

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    return-void

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->showMySoftInput(Landroid/view/inputmethod/ImeTracker$Token;IILcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchKeyboardLayoutAsync(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchKeyboardLayoutAsync(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchToNextInputMethod(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToNextInputMethod(ZLcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist switchToPreviousInputMethod()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v1}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->switchToPreviousInputMethod(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v1}, Lcom/android/internal/inputmethod/CompletableFutureUtil;->getResult(Ljava/util/concurrent/CompletableFuture;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist updateStatusIconAsync(Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations;->mOps:Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/InputMethodPrivilegedOperations$OpsHolder;->getAndWarnIfNull()Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;->updateStatusIconAsync(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
