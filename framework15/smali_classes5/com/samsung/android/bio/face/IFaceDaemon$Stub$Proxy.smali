.class Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceDaemon.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceDaemon;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceDaemon$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/bio/face/IFaceDaemon;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    iput-object p1, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 490
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist authenticate(JII[B)I
    .locals 10
    .param p1, "sessionId"    # J
    .param p3, "groupId"    # I
    .param p4, "secureLevel"    # I
    .param p5, "fidoRequestData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 505
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 506
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 507
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 510
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 511
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 512
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 513
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v4

    move-wide v5, p1

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/bio/face/IFaceDaemon;->authenticate(JII[B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    return v3

    .line 516
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 517
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 520
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    nop

    .line 523
    return v2

    .line 520
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 522
    throw v2
.end method

.method public blacklist cancelAuthentication()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 527
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 528
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 531
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 532
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 533
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 534
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 535
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->cancelAuthentication()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    return v3

    .line 538
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 539
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 542
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    nop

    .line 545
    return v2

    .line 542
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v2
.end method

.method public blacklist cancelEnrollment()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 575
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 576
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 581
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 582
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 583
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->cancelEnrollment()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 583
    return v3

    .line 586
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 590
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    nop

    .line 593
    return v2

    .line 590
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw v2
.end method

.method public blacklist cancelEnumeration()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 831
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 834
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 836
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 837
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 838
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->cancelEnumeration()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    return v3

    .line 841
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 845
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    nop

    .line 848
    return v2

    .line 845
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 847
    throw v2
.end method

.method public blacklist closeHal()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 716
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 717
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 718
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 719
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->closeHal()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 719
    return v3

    .line 722
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 723
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 726
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    nop

    .line 729
    return v2

    .line 726
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 727
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 728
    throw v2
.end method

.method public blacklist createInputSurface(III)Landroid/os/IBinder;
    .locals 5
    .param p1, "type"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 904
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 908
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 909
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 910
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 911
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 913
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 914
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 915
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceDaemon;->createInputSurface(III)Landroid/os/IBinder;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 922
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 915
    return-object v3

    .line 918
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 919
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 922
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    nop

    .line 925
    return-object v2

    .line 922
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 923
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    throw v2
.end method

.method public blacklist enroll([BIII)I
    .locals 5
    .param p1, "token"    # [B
    .param p2, "groupId"    # I
    .param p3, "timeout"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 553
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 555
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 559
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 560
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 561
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/bio/face/IFaceDaemon;->enroll([BIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 568
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    return v3

    .line 564
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 565
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 568
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    nop

    .line 571
    return v2

    .line 568
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 570
    throw v2
.end method

.method public blacklist enumerate()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 813
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 814
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 815
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 816
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->enumerate()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    return v3

    .line 819
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 820
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 823
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    nop

    .line 826
    return v2

    .line 823
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 824
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 825
    throw v2
.end method

.method public blacklist getAuthenticatorId()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 643
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 644
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 647
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 648
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 649
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 650
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 651
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->getAuthenticatorId()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 651
    return-wide v3

    .line 654
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 658
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    nop

    .line 661
    return-wide v2

    .line 658
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 497
    const-string v0, "com.samsung.android.bio.face.IFaceDaemon"

    return-object v0
.end method

.method public blacklist init(Lcom/samsung/android/bio/face/IFaceDaemonCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/samsung/android/bio/face/IFaceDaemonCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 733
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 734
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/samsung/android/bio/face/IFaceDaemonCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 738
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 739
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 740
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 741
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceDaemon;->init(Lcom/samsung/android/bio/face/IFaceDaemonCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    return-void

    .line 745
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 748
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    nop

    .line 751
    return-void

    .line 748
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 749
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 750
    throw v2
.end method

.method public blacklist installTA(Ljava/io/FileDescriptor;J)I
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 974
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 975
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 978
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeRawFileDescriptor(Ljava/io/FileDescriptor;)V

    .line 980
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    .line 981
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 982
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 983
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 984
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceDaemon;->installTA(Ljava/io/FileDescriptor;J)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 991
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    return v3

    .line 987
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 988
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 991
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    nop

    .line 994
    return v2

    .line 991
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 992
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 993
    throw v2
.end method

.method public blacklist openHal()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 690
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 693
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 694
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 695
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 696
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 697
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->openHal()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    return-wide v3

    .line 700
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 701
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 704
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    nop

    .line 707
    return-wide v2

    .line 704
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 706
    throw v2
.end method

.method public blacklist postEnroll()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 759
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 760
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 761
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 762
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->postEnroll()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 762
    return v3

    .line 765
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 766
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 769
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    nop

    .line 772
    return v2

    .line 769
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 771
    throw v2
.end method

.method public blacklist preEnroll()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 601
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 602
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 603
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 604
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 605
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->preEnroll()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 605
    return-wide v3

    .line 608
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 609
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 612
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    nop

    .line 615
    return-wide v2

    .line 612
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 614
    throw v2
.end method

.method public blacklist processFrontImage([BIIII)I
    .locals 10
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotation"    # I
    .param p5, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 852
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 853
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 856
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 858
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 859
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 863
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 864
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 865
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/bio/face/IFaceDaemon;->processFrontImage([BIIII)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 872
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 865
    return v3

    .line 868
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 869
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 872
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    nop

    .line 875
    return v2

    .line 872
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 873
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 874
    throw v2
.end method

.method public blacklist release(I)I
    .locals 5
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 929
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 930
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 933
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 934
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 935
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 936
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 937
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 938
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceDaemon;->release(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 938
    return v3

    .line 941
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 945
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    nop

    .line 948
    return v2

    .line 945
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    throw v2
.end method

.method public blacklist releasePreviewSurface()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 957
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 958
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 959
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 960
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceDaemon;->releasePreviewSurface()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 960
    return v3

    .line 963
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 964
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 967
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    nop

    .line 970
    return v2

    .line 967
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 969
    throw v2
.end method

.method public blacklist remove(II)I
    .locals 5
    .param p1, "faceId"    # I
    .param p2, "groupId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 620
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 623
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 625
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 627
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 628
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 629
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceDaemon;->remove(II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    return v3

    .line 632
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 636
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    nop

    .line 639
    return v2

    .line 636
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 637
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 638
    throw v2
.end method

.method public blacklist request(I[B[BI)I
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 777
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 780
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 783
    if-nez p3, :cond_0

    .line 784
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 787
    :cond_0
    array-length v2, p3

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    :goto_0
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 791
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 792
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 793
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/samsung/android/bio/face/IFaceDaemon;->request(I[B[BI)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 793
    return v3

    .line 796
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 797
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 798
    .local v3, "_result":I
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 801
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 803
    nop

    .line 804
    return v3

    .line 801
    .end local v3    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 803
    throw v2
.end method

.method public blacklist setActiveGroup(I[B)I
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "path"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 672
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 673
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 674
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 675
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceDaemon;->setActiveGroup(I[B)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    return v3

    .line 678
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 679
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 682
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    nop

    .line 685
    return v2

    .line 682
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 684
    throw v2
.end method

.method public blacklist setPreviewTarget(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 879
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 880
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 883
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceDaemon"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 885
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 886
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 887
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceDaemon$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 888
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 889
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 890
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceDaemon$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceDaemon;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceDaemon;->setPreviewTarget(Landroid/os/IBinder;II)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 890
    return v3

    .line 893
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 894
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 897
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    nop

    .line 900
    return v2

    .line 897
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    throw v2
.end method
