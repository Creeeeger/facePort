.class public Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
.super Ljava/lang/Object;
.source "IntegrityControlCheckCenter.java"


# static fields
.field public static final blacklist COMPONENT_TYPE_HARD_INTEGRITY:I = 0x1

.field public static final blacklist COMPONENT_TYPE_SOFT_INTEGRITY:I = 0x2

.field public static final blacklist FLAG_ABOOT_RP_VER:I = -0x100000

.field public static final blacklist FLAG_AFW_STATUS:I = -0xffff5

.field public static final blacklist FLAG_BOOT_IMAGE:I = -0xffff2

.field public static final blacklist FLAG_CACHE_IMAGE:I = -0xfffef

.field public static final blacklist FLAG_CC_MODE:I = -0xffff8

.field public static final blacklist FLAG_CURRENT_BIN_STATUS:I = -0xffff6

.field public static final blacklist FLAG_DMV_STATUS:I = -0xf00000

.field public static final blacklist FLAG_FRP_LOCK:I = -0xffff9

.field public static final blacklist FLAG_KAP_STATUS:I = -0xffff3

.field public static final blacklist FLAG_KERNEL_RP_VER:I = -0xfffff

.field public static final blacklist FLAG_KIWI_LOCK:I = -0xffffa

.field public static final blacklist FLAG_MDM_MODE:I = -0xffff7

.field public static final blacklist FLAG_PKM_RO:I = -0xffffff

.field public static final blacklist FLAG_PKM_TEXT:I = -0x1000000

.field public static final blacklist FLAG_REACT_LOCK:I = -0xffffb

.field public static final blacklist FLAG_RECOVERY_IMAGE:I = -0xffff1

.field public static final blacklist FLAG_RESERVE_IMAGE1:I = -0xfffee

.field public static final blacklist FLAG_RESERVE_IMAGE2:I = -0xfffed

.field public static final blacklist FLAG_SEC_BOOT:I = -0xffffc

.field public static final blacklist FLAG_SELINUX_STATUS:I = -0xfffffe

.field public static final blacklist FLAG_SYSSCOPE_STATUS:I = -0xe00000

.field public static final blacklist FLAG_SYSTEM_IMAGE:I = -0xffff0

.field public static final blacklist FLAG_SYSTEM_RP_VER:I = -0xffffe

.field public static final blacklist FLAG_TEST_BIT:I = -0xffffd

.field public static final blacklist FLAG_TIMA_VERSION:I = -0xdffffe

.field public static final blacklist FLAG_TRUSTBOOT_STATUS:I = -0xdfffff

.field public static final blacklist FLAG_WB_STATUS:I = -0xffff4


# instance fields
.field blacklist mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;)V
    .locals 0
    .param p1, "service"    # Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    .line 186
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist getDeviceInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 303
    :try_start_0
    const-string v0, "ICCC"

    const-string v1, "Method getDeviceInfo in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 305
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getDeviceInfo([B)[B

    move-result-object v0

    .line 306
    .local v0, "responseBytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 307
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 310
    .end local v0    # "responseBytes":[B
    .end local p0    # "this":Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 302
    .end local p1    # "nonce":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getDeviceStatus(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "comp_type"    # I
    .param p2, "nonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 282
    :try_start_0
    const-string v0, "ICCC"

    const-string v1, "Method getDeviceStatus in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 284
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getDeviceStatus(I[B)[B

    move-result-object v0

    .line 285
    .local v0, "responseBytes":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 286
    new-instance v1, Ljava/lang/String;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 289
    .end local v0    # "responseBytes":[B
    .end local p0    # "this":Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 281
    .end local p1    # "comp_type":I
    .end local p2    # "nonce":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getSecureData(I)I
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 244
    :try_start_0
    const-string v0, "ICCC"

    const-string v1, "Method getSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {v0, p1}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getSecureData(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 248
    .end local p0    # "this":Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 243
    .end local p1    # "type":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized blacklist getTrustedBootData()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 262
    :try_start_0
    const-string v0, "ICCC"

    const-string v1, "Method getTrustedBootData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    .line 264
    invoke-interface {v0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->getTrustedBootData()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 266
    .end local p0    # "this":Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized blacklist setSecureData(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 253
    :try_start_0
    const-string v0, "ICCC"

    const-string v1, "Method setSecureData in IntegrityControlCheckCenter Class"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->mService:Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;

    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter;->setSecureData(II)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 257
    .end local p0    # "this":Lcom/samsung/android/iccc/IntegrityControlCheckCenter;
    :cond_0
    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 252
    .end local p1    # "type":I
    .end local p2    # "value":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
