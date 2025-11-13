.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;
.super Landroid/database/ContentObserver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "ethernet_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->getEthernetConnectedState(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->isEthernetConnected:Z

    const-string v0, "Connected"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$3;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    :goto_0
    return-void
.end method
