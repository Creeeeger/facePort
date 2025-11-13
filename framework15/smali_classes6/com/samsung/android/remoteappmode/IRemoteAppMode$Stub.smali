.class public abstract Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;
.super Landroid/os/Binder;
.source "IRemoteAppMode.java"

# interfaces
.implements Lcom/samsung/android/remoteappmode/IRemoteAppMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/remoteappmode/IRemoteAppMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_clearAll:I = 0x11

.field static final blacklist TRANSACTION_createVirtualDisplay:I = 0x1

.field static final blacklist TRANSACTION_disableSendingUserPresentIntent:I = 0x1d

.field static final blacklist TRANSACTION_enableSendingUserPresentIntent:I = 0x1c

.field static final blacklist TRANSACTION_forceStopPackage:I = 0x16

.field static final blacklist TRANSACTION_getLastAnr:I = 0x1b

.field static final blacklist TRANSACTION_getProtocolVersion:I = 0x13

.field static final blacklist TRANSACTION_getSendingUserPresentExpiredTime:I = 0x20

.field static final blacklist TRANSACTION_isAllowed:I = 0x6

.field static final blacklist TRANSACTION_isSendingUserPresentEnabled:I = 0x1e

.field static final blacklist TRANSACTION_launchApplication:I = 0x5

.field static final blacklist TRANSACTION_moveDisplayToTop:I = 0x4

.field static final blacklist TRANSACTION_registerRemoteAppModeListener:I = 0xf

.field static final blacklist TRANSACTION_registerRotationChangeListener:I = 0xb

.field static final blacklist TRANSACTION_registerSecureAppChangedListener:I = 0x7

.field static final blacklist TRANSACTION_registerStartActivityInterceptListener:I = 0xd

.field static final blacklist TRANSACTION_registerTaskChangeListener:I = 0x9

.field static final blacklist TRANSACTION_releaseVirtualDisplay:I = 0x2

.field static final blacklist TRANSACTION_resizeVirtualDisplay:I = 0x3

.field static final blacklist TRANSACTION_sendNotificationAction:I = 0x15

.field static final blacklist TRANSACTION_sendNotificationContent:I = 0x14

.field static final blacklist TRANSACTION_sendPendingIntent:I = 0x12

.field static final blacklist TRANSACTION_setLTWProtocolVersion:I = 0x18

.field static final blacklist TRANSACTION_setSendingUserPresentExpiredTime:I = 0x1f

.field static final blacklist TRANSACTION_startRFCommService:I = 0x19

.field static final blacklist TRANSACTION_stopRFCommService:I = 0x1a

.field static final blacklist TRANSACTION_transferTaskUsingIntent:I = 0x21

.field static final blacklist TRANSACTION_transferTaskWithoutIntercept:I = 0x17

.field static final blacklist TRANSACTION_unregisterRemoteAppModeListener:I = 0x10

.field static final blacklist TRANSACTION_unregisterRotationChangeListener:I = 0xc

.field static final blacklist TRANSACTION_unregisterSecureAppChangedListener:I = 0x8

.field static final blacklist TRANSACTION_unregisterStartActivityInterceptListener:I = 0xe

.field static final blacklist TRANSACTION_unregisterTaskChangeListener:I = 0xa


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppMode;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.remoteappmode.IRemoteAppMode"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "transferTaskUsingIntent"

    return-object v0

    :pswitch_1
    const-string v0, "getSendingUserPresentExpiredTime"

    return-object v0

    :pswitch_2
    const-string v0, "setSendingUserPresentExpiredTime"

    return-object v0

    :pswitch_3
    const-string v0, "isSendingUserPresentEnabled"

    return-object v0

    :pswitch_4
    const-string v0, "disableSendingUserPresentIntent"

    return-object v0

    :pswitch_5
    const-string v0, "enableSendingUserPresentIntent"

    return-object v0

    :pswitch_6
    const-string v0, "getLastAnr"

    return-object v0

    :pswitch_7
    const-string v0, "stopRFCommService"

    return-object v0

    :pswitch_8
    const-string v0, "startRFCommService"

    return-object v0

    :pswitch_9
    const-string v0, "setLTWProtocolVersion"

    return-object v0

    :pswitch_a
    const-string v0, "transferTaskWithoutIntercept"

    return-object v0

    :pswitch_b
    const-string v0, "forceStopPackage"

    return-object v0

    :pswitch_c
    const-string v0, "sendNotificationAction"

    return-object v0

    :pswitch_d
    const-string v0, "sendNotificationContent"

    return-object v0

    :pswitch_e
    const-string v0, "getProtocolVersion"

    return-object v0

    :pswitch_f
    const-string v0, "sendPendingIntent"

    return-object v0

    :pswitch_10
    const-string v0, "clearAll"

    return-object v0

    :pswitch_11
    const-string v0, "unregisterRemoteAppModeListener"

    return-object v0

    :pswitch_12
    const-string v0, "registerRemoteAppModeListener"

    return-object v0

    :pswitch_13
    const-string v0, "unregisterStartActivityInterceptListener"

    return-object v0

    :pswitch_14
    const-string v0, "registerStartActivityInterceptListener"

    return-object v0

    :pswitch_15
    const-string v0, "unregisterRotationChangeListener"

    return-object v0

    :pswitch_16
    const-string v0, "registerRotationChangeListener"

    return-object v0

    :pswitch_17
    const-string v0, "unregisterTaskChangeListener"

    return-object v0

    :pswitch_18
    const-string v0, "registerTaskChangeListener"

    return-object v0

    :pswitch_19
    const-string v0, "unregisterSecureAppChangedListener"

    return-object v0

    :pswitch_1a
    const-string v0, "registerSecureAppChangedListener"

    return-object v0

    :pswitch_1b
    const-string v0, "isAllowed"

    return-object v0

    :pswitch_1c
    const-string v0, "launchApplication"

    return-object v0

    :pswitch_1d
    const-string v0, "moveDisplayToTop"

    return-object v0

    :pswitch_1e
    const-string v0, "resizeVirtualDisplay"

    return-object v0

    :pswitch_1f
    const-string v0, "releaseVirtualDisplay"

    return-object v0

    :pswitch_20
    const-string v0, "createVirtualDisplay"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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

    const/16 v0, 0x20

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, "com.samsung.android.remoteappmode.IRemoteAppMode"

    const/4 v12, 0x1

    if-lt v8, v12, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    invoke-virtual {v9, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v0, 0x5f4e5446

    if-ne v8, v0, :cond_1

    invoke-virtual {v10, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v12

    :cond_1
    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->transferTaskUsingIntent(Landroid/content/Intent;IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getSendingUserPresentExpiredTime()J

    move-result-wide v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->setSendingUserPresentExpiredTime(J)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->isSendingUserPresentEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->disableSendingUserPresentIntent()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->enableSendingUserPresentIntent(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getLastAnr(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->stopRFCommService()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->startRFCommService()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->setLTWProtocolVersion(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->transferTaskWithoutIntercept(IILandroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->forceStopPackage(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_c
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationAction(Landroid/service/notification/StatusBarNotification;ILandroid/content/Intent;)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_d
    sget-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendNotificationContent(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->getProtocolVersion()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_f
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->sendPendingIntent(Landroid/app/PendingIntent;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->clearAll()V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRemoteAppModeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRemoteAppModeListener(Lcom/samsung/android/remoteappmode/IRemoteAppModeListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerStartActivityInterceptListener(Lcom/samsung/android/remoteappmode/IStartActivityInterceptListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IRotationChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IRotationChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerRotationChangeListener(Lcom/samsung/android/remoteappmode/IRotationChangeListener;Ljava/lang/String;I)Z

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ITaskChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ITaskChangeListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerTaskChangeListener(Lcom/samsung/android/remoteappmode/ITaskChangeListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->unregisterSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;)Z

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/ISecureAppChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->registerSecureAppChangedListener(Lcom/samsung/android/remoteappmode/ISecureAppChangedListener;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->isAllowed()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    sget-object v3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->launchApplication(ILjava/lang/String;Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->moveDisplayToTop(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/Surface;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move v1, v6

    move v2, v13

    move v3, v14

    move v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->resizeVirtualDisplay(IIIILandroid/view/Surface;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->releaseVirtualDisplay(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    sget-object v0, Landroid/view/Surface;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/Surface;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;

    move-result-object v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/remoteappmode/IRemoteAppMode$Stub;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;Lcom/samsung/android/remoteappmode/IVirtualDisplayAliveChecker;)I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->writeInt(I)V

    nop

    :goto_0
    return v12

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
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
