.class Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IKnoxCustomManager.java"

# interfaces
.implements Lcom/samsung/android/knox/custom/IKnoxCustomManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 3819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3820
    iput-object p1, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 3824
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getApplicationRestrictionsInternal(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 9015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 9016
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 9019
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 9020
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9021
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9022
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x121

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 9023
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 9024
    sget-object p0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 9027
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 9028
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 9029
    throw p0
.end method

.method public getHardKeyBlockState(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8601
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 8604
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8606
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8607
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10b

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8608
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8609
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 8612
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8613
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8614
    throw p0
.end method

.method public getHardKeyIntentBroadcast(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8690
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 8693
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8694
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8695
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8696
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10f

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8698
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 8701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8702
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8703
    throw p0
.end method

.method public getHardKeyIntentMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8099
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 8102
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8103
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf0

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8105
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 8108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8109
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8110
    throw p0
.end method

.method public getHardKeyReportState(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 8581
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 8582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 8585
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 8587
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8588
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 p1, 0x10a

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8589
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 8590
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 8593
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 8594
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 8595
    throw p0
.end method

.method public getProKioskState()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4422
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 4426
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4427
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4428
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4429
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 4432
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4433
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4434
    throw p0
.end method

.method public getSettingsEnabledItems()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 6662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 6663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 6666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 6667
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa0

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 6668
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 6669
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 6672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 6673
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 6674
    throw p0
.end method

.method public getSettingsHiddenState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5022
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 5023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.knox.custom.IKnoxCustomManager"

    .line 5026
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 5027
    iget-object p0, p0, Lcom/samsung/android/knox/custom/IKnoxCustomManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x43

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 5028
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 5029
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 5032
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 5033
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 5034
    throw p0
.end method
