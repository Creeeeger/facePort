.class public abstract Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;
.super Landroid/os/Binder;
.source "ISemWifiP2pManager.java"

# interfaces
.implements Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_controlOpenWifiScanTimer:I = 0x5

.field static final blacklist TRANSACTION_discoverPeers:I = 0xb

.field static final blacklist TRANSACTION_getInUsePackageList:I = 0x6

.field static final blacklist TRANSACTION_getP2pFactoryMacAddress:I = 0xc

.field static final blacklist TRANSACTION_getWifiP2pState:I = 0x1

.field static final blacklist TRANSACTION_removeClient:I = 0xa

.field static final blacklist TRANSACTION_setInUsePackage:I = 0x7

.field static final blacklist TRANSACTION_setListenOffloading:I = 0x4

.field static final blacklist TRANSACTION_setMsMiceInfo:I = 0x2

.field static final blacklist TRANSACTION_setScreenSharing:I = 0x3

.field static final blacklist TRANSACTION_unsetAllInUsePackage:I = 0x9

.field static final blacklist TRANSACTION_unsetInUsePackage:I = 0x8


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 73
    if-nez p0, :cond_0

    .line 74
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 77
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    if-eqz v1, :cond_1

    .line 78
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager;

    return-object v1

    .line 80
    :cond_1
    new-instance v1, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 89
    packed-switch p0, :pswitch_data_0

    .line 141
    const/4 v0, 0x0

    return-object v0

    .line 137
    :pswitch_0
    const-string v0, "getP2pFactoryMacAddress"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "discoverPeers"

    return-object v0

    .line 129
    :pswitch_2
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 125
    :pswitch_3
    const-string/jumbo v0, "unsetAllInUsePackage"

    return-object v0

    .line 121
    :pswitch_4
    const-string/jumbo v0, "unsetInUsePackage"

    return-object v0

    .line 117
    :pswitch_5
    const-string/jumbo v0, "setInUsePackage"

    return-object v0

    .line 113
    :pswitch_6
    const-string v0, "getInUsePackageList"

    return-object v0

    .line 109
    :pswitch_7
    const-string v0, "controlOpenWifiScanTimer"

    return-object v0

    .line 105
    :pswitch_8
    const-string/jumbo v0, "setListenOffloading"

    return-object v0

    .line 101
    :pswitch_9
    const-string/jumbo v0, "setScreenSharing"

    return-object v0

    .line 97
    :pswitch_a
    const-string/jumbo v0, "setMsMiceInfo"

    return-object v0

    .line 93
    :pswitch_b
    const-string v0, "getWifiP2pState"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 84
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 535
    const/16 v0, 0xb

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 148
    invoke-static {p1}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 152
    const-string v0, "com.samsung.android.wifi.p2p.ISemWifiP2pManager"

    .line 153
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 154
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 164
    packed-switch p1, :pswitch_data_1

    .line 299
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 160
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    return v1

    .line 292
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 293
    .local v2, "_result":Landroid/net/MacAddress;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 295
    goto/16 :goto_0

    .line 282
    .end local v2    # "_result":Landroid/net/MacAddress;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 284
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 285
    .local v3, "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->discoverPeers(ILcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    goto/16 :goto_0

    .line 271
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;

    move-result-object v3

    .line 274
    .restart local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 275
    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    goto/16 :goto_0

    .line 262
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/samsung/android/wifi/p2p/ISemWifiP2pCallback;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 263
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 264
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetAllInUsePackage(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    goto/16 :goto_0

    .line 247
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 251
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 254
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 255
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->unsetInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    goto/16 :goto_0

    .line 232
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 234
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 236
    .restart local v3    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 238
    .restart local v4    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 239
    .restart local v5    # "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 240
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setInUsePackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    goto :goto_0

    .line 222
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    .end local v5    # "_arg3":Z
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 223
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getInUsePackageList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 225
    .local v3, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 227
    goto :goto_0

    .line 213
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 214
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 215
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->controlOpenWifiScanTimer(I)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    goto :goto_0

    .line 198
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 200
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 202
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 204
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 205
    .local v5, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 206
    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setListenOffloading(IIII)V

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    goto :goto_0

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":I
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 190
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 191
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setScreenSharing(Z)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    goto :goto_0

    .line 176
    .end local v2    # "_arg0":Z
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 178
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 181
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 182
    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    goto :goto_0

    .line 168
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/ISemWifiP2pManager$Stub;->getWifiP2pState()I

    move-result v2

    .line 169
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    nop

    .line 302
    .end local v2    # "_result":I
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
