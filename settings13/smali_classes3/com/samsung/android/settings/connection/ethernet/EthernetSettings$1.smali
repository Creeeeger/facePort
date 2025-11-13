.class Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;
.super Landroid/database/ContentObserver;
.source "EthernetSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Landroid/os/Handler;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 150
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->access$000(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "eth_device_conn"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEthDeviceStateReceiver - ethernet_conn_state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EthernetSettings"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 154
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->access$100(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;I)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;->-$$Nest$fputmEthConfigDialog(Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;Lcom/samsung/android/settings/connection/ethernet/EthernetConfigDialog;)V

    .line 156
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetSettings$1;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetSettings;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    :cond_0
    return-void
.end method
