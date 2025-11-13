.class Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;
.super Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;
.source "SemWifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SemWifiP2pCallbackProxy"
.end annotation


# instance fields
.field private final blacklist mActionTag:Ljava/lang/String;

.field private final blacklist mCallback:Ljava/lang/Object;

.field private final blacklist mHandler:Landroid/os/Handler;

.field final synthetic blacklist this$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$3HqhP90j5T9YPePwGZWc6m6O2ow(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->lambda$onFailure$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$rNuKURJ45zBY3nyR2TI6nDKb3aM(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->this$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mActionTag:Ljava/lang/String;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$onFailure$1(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;->onFailure(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onSuccess$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public blacklist onFailure(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiP2pCallbackProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public blacklist onSuccess()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemWifiP2pCallbackProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiP2pManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
