.class Lcom/android/internal/telephony/ISms$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISms.java"

# interfaces
.implements Lcom/android/internal/telephony/ISms;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ISms$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private greylist-max-o mRemote:Landroid/os/IBinder;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    iput-object p1, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1685
    return-void
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1688
    iget-object v0, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingApk"    # Ljava/lang/String;
    .param p3, "callingFeatureId"    # Ljava/lang/String;
    .param p4, "destAddress"    # Ljava/lang/String;
    .param p5, "countryIso"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2666
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2669
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2670
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2671
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2672
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2674
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2675
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2676
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2677
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2680
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    nop

    .line 2683
    return v2

    .line 2680
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2682
    throw v2
.end method

.method public greylist-max-o copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "pdu"    # [B
    .param p5, "smsc"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1762
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1763
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1766
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1767
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1768
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1769
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1770
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1771
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1772
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1773
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1774
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1777
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    nop

    .line 1780
    return v2

    .line 1777
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1778
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1779
    throw v2
.end method

.method public greylist-max-o createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2607
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2608
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2611
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2614
    const/4 v2, 0x0

    invoke-virtual {v0, p3, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2615
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2616
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2617
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2620
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    nop

    .line 2623
    return-object v2

    .line 2620
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    throw v2
.end method

.method public blacklist createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "prefixes"    # Ljava/lang/String;
    .param p4, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2645
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2646
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2647
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2648
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1b

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2649
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2650
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2653
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    nop

    .line 2656
    return-object v2

    .line 2653
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2654
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2655
    throw v2
.end method

.method public greylist-max-o disableCellBroadcastForSubscriber(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2165
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2168
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2170
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2171
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2173
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2174
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2177
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    nop

    .line 2180
    return v2

    .line 2177
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2178
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2179
    throw v2
.end method

.method public greylist-max-o disableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2244
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2247
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2248
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2249
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2250
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2251
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2252
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2253
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2254
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2257
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    nop

    .line 2260
    return v2

    .line 2257
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2258
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2259
    throw v2
.end method

.method public greylist-max-o enableCellBroadcastForSubscriber(III)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "messageIdentifier"    # I
    .param p3, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2128
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2131
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2133
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2134
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2135
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2136
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2137
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2140
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    nop

    .line 2143
    return v2

    .line 2140
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2141
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2142
    throw v2
.end method

.method public greylist-max-o enableCellBroadcastRangeForSubscriber(IIII)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "startMessageId"    # I
    .param p3, "endMessageId"    # I
    .param p4, "ranType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2203
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2204
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2207
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2209
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2210
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2211
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2213
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2214
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2217
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    nop

    .line 2220
    return v2

    .line 2217
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2218
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2219
    throw v2
.end method

.method public greylist-max-o getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1708
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1709
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1710
    sget-object v3, Lcom/android/internal/telephony/SmsRawData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 1713
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return-object v2

    .line 1713
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw v2
.end method

.method public blacklist getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2579
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2580
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2583
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2584
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2585
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2586
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2587
    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2590
    .local v2, "_result":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    nop

    .line 2593
    return-object v2

    .line 2590
    .end local v2    # "_result":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2592
    throw v2
.end method

.method public blacklist getCbSettingsForSubscriber(I)[B
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2797
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2800
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2802
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2803
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2804
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2807
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2809
    nop

    .line 2810
    return-object v2

    .line 2807
    .end local v2    # "_result":[B
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2809
    throw v2
.end method

.method public greylist-max-o getImsSmsFormatForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2431
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2432
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2435
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2437
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2438
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2439
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2442
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2444
    nop

    .line 2445
    return-object v2

    .line 2442
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2444
    throw v2
.end method

.method public greylist-max-o getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1692
    const-string v0, "com.android.internal.telephony.ISms"

    return-object v0
.end method

.method public blacklist getMnoNameForSubscriber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3063
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3064
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3067
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3068
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3069
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3070
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3071
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 3074
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3076
    nop

    .line 3077
    return-object v2

    .line 3074
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3075
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3076
    throw v2
.end method

.method public greylist-max-o getPreferredSmsSubscription()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2405
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2408
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2409
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2410
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2411
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2414
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2416
    nop

    .line 2417
    return v2

    .line 2414
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2416
    throw v2
.end method

.method public greylist-max-o getPremiumSmsPermission(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2274
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2275
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2279
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    nop

    .line 2282
    return v2

    .line 2279
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2281
    throw v2
.end method

.method public greylist-max-o getPremiumSmsPermissionForSubscriber(ILjava/lang/String;)I
    .locals 5
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2291
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2294
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2297
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2298
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2302
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2304
    nop

    .line 2305
    return v2

    .line 2302
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2304
    throw v2
.end method

.method public blacklist getSMSPAvailableForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3036
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3037
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3038
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3041
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    nop

    .line 3044
    return v2

    .line 3041
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3043
    throw v2
.end method

.method public blacklist getSmsCapacityOnIccForSubscriber(I)I
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2747
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2748
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2751
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2754
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2755
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2758
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    nop

    .line 2761
    return v2

    .line 2758
    .end local v2    # "_result":I
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2760
    throw v2
.end method

.method public blacklist getSmsSettingForSubscriber(ILjava/lang/String;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "settingName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3085
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3086
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3087
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3088
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3089
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3090
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 3093
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    nop

    .line 3096
    return v2

    .line 3093
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3095
    throw v2
.end method

.method public blacklist getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2699
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2701
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2702
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2703
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    .line 2706
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    nop

    .line 2709
    return-object v2

    .line 2706
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2707
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2708
    throw v2
.end method

.method public greylist-max-o injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "pdu"    # [B
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "receivedIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1970
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1972
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1973
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1974
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1975
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1976
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1977
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1978
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1981
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    nop

    .line 1984
    return-void

    .line 1981
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1983
    throw v2
.end method

.method public greylist-max-o isImsSmsSupportedForSubscriber(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2362
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2363
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2364
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2365
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2366
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2369
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    nop

    .line 2372
    return v2

    .line 2369
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2370
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2371
    throw v2
.end method

.method public greylist-max-o isSMSPromptEnabled()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2454
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2457
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2458
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2459
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2460
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2463
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    nop

    .line 2466
    return v2

    .line 2463
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2464
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2465
    throw v2
.end method

.method public greylist-max-o isSmsSimPickActivityNeeded(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2383
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2386
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2387
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2388
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2389
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2390
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2393
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    nop

    .line 2396
    return v2

    .line 2393
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2395
    throw v2
.end method

.method public blacklist resetAllCellBroadcastRanges(I)Z
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2773
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2774
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2777
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2778
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2779
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2780
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2781
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2784
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2786
    nop

    .line 2787
    return v2

    .line 2784
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2785
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2786
    throw v2
.end method

.method public blacklist resetSimFullStatusForSubscriber(I)V
    .locals 5
    .param p1, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3048
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3049
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3051
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3052
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3054
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3057
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3059
    nop

    .line 3060
    return-void

    .line 3057
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3058
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3059
    throw v2
.end method

.method public blacklist sendDataForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingattributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "destPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1809
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1811
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1812
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1813
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1815
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1816
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1817
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1818
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1819
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1820
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1821
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1822
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1825
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1825
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    throw v2
.end method

.method public blacklist sendDatawithOrigPortForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "destPort"    # I
    .param p6, "origPort"    # I
    .param p7, "data"    # [B
    .param p8, "sentIntent"    # Landroid/app/PendingIntent;
    .param p9, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2817
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2818
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2819
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2820
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2824
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2825
    const/4 v2, 0x0

    invoke-virtual {v0, p8, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2826
    invoke-virtual {v0, p9, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2827
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2828
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2831
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2833
    nop

    .line 2834
    return-void

    .line 2831
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2832
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2833
    throw v2
.end method

.method public blacklist sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2016
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2017
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2019
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2020
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 2021
    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 2022
    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 2023
    move-object/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 2024
    move-object/from16 v7, p5

    :try_start_4
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 2025
    move-object/from16 v8, p6

    :try_start_5
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 2026
    move-object/from16 v9, p7

    :try_start_6
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 2027
    move-object/from16 v10, p8

    :try_start_7
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2028
    move/from16 v11, p9

    :try_start_8
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2029
    move-wide/from16 v12, p10

    :try_start_9
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 2030
    move-object/from16 v14, p0

    :try_start_a
    iget-object v0, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v15, 0x8

    const/4 v3, 0x0

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2031
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2034
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    nop

    .line 2037
    return-void

    .line 2034
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

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v5, p3

    :goto_1
    move-object/from16 v6, p4

    :goto_2
    move-object/from16 v7, p5

    :goto_3
    move-object/from16 v8, p6

    :goto_4
    move-object/from16 v9, p7

    :goto_5
    move-object/from16 v10, p8

    :goto_6
    move/from16 v11, p9

    :goto_7
    move-wide/from16 v12, p10

    :goto_8
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2035
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2036
    throw v0
.end method

.method public blacklist sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destinationAddress"    # Ljava/lang/String;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2084
    .local p6, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p7, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p8, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2085
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2087
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2088
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2089
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2090
    move-object/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 2091
    move-object/from16 v6, p4

    :try_start_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2092
    move-object/from16 v7, p5

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2093
    move-object/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 2094
    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 2095
    move-object/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2096
    move/from16 v11, p9

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2097
    move/from16 v12, p10

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2098
    move/from16 v13, p11

    :try_start_9
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2099
    move/from16 v14, p12

    :try_start_a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2100
    move-object/from16 v15, p0

    :try_start_b
    iget-object v0, v15, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2101
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2104
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2106
    nop

    .line 2107
    return-void

    .line 2104
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_0
    move-object/from16 v6, p4

    :goto_1
    move-object/from16 v7, p5

    :goto_2
    move-object/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move-object/from16 v10, p8

    :goto_5
    move/from16 v11, p9

    :goto_6
    move/from16 v12, p10

    :goto_7
    move/from16 v13, p11

    :goto_8
    move/from16 v14, p12

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2106
    throw v0
.end method

.method public blacklist sendMultipartTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p8, "callbackNumber"    # Ljava/lang/String;
    .param p9, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2933
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2936
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2937
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2939
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2940
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 2941
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2942
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2943
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2945
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2946
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2949
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    nop

    .line 2952
    return-void

    .line 2949
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2951
    throw v2
.end method

.method public blacklist sendMultipartTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p8, "replyPath"    # Z
    .param p9, "expiry"    # I
    .param p10, "serviceType"    # I
    .param p11, "encodingType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2955
    .local p5, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2956
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2958
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2959
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2960
    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 2961
    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2962
    move-object/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2963
    move-object/from16 v7, p5

    :try_start_4
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 2964
    move-object/from16 v8, p6

    :try_start_5
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 2965
    move-object/from16 v9, p7

    :try_start_6
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2966
    move/from16 v10, p8

    :try_start_7
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2967
    move/from16 v11, p9

    :try_start_8
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2968
    move/from16 v12, p10

    :try_start_9
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2969
    move/from16 v13, p11

    :try_start_a
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2970
    move-object/from16 v14, p0

    :try_start_b
    iget-object v0, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v15, 0x28

    const/4 v3, 0x0

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2971
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2974
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    nop

    .line 2977
    return-void

    .line 2974
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v5, p3

    :goto_1
    move-object/from16 v6, p4

    :goto_2
    move-object/from16 v7, p5

    :goto_3
    move-object/from16 v8, p6

    :goto_4
    move-object/from16 v9, p7

    :goto_5
    move/from16 v10, p8

    :goto_6
    move/from16 v11, p9

    :goto_7
    move/from16 v12, p10

    :goto_8
    move/from16 v13, p11

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    throw v0
.end method

.method public blacklist sendOTADomesticForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destinationAddress"    # Ljava/lang/String;
    .param p4, "scAddress"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2913
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2914
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2916
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2918
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2919
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2920
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2922
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2923
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2926
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2928
    nop

    .line 2929
    return-void

    .line 2926
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2927
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2928
    throw v2
.end method

.method public blacklist sendStoredMultipartText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributeTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2553
    .local p6, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p7, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2554
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2556
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2557
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2558
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2559
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2560
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2561
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2562
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2563
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2564
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x18

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2565
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2568
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2570
    nop

    .line 2571
    return-void

    .line 2568
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2569
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2570
    throw v2
.end method

.method public blacklist sendStoredText(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "messageUri"    # Landroid/net/Uri;
    .param p5, "scAddress"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2502
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2503
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2504
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2505
    const/4 v2, 0x0

    invoke-virtual {v0, p4, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2506
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2508
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2509
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x17

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2510
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2513
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    nop

    .line 2516
    return-void

    .line 2513
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2515
    throw v2
.end method

.method public blacklist sendTextAutoLoginForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Z)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "persistMessageForNonDefaultSmsApp"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3011
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3012
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3013
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3015
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3016
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3017
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3018
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 3019
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 3020
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3021
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3024
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    nop

    .line 3027
    return-void

    .line 3024
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3025
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3026
    throw v2
.end method

.method public blacklist sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "messageId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1861
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1862
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1864
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1865
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1866
    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 1867
    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 1868
    move-object/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1869
    move-object/from16 v7, p5

    :try_start_4
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 1870
    move-object/from16 v8, p6

    :try_start_5
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 1871
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_6
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1872
    move-object/from16 v10, p8

    :try_start_7
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1873
    move/from16 v11, p9

    :try_start_8
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1874
    move-wide/from16 v12, p10

    :try_start_9
    invoke-virtual {v1, v12, v13}, Landroid/os/Parcel;->writeLong(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1875
    move-object/from16 v14, p0

    :try_start_a
    iget-object v15, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1876
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1879
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1881
    nop

    .line 1882
    return-void

    .line 1879
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

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v5, p3

    :goto_1
    move-object/from16 v6, p4

    :goto_2
    move-object/from16 v7, p5

    :goto_3
    move-object/from16 v8, p6

    :goto_4
    move-object/from16 v9, p7

    :goto_5
    move-object/from16 v10, p8

    :goto_6
    move/from16 v11, p9

    :goto_7
    move-wide/from16 v12, p10

    :goto_8
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1881
    throw v0
.end method

.method public blacklist sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callingAttributionTag"    # Ljava/lang/String;
    .param p4, "destAddr"    # Ljava/lang/String;
    .param p5, "scAddr"    # Ljava/lang/String;
    .param p6, "text"    # Ljava/lang/String;
    .param p7, "sentIntent"    # Landroid/app/PendingIntent;
    .param p8, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p9, "persistMessageForNonDefaultSmsApp"    # Z
    .param p10, "priority"    # I
    .param p11, "expectMore"    # Z
    .param p12, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1932
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1934
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1935
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 1937
    move-object/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 1938
    move-object/from16 v6, p4

    :try_start_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1939
    move-object/from16 v7, p5

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 1940
    move-object/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 1941
    const/4 v0, 0x0

    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 1942
    move-object/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 1943
    move/from16 v11, p9

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1944
    move/from16 v12, p10

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1945
    move/from16 v13, p11

    :try_start_9
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1946
    move/from16 v14, p12

    :try_start_a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 1947
    move-object/from16 v15, p0

    :try_start_b
    iget-object v0, v15, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1948
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1951
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    nop

    .line 1954
    return-void

    .line 1951
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_0
    move-object/from16 v6, p4

    :goto_1
    move-object/from16 v7, p5

    :goto_2
    move-object/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move-object/from16 v10, p8

    :goto_5
    move/from16 v11, p9

    :goto_6
    move/from16 v12, p10

    :goto_7
    move/from16 v13, p11

    :goto_8
    move/from16 v14, p12

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1952
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1953
    throw v0
.end method

.method public blacklist sendTextNSRIForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;II)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # [B
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "msgCount"    # I
    .param p9, "msgTotal"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2985
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2987
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2990
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2991
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2992
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2993
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2994
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2995
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2996
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2997
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2998
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3001
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3003
    nop

    .line 3004
    return-void

    .line 3001
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3003
    throw v2
.end method

.method public blacklist sendTextwithCBPForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "callbackNumber"    # Ljava/lang/String;
    .param p9, "priority"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2840
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2841
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2842
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2843
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2845
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2846
    const/4 v2, 0x0

    invoke-virtual {v0, p6, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2847
    invoke-virtual {v0, p7, v2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 2848
    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2849
    invoke-virtual {v0, p9}, Landroid/os/Parcel;->writeInt(I)V

    .line 2850
    iget-object v3, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2851
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2854
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    nop

    .line 2857
    return-void

    .line 2854
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2855
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    throw v2
.end method

.method public blacklist sendTextwithOptionsForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "replyPath"    # Z
    .param p9, "expiry"    # I
    .param p10, "serviceType"    # I
    .param p11, "encodingType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2861
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2863
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2864
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2865
    move-object/from16 v4, p2

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 2866
    move-object/from16 v5, p3

    :try_start_2
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2867
    move-object/from16 v6, p4

    :try_start_3
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2868
    move-object/from16 v7, p5

    :try_start_4
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 2869
    const/4 v0, 0x0

    move-object/from16 v8, p6

    :try_start_5
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 2870
    move-object/from16 v9, p7

    :try_start_6
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2871
    move/from16 v10, p8

    :try_start_7
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2872
    move/from16 v11, p9

    :try_start_8
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2873
    move/from16 v12, p10

    :try_start_9
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2874
    move/from16 v13, p11

    :try_start_a
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2875
    move-object/from16 v14, p0

    :try_start_b
    iget-object v15, v14, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    invoke-interface {v15, v3, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2876
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2879
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    nop

    .line 2882
    return-void

    .line 2879
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v14, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v14, p0

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v5, p3

    :goto_1
    move-object/from16 v6, p4

    :goto_2
    move-object/from16 v7, p5

    :goto_3
    move-object/from16 v8, p6

    :goto_4
    move-object/from16 v9, p7

    :goto_5
    move/from16 v10, p8

    :goto_6
    move/from16 v11, p9

    :goto_7
    move/from16 v12, p10

    :goto_8
    move/from16 v13, p11

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2880
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2881
    throw v0
.end method

.method public blacklist sendTextwithOptionsReadconfirmForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIIII)V
    .locals 16
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "destAddr"    # Ljava/lang/String;
    .param p4, "scAddr"    # Ljava/lang/String;
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "sentIntent"    # Landroid/app/PendingIntent;
    .param p7, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p8, "replyPath"    # Z
    .param p9, "expiry"    # I
    .param p10, "serviceType"    # I
    .param p11, "encodingType"    # I
    .param p12, "confirmID"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2886
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2887
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2889
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v0, "com.android.internal.telephony.ISms"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2890
    move/from16 v3, p1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2891
    move-object/from16 v4, p2

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 2892
    move-object/from16 v5, p3

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_a

    .line 2893
    move-object/from16 v6, p4

    :try_start_2
    invoke-virtual {v1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 2894
    move-object/from16 v7, p5

    :try_start_3
    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    .line 2895
    const/4 v0, 0x0

    move-object/from16 v8, p6

    :try_start_4
    invoke-virtual {v1, v8, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 2896
    move-object/from16 v9, p7

    :try_start_5
    invoke-virtual {v1, v9, v0}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 2897
    move/from16 v10, p8

    :try_start_6
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeBoolean(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 2898
    move/from16 v11, p9

    :try_start_7
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2899
    move/from16 v12, p10

    :try_start_8
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 2900
    move/from16 v13, p11

    :try_start_9
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2901
    move/from16 v14, p12

    :try_start_a
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 2902
    move-object/from16 v15, p0

    :try_start_b
    iget-object v0, v15, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 2903
    .local v0, "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2906
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    nop

    .line 2909
    return-void

    .line 2906
    :catchall_0
    move-exception v0

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_4

    :catchall_7
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_3

    :catchall_8
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_2

    :catchall_9
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_1

    :catchall_a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_0

    :catchall_b
    move-exception v0

    move-object/from16 v15, p0

    move-object/from16 v5, p3

    :goto_0
    move-object/from16 v6, p4

    :goto_1
    move-object/from16 v7, p5

    :goto_2
    move-object/from16 v8, p6

    :goto_3
    move-object/from16 v9, p7

    :goto_4
    move/from16 v10, p8

    :goto_5
    move/from16 v11, p9

    :goto_6
    move/from16 v12, p10

    :goto_7
    move/from16 v13, p11

    :goto_8
    move/from16 v14, p12

    :goto_9
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2907
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2908
    throw v0
.end method

.method public greylist-max-o setPremiumSmsPermission(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2316
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2318
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2320
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2323
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    nop

    .line 2326
    return-void

    .line 2323
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2324
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2325
    throw v2
.end method

.method public greylist-max-o setPremiumSmsPermissionForSubscriber(ILjava/lang/String;I)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "permission"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2333
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2336
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2339
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2340
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2341
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2344
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    nop

    .line 2347
    return-void

    .line 2344
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2345
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2346
    throw v2
.end method

.method public blacklist setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 5
    .param p1, "smsc"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2721
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2722
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2725
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2728
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2729
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2730
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2731
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 2734
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2736
    nop

    .line 2737
    return v2

    .line 2734
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2735
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2736
    throw v2
.end method

.method public greylist-max-o updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "messageIndex"    # I
    .param p4, "newStatus"    # I
    .param p5, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1732
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1735
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string v2, "com.android.internal.telephony.ISms"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1736
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1738
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1741
    iget-object v2, p0, Lcom/android/internal/telephony/ISms$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1742
    .local v2, "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1743
    invoke-virtual {v1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 1746
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    nop

    .line 1749
    return v2

    .line 1746
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1748
    throw v2
.end method
