.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_device_conn"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EthernetSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removeDialog(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method
