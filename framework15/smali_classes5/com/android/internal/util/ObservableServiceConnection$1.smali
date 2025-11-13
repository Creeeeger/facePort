.class Lcom/android/internal/util/ObservableServiceConnection$1;
.super Lcom/android/internal/util/CallbackRegistry$NotifierCallback;
.source "ObservableServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ObservableServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/util/CallbackRegistry$NotifierCallback<",
        "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
        "TT;>;",
        "Lcom/android/internal/util/ObservableServiceConnection<",
        "TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/util/ObservableServiceConnection;


# direct methods
.method public static synthetic blacklist $r8$lambda$VfJC7yxl7-QcEVYrfSZbu7mDjME(Lcom/android/internal/util/ObservableServiceConnection$1;Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$1;->lambda$onNotifyCallback$0(Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/util/ObservableServiceConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-direct {p0}, Lcom/android/internal/util/CallbackRegistry$NotifierCallback;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onNotifyCallback$0(Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmLock(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p2, p3, p1}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {v1}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmLastDisconnectReason(Lcom/android/internal/util/ObservableServiceConnection;)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$Callback;->onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V

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


# virtual methods
.method public blacklist onNotifyCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;ILjava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection$1;->this$0:Lcom/android/internal/util/ObservableServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/ObservableServiceConnection;->-$$Nest$fgetmExecutor(Lcom/android/internal/util/ObservableServiceConnection;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/android/internal/util/ObservableServiceConnection$1$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/util/ObservableServiceConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ObservableServiceConnection$1;Ljava/lang/Object;Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public bridge synthetic blacklist onNotifyCallback(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    check-cast p1, Lcom/android/internal/util/ObservableServiceConnection$Callback;

    check-cast p2, Lcom/android/internal/util/ObservableServiceConnection;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/util/ObservableServiceConnection$1;->onNotifyCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;Lcom/android/internal/util/ObservableServiceConnection;ILjava/lang/Object;)V

    return-void
.end method
