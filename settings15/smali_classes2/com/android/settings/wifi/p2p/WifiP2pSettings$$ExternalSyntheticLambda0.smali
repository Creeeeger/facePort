.class public final synthetic Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    return-void
.end method


# virtual methods
.method public final onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    sget v0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mCurFontScale:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    iput-boolean p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mLastGroupFormed:Z

    return-void
.end method
