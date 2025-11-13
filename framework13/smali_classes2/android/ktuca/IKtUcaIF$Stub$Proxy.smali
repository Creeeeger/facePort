.class Landroid/ktuca/IKtUcaIF$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKtUcaIF.java"

# interfaces
.implements Landroid/ktuca/IKtUcaIF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/ktuca/IKtUcaIF$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p1, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 852
    return-void
.end method


# virtual methods
.method public greylist KUCA_CHInit(B[B[I)J
    .locals 5
    .param p1, "ucatag"    # B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1400
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1401
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1406
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1407
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1410
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1412
    :goto_0
    if-nez p3, :cond_1

    .line 1413
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1416
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1418
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1419
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1421
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1422
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1425
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    nop

    .line 1428
    return-wide v3

    .line 1425
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1426
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1427
    throw v2
.end method

.method public greylist KUCA_Close([BB)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1325
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1328
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1329
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1330
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1331
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1332
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1333
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1336
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    nop

    .line 1339
    return-wide v2

    .line 1336
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1337
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    throw v2
.end method

.method public greylist KUCA_CloseT([BB)J
    .locals 5
    .param p1, "appId"    # [B
    .param p2, "channel"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1552
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1553
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1559
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1560
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1561
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1564
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    nop

    .line 1567
    return-wide v2

    .line 1564
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1566
    throw v2
.end method

.method public greylist KUCA_KUH_Establish(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1451
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1454
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1456
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1457
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1458
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1461
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    nop

    .line 1464
    return-wide v2

    .line 1461
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1462
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1463
    throw v2
.end method

.method public greylist KUCA_KUH_Release(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1469
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1472
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1473
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1474
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1479
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    nop

    .line 1482
    return-wide v2

    .line 1479
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    throw v2
.end method

.method public greylist KUCA_KUH_Transmit(B[BI[B[I)J
    .locals 5
    .param p1, "ucatag"    # B
    .param p2, "pbSendBuffer"    # [B
    .param p3, "cbSendLength"    # I
    .param p4, "pbRecvBuffer"    # [B
    .param p5, "pcbRecvLength"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1486
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1487
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v2, -0x1

    if-nez p4, :cond_0

    .line 1495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1498
    :cond_0
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1500
    :goto_0
    if-nez p5, :cond_1

    .line 1501
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1504
    :cond_1
    array-length v2, p5

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1506
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1507
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1509
    .local v3, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1510
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    nop

    .line 1516
    return-wide v3

    .line 1513
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1515
    throw v2
.end method

.method public greylist KUCA_Open([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1259
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1262
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1264
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1265
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1268
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    :goto_0
    if-nez p3, :cond_1

    .line 1271
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1274
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1277
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1278
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1279
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1280
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1283
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1285
    nop

    .line 1286
    return-wide v3

    .line 1283
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1284
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1285
    throw v2
.end method

.method public greylist KUCA_OpenT([B[B[I)J
    .locals 5
    .param p1, "appId"    # [B
    .param p2, "channel"    # [B
    .param p3, "channelLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1526
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1527
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1530
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1532
    :goto_0
    if-nez p3, :cond_1

    .line 1533
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1536
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1538
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1539
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1540
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1541
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1542
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    nop

    .line 1548
    return-wide v3

    .line 1545
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1546
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1547
    throw v2
.end method

.method public greylist KUCA_Transmit([B[BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "input"    # [B
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1297
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1298
    const/4 v2, -0x1

    if-nez p4, :cond_0

    .line 1299
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1302
    :cond_0
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1304
    :goto_0
    if-nez p5, :cond_1

    .line 1305
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1308
    :cond_1
    array-length v2, p5

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1311
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1312
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1313
    .local v3, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1314
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    nop

    .line 1320
    return-wide v3

    .line 1317
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    throw v2
.end method

.method public greylist KUCA_UCAVersion([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1369
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1372
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1374
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1375
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1378
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    :goto_0
    if-nez p3, :cond_1

    .line 1381
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1384
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1386
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1387
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1388
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1389
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1390
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1393
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    nop

    .line 1396
    return-wide v3

    .line 1393
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    throw v2
.end method

.method public greylist KUCA_getHandle([B[B[B[B[I)J
    .locals 5
    .param p1, "callerId"    # [B
    .param p2, "preKey"    # [B
    .param p3, "appId"    # [B
    .param p4, "handle"    # [B
    .param p5, "handleLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 897
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 898
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 901
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 903
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 904
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 905
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 906
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 907
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 908
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 909
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 910
    .local v3, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 911
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 914
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    nop

    .line 917
    return-wide v3

    .line 914
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 915
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 916
    throw v2
.end method

.method public greylist KUCA_getICCID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 989
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 990
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 993
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 994
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 995
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 996
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 999
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1001
    :goto_0
    if-nez p3, :cond_1

    .line 1002
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1005
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1007
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1009
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1010
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1012
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1013
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1016
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    nop

    .line 1019
    return-wide v3

    .line 1016
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    throw v2
.end method

.method public greylist KUCA_getIMSI([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 961
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 962
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 965
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    :goto_0
    if-nez p3, :cond_1

    .line 968
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 971
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 973
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 975
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 976
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 977
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 978
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 979
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 982
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    nop

    .line 985
    return-wide v3

    .line 982
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 983
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    throw v2
.end method

.method public greylist KUCA_getMDN([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1058
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1061
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1063
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1064
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1067
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1069
    :goto_0
    if-nez p3, :cond_1

    .line 1070
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1073
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1075
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1077
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1078
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1080
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1081
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1084
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    nop

    .line 1087
    return-wide v3

    .line 1084
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1085
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    throw v2
.end method

.method public greylist KUCA_getMODEL([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1091
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1092
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1095
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1097
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1098
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1101
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1103
    :goto_0
    if-nez p3, :cond_1

    .line 1104
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1107
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1109
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1110
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1111
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1112
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1114
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1115
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1118
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1120
    nop

    .line 1121
    return-wide v3

    .line 1118
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1119
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1120
    throw v2
.end method

.method public greylist KUCA_getMSISDN([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 927
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 928
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 931
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 933
    :goto_0
    if-nez p3, :cond_1

    .line 934
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 937
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 939
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 940
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 941
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 942
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 943
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 944
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 945
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 948
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    nop

    .line 951
    return-wide v3

    .line 948
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 949
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 950
    throw v2
.end method

.method public greylist KUCA_getPUID([B[B[II[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .param p4, "encryptType"    # I
    .param p5, "deviceIp"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1024
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1027
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1029
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1030
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1033
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1035
    :goto_0
    if-nez p3, :cond_1

    .line 1036
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1039
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1041
    :goto_1
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1042
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1043
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1044
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1046
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1047
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1050
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    nop

    .line 1053
    return-wide v3

    .line 1050
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1052
    throw v2
.end method

.method public greylist KUCA_getPinStatus([BI[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "output"    # [B
    .param p4, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1197
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    const/4 v2, -0x1

    if-nez p3, :cond_0

    .line 1199
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1202
    :cond_0
    array-length v3, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    :goto_0
    if-nez p4, :cond_1

    .line 1205
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1208
    :cond_1
    array-length v2, p4

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1211
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1212
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1213
    .local v3, "_result":J
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1214
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1217
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    nop

    .line 1220
    return-wide v3

    .line 1217
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    throw v2
.end method

.method public greylist KUCA_getSIMInfo([B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .param p3, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1126
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1129
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1131
    const/4 v2, -0x1

    if-nez p2, :cond_0

    .line 1132
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1135
    :cond_0
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    :goto_0
    if-nez p3, :cond_1

    .line 1138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1141
    :cond_1
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1143
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1144
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1145
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1146
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1147
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1150
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1152
    nop

    .line 1153
    return-wide v3

    .line 1150
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1152
    throw v2
.end method

.method public greylist KUCA_getSimStatus([B[B)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1343
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1344
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1347
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1349
    if-nez p2, :cond_0

    .line 1350
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1353
    :cond_0
    array-length v2, p2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1355
    :goto_0
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1356
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1358
    .local v3, "_result":J
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1361
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    nop

    .line 1364
    return-wide v3

    .line 1361
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1362
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1363
    throw v2
.end method

.method public greylist KUCA_printCHInfo(B)J
    .locals 5
    .param p1, "ucatag"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1433
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1436
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1437
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1438
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1439
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1440
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1443
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1445
    nop

    .line 1446
    return-wide v2

    .line 1443
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1444
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1445
    throw v2
.end method

.method public greylist KUCA_usimAUTH([B[B[B[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "rand"    # [B
    .param p3, "autn"    # [B
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1158
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1161
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1163
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1164
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1165
    const/4 v2, -0x1

    if-nez p4, :cond_0

    .line 1166
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1169
    :cond_0
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1171
    :goto_0
    if-nez p5, :cond_1

    .line 1172
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1175
    :cond_1
    array-length v2, p5

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1178
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1179
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1180
    .local v3, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1181
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    nop

    .line 1187
    return-wide v3

    .line 1184
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1186
    throw v2
.end method

.method public greylist KUCA_verifyPin([BILjava/lang/String;[B[I)J
    .locals 5
    .param p1, "handle"    # [B
    .param p2, "pinId"    # I
    .param p3, "pinCode"    # Ljava/lang/String;
    .param p4, "output"    # [B
    .param p5, "outputLen"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1225
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1228
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1229
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1230
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1232
    const/4 v2, -0x1

    if-nez p4, :cond_0

    .line 1233
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1236
    :cond_0
    array-length v3, p4

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    :goto_0
    if-nez p5, :cond_1

    .line 1239
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 1242
    :cond_1
    array-length v2, p5

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    :goto_1
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1245
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1246
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 1247
    .local v3, "_result":J
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1248
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    nop

    .line 1254
    return-wide v3

    .line 1251
    .end local v3    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1253
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 855
    iget-object v0, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public greylist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 859
    const-string v0, "android.ktuca.IKtUcaIF"

    return-object v0
.end method

.method public greylist getResource()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 864
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 867
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 868
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 869
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 873
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    nop

    .line 876
    return v2

    .line 873
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    throw v2
.end method

.method public greylist releaseResource()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.ktuca.IKtUcaIF"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Landroid/ktuca/IKtUcaIF$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 886
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 887
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 890
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    nop

    .line 893
    return v2

    .line 890
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 891
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 892
    throw v2
.end method
