.class public final Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;->this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;->this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "scloud_wifi_sync_enabled"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "onChanged value="

    const-string v0, "ConfigureWifiSettings"

    invoke-static {p1, v0, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings$4;->this$0:Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/advanced/ConfigureWifiSettings;->updateListAdapter()V

    return-void
.end method
