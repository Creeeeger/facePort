.class public final synthetic Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field public final synthetic f$1:Landroid/net/NetworkInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;Landroid/net/NetworkInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;->f$1:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda5;->f$1:Landroid/net/NetworkInfo;

    sget v1, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "WifiP2pSettings"

    const-string v1, "Connected"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-boolean p0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    if-nez p0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->startSearch()V

    :cond_1
    :goto_0
    iget-boolean p0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean p0, v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return-void
.end method
