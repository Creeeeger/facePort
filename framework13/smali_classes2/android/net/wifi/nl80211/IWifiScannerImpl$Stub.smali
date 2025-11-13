.class public abstract Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;
.super Landroid/os/Binder;
.source "IWifiScannerImpl.java"

# interfaces
.implements Landroid/net/wifi/nl80211/IWifiScannerImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/nl80211/IWifiScannerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_abortScan:I = 0xc

.field static final blacklist TRANSACTION_disableRandomMac:I = 0xd

.field static final blacklist TRANSACTION_getMaxPnoSsidsPerScan:I = 0x4

.field static final blacklist TRANSACTION_getMaxSsidsPerScan:I = 0x3

.field static final blacklist TRANSACTION_getPnoScanResults:I = 0x2

.field static final blacklist TRANSACTION_getScanResults:I = 0x1

.field static final blacklist TRANSACTION_scan:I = 0x5

.field static final blacklist TRANSACTION_startPnoScan:I = 0xa

.field static final blacklist TRANSACTION_stopPnoScan:I = 0xb

.field static final blacklist TRANSACTION_subscribePnoScanEvents:I = 0x8

.field static final blacklist TRANSACTION_subscribeScanEvents:I = 0x6

.field static final blacklist TRANSACTION_unsubscribePnoScanEvents:I = 0x9

.field static final blacklist TRANSACTION_unsubscribeScanEvents:I = 0x7


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 89
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IWifiScannerImpl;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 97
    if-nez p0, :cond_0

    .line 98
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 101
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    if-eqz v1, :cond_1

    .line 102
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/nl80211/IWifiScannerImpl;

    return-object v1

    .line 104
    :cond_1
    new-instance v1, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 113
    packed-switch p0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 165
    :pswitch_0
    const-string v0, "disableRandomMac"

    return-object v0

    .line 161
    :pswitch_1
    const-string v0, "abortScan"

    return-object v0

    .line 157
    :pswitch_2
    const-string/jumbo v0, "stopPnoScan"

    return-object v0

    .line 153
    :pswitch_3
    const-string/jumbo v0, "startPnoScan"

    return-object v0

    .line 149
    :pswitch_4
    const-string/jumbo v0, "unsubscribePnoScanEvents"

    return-object v0

    .line 145
    :pswitch_5
    const-string/jumbo v0, "subscribePnoScanEvents"

    return-object v0

    .line 141
    :pswitch_6
    const-string/jumbo v0, "unsubscribeScanEvents"

    return-object v0

    .line 137
    :pswitch_7
    const-string/jumbo v0, "subscribeScanEvents"

    return-object v0

    .line 133
    :pswitch_8
    const-string v0, "scan"

    return-object v0

    .line 129
    :pswitch_9
    const-string v0, "getMaxPnoSsidsPerScan"

    return-object v0

    .line 125
    :pswitch_a
    const-string v0, "getMaxSsidsPerScan"

    return-object v0

    .line 121
    :pswitch_b
    const-string v0, "getPnoScanResults"

    return-object v0

    .line 117
    :pswitch_c
    const-string v0, "getScanResults"

    return-object v0

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 108
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 542
    const/16 v0, 0xc

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 176
    invoke-static {p1}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    const-string v0, "android.net.wifi.nl80211.IWifiScannerImpl"

    .line 181
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 182
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 192
    packed-switch p1, :pswitch_data_1

    .line 289
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 188
    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    return v1

    .line 283
    :pswitch_1
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->disableRandomMac()V

    .line 284
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    goto/16 :goto_0

    .line 277
    :pswitch_2
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->abortScan()V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    goto/16 :goto_0

    .line 270
    :pswitch_3
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->stopPnoScan()Z

    move-result v2

    .line 271
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 273
    goto/16 :goto_0

    .line 261
    .end local v2    # "_result":Z
    :pswitch_4
    sget-object v2, Landroid/net/wifi/nl80211/PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/PnoSettings;

    .line 262
    .local v2, "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 263
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->startPnoScan(Landroid/net/wifi/nl80211/PnoSettings;)Z

    move-result v3

    .line 264
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 266
    goto :goto_0

    .line 255
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/PnoSettings;
    .end local v3    # "_result":Z
    :pswitch_5
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribePnoScanEvents()V

    .line 256
    goto :goto_0

    .line 248
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IPnoScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IPnoScanEvent;

    move-result-object v2

    .line 249
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 250
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribePnoScanEvents(Landroid/net/wifi/nl80211/IPnoScanEvent;)V

    .line 251
    goto :goto_0

    .line 242
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IPnoScanEvent;
    :pswitch_7
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->unsubscribeScanEvents()V

    .line 243
    goto :goto_0

    .line 235
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/nl80211/IScanEvent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/nl80211/IScanEvent;

    move-result-object v2

    .line 236
    .local v2, "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->subscribeScanEvents(Landroid/net/wifi/nl80211/IScanEvent;)V

    .line 238
    goto :goto_0

    .line 225
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/IScanEvent;
    :pswitch_9
    sget-object v2, Landroid/net/wifi/nl80211/SingleScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/nl80211/SingleScanSettings;

    .line 226
    .local v2, "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 227
    invoke-virtual {p0, v2}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->scan(Landroid/net/wifi/nl80211/SingleScanSettings;)Z

    move-result v3

    .line 228
    .restart local v3    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 230
    goto :goto_0

    .line 217
    .end local v2    # "_arg0":Landroid/net/wifi/nl80211/SingleScanSettings;
    .end local v3    # "_result":Z
    :pswitch_a
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getMaxPnoSsidsPerScan()I

    move-result v2

    .line 218
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    goto :goto_0

    .line 210
    .end local v2    # "_result":I
    :pswitch_b
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getMaxSsidsPerScan()I

    move-result v2

    .line 211
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    goto :goto_0

    .line 203
    .end local v2    # "_result":I
    :pswitch_c
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getPnoScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 204
    .local v2, "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 206
    goto :goto_0

    .line 196
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :pswitch_d
    invoke-virtual {p0}, Landroid/net/wifi/nl80211/IWifiScannerImpl$Stub;->getScanResults()[Landroid/net/wifi/nl80211/NativeScanResult;

    move-result-object v2

    .line 197
    .restart local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 199
    nop

    .line 292
    .end local v2    # "_result":[Landroid/net/wifi/nl80211/NativeScanResult;
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_d
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
