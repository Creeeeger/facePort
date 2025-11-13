.class public final Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settings/connecteddevice/threadnetwork/BaseThreadNetworkController;


# instance fields
.field public final synthetic $controller:Landroid/net/thread/ThreadNetworkController;


# direct methods
.method public constructor <init>(Landroid/net/thread/ThreadNetworkController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;->$controller:Landroid/net/thread/ThreadNetworkController;

    return-void
.end method


# virtual methods
.method public final registerStateCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;->$controller:Landroid/net/thread/ThreadNetworkController;

    invoke-virtual {p0, p1, p2}, Landroid/net/thread/ThreadNetworkController;->registerStateCallback(Ljava/util/concurrent/Executor;Landroid/net/thread/ThreadNetworkController$StateCallback;)V

    return-void
.end method

.method public final setEnabled(ZLjava/util/concurrent/Executor;Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkToggleController$setChecked$1;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;->$controller:Landroid/net/thread/ThreadNetworkController;

    invoke-virtual {p0, p1, p2, p3}, Landroid/net/thread/ThreadNetworkController;->setEnabled(ZLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method public final unregisterStateCallback(Landroid/net/thread/ThreadNetworkController$StateCallback;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/connecteddevice/threadnetwork/ThreadNetworkUtils$getThreadNetworkController$1;->$controller:Landroid/net/thread/ThreadNetworkController;

    invoke-virtual {p0, p1}, Landroid/net/thread/ThreadNetworkController;->unregisterStateCallback(Landroid/net/thread/ThreadNetworkController$StateCallback;)V

    return-void
.end method
