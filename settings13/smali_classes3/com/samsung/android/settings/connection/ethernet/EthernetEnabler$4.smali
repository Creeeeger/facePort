.class Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;
.super Landroid/database/ContentObserver;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Landroid/os/Handler;)V
    .locals 0

    .line 316
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ethernet_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEthDeviceStateReceiver - ethernet_state :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsEthEnabler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$4;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->updateSwitch(Ljava/lang/String;)V

    return-void
.end method
