.class public abstract Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;
.super Landroid/os/Binder;
.source "INetworkFilterProxy.java"

# interfaces
.implements Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getBrowserAppList:I = 0x19

.field static final blacklist TRANSACTION_getHttpLocalProxyAddress:I = 0x17

.field static final blacklist TRANSACTION_getHttpLocalProxyPort:I = 0x18

.field static final blacklist TRANSACTION_getHttpProxythreadStatus:I = 0x15

.field static final blacklist TRANSACTION_getListener:I = 0x3

.field static final blacklist TRANSACTION_getLocalProxyAddress:I = 0x9

.field static final blacklist TRANSACTION_getLocalProxyPort:I = 0xa

.field static final blacklist TRANSACTION_getProxythreadStatus:I = 0x7

.field static final blacklist TRANSACTION_getV6LocalProxyAddress:I = 0x10

.field static final blacklist TRANSACTION_getV6LocalProxyPort:I = 0x11

.field static final blacklist TRANSACTION_getV6ProxythreadStatus:I = 0xe

.field static final blacklist TRANSACTION_isHttpProxyThreadAlive:I = 0x16

.field static final blacklist TRANSACTION_isHttpProxyThreadRunning:I = 0x14

.field static final blacklist TRANSACTION_isProxyThreadAlive:I = 0x8

.field static final blacklist TRANSACTION_isProxyThreadRunning:I = 0x6

.field static final blacklist TRANSACTION_isV6ProxyThreadAlive:I = 0xf

.field static final blacklist TRANSACTION_isV6ProxyThreadRunning:I = 0xd

.field static final blacklist TRANSACTION_registerRemoteProxyAddr:I = 0x2

.field static final blacklist TRANSACTION_setConfig:I = 0x1

.field static final blacklist TRANSACTION_startHttpProxyServer:I = 0x12

.field static final blacklist TRANSACTION_startProxyServer:I = 0x4

.field static final blacklist TRANSACTION_startV6ProxyServer:I = 0xb

.field static final blacklist TRANSACTION_stopHttpProxyServer:I = 0x13

.field static final blacklist TRANSACTION_stopProxyServer:I = 0x5

.field static final blacklist TRANSACTION_stopV6ProxyServer:I = 0xc

.field static final blacklist TRANSACTION_updateApplicationInfo:I = 0x1b

.field static final blacklist TRANSACTION_vpnMessengerForDnsQuery:I = 0x1a


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "updateApplicationInfo"

    return-object v0

    :pswitch_1
    const-string v0, "vpnMessengerForDnsQuery"

    return-object v0

    :pswitch_2
    const-string v0, "getBrowserAppList"

    return-object v0

    :pswitch_3
    const-string v0, "getHttpLocalProxyPort"

    return-object v0

    :pswitch_4
    const-string v0, "getHttpLocalProxyAddress"

    return-object v0

    :pswitch_5
    const-string v0, "isHttpProxyThreadAlive"

    return-object v0

    :pswitch_6
    const-string v0, "getHttpProxythreadStatus"

    return-object v0

    :pswitch_7
    const-string v0, "isHttpProxyThreadRunning"

    return-object v0

    :pswitch_8
    const-string v0, "stopHttpProxyServer"

    return-object v0

    :pswitch_9
    const-string v0, "startHttpProxyServer"

    return-object v0

    :pswitch_a
    const-string v0, "getV6LocalProxyPort"

    return-object v0

    :pswitch_b
    const-string v0, "getV6LocalProxyAddress"

    return-object v0

    :pswitch_c
    const-string v0, "isV6ProxyThreadAlive"

    return-object v0

    :pswitch_d
    const-string v0, "getV6ProxythreadStatus"

    return-object v0

    :pswitch_e
    const-string v0, "isV6ProxyThreadRunning"

    return-object v0

    :pswitch_f
    const-string v0, "stopV6ProxyServer"

    return-object v0

    :pswitch_10
    const-string v0, "startV6ProxyServer"

    return-object v0

    :pswitch_11
    const-string v0, "getLocalProxyPort"

    return-object v0

    :pswitch_12
    const-string v0, "getLocalProxyAddress"

    return-object v0

    :pswitch_13
    const-string v0, "isProxyThreadAlive"

    return-object v0

    :pswitch_14
    const-string v0, "getProxythreadStatus"

    return-object v0

    :pswitch_15
    const-string v0, "isProxyThreadRunning"

    return-object v0

    :pswitch_16
    const-string v0, "stopProxyServer"

    return-object v0

    :pswitch_17
    const-string v0, "startProxyServer"

    return-object v0

    :pswitch_18
    const-string v0, "getListener"

    return-object v0

    :pswitch_19
    const-string v0, "registerRemoteProxyAddr"

    return-object v0

    :pswitch_1a
    const-string v0, "setConfig"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    const/16 v0, 0x1a

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    const-string v9, "com.samsung.android.knox.app.networkfilter.INetworkFilterProxy"

    const/4 v10, 0x1

    if-lt v7, v10, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    move-object/from16 v11, p2

    invoke-virtual {v11, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v11, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v7, v0, :cond_1

    invoke-virtual {v8, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v10

    :cond_1
    packed-switch v7, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v12

    move v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->updateApplicationInfo(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->vpnMessengerForDnsQuery(Landroid/os/IBinder;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getBrowserAppList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpLocalProxyPort()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpLocalProxyAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isHttpProxyThreadAlive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getHttpProxythreadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isHttpProxyThreadRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopHttpProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startHttpProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyPort()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6LocalProxyAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadAlive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getV6ProxythreadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isV6ProxyThreadRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopV6ProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startV6ProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyPort()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getLocalProxyAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadAlive()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getProxythreadStatus()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->isProxyThreadRunning()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->stopProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->startProxyServer()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->getListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto :goto_1

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->registerRemoteProxyAddr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/knox/app/networkfilter/INetworkFilterProxy$Stub;->setConfig(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_1
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
        :pswitch_0
    .end packed-switch
.end method
