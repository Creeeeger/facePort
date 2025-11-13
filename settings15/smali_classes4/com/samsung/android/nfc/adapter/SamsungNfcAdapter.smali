.class public final Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final mAdapter:Ljava/util/HashMap;

.field public static sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->mAdapter:Ljava/util/HashMap;

    return-void
.end method

.method public static attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "SamsungNfcAdapter"

    const-string v1, "Nfc Samsung service dead - attempting to recover"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Could not retrieve Nfc Samsung service during service recovery"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sput-object p0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    return-void
.end method

.method public static getDefaultRoutingDestination()Ljava/util/List;
    .locals 5

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    iget-object v1, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v1}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v3, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getServiceInterface()Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;
    .locals 3

    const-string/jumbo v0, "samsungnfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    sget v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub;->$r8$clinit:I

    const-string v1, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    :goto_0
    return-object v1
.end method

.method public static isAutoChangeEnabled()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    iget-object v2, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v2}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v4, "com.samsung.android.nfc.adapter.ISamsungNfcAdapter"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    invoke-interface {v1, v4, v2, v3, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return v0
.end method

.method public static setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->sService:Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter;

    check-cast v0, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;

    invoke-virtual {v0, p0, p1, p2}, Lcom/samsung/android/nfc/adapter/ISamsungNfcAdapter$Stub$Proxy;->setDefaultRoutingDestination(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/samsung/android/nfc/adapter/SamsungNfcAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    return-void
.end method
