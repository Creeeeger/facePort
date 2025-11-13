.class Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;
.super Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;
.source "InputMethodManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/InputMethodManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionlessHandwritingCallbackProxy"
.end annotation


# instance fields
.field private blacklist mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/inputmethod/IConnectionlessHandwritingCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    return-void
.end method

.method static synthetic blacklist lambda$onError$2(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$0(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onError(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onResult$1(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/view/inputmethod/ConnectionlessHandwritingCallback;->onResult(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 5

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;I)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public blacklist onResult(Ljava/lang/CharSequence;)V
    .locals 5

    iget-object v0, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v3, p0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy;->mCallback:Landroid/view/inputmethod/ConnectionlessHandwritingCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v0, v2, p1}, Landroid/view/inputmethod/InputMethodManager$ConnectionlessHandwritingCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/view/inputmethod/ConnectionlessHandwritingCallback;Ljava/lang/CharSequence;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
