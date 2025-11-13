.class public final Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;
.super Landroid/os/AsyncTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "doInBackground : enable"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " enabling"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SettingsEthEnabler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enabling"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "true"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "eth_disabled"

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p1, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p1, p1, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mEthManager:Landroid/net/EthernetManager;

    invoke-virtual {p1, v0}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    const-wide/16 p0, 0x3e8

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-object v1
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->postEnableTaskFinishedUIUpdate(Z)V

    :goto_0
    return-void
.end method
