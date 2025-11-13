.class public final Lcom/android/settings/network/InternetUpdater$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/android/settings/network/InternetUpdater;


# direct methods
.method public constructor <init>(Lcom/android/settings/network/InternetUpdater;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    invoke-virtual {p1}, Lcom/android/settings/network/InternetUpdater;->fetchActiveNetwork()V

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater$2;->this$0:Lcom/android/settings/network/InternetUpdater;

    iget-object p1, p0, Lcom/android/settings/network/InternetUpdater;->mListener:Lcom/android/settings/network/InternetUpdater$InternetChangeListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/network/InternetUpdater;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    return-void
.end method
