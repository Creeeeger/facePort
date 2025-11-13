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
.method constructor blacklist <init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/Object;)V
    .locals 0
    .param p2, "actionTag"    # Ljava/lang/String;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "callback"    # Ljava/lang/Object;

    .line 142
    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->this$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    invoke-direct {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;-><init>()V

    .line 143
    iput-object p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mActionTag:Ljava/lang/String;

    .line 144
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 145
    iput-object p4, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    .line 146
    return-void
.end method


# virtual methods
.method synthetic blacklist lambda$onFailure$1$com-samsung-android-wifi-p2p-SemWifiP2pManager$SemWifiP2pCallbackProxy(I)V
    .locals 1
    .param p1, "reason"    # I

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    invoke-interface {v0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;->onFailure(I)V

    return-void
.end method

.method synthetic blacklist lambda$onSuccess$0$com-samsung-android-wifi-p2p-SemWifiP2pManager$SemWifiP2pCallbackProxy()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;

    invoke-interface {v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;->onSuccess()V

    return-void
.end method

.method public blacklist onFailure(I)V
    .locals 2
    .param p1, "reason"    # I

    .line 158
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

    .line 159
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    :cond_0
    return-void
.end method

.method public blacklist onSuccess()V
    .locals 2

    .line 150
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

    .line 151
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mCallback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_0
    return-void
.end method
