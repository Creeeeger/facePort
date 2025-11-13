.class public Lcom/android/internal/util/ObservableServiceConnection;
.super Ljava/lang/Object;
.source "ObservableServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;,
        Lcom/android/internal/util/ObservableServiceConnection$Callback;,
        Lcom/android/internal/util/ObservableServiceConnection$DisconnectReason;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# static fields
.field public static final blacklist DISCONNECT_REASON_BINDING_DIED:I = 0x3

.field public static final blacklist DISCONNECT_REASON_DISCONNECTED:I = 0x2

.field public static final blacklist DISCONNECT_REASON_NONE:I = 0x0

.field public static final blacklist DISCONNECT_REASON_NULL_BINDING:I = 0x1

.field public static final blacklist DISCONNECT_REASON_UNBIND:I = 0x4


# instance fields
.field private blacklist mBoundCalled:Z

.field private final blacklist mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/CallbackRegistry<",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mFlags:I

.field private blacklist mLastDisconnectReason:I

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mService:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mServiceIntent:Landroid/content/Intent;

.field private final blacklist mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$ELSya9E5t_tfA1w7JXqAHaL9Fxg(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/util/ObservableServiceConnection;->lambda$addCallback$0(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLastDisconnectReason(Lcom/android/internal/util/ObservableServiceConnection;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    iput v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    new-instance v0, Lcom/android/internal/util/CallbackRegistry;

    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection$1;

    invoke-direct {v1, p0}, Lcom/android/internal/util/ObservableServiceConnection$1;-><init>(Lcom/android/internal/util/ObservableServiceConnection;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/CallbackRegistry;-><init>(Lcom/android/internal/util/CallbackRegistry$NotifierCallback;)V

    iput-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    iput-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;

    iput-object p4, p0, Lcom/android/internal/util/ObservableServiceConnection;->mServiceIntent:Landroid/content/Intent;

    iput p5, p0, Lcom/android/internal/util/ObservableServiceConnection;->mFlags:I

    return-void
.end method

.method private synthetic blacklist lambda$addCallback$0(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    invoke-interface {p1, p0, v1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    invoke-interface {p1, p0, v1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onDisconnected(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    iput p1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v2, p0, p1, v1}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist addCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v0, p1}, Lcom/android/internal/util/CallbackRegistry;->add(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist bind()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mServiceIntent:Landroid/content/Intent;

    iget v3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mFlags:I

    iget-object v4, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3, v4, p0}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    move-result v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mBoundCalled:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist execute(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    return-void
.end method

.method public final whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    return-void
.end method

.method public final whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mTransformer:Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;

    invoke-interface {v1, p2}, Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;->convert(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    iget v2, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLastDisconnectReason:I

    iget-object v3, p0, Lcom/android/internal/util/ObservableServiceConnection;->mService:Ljava/lang/Object;

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/util/CallbackRegistry;->notifyCallbacks(Ljava/lang/Object;ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    return-void
.end method

.method public blacklist removeCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection;->mCallbackRegistry:Lcom/android/internal/util/CallbackRegistry;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/CallbackRegistry;->remove(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unbind()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/util/ObservableServiceConnection;->onDisconnected(I)V

    return-void
.end method
