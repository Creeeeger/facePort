.class Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehRadioMessagingResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private blacklist mCachedHash:Ljava/lang/String;

.field private blacklist mCachedVersion:I

.field private blacklist mRemote:Landroid/os/IBinder;


# direct methods
.method constructor blacklist <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedVersion:I

    .line 437
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 434
    iput-object p1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 435
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 440
    iget-object v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getCellBroadcastConfigResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "configs"    # Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 768
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 769
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 770
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 775
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    nop

    .line 777
    return-void

    .line 771
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getCellBroadcastConfigResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "configs":Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "configs":Lvendor/samsung/hardware/radio/messaging/SehCbConfigArgs;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 776
    throw v1
.end method

.method public blacklist getImsRegistrationStateResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;[I)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "regState"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 794
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 796
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 797
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 798
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 799
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 805
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    nop

    .line 807
    return-void

    .line 801
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getImsRegistrationStateResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "regState":[I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "regState":[I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    throw v1
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 444
    sget-object v0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized blacklist getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 827
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 829
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 831
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 832
    iget-object v2, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 833
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 834
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 836
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    goto :goto_0

    .line 836
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 837
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    throw v2

    .line 840
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 826
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public blacklist getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    iget v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 811
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 812
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 814
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 815
    iget-object v2, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 816
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 817
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 819
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    goto :goto_0

    .line 819
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 821
    throw v2

    .line 823
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist getStoredMsgCountFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "storedMsgInfo"    # Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 650
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 651
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 652
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 653
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 659
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    nop

    .line 661
    return-void

    .line 655
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method getStoredMsgCountFromSimResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "storedMsgInfo":Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 659
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "storedMsgInfo":Lvendor/samsung/hardware/radio/messaging/SehStoredMsgCount;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    throw v1
.end method

.method public blacklist readSmsFromSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "simMsg"    # Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 691
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 692
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 693
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 694
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 700
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    nop

    .line 702
    return-void

    .line 696
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method readSmsFromSimResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "simMsg":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 700
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "simMsg":Lvendor/samsung/hardware/radio/messaging/SehSimMsgArgs;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 701
    throw v1
.end method

.method public blacklist sendCdmaSmsExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 609
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 610
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 611
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 612
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 618
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    nop

    .line 620
    return-void

    .line 614
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendCdmaSmsExpectMoreResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 619
    throw v1
.end method

.method public blacklist sendCdmaSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 565
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 567
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 574
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    nop

    .line 576
    return-void

    .line 570
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendCdmaSmsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 575
    throw v1
.end method

.method public blacklist sendSMSExpectMoreResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 523
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 524
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 530
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    nop

    .line 532
    return-void

    .line 526
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSMSExpectMoreResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 530
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 531
    throw v1
.end method

.method public blacklist sendSmsResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;)V
    .locals 4
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "sms"    # Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 477
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 479
    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 480
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 481
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 486
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    nop

    .line 488
    return-void

    .line 482
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method sendSmsResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 486
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "sms":Lvendor/samsung/hardware/radio/messaging/SehSendSmsResult;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    throw v1
.end method

.method public blacklist writeSmsToSimResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;I)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 732
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 733
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 734
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    iget-object v1, p0, Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 741
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    nop

    .line 743
    return-void

    .line 737
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method writeSmsToSimResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .end local p2    # "index":I
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/messaging/ISehRadioMessagingResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .restart local p2    # "index":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v1
.end method
