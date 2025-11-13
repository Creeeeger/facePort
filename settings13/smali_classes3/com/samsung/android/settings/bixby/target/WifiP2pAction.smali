.class public Lcom/samsung/android/settings/bixby/target/WifiP2pAction;
.super Lcom/samsung/android/settings/bixby/actions/Action;
.source "WifiP2pAction.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/samsung/android/settings/bixby/actions/Action;-><init>()V

    const-string v0, "WifiP2pAction"

    .line 17
    iput-object v0, p0, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;->TAG:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/samsung/android/settings/bixby/target/WifiP2pAction;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-void
.end method
