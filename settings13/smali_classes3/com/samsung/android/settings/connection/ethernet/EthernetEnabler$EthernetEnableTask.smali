.class Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;
.super Landroid/os/AsyncTask;
.source "EthernetEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EthernetEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;-><init>(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 133
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 136
    aget-object v1, p1, v0

    const/4 v2, 0x1

    .line 137
    aget-object p1, p1, v2

    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SettingsEthEnabler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "enabling"

    .line 139
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "true"

    .line 141
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v3, "eth_disabled"

    if-eqz p1, :cond_1

    .line 142
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthManager(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    .line 143
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmEthManager(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/net/EthernetManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)V

    .line 146
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    invoke-static {p0}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$fgetmContext(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    const-wide/16 p0, 0x3e8

    .line 149
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 151
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 152
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 133
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    const-string v0, "true"

    .line 159
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 160
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$mpostEnableTaskFinishedUIUpdate(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Z)V

    goto :goto_0

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler$EthernetEnableTask;->this$0:Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;->-$$Nest$mpostEnableTaskFinishedUIUpdate(Lcom/samsung/android/settings/connection/ethernet/EthernetEnabler;Z)V

    :goto_0
    return-void
.end method
