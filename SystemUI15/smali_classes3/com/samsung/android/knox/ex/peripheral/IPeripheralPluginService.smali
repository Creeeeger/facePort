.class public interface abstract Lcom/samsung/android/knox/ex/peripheral/IPeripheralPluginService;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.knox.ex.peripheral.IPeripheralPluginService"


# virtual methods
.method public abstract beep(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract clearMemory(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract connectEx(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disconnect(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract displayText(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAllState(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAvailablePeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getConfiguration(Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
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
.end method

.method public abstract getConnectionProfile(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPairingBarcodeData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getStoredData(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getSupportedPeripherals(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isStarted()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resetPeripheral(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConfiguration(Ljava/lang/String;Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setConnectionProfile(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start(Landroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IEventListener;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stop(Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopAutoTriggerMode(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopBarcodeScan(Ljava/lang/String;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract triggerVendorCommand(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateFirmware(Ljava/lang/String;[BIILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract vibrate(Ljava/lang/String;ILandroid/os/Bundle;Lcom/samsung/android/knox/ex/peripheral/IResultListener;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
