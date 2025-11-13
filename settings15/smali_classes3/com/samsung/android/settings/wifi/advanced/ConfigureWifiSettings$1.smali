.class public final Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Broadcast "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ConfigureWifiSettings"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "com.android.sync.SYNC_CONN_STATUS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$1;->this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    sget-object p1, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result p1

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mStore:Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;

    iput-boolean p1, p2, Lcom/samsung/android/settings/wifi/advanced/WifiCloudSettingsStore;->mIsMainSyncOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->updateListAdapter()V

    :goto_0
    return-void
.end method
