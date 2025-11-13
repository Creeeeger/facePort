.class Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehRadioDataResponse.java"

# interfaces
.implements Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub;
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

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    .line 124
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 121
    iput-object p1, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 122
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 127
    iget-object v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 131
    sget-object v0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

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

    .line 182
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_1
    sget-object v2, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 187
    iget-object v2, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 188
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 189
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    .end local v2    # "_status":Z
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    goto :goto_0

    .line 191
    .end local p0    # "this":Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 192
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 193
    throw v2

    .line 195
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget-object v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v0

    .line 181
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

    .line 165
    iget v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 169
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    sget-object v2, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 170
    iget-object v2, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 171
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 172
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    goto :goto_0

    .line 174
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v2

    .line 178
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    iget v0, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public blacklist setDataAllowedResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 4
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 137
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 139
    iget-object v1, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 145
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-void

    .line 141
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setDataAllowedResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v1
.end method

.method public blacklist setMobileDataSettingResponse(Lvendor/samsung/hardware/radio/SehRadioResponseInfo;)V
    .locals 5
    .param p1, "info"    # Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    sget-object v1, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 153
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 154
    iget-object v1, p0, Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v1, "_status":Z
    if-eqz v1, :cond_0

    .line 160
    .end local v1    # "_status":Z
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    nop

    .line 162
    return-void

    .line 156
    .restart local v1    # "_status":Z
    :cond_0
    :try_start_1
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Method setMobileDataSettingResponse is unimplemented."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_data":Landroid/os/Parcel;
    .end local p0    # "this":Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
    .end local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v1    # "_status":Z
    .restart local v0    # "_data":Landroid/os/Parcel;
    .restart local p0    # "this":Lvendor/samsung/hardware/radio/data/ISehRadioDataResponse$Stub$Proxy;
    .restart local p1    # "info":Lvendor/samsung/hardware/radio/SehRadioResponseInfo;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    throw v1
.end method
