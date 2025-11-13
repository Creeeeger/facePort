.class public abstract Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DETECT_DEATH_BINDER:Ljava/lang/String; = "detectDeathBinder"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

.field public mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;

    const-string v0, "PeripheralPluginService"

    sput-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$1;-><init>(Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;)V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    return-void
.end method


# virtual methods
.method public abstract beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/samsung/android/knox/ex/peripheral/IResultListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract isStarted()Z
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "detectDeathBinder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    iput-object p1, v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;->mReceiver:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinder:Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService;->mBinderDeathReceiver:Lcom/samsung/android/knox/ex/peripheral/PeripheralPluginService$BinderDeathReceiver;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public abstract resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method

.method public abstract vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)V
.end method
