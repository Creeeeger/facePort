.class Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IFaceService.java"

# interfaces
.implements Lcom/samsung/android/bio/face/IFaceService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bio/face/IFaceService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static blacklist sDefaultImpl:Lcom/samsung/android/bio/face/IFaceService;


# instance fields
.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 754
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 755
    iput-object p1, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 756
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    .locals 18
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windownToken"    # Landroid/os/IBinder;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "sessionId"    # J
    .param p9, "userId"    # I
    .param p10, "receiver"    # Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .param p11, "flags"    # I
    .param p12, "opPackageName"    # Ljava/lang/String;
    .param p13, "attr"    # Landroid/os/Bundle;
    .param p14, "fidoRequestData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    move-object/from16 v15, p13

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v14

    .line 769
    .local v14, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 771
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 772
    move-object/from16 v12, p1

    invoke-virtual {v14, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 773
    move-object/from16 v11, p2

    invoke-virtual {v14, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 774
    move/from16 v10, p3

    invoke-virtual {v14, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 775
    move/from16 v8, p4

    invoke-virtual {v14, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 776
    move/from16 v9, p5

    invoke-virtual {v14, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 777
    move/from16 v7, p6

    invoke-virtual {v14, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 778
    move-wide/from16 v5, p7

    invoke-virtual {v14, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 779
    move/from16 v4, p9

    invoke-virtual {v14, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 780
    if-eqz p10, :cond_0

    :try_start_1
    invoke-interface/range {p10 .. p10}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 801
    :catchall_0
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    goto/16 :goto_3

    .line 780
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 781
    move/from16 v3, p11

    invoke-virtual {v14, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 782
    move-object/from16 v2, p12

    invoke-virtual {v14, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 783
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v15, :cond_1

    .line 784
    :try_start_3
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 785
    invoke-virtual {v15, v14, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 788
    :cond_1
    :try_start_4
    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 790
    :goto_1
    move-object/from16 v1, p14

    invoke-virtual {v14, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 791
    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v14, v13, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 792
    .local v0, "_status":Z
    if-nez v0, :cond_3

    .line 793
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 794
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .local v16, "_reply":Landroid/os/Parcel;
    move-object/from16 v13, p12

    move-object/from16 v17, v14

    .end local v14    # "_data":Landroid/os/Parcel;
    .local v17, "_data":Landroid/os/Parcel;
    move-object/from16 v14, p13

    move-object/from16 v15, p14

    :try_start_5
    invoke-interface/range {v1 .. v15}, Lcom/samsung/android/bio/face/IFaceService;->authenticate(Landroid/os/IBinder;Landroid/os/IBinder;IIIIJILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;[B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 801
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    .line 795
    return-void

    .line 793
    .end local v16    # "_reply":Landroid/os/Parcel;
    .end local v17    # "_data":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    .restart local v14    # "_data":Landroid/os/Parcel;
    :cond_2
    move-object/from16 v16, v13

    move-object/from16 v17, v14

    .end local v13    # "_reply":Landroid/os/Parcel;
    .end local v14    # "_data":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    .restart local v17    # "_data":Landroid/os/Parcel;
    goto :goto_2

    .line 792
    .end local v16    # "_reply":Landroid/os/Parcel;
    .end local v17    # "_data":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    .restart local v14    # "_data":Landroid/os/Parcel;
    :cond_3
    move-object/from16 v16, v13

    move-object/from16 v17, v14

    .line 798
    .end local v13    # "_reply":Landroid/os/Parcel;
    .end local v14    # "_data":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    .restart local v17    # "_data":Landroid/os/Parcel;
    :goto_2
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 801
    .end local v0    # "_status":Z
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    .line 803
    nop

    .line 804
    return-void

    .line 801
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v16    # "_reply":Landroid/os/Parcel;
    .end local v17    # "_data":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    .restart local v14    # "_data":Landroid/os/Parcel;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v17, v14

    .end local v13    # "_reply":Landroid/os/Parcel;
    .end local v14    # "_data":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    .restart local v17    # "_data":Landroid/os/Parcel;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 802
    invoke-virtual/range {v17 .. v17}, Landroid/os/Parcel;->recycle()V

    .line 803
    throw v0
.end method

.method public blacklist cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
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

    .line 811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 814
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 815
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 816
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 817
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 818
    return-void

    .line 821
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 824
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    nop

    .line 827
    return-void

    .line 824
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 825
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 826
    throw v2
.end method

.method public blacklist cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "opPackageName"    # Ljava/lang/String;
    .param p3, "fromClient"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1491
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1492
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1494
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1495
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1497
    const/4 v2, 0x0

    if-eqz p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    iget-object v3, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1499
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1500
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1501
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1508
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1502
    return-void

    .line 1505
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1508
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1510
    nop

    .line 1511
    return-void

    .line 1508
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1509
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1510
    throw v2
.end method

.method public blacklist cancelEnrollment(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 870
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 871
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 873
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 874
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 875
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 876
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 877
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 878
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    return-void

    .line 882
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 885
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    nop

    .line 888
    return-void

    .line 885
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 886
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    throw v2
.end method

.method public blacklist enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "windownToken"    # Landroid/os/IBinder;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "cryptoToken"    # [B
    .param p8, "groupId"    # I
    .param p9, "receiver"    # Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .param p10, "flags"    # I
    .param p11, "opPackageName"    # Ljava/lang/String;
    .param p12, "attr"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 831
    move-object/from16 v14, p12

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 832
    .local v15, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 834
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 835
    move-object/from16 v12, p1

    invoke-virtual {v15, v12}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 836
    move-object/from16 v11, p2

    invoke-virtual {v15, v11}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 837
    move/from16 v10, p3

    invoke-virtual {v15, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 838
    move/from16 v9, p4

    invoke-virtual {v15, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    move/from16 v8, p5

    invoke-virtual {v15, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    move/from16 v7, p6

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    move-object/from16 v6, p7

    invoke-virtual {v15, v6}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 842
    move/from16 v5, p8

    invoke-virtual {v15, v5}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 843
    if-eqz p9, :cond_0

    :try_start_1
    invoke-interface/range {p9 .. p9}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 863
    :catchall_0
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_3

    .line 843
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 844
    move/from16 v4, p10

    invoke-virtual {v15, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 845
    move-object/from16 v3, p11

    invoke-virtual {v15, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 846
    const/4 v0, 0x0

    if-eqz v14, :cond_1

    .line 847
    const/4 v1, 0x1

    :try_start_3
    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 848
    invoke-virtual {v14, v15, v0}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 851
    :cond_1
    :try_start_4
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 853
    :goto_1
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    invoke-interface {v1, v2, v15, v13, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 854
    .local v0, "_status":Z
    if-nez v0, :cond_3

    .line 855
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 856
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .local v16, "_reply":Landroid/os/Parcel;
    move-object/from16 v13, p12

    :try_start_5
    invoke-interface/range {v1 .. v13}, Lcom/samsung/android/bio/face/IFaceService;->enroll(Landroid/os/IBinder;Landroid/os/IBinder;IIII[BILcom/samsung/android/bio/face/IFaceServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 863
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 857
    return-void

    .line 855
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :cond_2
    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    goto :goto_2

    .line 854
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :cond_3
    move-object/from16 v16, v13

    .line 860
    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :goto_2
    :try_start_6
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 863
    .end local v0    # "_status":Z
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 865
    nop

    .line 866
    return-void

    .line 863
    :catchall_1
    move-exception v0

    goto :goto_3

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v13    # "_reply":Landroid/os/Parcel;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v13

    .end local v13    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 864
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 865
    throw v0
.end method

.method public blacklist getAuthenticatorId(Ljava/lang/String;)J
    .locals 5
    .param p1, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1090
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1091
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1094
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1095
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1096
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1097
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1098
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1099
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->getAuthenticatorId(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1099
    return-wide v3

    .line 1102
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1103
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 1106
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    nop

    .line 1109
    return-wide v2

    .line 1106
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1107
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    throw v2
.end method

.method public blacklist getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/bio/face/SemBioFace;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 942
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 943
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 946
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 948
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 949
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 950
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 951
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 952
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceService;->getEnrolledFaces(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 952
    return-object v3

    .line 955
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 956
    sget-object v3, Lcom/samsung/android/bio/face/SemBioFace;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 959
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    nop

    .line 962
    return-object v2

    .line 959
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/bio/face/SemBioFace;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 961
    throw v2
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 763
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    return-object v0
.end method

.method public blacklist getLockoutModeForUser(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1514
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1515
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1518
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1520
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1521
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1522
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1523
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->getLockoutModeForUser(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1523
    return v3

    .line 1526
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1527
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1530
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    nop

    .line 1533
    return v2

    .line 1530
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1532
    throw v2
.end method

.method public blacklist getRemainingLockoutTime(I)I
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1543
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1544
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1545
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1546
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->getRemainingLockoutTime(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    return v3

    .line 1549
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1550
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1553
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    nop

    .line 1556
    return v2

    .line 1553
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1554
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    throw v2
.end method

.method public blacklist getSecurityLevel(Z)I
    .locals 5
    .param p1, "isKeyguard"    # Z
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

    .line 1411
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1412
    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1413
    iget-object v3, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1414
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1415
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1416
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->getSecurityLevel(Z)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1423
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1416
    return v3

    .line 1419
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1420
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1423
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1425
    nop

    .line 1426
    return v2

    .line 1423
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1425
    throw v2
.end method

.method public blacklist getTrustAppVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1364
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1365
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1366
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1367
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->getTrustAppVersion()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    return-object v3

    .line 1370
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 1374
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    nop

    .line 1377
    return-object v2

    .line 1374
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    throw v2
.end method

.method public blacklist hasDisabledFaces(ILjava/lang/String;)Z
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1065
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1066
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1069
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1072
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1073
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1074
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1075
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceService;->hasDisabledFaces(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    return v3

    .line 1078
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1079
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1082
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    nop

    .line 1085
    return v2

    .line 1082
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1084
    throw v2
.end method

.method public blacklist hasEnrolledFaces(ILjava/lang/String;)Z
    .locals 5
    .param p1, "groupId"    # I
    .param p2, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1040
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1041
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1046
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1047
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1048
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1049
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1050
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/bio/face/IFaceService;->hasEnrolledFaces(ILjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1057
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1050
    return v3

    .line 1053
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1054
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1057
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    nop

    .line 1060
    return v2

    .line 1057
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1059
    throw v2
.end method

.method public blacklist isEnrollSession()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1115
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1118
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1119
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1120
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1121
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1122
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->isEnrollSession()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1122
    return v3

    .line 1125
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1126
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1129
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    nop

    .line 1132
    return v2

    .line 1129
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1130
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1131
    throw v2
.end method

.method public blacklist isHardwareDetected(JLjava/lang/String;)Z
    .locals 5
    .param p1, "deviceId"    # J
    .param p3, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 971
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 973
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 974
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 975
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 976
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 977
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->isHardwareDetected(JLjava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 984
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 977
    return v3

    .line 980
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 984
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    nop

    .line 987
    return v2

    .line 984
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 985
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 986
    throw v2
.end method

.method public blacklist isSessionClosed()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1227
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1228
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1229
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1230
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1231
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->isSessionClosed()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1231
    return v3

    .line 1234
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1235
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1238
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    nop

    .line 1241
    return v2

    .line 1238
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1240
    throw v2
.end method

.method public blacklist postEnroll(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1017
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1020
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1021
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1022
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1023
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1024
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1025
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->postEnroll(Landroid/os/IBinder;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    return v3

    .line 1028
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v3

    .line 1032
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1034
    nop

    .line 1035
    return v2

    .line 1032
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1034
    throw v2
.end method

.method public blacklist preEnroll(Landroid/os/IBinder;)J
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 996
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 997
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 998
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 999
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1000
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1001
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->preEnroll(Landroid/os/IBinder;)J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1008
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    return-wide v3

    .line 1004
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1005
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v2, v3

    .line 1008
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    nop

    .line 1011
    return-wide v2

    .line 1008
    .end local v2    # "_result":J
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1009
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1010
    throw v2
.end method

.method public blacklist prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 16
    .param p1, "requireConfirmation"    # Z
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "sessionId"    # J
    .param p5, "userId"    # I
    .param p6, "wrapperReceiver"    # Landroid/hardware/biometrics/IBiometricSensorReceiver;
    .param p7, "opPackageName"    # Ljava/lang/String;
    .param p8, "cookie"    # I
    .param p9, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1435
    move-object/from16 v11, p9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v12

    .line 1436
    .local v12, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    .line 1438
    .local v13, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1439
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1440
    move-object/from16 v14, p2

    :try_start_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1441
    move-wide/from16 v9, p3

    invoke-virtual {v12, v9, v10}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1442
    move/from16 v15, p5

    :try_start_2
    invoke-virtual {v12, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 1443
    if-eqz p6, :cond_1

    invoke-interface/range {p6 .. p6}, Landroid/hardware/biometrics/IBiometricSensorReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1444
    move-object/from16 v8, p7

    invoke-virtual {v12, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1445
    move/from16 v7, p8

    invoke-virtual {v12, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1446
    if-eqz v11, :cond_2

    .line 1447
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_2

    .line 1451
    :cond_2
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1453
    :goto_2
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    invoke-interface {v0, v2, v12, v13, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1454
    .local v0, "_status":Z
    if-nez v0, :cond_3

    .line 1455
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1456
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v1

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v1 .. v10}, Lcom/samsung/android/bio/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricSensorReceiver;Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1463
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1457
    return-void

    .line 1460
    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/Parcel;->readException()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1463
    .end local v0    # "_status":Z
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1465
    nop

    .line 1466
    return-void

    .line 1463
    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v14, p2

    :goto_3
    move/from16 v15, p5

    :goto_4
    invoke-virtual {v13}, Landroid/os/Parcel;->recycle()V

    .line 1464
    invoke-virtual {v12}, Landroid/os/Parcel;->recycle()V

    .line 1465
    throw v0
.end method

.method public blacklist remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "faceId"    # I
    .param p3, "groupId"    # I
    .param p4, "userId"    # I
    .param p5, "receiver"    # Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 892
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 893
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 895
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 896
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 897
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 898
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 899
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 900
    if-eqz p5, :cond_0

    invoke-interface {p5}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 901
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 902
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 903
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 904
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v4

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/bio/face/IFaceService;->remove(Landroid/os/IBinder;IIILcom/samsung/android/bio/face/IFaceServiceReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 905
    return-void

    .line 908
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    nop

    .line 914
    return-void

    .line 911
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 912
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 913
    throw v2
.end method

.method public blacklist rename(IILjava/lang/String;)V
    .locals 5
    .param p1, "faceId"    # I
    .param p2, "groupId"    # I
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 919
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 921
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 922
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 923
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 924
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 926
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 927
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 928
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/samsung/android/bio/face/IFaceService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 929
    return-void

    .line 932
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 935
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    nop

    .line 938
    return-void

    .line 935
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 937
    throw v2
.end method

.method public blacklist requestEnrollPause()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1317
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1318
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1322
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1323
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1324
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    return-void

    .line 1328
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1331
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    nop

    .line 1334
    return-void

    .line 1331
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    throw v2
.end method

.method public blacklist requestEnrollResume()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1342
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1343
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1344
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1345
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->requestEnrollResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    return-void

    .line 1349
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1352
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    nop

    .line 1355
    return-void

    .line 1352
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    throw v2
.end method

.method public blacklist requestSessionClose()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1203
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1206
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1207
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1208
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1209
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionClose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1216
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1210
    return-void

    .line 1213
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1216
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    nop

    .line 1219
    return-void

    .line 1216
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    throw v2
.end method

.method public blacklist requestSessionOpen()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1186
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1187
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1188
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->requestSessionOpen()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1195
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1189
    return-void

    .line 1192
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1195
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    nop

    .line 1198
    return-void

    .line 1195
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1196
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    throw v2
.end method

.method public blacklist resetAuthenticationTimeout()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1294
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1295
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1298
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1300
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1301
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1302
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/bio/face/IFaceService;->resetAuthenticationTimeout()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1302
    return v3

    .line 1305
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1306
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1309
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1311
    nop

    .line 1312
    return v2

    .line 1309
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1311
    throw v2
.end method

.method public blacklist resetTimeout([B)V
    .locals 5
    .param p1, "cryptoToken"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1140
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1142
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1143
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1144
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1145
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->resetTimeout([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    return-void

    .line 1149
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    nop

    .line 1155
    return-void

    .line 1152
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1153
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    throw v2
.end method

.method public blacklist setActiveUser(I)V
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1160
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1163
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1164
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1165
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1166
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1167
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->setActiveUser(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1168
    return-void

    .line 1171
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    nop

    .line 1177
    return-void

    .line 1174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1176
    throw v2
.end method

.method public blacklist startPreparedClient(I)V
    .locals 5
    .param p1, "cookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1473
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1475
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1476
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1477
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1478
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->startPreparedClient(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1479
    return-void

    .line 1482
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1485
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1487
    nop

    .line 1488
    return-void

    .line 1485
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1487
    throw v2
.end method

.method public blacklist updateSecureID([B)Z
    .locals 5
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1276
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1277
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1278
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1279
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureID([B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1279
    return v3

    .line 1282
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1286
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    nop

    .line 1289
    return v2

    .line 1286
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1287
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    throw v2
.end method

.method public blacklist updateSecureUserID([B)Z
    .locals 5
    .param p1, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1246
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1247
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1250
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1252
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1253
    .local v2, "_status":Z
    if-nez v2, :cond_0

    .line 1254
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1255
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/bio/face/IFaceService;->updateSecureUserID([B)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1255
    return v3

    .line 1258
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1259
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    :cond_1
    move v2, v4

    .line 1262
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1264
    nop

    .line 1265
    return v2

    .line 1262
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1263
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1264
    throw v2
.end method

.method public blacklist updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V
    .locals 10
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "receiver"    # Lcom/samsung/android/bio/face/IFaceServiceReceiver;
    .param p5, "opPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.samsung.android.bio.face.IFaceService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1386
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1387
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    if-eqz p4, :cond_0

    invoke-interface {p4}, Lcom/samsung/android/bio/face/IFaceServiceReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1389
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1390
    iget-object v2, p0, Lcom/samsung/android/bio/face/IFaceService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1391
    .local v2, "_status":Z
    if-nez v2, :cond_1

    .line 1392
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1393
    invoke-static {}, Lcom/samsung/android/bio/face/IFaceService$Stub;->getDefaultImpl()Lcom/samsung/android/bio/face/IFaceService;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/samsung/android/bio/face/IFaceService;->updateTrustApp(Landroid/os/IBinder;Ljava/lang/String;ILcom/samsung/android/bio/face/IFaceServiceReceiver;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1394
    return-void

    .line 1397
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

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
