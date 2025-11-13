.class public Landroid/content/pm/PackageInstaller$Session;
.super Ljava/lang/Object;
.source "PackageInstaller.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageInstaller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Session"
.end annotation


# instance fields
.field protected final greylist-max-o mSession:Landroid/content/pm/IPackageInstallerSession;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/pm/IPackageInstallerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/content/pm/IPackageInstallerSession;

    .line 1036
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1037
    iput-object p1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1038
    return-void
.end method

.method private static blacklist encodeCertificates(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1373
    .local p0, "certs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    .line 1374
    const/4 v0, 0x0

    return-object v0

    .line 1376
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1377
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 1378
    .local v2, "cert":Ljava/security/cert/Certificate;
    instance-of v3, v2, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_1

    .line 1381
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    goto :goto_0

    .line 1379
    .restart local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_1
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v3, "Only X509 certificates supported."

    invoke-direct {v1, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1383
    .end local v2    # "cert":Ljava/security/cert/Certificate;
    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist abandon()V
    .locals 2

    .line 1573
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->abandon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1576
    nop

    .line 1577
    return-void

    .line 1574
    :catch_0
    move-exception v0

    .line 1575
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist addChildSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1651
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addChildSessionId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1654
    goto :goto_0

    .line 1652
    :catch_0
    move-exception v0

    .line 1653
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1655
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist addFile(ILjava/lang/String;J[B[B)V
    .locals 7
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "lengthBytes"    # J
    .param p5, "metadata"    # [B
    .param p6, "signature"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1299
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->addFile(ILjava/lang/String;J[B[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    nop

    .line 1303
    return-void

    .line 1300
    :catch_0
    move-exception v0

    .line 1301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public greylist addProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 1067
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->addClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    nop

    .line 1071
    return-void

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 2

    .line 1557
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1560
    nop

    .line 1561
    return-void

    .line 1558
    :catch_0
    move-exception v0

    .line 1559
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commit(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;

    .line 1481
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1484
    nop

    .line 1485
    return-void

    .line 1482
    :catch_0
    move-exception v0

    .line 1483
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist commitTransferred(Landroid/content/IntentSender;)V
    .locals 2
    .param p1, "statusReceiver"    # Landroid/content/IntentSender;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1510
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/pm/IPackageInstallerSession;->commit(Landroid/content/IntentSender;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    nop

    .line 1514
    return-void

    .line 1511
    :catch_0
    move-exception v0

    .line 1512
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist fsync(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1166
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    const-string v1, "Unrecognized stream"

    if-eqz v0, :cond_1

    .line 1167
    instance-of v0, p1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    if-eqz v0, :cond_0

    .line 1169
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/system/Os;->fsync(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    goto :goto_0

    .line 1170
    :catch_0
    move-exception v0

    .line 1171
    .local v0, "e":Landroid/system/ErrnoException;
    invoke-virtual {v0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1174
    .end local v0    # "e":Landroid/system/ErrnoException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1177
    :cond_1
    instance-of v0, p1, Landroid/os/FileBridge$FileBridgeOutputStream;

    if-eqz v0, :cond_2

    .line 1178
    move-object v0, p1

    check-cast v0, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-virtual {v0}, Landroid/os/FileBridge$FileBridgeOutputStream;->fsync()V

    .line 1183
    :goto_0
    return-void

    .line 1180
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getChildSessionIds()[I
    .locals 2

    .line 1633
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getChildSessionIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1634
    :catch_0
    move-exception v0

    .line 1635
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getDataLoaderParams()Landroid/content/pm/DataLoaderParams;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1257
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getDataLoaderParams()Landroid/content/pm/DataLoaderParamsParcel;

    move-result-object v0

    .line 1258
    .local v0, "data":Landroid/content/pm/DataLoaderParamsParcel;
    if-nez v0, :cond_0

    .line 1259
    const/4 v1, 0x0

    return-object v1

    .line 1261
    :cond_0
    new-instance v1, Landroid/content/pm/DataLoaderParams;

    invoke-direct {v1, v0}, Landroid/content/pm/DataLoaderParams;-><init>(Landroid/content/pm/DataLoaderParamsParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1262
    .end local v0    # "data":Landroid/content/pm/DataLoaderParamsParcel;
    :catch_0
    move-exception v0

    .line 1263
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getInstallFlags()I
    .locals 2

    .line 1608
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getInstallFlags()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNames()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1196
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getNames()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1200
    :catch_0
    move-exception v0

    .line 1201
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1197
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1198
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1199
    throw v0
.end method

.method public whitelist getParentSessionId()I
    .locals 2

    .line 1620
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->getParentSessionId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1621
    :catch_0
    move-exception v0

    .line 1622
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isMultiPackage()Z
    .locals 2

    .line 1585
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isMultiPackage()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1586
    :catch_0
    move-exception v0

    .line 1587
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist isStaged()Z
    .locals 2

    .line 1596
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0}, Landroid/content/pm/IPackageInstallerSession;->isStaged()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 1597
    :catch_0
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist openRead(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1218
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->openRead(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1219
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1223
    .end local v0    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 1224
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1220
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1222
    throw v0
.end method

.method public whitelist openWrite(Ljava/lang/String;JJ)Ljava/io/OutputStream;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    :try_start_0
    sget-boolean v0, Landroid/content/pm/PackageInstaller;->ENABLE_REVOCABLE_FD:Z

    if-eqz v0, :cond_0

    .line 1107
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    .line 1108
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1107
    return-object v0

    .line 1110
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageInstallerSession;->openWrite(Ljava/lang/String;JJ)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1112
    .local v0, "clientSocket":Landroid/os/ParcelFileDescriptor;
    new-instance v1, Landroid/os/FileBridge$FileBridgeOutputStream;

    invoke-direct {v1, v0}, Landroid/os/FileBridge$FileBridgeOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1117
    .end local v0    # "clientSocket":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1114
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1115
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1116
    throw v0
.end method

.method public whitelist removeChildSessionId(I)V
    .locals 1
    .param p1, "sessionId"    # I

    .line 1665
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeChildSessionId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1668
    goto :goto_0

    .line 1666
    :catch_0
    move-exception v0

    .line 1667
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 1669
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public whitelist removeFile(ILjava/lang/String;)V
    .locals 2
    .param p1, "location"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1322
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageInstallerSession;->removeFile(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1325
    nop

    .line 1326
    return-void

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist removeSplit(Ljava/lang/String;)V
    .locals 2
    .param p1, "splitName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1240
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->removeSplit(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1246
    nop

    .line 1247
    return-void

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1241
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1242
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1243
    throw v0
.end method

.method public whitelist requestChecksums(Ljava/lang/String;ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # I
    .param p4, "executor"    # Ljava/util/concurrent/Executor;
    .param p5, "onChecksumsReadyListener"    # Landroid/content/pm/PackageManager$OnChecksumsReadyListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/content/pm/PackageManager$OnChecksumsReadyListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1425
    .local p3, "trustedInstallers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1428
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_ALL:Ljava/util/List;

    if-ne p3, v0, :cond_0

    .line 1430
    const/4 p3, 0x0

    goto :goto_0

    .line 1431
    :cond_0
    sget-object v0, Landroid/content/pm/PackageManager;->TRUST_NONE:Ljava/util/List;

    if-ne p3, v0, :cond_1

    .line 1432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    goto :goto_0

    .line 1433
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1439
    :goto_0
    :try_start_0
    new-instance v5, Landroid/content/pm/PackageInstaller$Session$1;

    invoke-direct {v5, p0, p4, p5}, Landroid/content/pm/PackageInstaller$Session$1;-><init>(Landroid/content/pm/PackageInstaller$Session;Ljava/util/concurrent/Executor;Landroid/content/pm/PackageManager$OnChecksumsReadyListener;)V

    .line 1448
    .local v5, "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    const/16 v2, 0x7f

    .line 1449
    invoke-static {p3}, Landroid/content/pm/PackageInstaller$Session;->encodeCertificates(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 1448
    move-object v1, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageInstallerSession;->requestChecksums(Ljava/lang/String;IILjava/util/List;Landroid/content/pm/IOnChecksumsReadyListener;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1455
    .end local v5    # "onChecksumsReadyListenerDelegate":Landroid/content/pm/IOnChecksumsReadyListener;
    nop

    .line 1456
    return-void

    .line 1453
    :catch_0
    move-exception v0

    .line 1454
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1450
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1451
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Ljava/io/FileNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1452
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1434
    .end local v0    # "e":Landroid/os/ParcelableException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "trustedInstallers has to be one of TRUST_ALL/TRUST_NONE or a non-empty list of certificates."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setChecksums(Ljava/lang/String;Ljava/util/List;[B)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/Checksum;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1357
    .local p2, "checksums":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/Checksum;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1358
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1361
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/pm/Checksum;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/pm/Checksum;

    invoke-interface {v0, p1, v1, p3}, Landroid/content/pm/IPackageInstallerSession;->setChecksums(Ljava/lang/String;[Landroid/content/pm/Checksum;[B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1368
    nop

    .line 1369
    return-void

    .line 1366
    :catch_0
    move-exception v0

    .line 1367
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1363
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1365
    throw v0
.end method

.method public greylist-max-o setProgress(F)V
    .locals 0
    .param p1, "progress"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1043
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller$Session;->setStagingProgress(F)V

    .line 1044
    return-void
.end method

.method public whitelist setStagingProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 1057
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->setClientProgress(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    nop

    .line 1061
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist stageViaHardLink(Ljava/lang/String;)V
    .locals 2
    .param p1, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->stageViaHardLink(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    nop

    .line 1158
    return-void

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1152
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1154
    throw v0
.end method

.method public whitelist transfer(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 1538
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 1541
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageInstallerSession;->transfer(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ParcelableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    nop

    .line 1548
    return-void

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1542
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1543
    .local v0, "e":Landroid/os/ParcelableException;
    const-class v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {v0, v1}, Landroid/os/ParcelableException;->maybeRethrow(Ljava/lang/Class;)V

    .line 1544
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "offsetBytes"    # J
    .param p4, "lengthBytes"    # J
    .param p6, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/PackageInstaller$Session;->mSession:Landroid/content/pm/IPackageInstallerSession;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageInstallerSession;->write(Ljava/lang/String;JJLandroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    nop

    .line 1133
    return-void

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 1127
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 1128
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Landroid/util/ExceptionUtils;->maybeUnwrapIOException(Ljava/lang/RuntimeException;)V

    .line 1129
    throw v0
.end method
