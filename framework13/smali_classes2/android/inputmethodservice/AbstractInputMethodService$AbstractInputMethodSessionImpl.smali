.class public abstract Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;
.super Ljava/lang/Object;
.source "AbstractInputMethodService.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/AbstractInputMethodService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractInputMethodSessionImpl"
.end annotation


# instance fields
.field greylist-max-o mEnabled:Z

.field greylist-max-o mRevoked:Z

.field final synthetic blacklist this$0:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor whitelist <init>(Landroid/inputmethodservice/AbstractInputMethodService;)V
    .locals 1
    .param p1, "this$0"    # Landroid/inputmethodservice/AbstractInputMethodService;

    .line 158
    iput-object p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public whitelist dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 234
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 235
    .local v0, "handled":Z
    if-eqz p3, :cond_0

    .line 236
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 238
    :cond_0
    return-void
.end method

.method public whitelist dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 3
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 204
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    iget-object v1, v0, Landroid/inputmethodservice/AbstractInputMethodService;->mDispatcherState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {p2, v0, v1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    .line 207
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3ee

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/inputmethodservice/AbstractInputMethodService;->mIsPressBtnSIPOnOff:Z

    .line 211
    :cond_0
    if-eqz p3, :cond_1

    .line 212
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 214
    :cond_1
    return-void
.end method

.method public whitelist dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V
    .locals 1
    .param p1, "seq"    # I
    .param p2, "event"    # Landroid/view/MotionEvent;
    .param p3, "callback"    # Landroid/view/inputmethod/InputMethodSession$EventCallback;

    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->this$0:Landroid/inputmethodservice/AbstractInputMethodService;

    invoke-virtual {v0, p2}, Landroid/inputmethodservice/AbstractInputMethodService;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 223
    .local v0, "handled":Z
    if-eqz p3, :cond_0

    .line 224
    invoke-interface {p3, p1, v0}, Landroid/view/inputmethod/InputMethodSession$EventCallback;->finishedEvent(IZ)V

    .line 226
    :cond_0
    return-void
.end method

.method public whitelist isEnabled()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    return v0
.end method

.method public whitelist isRevoked()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    return v0
.end method

.method public whitelist revokeSelf()V
    .locals 1

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    .line 196
    return-void
.end method

.method public whitelist setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 184
    iget-boolean v0, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mRevoked:Z

    if-nez v0, :cond_0

    .line 185
    iput-boolean p1, p0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodSessionImpl;->mEnabled:Z

    .line 187
    :cond_0
    return-void
.end method

.method public abstract blacklist showSideSyncSoftInput(I)V
.end method
