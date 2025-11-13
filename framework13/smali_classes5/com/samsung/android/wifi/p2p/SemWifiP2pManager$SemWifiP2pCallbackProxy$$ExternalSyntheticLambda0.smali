.class public final synthetic Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

.field public final synthetic blacklist f$1:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    iput p2, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;

    iget v1, p0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy$$ExternalSyntheticLambda0;->f$1:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$SemWifiP2pCallbackProxy;->lambda$onFailure$1$com-samsung-android-wifi-p2p-SemWifiP2pManager$SemWifiP2pCallbackProxy(I)V

    return-void
.end method
