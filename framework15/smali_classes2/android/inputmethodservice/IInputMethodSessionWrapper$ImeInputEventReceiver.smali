.class final Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "IInputMethodSessionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputMethodSession$EventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/IInputMethodSessionWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ImeInputEventReceiver"
.end annotation


# static fields
.field private static final blacklist KEY_EVENT_ALLOW_PERIOD_MS:J = 0x64L


# instance fields
.field private final blacklist mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;


# direct methods
.method public constructor blacklist <init>(Landroid/inputmethodservice/IInputMethodSessionWrapper;Landroid/view/InputChannel;Landroid/os/Looper;)V
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

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    return-void
.end method

.method private blacklist hasKeyModifiers(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method


# virtual methods
.method public whitelist finishedEvent(IZ)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/InputEvent;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    invoke-virtual {p0, v1, p2}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    :cond_0
    return-void
.end method

.method public blacklist onInputEvent(Landroid/view/InputEvent;)V
    .locals 7

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v0, v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_0
    instance-of v0, p1, Landroid/view/KeyEvent;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/KeyEvent;

    invoke-direct {p0, v0}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->hasKeyModifiers(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-static {v2}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->-$$Nest$fgetmContext(Landroid/inputmethodservice/IInputMethodSessionWrapper;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x64

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    invoke-virtual {v2, v0}, Landroid/hardware/input/InputManager;->verifyInputEvent(Landroid/view/InputEvent;)Landroid/view/VerifiedInputEvent;

    move-result-object v5

    if-nez v5, :cond_2

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unverified or Invalid KeyEvent injected into IME. Dropping "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "InputMethodWrapper"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v0

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    instance-of v1, p1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Landroid/view/KeyEvent;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchKeyEvent(ILandroid/view/KeyEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0

    :cond_3
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchTrackballEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodSessionWrapper$ImeInputEventReceiver;->this$0:Landroid/inputmethodservice/IInputMethodSessionWrapper;

    iget-object v2, v2, Landroid/inputmethodservice/IInputMethodSessionWrapper;->mInputMethodSession:Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v2, v0, v1, p0}, Landroid/view/inputmethod/InputMethodSession;->dispatchGenericMotionEvent(ILandroid/view/MotionEvent;Landroid/view/inputmethod/InputMethodSession$EventCallback;)V

    :goto_0
    return-void
.end method
