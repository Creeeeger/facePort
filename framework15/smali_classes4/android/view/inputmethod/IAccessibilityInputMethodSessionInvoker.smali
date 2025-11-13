.class final Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
.super Ljava/lang/Object;
.source "IAccessibilityInputMethodSessionInvoker.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "IAccessibilityInputMethodSessionInvoker"

.field private static blacklist sAsyncBinderEmulationHandler:Landroid/os/Handler;

.field private static final blacklist sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mCustomHandler:Landroid/os/Handler;

.field private final blacklist mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;


# direct methods
.method public static synthetic blacklist $r8$lambda$LVhm5soxM_wv2LQAXCPXNdGrsTQ(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$NFc7eeOLXwV1gSWAy5K52A8MY98(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->finishInputInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qLLn0lOm4EIanx9j-iUCKYbOpD8(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->lambda$updateSelection$0(IIIIII)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    iput-object p2, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    return-void
.end method

.method public static blacklist createOrNull(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;)Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;
    .locals 3

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/os/Binder;->isProxy(Landroid/os/IInterface;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "IMM.IAIMS"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    sput-object v2, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    :cond_0
    sget-object v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->sAsyncBinderEmulationHandler:Landroid/os/Handler;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez p0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;

    invoke-direct {v0, p0, v1}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;-><init>(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;Landroid/os/Handler;)V

    :goto_1
    return-object v0
.end method

.method private blacklist finishInputInternal()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->finishInput()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$invalidateInput$1(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    return-void
.end method

.method private synthetic blacklist lambda$updateSelection$0(IIIIII)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    return-void
.end method

.method private blacklist updateSelectionInternal(IIIIII)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mSession:Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;->updateSelection(IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "IAccessibilityInputMethodSessionInvoker"

    const-string v2, "A11yIME died"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method blacklist finishInput()V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->finishInputInternal()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method blacklist invalidateInput(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->invalidateInputInternal(Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v1, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;Landroid/view/inputmethod/EditorInfo;Lcom/android/internal/inputmethod/IRemoteAccessibilityInputConnection;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method blacklist updateSelection(IIIIII)V
    .locals 11

    move-object v8, p0

    iget-object v0, v8, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p6}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->updateSelectionInternal(IIIIII)V

    goto :goto_0

    :cond_0
    iget-object v9, v8, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;->mCustomHandler:Landroid/os/Handler;

    new-instance v10, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda1;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/IAccessibilityInputMethodSessionInvoker;IIIIII)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
