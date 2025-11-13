.class Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;
.super Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-direct {p0}, Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public isStarted()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->isStarted()Z

    move-result p0

    return p0
.end method

.method public resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0
.end method

.method public stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method public vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;->this$0:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V

    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x2

    return p0
.end method
