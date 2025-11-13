.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
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

.field private static final blacklist DO_CREATE_INLINE_SUGGESTIONS_REQUEST:I = 0x5a

.field private static final blacklist DO_CREATE_SESSION:I = 0x28

.field private static final blacklist DO_DUMP:I = 0x1

.field private static final blacklist DO_FINISH_STYLUS_HANDWRITING:I = 0x82

.field private static final blacklist DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final blacklist DO_INITIALIZE_INTERNAL:I = 0xa

.field private static final blacklist DO_INIT_INK_WINDOW:I = 0x78

.field private static final blacklist DO_MINIMIZE_SOFT_INPUT:I = 0x8c

.field private static final blacklist DO_ON_NAV_BUTTON_FLAGS_CHANGED:I = 0x23

.field private static final blacklist DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final blacklist DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final blacklist DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final blacklist DO_START_INPUT:I = 0x20

.field private static final blacklist DO_START_STYLUS_HANDWRITING:I = 0x6e

.field private static final blacklist DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final blacklist TAG:Ljava/lang/String; = "InputMethodWrapper"

.field private static final blacklist UNDO_MINIMIZE_SOFT_INPUT:I = 0x96


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
    .param p1, "imsInternal"    # Landroid/inputmethodservice/InputMethodServiceInternal;
    .param p2, "inputMethod"    # Landroid/view/inputmethod/InputMethod;

    .line 145
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 146
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 147
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    .line 148
    new-instance v2, Lcom/android/internal/os/HandlerCaller;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, p0, v3}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;Z)V

    iput-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 149
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    .line 150
    invoke-interface {p1}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    .line 151
    return-void
.end method


# virtual methods
.method public blacklist bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 4
    .param p1, "binding"    # Landroid/view/inputmethod/InputBinding;

    .line 342
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 343
    const-string v0, "InputMethodWrapper"

    const-string v1, "bindInput must be paired with unbindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_0
    new-instance v0, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 346
    new-instance v0, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    .line 347
    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v0, v1, v2, v3}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/CancellationGroup;)V

    .line 348
    .local v0, "ic":Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 349
    .local v1, "nu":Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x14

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 350
    return-void
.end method

.method public blacklist canStartStylusHandwriting(I)V
    .locals 2
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 439
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 438
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 440
    return-void
.end method

.method public blacklist changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 430
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x50

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 432
    return-void
.end method

.method public blacklist createSession(Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V
    .locals 2
    .param p1, "channel"    # Landroid/view/InputChannel;
    .param p2, "callback"    # Lcom/android/internal/view/IInputSessionCallback;

    .line 392
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x28

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 394
    return-void
.end method

.method protected whitelist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 297
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 298
    .local v0, "target":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v0, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-interface {v0}, Landroid/inputmethodservice/InputMethodServiceInternal;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 305
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 306
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 307
    return-void

    .line 310
    :cond_1
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 311
    .local v1, "latch":Ljava/util/concurrent/CountDownLatch;
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

    .line 314
    const-wide/16 v2, 0x5

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 315
    const-string v2, "Timeout waiting for dump"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_2
    goto :goto_0

    .line 317
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v3, "Interrupted waiting for dump"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_0
    return-void
.end method

.method public blacklist executeMessage(Landroid/os/Message;)V
    .locals 17
    .param p1, "msg"    # Landroid/os/Message;

    .line 156
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/view/inputmethod/InputMethod;

    .line 158
    .local v10, "inputMethod":Landroid/view/inputmethod/InputMethod;
    const/4 v0, 0x1

    if-nez v10, :cond_0

    iget v3, v2, Landroid/os/Message;->what:I

    if-eq v3, v0, :cond_0

    .line 159
    const-string v0, "InputMethodWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input method reference was null, ignoring message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void

    .line 163
    :cond_0
    iget v3, v2, Landroid/os/Message;->what:I

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    .line 291
    const-string v0, "InputMethodWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled message code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v2, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 286
    :sswitch_0
    move-object v0, v10

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    invoke-virtual {v0}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->unMinimizeSoftInput()V

    .line 287
    return-void

    .line 282
    :sswitch_1
    move-object v0, v10

    check-cast v0, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/inputmethodservice/AbstractInputMethodService$AbstractInputMethodImpl;->minimizeSoftInput(I)V

    .line 283
    return-void

    .line 276
    :sswitch_2
    invoke-interface {v10}, Landroid/view/inputmethod/InputMethod;->finishStylusHandwriting()V

    .line 277
    return-void

    .line 272
    :sswitch_3
    invoke-interface {v10}, Landroid/view/inputmethod/InputMethod;->initInkWindow()V

    .line 273
    return-void

    .line 265
    :sswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 266
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/view/InputChannel;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v10, v3, v4, v5}, Landroid/view/inputmethod/InputMethod;->startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V

    .line 268
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 269
    return-void

    .line 261
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_5
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputMethod;->canStartStylusHandwriting(I)V

    .line 262
    return-void

    .line 253
    :sswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 254
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v10, v3, v4}, Landroid/view/inputmethod/InputMethod;->onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 257
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 258
    return-void

    .line 250
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_7
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputMethodSubtype;

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputMethod;->changeInputMethodSubtype(Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 251
    return-void

    .line 243
    :sswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 244
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v10, v3, v4, v5}, Landroid/view/inputmethod/InputMethod;->hideSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V

    .line 246
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 247
    return-void

    .line 236
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_9
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 237
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget v3, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/os/ResultReceiver;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v10, v3, v4, v5}, Landroid/view/inputmethod/InputMethod;->showSoftInputWithToken(ILandroid/os/ResultReceiver;Landroid/os/IBinder;)V

    .line 239
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 240
    return-void

    .line 232
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_a
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/inputmethod/InputMethodSession;

    iget v5, v2, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    invoke-interface {v10, v3, v0}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    .line 234
    return-void

    .line 224
    :sswitch_b
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 225
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    new-instance v3, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v4, v1, Landroid/inputmethodservice/IInputMethodWrapper;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v5, Landroid/view/InputChannel;

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/view/IInputSessionCallback;

    invoke-direct {v3, v4, v5, v6}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Landroid/view/InputChannel;Lcom/android/internal/view/IInputSessionCallback;)V

    invoke-interface {v10, v3}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    .line 228
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 229
    return-void

    .line 221
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_c
    iget v0, v2, Landroid/os/Message;->arg1:I

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputMethod;->onNavButtonFlagsChanged(I)V

    .line 222
    return-void

    .line 201
    :sswitch_d
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Lcom/android/internal/os/SomeArgs;

    .line 202
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v12, v3

    check-cast v12, Landroid/os/IBinder;

    .line 203
    .local v12, "startInputToken":Landroid/os/IBinder;
    iget-object v3, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v13, v3

    check-cast v13, Lcom/android/internal/view/IInputContext;

    .line 204
    .local v13, "inputContext":Lcom/android/internal/view/IInputContext;
    iget-object v3, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/os/SomeArgs;

    iget-object v3, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v14, v3

    check-cast v14, Landroid/window/ImeOnBackInvokedDispatcher;

    .line 206
    .local v14, "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    iget-object v3, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Landroid/view/inputmethod/EditorInfo;

    .line 207
    .local v15, "info":Landroid/view/inputmethod/EditorInfo;
    iget-object v3, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v9, v3

    check-cast v9, Lcom/android/internal/inputmethod/CancellationGroup;

    .line 208
    .local v9, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    iget v3, v11, Lcom/android/internal/os/SomeArgs;->argi5:I

    if-ne v3, v0, :cond_2

    move v6, v0

    goto :goto_1

    :cond_2
    move v6, v4

    .line 210
    .local v6, "restarting":Z
    :goto_1
    iget v0, v11, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 211
    .local v0, "navButtonFlags":I
    if-eqz v13, :cond_3

    .line 212
    new-instance v3, Landroid/inputmethodservice/RemoteInputConnection;

    iget-object v4, v1, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v4, v13, v9}, Landroid/inputmethodservice/RemoteInputConnection;-><init>(Ljava/lang/ref/WeakReference;Lcom/android/internal/view/IInputContext;Lcom/android/internal/inputmethod/CancellationGroup;)V

    move-object v4, v3

    goto :goto_2

    .line 213
    :cond_3
    const/4 v3, 0x0

    move-object v4, v3

    :goto_2
    nop

    .line 214
    .local v4, "ic":Landroid/view/inputmethod/InputConnection;
    iget v3, v1, Landroid/inputmethodservice/IInputMethodWrapper;->mTargetSdkVersion:I

    invoke-virtual {v15, v3}, Landroid/view/inputmethod/EditorInfo;->makeCompatible(I)V

    .line 215
    move-object v3, v10

    move-object v5, v15

    move-object v7, v12

    move v8, v0

    move-object/from16 v16, v9

    .end local v9    # "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    .local v16, "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    move-object v9, v14

    invoke-interface/range {v3 .. v9}, Landroid/view/inputmethod/InputMethod;->dispatchStartInputWithToken(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;ZLandroid/os/IBinder;ILandroid/window/ImeOnBackInvokedDispatcher;)V

    .line 217
    invoke-virtual {v11}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 218
    return-void

    .line 198
    .end local v0    # "navButtonFlags":I
    .end local v4    # "ic":Landroid/view/inputmethod/InputConnection;
    .end local v6    # "restarting":Z
    .end local v11    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v12    # "startInputToken":Landroid/os/IBinder;
    .end local v13    # "inputContext":Lcom/android/internal/view/IInputContext;
    .end local v14    # "imeDispatcher":Landroid/window/ImeOnBackInvokedDispatcher;
    .end local v15    # "info":Landroid/view/inputmethod/EditorInfo;
    .end local v16    # "cancellationGroup":Lcom/android/internal/inputmethod/CancellationGroup;
    :sswitch_e
    invoke-interface {v10}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    .line 199
    return-void

    .line 194
    :sswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v10, v0}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    .line 195
    return-void

    .line 183
    :sswitch_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 185
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_0
    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/os/IBinder;

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;

    iget v6, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 187
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iget v8, v2, Landroid/os/Message;->arg2:I

    .line 185
    move-object v3, v10

    invoke-interface/range {v3 .. v8}, Landroid/view/inputmethod/InputMethod;->initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    nop

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 190
    throw v0

    .line 165
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    :sswitch_11
    iget-object v0, v1, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/inputmethodservice/InputMethodServiceInternal;

    .line 166
    .local v3, "target":Landroid/inputmethodservice/InputMethodServiceInternal;
    if-nez v3, :cond_4

    .line 167
    return-void

    .line 169
    :cond_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 171
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    :try_start_1
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v0, Ljava/io/FileDescriptor;

    iget-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    iget-object v6, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    invoke-interface {v3, v0, v5, v6}, Landroid/inputmethodservice/InputMethodServiceInternal;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_3

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_3
    iget-object v5, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v5

    .line 177
    :try_start_2
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 178
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 180
    return-void

    .line 178
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_11
        0xa -> :sswitch_10
        0x14 -> :sswitch_f
        0x1e -> :sswitch_e
        0x20 -> :sswitch_d
        0x23 -> :sswitch_c
        0x28 -> :sswitch_b
        0x2d -> :sswitch_a
        0x3c -> :sswitch_9
        0x46 -> :sswitch_8
        0x50 -> :sswitch_7
        0x5a -> :sswitch_6
        0x64 -> :sswitch_5
        0x6e -> :sswitch_4
        0x78 -> :sswitch_3
        0x82 -> :sswitch_2
        0x8c -> :sswitch_1
        0x96 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist finishStylusHandwriting()V
    .locals 2

    .line 461
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 462
    return-void
.end method

.method public blacklist hideSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "hideInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 423
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x46

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 425
    return-void
.end method

.method public blacklist initInkWindow()V
    .locals 2

    .line 455
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 456
    return-void
.end method

.method public blacklist initializeInternal(Landroid/os/IBinder;Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;IZI)V
    .locals 8
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "privOps"    # Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations;
    .param p3, "configChanges"    # I
    .param p4, "stylusHwSupported"    # Z
    .param p5, "navButtonFlags"    # I

    .line 327
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 328
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 327
    const/16 v1, 0xa

    move-object v0, v7

    move v2, p3

    move v3, p5

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIIOOO(IIILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 329
    return-void
.end method

.method public blacklist minimizeSoftInput(I)V
    .locals 2
    .param p1, "height"    # I

    .line 471
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 472
    return-void
.end method

.method public blacklist onCreateInlineSuggestionsRequest(Lcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 2
    .param p1, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p2, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 335
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 336
    const/16 v1, 0x5a

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 335
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 337
    return-void
.end method

.method public blacklist onNavButtonFlagsChanged(I)V
    .locals 2
    .param p1, "navButtonFlags"    # I

    .line 385
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 386
    const/16 v1, 0x23

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    .line 385
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 387
    return-void
.end method

.method public blacklist setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;
    .param p2, "enabled"    # Z

    .line 400
    const-string v0, "InputMethodWrapper"

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    .line 401
    invoke-virtual {v1}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v1

    .line 402
    .local v1, "ls":Landroid/view/inputmethod/InputMethodSession;
    if-nez v1, :cond_0

    .line 403
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

    .line 404
    return-void

    .line 406
    :cond_0
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x2d

    .line 407
    if-eqz p2, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 406
    :goto_0
    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1    # "ls":Landroid/view/inputmethod/InputMethodSession;
    goto :goto_1

    .line 408
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/lang/ClassCastException;
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

    .line 411
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :goto_1
    return-void
.end method

.method public blacklist showSoftInput(Landroid/os/IBinder;ILandroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "showInputToken"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 416
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 418
    return-void
.end method

.method public blacklist startInput(Landroid/os/IBinder;Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;ZILandroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 13
    .param p1, "startInputToken"    # Landroid/os/IBinder;
    .param p2, "inputContext"    # Lcom/android/internal/view/IInputContext;
    .param p3, "attribute"    # Landroid/view/inputmethod/EditorInfo;
    .param p4, "restarting"    # Z
    .param p5, "navButtonFlags"    # I
    .param p6, "imeDispatcher"    # Landroid/window/ImeOnBackInvokedDispatcher;

    .line 371
    move-object v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-nez v1, :cond_0

    .line 372
    const-string v1, "InputMethodWrapper"

    const-string/jumbo v2, "startInput must be called after bindInput."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Lcom/android/internal/inputmethod/CancellationGroup;

    invoke-direct {v1}, Lcom/android/internal/inputmethod/CancellationGroup;-><init>()V

    iput-object v1, v0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 375
    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v1

    .line 376
    .local v1, "args":Lcom/android/internal/os/SomeArgs;
    move-object v10, p2

    iput-object v10, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 377
    move-object/from16 v11, p6

    iput-object v11, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 378
    iget-object v12, v0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v3, 0x20

    iget-object v7, v0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    .line 379
    nop

    .line 378
    move-object v2, v12

    move-object v4, p1

    move-object v5, v1

    move-object/from16 v6, p3

    move/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOOII(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 380
    return-void
.end method

.method public blacklist startStylusHandwriting(ILandroid/view/InputChannel;Ljava/util/List;)V
    .locals 2
    .param p1, "requestId"    # I
    .param p2, "channel"    # Landroid/view/InputChannel;
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

    .line 447
    .local p3, "stylusEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 448
    const/16 v1, 0x6e

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 450
    return-void
.end method

.method public blacklist unbindInput()V
    .locals 2

    .line 355
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/android/internal/inputmethod/CancellationGroup;->cancelAll()V

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCancellationGroup:Lcom/android/internal/inputmethod/CancellationGroup;

    goto :goto_0

    .line 360
    :cond_0
    const-string v0, "InputMethodWrapper"

    const-string/jumbo v1, "unbindInput must be paired with bindInput."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :goto_0
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 363
    return-void
.end method

.method public blacklist undoMinimizeSoftInput()V
    .locals 3

    .line 481
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageI(II)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 482
    return-void
.end method
