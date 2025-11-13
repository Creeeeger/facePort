.class public Lcom/samsung/android/settings/scloud/SCloudBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.samsung.account.SAMSUNGACCOUNT_SIGNOUT_COMPLETED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "onReceive :: action : "

    const-string v1, "WifiSettings.SCloudBroadcastReceiver"

    invoke-static {v0, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/samsung/android/settings/scloud/SCloudBroadcastReceiver;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    if-nez p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudBroadcastReceiver;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/scloud/SCloudBroadcastReceiver;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "sCloudLastRemovedWifiConfigKeys"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    const-string/jumbo p2, "sCloudLastAddOrUpdatedWifiConfigKeys"

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->setLastConfigKeys(Ljava/lang/String;Ljava/util/Set;)V

    iget-object p2, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mUpdatedProfiles:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSavedConfigs:Ljava/util/HashMap;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudBroadcastReceiver;->mDataManager:Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    iget-object p0, p0, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo p1, "sCloudLastSyncTimeStamp"

    const-wide/16 v0, 0x0

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method
