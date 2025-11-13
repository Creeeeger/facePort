.class Landroid/hardware/face/IFaceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceService.java"

# interfaces
.implements Landroid/hardware/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/face/IFaceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1097
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1098
    iput-object p1, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1099
    return-void
.end method


# virtual methods
.method public blacklist addLockoutResetCallback(Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Landroid/hardware/biometrics/IBiometricServiceLockoutResetCallback;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1627
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1629
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1631
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1632
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1633
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    nop

    .line 1639
    return-void

    .line 1636
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    throw v2
.end method

.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1102
    iget-object v0, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist authenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Z)J
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "isKeyguardBypassEnabled"    # Z
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
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1197
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1198
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1200
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1201
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1202
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1203
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1204
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1207
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1209
    nop

    .line 1210
    return-wide v2

    .line 1207
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1208
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1209
    throw v2
.end method

.method public blacklist cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1285
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1286
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1288
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1289
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1290
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1292
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1293
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1298
    nop

    .line 1299
    return-void

    .line 1296
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1297
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1298
    throw v2
.end method

.method public blacklist cancelAuthenticationFromService(ILandroid/os/IBinder;Ljava/lang/String;J)V
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .param p4, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1321
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1322
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1327
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {v0, p4, p5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1329
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1330
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    nop

    .line 1336
    return-void

    .line 1333
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1335
    throw v2
.end method

.method public blacklist cancelEnrollment(Landroid/os/IBinder;J)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1391
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1393
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1395
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1396
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1397
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    nop

    .line 1403
    return-void

    .line 1400
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1402
    throw v2
.end method

.method public blacklist cancelFaceDetect(Landroid/os/IBinder;Ljava/lang/String;J)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "requestId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1304
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1306
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1307
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1308
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1309
    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeLong(J)V

    .line 1310
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1311
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1314
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1316
    nop

    .line 1317
    return-void

    .line 1314
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1316
    throw v2
.end method

.method public blacklist createTestSession(ILandroid/hardware/biometrics/ITestSessionCallback;Ljava/lang/String;)Landroid/hardware/biometrics/ITestSession;
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "callback"    # Landroid/hardware/biometrics/ITestSessionCallback;
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1112
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1115
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1118
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1120
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1121
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/biometrics/ITestSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/biometrics/ITestSession;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1124
    .local v2, "_result":Landroid/hardware/biometrics/ITestSession;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    nop

    .line 1127
    return-object v2

    .line 1124
    .end local v2    # "_result":Landroid/hardware/biometrics/ITestSession;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1125
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1126
    throw v2
.end method

.method public blacklist detectFace(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)J
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1217
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1218
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1222
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1223
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1225
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1226
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1227
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1228
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1231
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    nop

    .line 1234
    return-wide v2

    .line 1231
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1232
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1233
    throw v2
.end method

.method public blacklist dumpSensorServiceStateProto(IZ)[B
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "clearSchedulerBuffer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1133
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1136
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1137
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1138
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1139
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1140
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1141
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1144
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    nop

    .line 1147
    return-object v2

    .line 1144
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    throw v2
.end method

.method public blacklist enroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;Z)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "previewSurface"    # Landroid/view/Surface;
    .param p8, "debugConsent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1340
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1341
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1344
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1345
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1346
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1347
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1348
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1349
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1351
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1352
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1353
    iget-object v3, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1354
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1355
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1358
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1360
    nop

    .line 1361
    return-wide v2

    .line 1358
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1360
    throw v2
.end method

.method public blacklist enrollRemotely(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[I)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1367
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1370
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1372
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1373
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1374
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1375
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1376
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1377
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1378
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1379
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1382
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    nop

    .line 1385
    return-wide v2

    .line 1382
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1384
    throw v2
.end method

.method public blacklist generateChallenge(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1488
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1490
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1492
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1495
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1496
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1497
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1500
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1502
    nop

    .line 1503
    return-void

    .line 1500
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1502
    throw v2
.end method

.method public blacklist getAuthenticatorId(II)J
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "callingUserId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1590
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1591
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1592
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1593
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1594
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1595
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1598
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    nop

    .line 1601
    return-wide v2

    .line 1598
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1599
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    throw v2
.end method

.method public blacklist getEnrolledFaces(IILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/Face;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1452
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1454
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1455
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1456
    sget-object v3, Landroid/hardware/face/Face;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1459
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1461
    nop

    .line 1462
    return-object v2

    .line 1459
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/Face;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1460
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1461
    throw v2
.end method

.method public blacklist getFeature(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1664
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1671
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1672
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1673
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1676
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    nop

    .line 1679
    return-void

    .line 1676
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1106
    const-string v0, "android.hardware.face.IFaceService"

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(II)I
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1553
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1555
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1556
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1557
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1560
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1562
    nop

    .line 1563
    return v2

    .line 1560
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1561
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1562
    throw v2
.end method

.method public blacklist getSensorProperties(ILjava/lang/String;)Landroid/hardware/face/FaceSensorPropertiesInternal;
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1172
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1175
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1176
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1177
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1178
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1179
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1180
    sget-object v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceSensorPropertiesInternal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1183
    .local v2, "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    nop

    .line 1186
    return-object v2

    .line 1183
    .end local v2    # "_result":Landroid/hardware/face/FaceSensorPropertiesInternal;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1184
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1185
    throw v2
.end method

.method public blacklist getSensorPropertiesInternal(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1153
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1156
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1158
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1159
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1160
    sget-object v3, Landroid/hardware/face/FaceSensorPropertiesInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1163
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    nop

    .line 1166
    return-object v2

    .line 1163
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1165
    throw v2
.end method

.method public blacklist hasEnrolledFaces(IILjava/lang/String;)Z
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1534
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1536
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1537
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1540
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    nop

    .line 1543
    return v2

    .line 1540
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1542
    throw v2
.end method

.method public blacklist invalidateAuthenticatorId(IILandroid/hardware/biometrics/IInvalidationCallback;)V
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "userId"    # I
    .param p3, "callback"    # Landroid/hardware/biometrics/IInvalidationCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1569
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1571
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1573
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1574
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1575
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1576
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1579
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1581
    nop

    .line 1582
    return-void

    .line 1579
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1581
    throw v2
.end method

.method public blacklist isHardwareDetected(ILjava/lang/String;)Z
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1467
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1468
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1471
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1474
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1475
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1476
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1479
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    nop

    .line 1482
    return v2

    .line 1479
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1480
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1481
    throw v2
.end method

.method public blacklist prepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;JIZ)V
    .locals 16
    .param p1, "sensorId"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "requestId"    # J
    .param p11, "cookie"    # I
    .param p12, "allowBackgroundAuthentication"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1244
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1246
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1247
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    move/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 1249
    move-object/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 1250
    move-wide/from16 v6, p4

    :try_start_2
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 1251
    move/from16 v8, p6

    :try_start_3
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1252
    move-object/from16 v9, p7

    :try_start_4
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 1253
    move-object/from16 v10, p8

    :try_start_5
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 1254
    move-wide/from16 v11, p9

    :try_start_6
    invoke-virtual {v1, v11, v12}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1255
    move/from16 v13, p11

    :try_start_7
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1256
    move/from16 v14, p12

    :try_start_8
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1257
    move-object/from16 v15, p0

    :try_start_9
    iget-object v0, v15, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1258
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1261
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    nop

    .line 1264
    return-void

    .line 1261
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_0
    move-wide/from16 v6, p4

    :goto_1
    move/from16 v8, p6

    :goto_2
    move-object/from16 v9, p7

    :goto_3
    move-object/from16 v10, p8

    :goto_4
    move-wide/from16 v11, p9

    :goto_5
    move/from16 v13, p11

    :goto_6
    move/from16 v14, p12

    :goto_7
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    throw v0
.end method

.method public blacklist registerAuthenticators(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/face/FaceSensorPropertiesInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1685
    .local p1, "hidlSensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/face/FaceSensorPropertiesInternal;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1686
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1688
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1689
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1690
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1691
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    nop

    .line 1697
    return-void

    .line 1694
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1696
    throw v2
.end method

.method public blacklist remove(Landroid/os/IBinder;IILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1408
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1410
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1411
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1412
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1414
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1415
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1416
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1417
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1420
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    nop

    .line 1423
    return-void

    .line 1420
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1422
    throw v2
.end method

.method public blacklist removeAll(Landroid/os/IBinder;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1427
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1428
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1430
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1432
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1433
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1434
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1435
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1436
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1439
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    nop

    .line 1442
    return-void

    .line 1439
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1440
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    throw v2
.end method

.method public blacklist resetLockout(Landroid/os/IBinder;II[BLjava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "hardwareAuthToken"    # [B
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1606
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1607
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1609
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1611
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1612
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1614
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1615
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    nop

    .line 1622
    return-void

    .line 1619
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1620
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1621
    throw v2
.end method

.method public blacklist revokeChallenge(Landroid/os/IBinder;IILjava/lang/String;J)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sensorId"    # I
    .param p3, "userId"    # I
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "challenge"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1508
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1510
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1511
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1512
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1513
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1514
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1515
    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeLong(J)V

    .line 1516
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1517
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    nop

    .line 1523
    return-void

    .line 1520
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    throw v2
.end method

.method public blacklist semAuthenticate(Landroid/os/IBinder;JILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;[B)J
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "operationId"    # J
    .param p4, "userId"    # I
    .param p5, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p6, "opPackageName"    # Ljava/lang/String;
    .param p7, "bundle"    # Landroid/os/Bundle;
    .param p8, "fidoRequestData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1727
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1728
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1731
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1733
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 1734
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1736
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1737
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1738
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1739
    iget-object v3, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1740
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1741
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1744
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    nop

    .line 1747
    return-wide v2

    .line 1744
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1745
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1746
    throw v2
.end method

.method public blacklist semEnroll(ILandroid/os/IBinder;[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;[ILandroid/view/Surface;ZLandroid/os/Bundle;)J
    .locals 5
    .param p1, "userId"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "hardwareAuthToken"    # [B
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .param p6, "disabledFeatures"    # [I
    .param p7, "surface"    # Landroid/view/Surface;
    .param p8, "debugConsent"    # Z
    .param p9, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1758
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1759
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1760
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1761
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1762
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1763
    const/4 v2, 0x0

    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1764
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1765
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1766
    iget-object v3, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1767
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1768
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v2, v3

    .line 1771
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    nop

    .line 1774
    return-wide v2

    .line 1771
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1773
    throw v2
.end method

.method public blacklist semGetRemainingLockoutTime(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1988
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1989
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1992
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1993
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1994
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1995
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1996
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1999
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    nop

    .line 2002
    return v2

    .line 1999
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2001
    throw v2
.end method

.method public blacklist semGetSecurityLevel(Z)I
    .locals 5
    .param p1, "isKeyguard"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1957
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1958
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1959
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1960
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1961
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1964
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    nop

    .line 1967
    return v2

    .line 1964
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1965
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1966
    throw v2
.end method

.method public blacklist semGetTrustAppVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1872
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1875
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1876
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1877
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1878
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1881
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    nop

    .line 1884
    return-object v2

    .line 1881
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1882
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1883
    throw v2
.end method

.method public blacklist semIsEnrollSession()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1784
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1785
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1786
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1789
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    nop

    .line 1792
    return v2

    .line 1789
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1790
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1791
    throw v2
.end method

.method public blacklist semIsFrameworkHandleLockout()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1971
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1972
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1976
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1977
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1981
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    nop

    .line 1984
    return v2

    .line 1981
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    throw v2
.end method

.method public blacklist semIsSessionClose()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1937
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1940
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1941
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1942
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1943
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1946
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    nop

    .line 1949
    return v2

    .line 1946
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw v2
.end method

.method public blacklist semPauseAuth()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1825
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1827
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1828
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1829
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1832
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1834
    nop

    .line 1835
    return-void

    .line 1832
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1833
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1834
    throw v2
.end method

.method public blacklist semPauseEnroll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1799
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1800
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1801
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1804
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    nop

    .line 1807
    return-void

    .line 1804
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1805
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1806
    throw v2
.end method

.method public blacklist semPrepareForAuthentication(IZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;IZLandroid/os/Bundle;)V
    .locals 16
    .param p1, "sensorId"    # I
    .param p2, "requireConfirmation"    # Z
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "operationId"    # J
    .param p6, "userId"    # I
    .param p7, "sensorReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p8, "opPackageName"    # Ljava/lang/String;
    .param p9, "cookie"    # I
    .param p10, "allowBackgroundAuthentication"    # Z
    .param p11, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1702
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1703
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1705
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "android.hardware.face.IFaceService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1707
    move/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 1708
    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 1709
    move-wide/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1710
    move/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1711
    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1712
    move-object/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1713
    move/from16 v11, p9

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1714
    move/from16 v12, p10

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1715
    const/4 v0, 0x0

    move-object/from16 v13, p11

    :try_start_9
    invoke-virtual {v1, v13, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1716
    move-object/from16 v14, p0

    :try_start_a
    iget-object v15, v14, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1717
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1720
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    nop

    .line 1723
    return-void

    .line 1720
    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_9
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_a
    move-exception v0

    move-object/from16 v14, p0

    move/from16 v4, p2

    :goto_0
    move-object/from16 v5, p3

    :goto_1
    move-wide/from16 v6, p4

    :goto_2
    move/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move-object/from16 v10, p8

    :goto_5
    move/from16 v11, p9

    :goto_6
    move/from16 v12, p10

    :goto_7
    move-object/from16 v13, p11

    :goto_8
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1721
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1722
    throw v0
.end method

.method public blacklist semResetAuthenticationTimeout()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1853
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1854
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1857
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1858
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1859
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1860
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1863
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    nop

    .line 1866
    return v2

    .line 1863
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1864
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    throw v2
.end method

.method public blacklist semResumeAuth()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1838
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1839
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1843
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1846
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    nop

    .line 1849
    return-void

    .line 1846
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1847
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1848
    throw v2
.end method

.method public blacklist semResumeEnroll()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1810
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1811
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1813
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1814
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1815
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1818
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1818
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw v2
.end method

.method public blacklist semSessionClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1922
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1923
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1925
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1926
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1927
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1930
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    nop

    .line 1933
    return-void

    .line 1930
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1931
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1932
    throw v2
.end method

.method public blacklist semSessionOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1911
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1912
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1913
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    nop

    .line 1919
    return-void

    .line 1916
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1917
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1918
    throw v2
.end method

.method public blacklist semUpdateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1889
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1890
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1892
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1894
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1895
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1897
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1898
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1899
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1902
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1904
    nop

    .line 1905
    return-void

    .line 1902
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1903
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1904
    throw v2
.end method

.method public blacklist setFeature(Landroid/os/IBinder;IIZ[BLandroid/hardware/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "userId"    # I
    .param p3, "feature"    # I
    .param p4, "enabled"    # Z
    .param p5, "hardwareAuthToken"    # [B
    .param p6, "receiver"    # Landroid/hardware/face/IFaceServiceReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1643
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1645
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1646
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1647
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1648
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1650
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1651
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 1652
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1653
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1654
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1657
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    nop

    .line 1660
    return-void

    .line 1657
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1658
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1659
    throw v2
.end method

.method public blacklist startPreparedClient(II)V
    .locals 5
    .param p1, "sensorId"    # I
    .param p2, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1271
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "android.hardware.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    iget-object v2, p0, Landroid/hardware/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    nop

    .line 1281
    return-void

    .line 1278
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1280
    throw v2
.end method
