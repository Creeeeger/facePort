.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/inputmethod/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist DO_CAN_START_STYLUS_HANDWRITING:I = 0x64

.field private static final blacklist DO_CHANGE_INPUTMETHOD_SUBTYPE:I = 0x50

.field private static final blacklist DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE:I = 0xaa

.field private static final blacklist DO_CREATE_INLINE_SUGGESTIONS_REQUEST:I = 0x5a

.field private static final blacklist DO_CREATE_SESSION:I = 0x28

.field private static final blacklist DO_DISCARD_HANDWRITING_DELEGATION_TEXT:I = 0xb4

.field private static final blacklist DO_DUMP:I = 0x1

.field private static final blacklist DO_FINISH_STYLUS_HANDWRITING:I = 0x82

.field private static final blacklist DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final blacklist DO_INITIALIZE_INTERNAL:I = 0xa

.field private static final blacklist DO_INIT_INK_WINDOW:I = 0x78

.field private static final blacklist DO_MINIMIZE_SOFT_INPUT:I = 0xc8

.field private static final blacklist DO_ON_NAV_BUTTON_FLAGS_CHANGED:I = 0x23

.field private static final blacklist DO_REMOVE_STYLUS_HANDWRITING_WINDOW:I = 0x96

.field private static final blacklist DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final blacklist DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final blacklist DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT:I = 0xa0

.field private static final blacklist DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final blacklist DO_START_INPUT:I = 0x20

.field private static final blacklist DO_START_STYLUS_HANDWRITING:I = 0x6e

.field private static final blacklist DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final blacklist DO_UPDATE_TOOL_TYPE:I = 0x8c

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"

.field private static final blacklist UNDO_MINIMIZE_SOFT_INPUT:I = 0xd2


# instance fields
.field final greylist mCaller:Lcom/android/internal/os/HandlerCaller;

.field blacklist mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

.field final blacklist mContext:Landroid/content/Context;

.field final blacklist mInputMethod:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/inputmethod/InputMethod;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTarget:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/inputmethodservice/InputMethodServiceInternal;",
            ">;"
        }
    .end annotation
.end field

.field final blacklist mTargetSdkVersion:I


# direct methods
.method constructor blacklist <init>(Landroid/inputmethodservice/InputMethodServiceInternal;Landroid/view/inputmethod/InputMethod;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethod$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    return-void
.end method

.method private static blacklist isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->isServiceDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", InputMethod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", InputMethodServiceInternal:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public blacklist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    const-string v0, "InputMethodWrapper"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/inputmethod/IRemoteInputConnection$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IRemoteInputConnection;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    nop

    const/16 v2, 0x64

    move v3, p1

    move v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x50

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist commitHandwritingDelegationTextIfAvailable()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xaa

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist discardHandwritingDelegationText()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xb4

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-virtual {v2}, Lcom/android/internal/os/HandlerCaller;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Timeout waiting for dump"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethod;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/InputMethodServiceInternal;

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xc

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "InputMethodWrapper"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :sswitch_0
    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->unMinimizeSoftInput()V

    return-void

    :sswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->minimizeSoftInput(I)V

    return-void

    :sswitch_2
    const-string v2, "DO_DISCARD_HANDWRITING_DELEGATION_TEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->discardHandwritingDelegationText()V

    :cond_0
    return-void

    :sswitch_3
    const-string v2, "DO_COMMIT_HANDWRITING_DELEGATION_TEXT_IF_AVAILABLE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->commitHandwritingDelegationTextIfAvailable()V

    :cond_1
    return-void

    :sswitch_4
    const-string v2, "DO_SET_STYLUS_WINDOW_IDLE_TIMEOUT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputMethod;->setStylusWindowIdleTimeoutForTest(J)V

    :cond_2
    return-void

    :sswitch_5
    const-string v2, "DO_REMOVE_STYLUS_HANDWRITING_WINDOW"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->removeStylusHandwritingWindow()V

    :cond_3
    return-void

    :sswitch_6
    const-string v2, "DO_UPDATE_TOOL_TYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->updateEditorToolType(I)V

    :cond_4
    return-void

    :sswitch_7
    const-string v2, "DO_FINISH_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->finishStylusHandwriting()V

    :cond_5
    return-void

    :sswitch_8
    const-string v2, "DO_INIT_INK_WINDOW"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->initInkWindow()V

    :cond_6
    return-void

    :sswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v3, "DO_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputChannel;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v0, v3, v4, v5}, Landroid/view/inputmethod/InputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    :cond_7
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_a
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v5, "DO_CAN_START_STYLUS_HANDWRITING"

    invoke-static {v0, v1, v5}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;

    iget-object v7, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v7, Landroid/view/inputmethod/CursorAnchorInfo;

    iget v8, p1, Landroid/os/Message;->arg2:I

    if-eqz v8, :cond_8

    goto :goto_0

    :cond_8
    move v3, v4

    :goto_0
    invoke-interface {v0, v5, v6, v7, v3}, Landroid/view/inputmethod/InputMethod;->canStartStylusHandwriting(ILcom/android/internal/inputmethod/IConnectionlessHandwritingCallback;Landroid/view/inputmethod/CursorAnchorInfo;Z)V

    :cond_9
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_b
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v3, "DO_CREATE_INLINE_SUGGESTIONS_REQUEST"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V

    :cond_a
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_c
    const-string v2, "DO_CHANGE_INPUTMETHOD_SUBTYPE"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    :cond_b
    return-void

    :sswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    const-string v4, "DO_HIDE_SOFT_INPUT"

    invoke-static {v0, v1, v4}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-interface {v0, v4, v5, v6, v3}, Landroid/view/inputmethod/InputMethod;->hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_1

    :cond_c
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_e
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/ImeTracker$Token;

    const-string v4, "DO_SHOW_SOFT_INPUT"

    invoke-static {v0, v1, v4}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Landroid/os/ResultReceiver;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/os/IBinder;

    invoke-interface {v0, v4, v5, v6, v3}, Landroid/view/inputmethod/InputMethod;->showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v4

    invoke-interface {v4, v3, v5}, Landroid/view/inputmethod/ImeTracker;->onFailed(Landroid/view/inputmethod/ImeTracker$Token;I)V

    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_f
    const-string v2, "DO_SET_SESSION_ENABLED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputMethodSession;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_e

    goto :goto_3

    :cond_e
    move v3, v4

    :goto_3
    invoke-interface {v0, v2, v3}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    :cond_f
    return-void

    :sswitch_10
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v3, "DO_CREATE_SESSION"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v3, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/InputChannel;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/inputmethod/IInputMethodSessionCallback;

    invoke-direct {v3, v4, v5, v6}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/inputmethod/IInputMethodSessionCallback;)V

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    :cond_10
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_11
    const-string v2, "DO_ON_NAV_BUTTON_FLAGS_CHANGED"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->onNavButtonFlagsChanged(I)V

    :cond_11
    return-void

    :sswitch_12
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v3, "DO_START_INPUT"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputConnection;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;

    invoke-interface {v0, v3, v4}, Landroid/view/inputmethod/InputMethod;->dispatchStartInput(Landroid/view/inputmethod/InputConnection;Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V

    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    :sswitch_13
    const-string v2, "DO_UNSET_INPUT_CONTEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    :cond_13
    return-void

    :sswitch_14
    const-string v2, "DO_SET_INPUT_CONTEXT"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    :cond_14
    return-void

    :sswitch_15
    const-string v2, "DO_INITIALIZE_INTERNAL"

    invoke-static {v0, v1, v2}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/inputmethod/IInputMethod$InitParams;

    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputMethod;->initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V

    :cond_15
    return-void

    :sswitch_16
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/os/SomeArgs;

    const-string v3, "DO_DUMP"

    invoke-static {v0, v1, v3}, Landroid/inputmethodservice/IInputMethodWrapper;->isValid(Landroid/view/inputmethod/InputMethod;Landroid/inputmethodservice/InputMethodServiceInternal;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/io/FileDescriptor;

    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Ljava/io/PrintWriter;

    iget-object v5, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iget-object v6, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v6, Ljava/util/concurrent/CountDownLatch;

    :try_start_0
    invoke-interface {v1, v3, v4, v5}, Landroid/inputmethodservice/InputMethodServiceInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_6

    :catchall_0
    move-exception v7

    goto :goto_5

    :catch_0
    move-exception v7

    :try_start_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_5
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v7

    :cond_16
    :goto_6
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_16
        0xa -> :sswitch_15
        0x14 -> :sswitch_14
        0x1e -> :sswitch_13
        0x20 -> :sswitch_12
        0x23 -> :sswitch_11
        0x28 -> :sswitch_10
        0x2d -> :sswitch_f
        0x3c -> :sswitch_e
        0x46 -> :sswitch_d
        0x50 -> :sswitch_c
        0x5a -> :sswitch_b
        0x64 -> :sswitch_a
        0x6e -> :sswitch_9
        0x78 -> :sswitch_8
        0x82 -> :sswitch_7
        0x8c -> :sswitch_6
        0x96 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xaa -> :sswitch_3
        0xb4 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xd2 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist hideSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist initInkWindow()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist initializeInternal(Lcom/android/internal/inputmethod/IInputMethod$InitParams;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist minimizeSoftInput(I)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/inputmethod/InlineSuggestionsRequestInfo;Lcom/android/internal/inputmethod/IInlineSuggestionsRequestCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x5a

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x23

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist removeStylusHandwritingWindow()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist setSessionEnabled(Lcom/android/internal/inputmethod/IInputMethodSession;Z)V
    .locals 6

    const-string v0, "InputMethodWrapper"

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Session is already finished: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x2d

    invoke-virtual {v3, v5, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incoming session not of correct type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public blacklist setStylusWindowIdleTimeoutForTest(J)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist showSoftInput(Landroid/os/IBinder;Landroid/view/inputmethod/ImeTracker$Token;ILandroid/os/ResultReceiver;)V
    .locals 7

    invoke-static {}, Landroid/view/inputmethod/ImeTracker;->forLogging()Landroid/view/inputmethod/ImeTracker;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, p2, v1}, Landroid/view/inputmethod/ImeTracker;->onProgress(Landroid/view/inputmethod/ImeTracker$Token;I)V

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    move v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOOO(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist startInput(Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;)V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v0, :cond_0

    const-string v0, "InputMethodWrapper"

    const-string v1, "startInput must be called after bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    :cond_0
    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->editorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    iget-object v0, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    iget-object v2, p1, Lcom/android/internal/inputmethod/IInputMethod$StartInputParams;->remoteInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/inputmethod/IRemoteInputConnection;Lcom/android/internal/inputmethod/CancellationGroup;)V

    :goto_0
    nop

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x20

    invoke-virtual {v2, v3, v0, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x6e

    invoke-virtual {v1, v2, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist unbindInput()V
    .locals 3

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_0

    :cond_0
    const-string v0, "InputMethodWrapper"

    const-string v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist undoMinimizeSoftInput()V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xd2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public blacklist updateEditorToolType(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    return-void
.end method
