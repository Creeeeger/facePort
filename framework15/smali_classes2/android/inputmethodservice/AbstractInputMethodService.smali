.class public abstract Landroid/inputmethodservice/AbstractInputMethodService;
.super Landroid/window/WindowProviderService;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;,
        Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
    }
.end annotation


# instance fields
.field final greylist-max-o mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

.field private greylist-max-o mInputMethod:Landroid/view/inputmethod/InputMethod;

.field private blacklist mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

.field protected blacklist mIsPressBtnSIPOnOff:Z


# direct methods
.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/window/WindowProviderService;-><init>()V

    new-instance v0, Landroid/view/KeyEvent$DispatcherState;

    invoke-direct {v0}, Landroid/view/KeyEvent$DispatcherState;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-void
.end method


# virtual methods
.method blacklist createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;
    .locals 1

    new-instance v0, Landroid/inputmethodservice/AbstractInputMethodService$1;

    invoke-direct {v0, p0}, Landroid/inputmethodservice/AbstractInputMethodService$1;-><init>(Landroid/inputmethodservice/AbstractInputMethodService;)V

    return-object v0
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final blacklist getInitialDisplayId()I
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/IWindowManager;->getImeDisplayId()I

    move-result v0

    const-string v1, "InputMethodService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInitialDisplayId: imeDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public final blacklist getInputMethodInternal()Landroid/view/inputmethod/InputMethod;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public whitelist getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;
    .locals 1

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    return-object v0
.end method

.method public final blacklist getWindowContextOptions()Landroid/os/Bundle;
    .locals 1

    invoke-super {p0}, Landroid/window/WindowProviderService;->getWindowContextOptions()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist getWindowType()I
    .locals 1

    const/16 v0, 0x7db

    return v0
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    :cond_0
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/inputmethodservice/AbstractInputMethodService;->createInputMethodServiceInternal()Landroid/inputmethodservice/InputMethodServiceInternal;

    move-result-object v0

    iput-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    :cond_1
    new-instance v0, Landroid/inputmethodservice/IInputMethodWrapper;

    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethodServiceInternal:Landroid/inputmethodservice/InputMethodServiceInternal;

    iget-object v2, p0, Landroid/inputmethodservice/AbstractInputMethodService;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-direct {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;-><init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V

    return-object v0
.end method

.method public abstract whitelist onCreateInputMethodInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;
.end method

.method public abstract whitelist onCreateInputMethodSessionInterface()Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.end method

.method public whitelist onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
