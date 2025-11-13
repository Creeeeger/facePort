.class public abstract Landroid/location/ILocationManager$Stub;
.super Landroid/os/Binder;
.source "ILocationManager.java"

# interfaces
.implements Landroid/location/ILocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/ILocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/ILocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.location.ILocationManager"

.field static final blacklist TRANSACTION_addGnssAntennaInfoListener:I = 0x1c

.field static final greylist-max-o TRANSACTION_addGnssMeasurementsListener:I = 0x17

.field static final greylist-max-o TRANSACTION_addGnssNavigationMessageListener:I = 0x1a

.field static final blacklist TRANSACTION_addProviderRequestListener:I = 0x1e

.field static final greylist-max-o TRANSACTION_addTestProvider:I = 0x36

.field static final greylist-max-o TRANSACTION_flushGnssBatch:I = 0x22

.field static final greylist-max-o TRANSACTION_geocoderIsPresent:I = 0xc

.field static final greylist-max-r TRANSACTION_getAllProviders:I = 0x25

.field static final greylist-max-o TRANSACTION_getBackgroundThrottlingWhitelist:I = 0x3c

.field static final greylist-max-o TRANSACTION_getBestProvider:I = 0x27

.field static final blacklist TRANSACTION_getCurrentLocation:I = 0x2

.field static final blacklist TRANSACTION_getExtraLocationControllerPackage:I = 0x2c

.field static final greylist-max-o TRANSACTION_getFromLocation:I = 0xd

.field static final greylist-max-o TRANSACTION_getFromLocationName:I = 0xe

.field static final blacklist TRANSACTION_getGPSUsingApps:I = 0x3f

.field static final blacklist TRANSACTION_getGnssAntennaInfos:I = 0x12

.field static final greylist-max-o TRANSACTION_getGnssBatchSize:I = 0x20

.field static final blacklist TRANSACTION_getGnssCapabilities:I = 0xf

.field static final greylist-max-o TRANSACTION_getGnssHardwareModelName:I = 0x11

.field static final blacklist TRANSACTION_getGnssTimeMillis:I = 0x3a

.field static final greylist-max-o TRANSACTION_getGnssYearOfHardware:I = 0x10

.field static final blacklist TRANSACTION_getIgnoreSettingsAllowlist:I = 0x3d

.field static final greylist-max-o TRANSACTION_getLastLocation:I = 0x1

.field static final blacklist TRANSACTION_getProviderPackages:I = 0x2a

.field static final greylist-max-o TRANSACTION_getProviderProperties:I = 0x28

.field static final greylist-max-o TRANSACTION_getProviders:I = 0x26

.field static final blacklist TRANSACTION_hasProvider:I = 0x24

.field static final blacklist TRANSACTION_injectGnssMeasurementCorrections:I = 0x19

.field static final greylist-max-o TRANSACTION_injectLocation:I = 0x7

.field static final blacklist TRANSACTION_isAdasGnssLocationEnabledForUser:I = 0x32

.field static final blacklist TRANSACTION_isAutomotiveGnssSuspended:I = 0x34

.field static final blacklist TRANSACTION_isExtraLocationControllerPackageEnabled:I = 0x2e

.field static final greylist-max-o TRANSACTION_isLocationEnabledForUser:I = 0x30

.field static final greylist-max-o TRANSACTION_isProviderEnabledForUser:I = 0x2f

.field static final blacklist TRANSACTION_isProviderPackage:I = 0x29

.field static final blacklist TRANSACTION_notifyNSFLP:I = 0x3e

.field static final blacklist TRANSACTION_onFreezeStateChanged:I = 0x40

.field static final blacklist TRANSACTION_registerGnssNmeaCallback:I = 0x15

.field static final greylist-max-o TRANSACTION_registerGnssStatusCallback:I = 0x13

.field static final blacklist TRANSACTION_registerLocationListener:I = 0x3

.field static final blacklist TRANSACTION_registerLocationPendingIntent:I = 0x5

.field static final greylist-max-o TRANSACTION_removeGeofence:I = 0xb

.field static final blacklist TRANSACTION_removeGnssAntennaInfoListener:I = 0x1d

.field static final greylist-max-o TRANSACTION_removeGnssMeasurementsListener:I = 0x18

.field static final greylist-max-o TRANSACTION_removeGnssNavigationMessageListener:I = 0x1b

.field static final blacklist TRANSACTION_removeProviderRequestListener:I = 0x1f

.field static final greylist-max-o TRANSACTION_removeTestProvider:I = 0x37

.field static final greylist-max-o TRANSACTION_requestGeofence:I = 0xa

.field static final blacklist TRANSACTION_requestListenerFlush:I = 0x8

.field static final blacklist TRANSACTION_requestPendingIntentFlush:I = 0x9

.field static final greylist-max-o TRANSACTION_sendExtraCommand:I = 0x3b

.field static final blacklist TRANSACTION_setAdasGnssLocationEnabledForUser:I = 0x33

.field static final blacklist TRANSACTION_setAutomotiveGnssSuspended:I = 0x35

.field static final blacklist TRANSACTION_setExtraLocationControllerPackage:I = 0x2b

.field static final blacklist TRANSACTION_setExtraLocationControllerPackageEnabled:I = 0x2d

.field static final greylist-max-o TRANSACTION_setLocationEnabledForUser:I = 0x31

.field static final greylist-max-o TRANSACTION_setTestProviderEnabled:I = 0x39

.field static final greylist-max-o TRANSACTION_setTestProviderLocation:I = 0x38

.field static final greylist-max-o TRANSACTION_startGnssBatch:I = 0x21

.field static final greylist-max-o TRANSACTION_stopGnssBatch:I = 0x23

.field static final blacklist TRANSACTION_unregisterGnssNmeaCallback:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterGnssStatusCallback:I = 0x14

.field static final blacklist TRANSACTION_unregisterLocationListener:I = 0x4

.field static final blacklist TRANSACTION_unregisterLocationPendingIntent:I = 0x6


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 244
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 245
    const-string v0, "android.location.ILocationManager"

    invoke-virtual {p0, p0, v0}, Landroid/location/ILocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 253
    if-nez p0, :cond_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 256
    :cond_0
    const-string v0, "android.location.ILocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 257
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/location/ILocationManager;

    if-eqz v1, :cond_1

    .line 258
    move-object v1, v0

    check-cast v1, Landroid/location/ILocationManager;

    return-object v1

    .line 260
    :cond_1
    new-instance v1, Landroid/location/ILocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/location/ILocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 269
    packed-switch p0, :pswitch_data_0

    .line 529
    const/4 v0, 0x0

    return-object v0

    .line 525
    :pswitch_0
    const-string v0, "onFreezeStateChanged"

    return-object v0

    .line 521
    :pswitch_1
    const-string v0, "getGPSUsingApps"

    return-object v0

    .line 517
    :pswitch_2
    const-string v0, "notifyNSFLP"

    return-object v0

    .line 513
    :pswitch_3
    const-string v0, "getIgnoreSettingsAllowlist"

    return-object v0

    .line 509
    :pswitch_4
    const-string v0, "getBackgroundThrottlingWhitelist"

    return-object v0

    .line 505
    :pswitch_5
    const-string v0, "sendExtraCommand"

    return-object v0

    .line 501
    :pswitch_6
    const-string v0, "getGnssTimeMillis"

    return-object v0

    .line 497
    :pswitch_7
    const-string/jumbo v0, "setTestProviderEnabled"

    return-object v0

    .line 493
    :pswitch_8
    const-string/jumbo v0, "setTestProviderLocation"

    return-object v0

    .line 489
    :pswitch_9
    const-string v0, "removeTestProvider"

    return-object v0

    .line 485
    :pswitch_a
    const-string v0, "addTestProvider"

    return-object v0

    .line 481
    :pswitch_b
    const-string v0, "setAutomotiveGnssSuspended"

    return-object v0

    .line 477
    :pswitch_c
    const-string v0, "isAutomotiveGnssSuspended"

    return-object v0

    .line 473
    :pswitch_d
    const-string v0, "setAdasGnssLocationEnabledForUser"

    return-object v0

    .line 469
    :pswitch_e
    const-string v0, "isAdasGnssLocationEnabledForUser"

    return-object v0

    .line 465
    :pswitch_f
    const-string/jumbo v0, "setLocationEnabledForUser"

    return-object v0

    .line 461
    :pswitch_10
    const-string v0, "isLocationEnabledForUser"

    return-object v0

    .line 457
    :pswitch_11
    const-string v0, "isProviderEnabledForUser"

    return-object v0

    .line 453
    :pswitch_12
    const-string v0, "isExtraLocationControllerPackageEnabled"

    return-object v0

    .line 449
    :pswitch_13
    const-string v0, "setExtraLocationControllerPackageEnabled"

    return-object v0

    .line 445
    :pswitch_14
    const-string v0, "getExtraLocationControllerPackage"

    return-object v0

    .line 441
    :pswitch_15
    const-string v0, "setExtraLocationControllerPackage"

    return-object v0

    .line 437
    :pswitch_16
    const-string v0, "getProviderPackages"

    return-object v0

    .line 433
    :pswitch_17
    const-string v0, "isProviderPackage"

    return-object v0

    .line 429
    :pswitch_18
    const-string v0, "getProviderProperties"

    return-object v0

    .line 425
    :pswitch_19
    const-string v0, "getBestProvider"

    return-object v0

    .line 421
    :pswitch_1a
    const-string v0, "getProviders"

    return-object v0

    .line 417
    :pswitch_1b
    const-string v0, "getAllProviders"

    return-object v0

    .line 413
    :pswitch_1c
    const-string v0, "hasProvider"

    return-object v0

    .line 409
    :pswitch_1d
    const-string/jumbo v0, "stopGnssBatch"

    return-object v0

    .line 405
    :pswitch_1e
    const-string v0, "flushGnssBatch"

    return-object v0

    .line 401
    :pswitch_1f
    const-string/jumbo v0, "startGnssBatch"

    return-object v0

    .line 397
    :pswitch_20
    const-string v0, "getGnssBatchSize"

    return-object v0

    .line 393
    :pswitch_21
    const-string v0, "removeProviderRequestListener"

    return-object v0

    .line 389
    :pswitch_22
    const-string v0, "addProviderRequestListener"

    return-object v0

    .line 385
    :pswitch_23
    const-string v0, "removeGnssAntennaInfoListener"

    return-object v0

    .line 381
    :pswitch_24
    const-string v0, "addGnssAntennaInfoListener"

    return-object v0

    .line 377
    :pswitch_25
    const-string v0, "removeGnssNavigationMessageListener"

    return-object v0

    .line 373
    :pswitch_26
    const-string v0, "addGnssNavigationMessageListener"

    return-object v0

    .line 369
    :pswitch_27
    const-string v0, "injectGnssMeasurementCorrections"

    return-object v0

    .line 365
    :pswitch_28
    const-string v0, "removeGnssMeasurementsListener"

    return-object v0

    .line 361
    :pswitch_29
    const-string v0, "addGnssMeasurementsListener"

    return-object v0

    .line 357
    :pswitch_2a
    const-string/jumbo v0, "unregisterGnssNmeaCallback"

    return-object v0

    .line 353
    :pswitch_2b
    const-string v0, "registerGnssNmeaCallback"

    return-object v0

    .line 349
    :pswitch_2c
    const-string/jumbo v0, "unregisterGnssStatusCallback"

    return-object v0

    .line 345
    :pswitch_2d
    const-string v0, "registerGnssStatusCallback"

    return-object v0

    .line 341
    :pswitch_2e
    const-string v0, "getGnssAntennaInfos"

    return-object v0

    .line 337
    :pswitch_2f
    const-string v0, "getGnssHardwareModelName"

    return-object v0

    .line 333
    :pswitch_30
    const-string v0, "getGnssYearOfHardware"

    return-object v0

    .line 329
    :pswitch_31
    const-string v0, "getGnssCapabilities"

    return-object v0

    .line 325
    :pswitch_32
    const-string v0, "getFromLocationName"

    return-object v0

    .line 321
    :pswitch_33
    const-string v0, "getFromLocation"

    return-object v0

    .line 317
    :pswitch_34
    const-string v0, "geocoderIsPresent"

    return-object v0

    .line 313
    :pswitch_35
    const-string v0, "removeGeofence"

    return-object v0

    .line 309
    :pswitch_36
    const-string v0, "requestGeofence"

    return-object v0

    .line 305
    :pswitch_37
    const-string v0, "requestPendingIntentFlush"

    return-object v0

    .line 301
    :pswitch_38
    const-string v0, "requestListenerFlush"

    return-object v0

    .line 297
    :pswitch_39
    const-string v0, "injectLocation"

    return-object v0

    .line 293
    :pswitch_3a
    const-string/jumbo v0, "unregisterLocationPendingIntent"

    return-object v0

    .line 289
    :pswitch_3b
    const-string v0, "registerLocationPendingIntent"

    return-object v0

    .line 285
    :pswitch_3c
    const-string/jumbo v0, "unregisterLocationListener"

    return-object v0

    .line 281
    :pswitch_3d
    const-string v0, "registerLocationListener"

    return-object v0

    .line 277
    :pswitch_3e
    const-string v0, "getCurrentLocation"

    return-object v0

    .line 273
    :pswitch_3f
    const-string v0, "getLastLocation"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
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

    .line 264
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2455
    const/16 v0, 0x3f

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 536
    invoke-static {p1}, Landroid/location/ILocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 29
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 540
    move-object/from16 v13, p0

    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v12, p3

    const-string v11, "android.location.ILocationManager"

    .line 541
    .local v11, "descriptor":Ljava/lang/String;
    const/4 v10, 0x1

    if-lt v14, v10, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 542
    invoke-virtual {v15, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 552
    packed-switch v14, :pswitch_data_1

    .line 1264
    move-object v14, v12

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 548
    :pswitch_0
    invoke-virtual {v12, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    return v10

    .line 1254
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1256
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1257
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1258
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->onFreezeStateChanged(ZI)V

    .line 1259
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1260
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1246
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0

    .line 1247
    .local v0, "_result":Ljava/util/Map;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1248
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 1249
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1238
    .end local v0    # "_result":Ljava/util/Map;
    :pswitch_3
    sget-object v0, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 1239
    .local v0, "_arg0":Landroid/os/Message;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1240
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->notifyNSFLP(Landroid/os/Message;)V

    .line 1241
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1242
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1230
    .end local v0    # "_arg0":Landroid/os/Message;
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getIgnoreSettingsAllowlist()Landroid/os/PackageTagsList;

    move-result-object v0

    .line 1231
    .local v0, "_result":Landroid/os/PackageTagsList;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1233
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1223
    .end local v0    # "_result":Landroid/os/PackageTagsList;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getBackgroundThrottlingWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 1224
    .local v0, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1225
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1226
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1210
    .end local v0    # "_result":[Ljava/lang/String;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1212
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, "_arg1":Ljava/lang/String;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 1215
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1216
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1217
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1218
    invoke-virtual {v12, v2, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1219
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1202
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    .line 1203
    .local v0, "_result":Landroid/location/LocationTime;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1204
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1205
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1188
    .end local v0    # "_result":Landroid/location/LocationTime;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1192
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1194
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderEnabled(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1173
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1175
    .restart local v0    # "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 1177
    .local v1, "_arg1":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1179
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1180
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1181
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/Location;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1162
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1165
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1166
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->removeTestProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1143
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 1145
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/provider/ProviderProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/provider/ProviderProperties;

    .line 1147
    .local v7, "_arg1":Landroid/location/provider/ProviderProperties;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v8

    .line 1149
    .local v8, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 1151
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 1152
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addTestProvider(Ljava/lang/String;Landroid/location/provider/ProviderProperties;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1155
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1134
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/location/provider/ProviderProperties;
    .end local v8    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1135
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1136
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setAutomotiveGnssSuspended(Z)V

    .line 1137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1138
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1126
    .end local v0    # "_arg0":Z
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isAutomotiveGnssSuspended()Z

    move-result v0

    .line 1127
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1128
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1129
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1116
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1118
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1119
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1120
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setAdasGnssLocationEnabledForUser(ZI)V

    .line 1121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1122
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1106
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1107
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isAdasGnssLocationEnabledForUser(I)Z

    move-result v1

    .line 1109
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1111
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1095
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1097
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1098
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1099
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->setLocationEnabledForUser(ZI)V

    .line 1100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1101
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1085
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1086
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1087
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->isLocationEnabledForUser(I)Z

    move-result v1

    .line 1088
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1089
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1090
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1073
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1076
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->isProviderEnabledForUser(Ljava/lang/String;I)Z

    move-result v2

    .line 1078
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1080
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1065
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->isExtraLocationControllerPackageEnabled()Z

    move-result v0

    .line 1066
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1067
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1068
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1057
    .end local v0    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1058
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1059
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackageEnabled(Z)V

    .line 1060
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1061
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1049
    .end local v0    # "_arg0":Z
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getExtraLocationControllerPackage()Ljava/lang/String;

    move-result-object v0

    .line 1050
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1051
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1052
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1041
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1042
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1043
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->setExtraLocationControllerPackage(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1045
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1031
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1032
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1033
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1034
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1036
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1017
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1021
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1022
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1023
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->isProviderPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1024
    .local v3, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1025
    invoke-virtual {v12, v3}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1026
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 1007
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1008
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1009
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->getProviderProperties(Ljava/lang/String;)Landroid/location/provider/ProviderProperties;

    move-result-object v1

    .line 1010
    .local v1, "_result":Landroid/location/provider/ProviderProperties;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    invoke-virtual {v12, v1, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1012
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 995
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Landroid/location/provider/ProviderProperties;
    :pswitch_1a
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .line 997
    .local v0, "_arg0":Landroid/location/Criteria;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 998
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v2

    .line 1000
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1002
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 983
    .end local v0    # "_arg0":Landroid/location/Criteria;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_1b
    sget-object v0, Landroid/location/Criteria;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Criteria;

    .line 985
    .restart local v0    # "_arg0":Landroid/location/Criteria;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 986
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 987
    invoke-virtual {v13, v0, v1}, Landroid/location/ILocationManager$Stub;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 988
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 989
    invoke-virtual {v12, v2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 990
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 975
    .end local v0    # "_arg0":Landroid/location/Criteria;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getAllProviders()Ljava/util/List;

    move-result-object v0

    .line 976
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 977
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 978
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 966
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 967
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->hasProvider(Ljava/lang/String;)Z

    move-result v1

    .line 969
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 970
    invoke-virtual {v12, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 971
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->stopGnssBatch()V

    .line 960
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 961
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 953
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->flushGnssBatch()V

    .line 954
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 955
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 937
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 939
    .local v7, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .line 941
    .local v9, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 943
    .local v16, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 945
    .local v17, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 946
    .local v18, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 947
    move-object/from16 v0, p0

    move-wide v1, v7

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->startGnssBatch(JLandroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 949
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 929
    .end local v7    # "_arg0":J
    .end local v9    # "_arg1":Landroid/location/ILocationListener;
    .end local v16    # "_arg2":Ljava/lang/String;
    .end local v17    # "_arg3":Ljava/lang/String;
    .end local v18    # "_arg4":Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssBatchSize()I

    move-result v0

    .line 930
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 931
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 921
    .end local v0    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    .line 922
    .local v0, "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 923
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 924
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 925
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 912
    .end local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/provider/IProviderRequestListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IProviderRequestListener;

    move-result-object v0

    .line 913
    .restart local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 914
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->addProviderRequestListener(Landroid/location/provider/IProviderRequestListener;)V

    .line 915
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 903
    .end local v0    # "_arg0":Landroid/location/provider/IProviderRequestListener;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    .line 904
    .local v0, "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 905
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;)V

    .line 906
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 888
    .end local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssAntennaInfoListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssAntennaInfoListener;

    move-result-object v0

    .line 890
    .restart local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 896
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssAntennaInfoListener(Landroid/location/IGnssAntennaInfoListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 898
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 879
    .end local v0    # "_arg0":Landroid/location/IGnssAntennaInfoListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 880
    .local v0, "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 881
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;)V

    .line 882
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 883
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 864
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNavigationMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNavigationMessageListener;

    move-result-object v0

    .line 866
    .restart local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 868
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 870
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 871
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 872
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->addGnssNavigationMessageListener(Landroid/location/IGnssNavigationMessageListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 874
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 855
    .end local v0    # "_arg0":Landroid/location/IGnssNavigationMessageListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_28
    sget-object v0, Landroid/location/GnssMeasurementCorrections;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GnssMeasurementCorrections;

    .line 856
    .local v0, "_arg0":Landroid/location/GnssMeasurementCorrections;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectGnssMeasurementCorrections(Landroid/location/GnssMeasurementCorrections;)V

    .line 858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 846
    .end local v0    # "_arg0":Landroid/location/GnssMeasurementCorrections;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v0

    .line 847
    .local v0, "_arg0":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 829
    .end local v0    # "_arg0":Landroid/location/IGnssMeasurementsListener;
    :pswitch_2a
    sget-object v0, Landroid/location/GnssMeasurementRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/location/GnssMeasurementRequest;

    .line 831
    .local v6, "_arg0":Landroid/location/GnssMeasurementRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssMeasurementsListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssMeasurementsListener;

    move-result-object v7

    .line 833
    .local v7, "_arg1":Landroid/location/IGnssMeasurementsListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 835
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 837
    .local v9, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 838
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 839
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->addGnssMeasurementsListener(Landroid/location/GnssMeasurementRequest;Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 841
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 820
    .end local v6    # "_arg0":Landroid/location/GnssMeasurementRequest;
    .end local v7    # "_arg1":Landroid/location/IGnssMeasurementsListener;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    .line 821
    .local v0, "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 822
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssNmeaCallback(Landroid/location/IGnssNmeaListener;)V

    .line 823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 805
    .end local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssNmeaListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssNmeaListener;

    move-result-object v0

    .line 807
    .restart local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 809
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 812
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssNmeaCallback(Landroid/location/IGnssNmeaListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 796
    .end local v0    # "_arg0":Landroid/location/IGnssNmeaListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 797
    .local v0, "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterGnssStatusCallback(Landroid/location/IGnssStatusListener;)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 781
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGnssStatusListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGnssStatusListener;

    move-result-object v0

    .line 783
    .restart local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 785
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 787
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 788
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 789
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->registerGnssStatusCallback(Landroid/location/IGnssStatusListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 773
    .end local v0    # "_arg0":Landroid/location/IGnssStatusListener;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_2f
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssAntennaInfos()Ljava/util/List;

    move-result-object v0

    .line 774
    .local v0, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 776
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 766
    .end local v0    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/location/GnssAntennaInfo;>;"
    :pswitch_30
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssHardwareModelName()Ljava/lang/String;

    move-result-object v0

    .line 767
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 768
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 769
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 759
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_31
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssYearOfHardware()I

    move-result v0

    .line 760
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 761
    invoke-virtual {v12, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 762
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 752
    .end local v0    # "_result":I
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->getGnssCapabilities()Landroid/location/GnssCapabilities;

    move-result-object v0

    .line 753
    .local v0, "_result":Landroid/location/GnssCapabilities;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    invoke-virtual {v12, v0, v10}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 755
    move v5, v10

    move-object/from16 v28, v11

    move-object v14, v12

    goto/16 :goto_0

    .line 730
    .end local v0    # "_result":Landroid/location/GnssCapabilities;
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 732
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v17

    .line 734
    .local v17, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v19

    .line 736
    .local v19, "_arg2":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v21

    .line 738
    .local v21, "_arg3":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v23

    .line 740
    .local v23, "_arg4":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .line 742
    .local v25, "_arg5":I
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroid/location/GeocoderParams;

    .line 744
    .local v26, "_arg6":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v27

    .line 745
    .local v27, "_arg7":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 746
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-wide/from16 v2, v17

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    move v14, v10

    move/from16 v10, v25

    move-object/from16 v28, v11

    .end local v11    # "descriptor":Ljava/lang/String;
    .local v28, "descriptor":Ljava/lang/String;
    move-object/from16 v11, v26

    move-object v14, v12

    move-object/from16 v12, v27

    invoke-virtual/range {v0 .. v12}, Landroid/location/ILocationManager$Stub;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 713
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":D
    .end local v19    # "_arg2":D
    .end local v21    # "_arg3":D
    .end local v23    # "_arg4":D
    .end local v25    # "_arg5":I
    .end local v26    # "_arg6":Landroid/location/GeocoderParams;
    .end local v27    # "_arg7":Landroid/location/IGeocodeListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_34
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v8

    .line 715
    .local v8, "_arg0":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v10

    .line 717
    .local v10, "_arg1":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 719
    .local v12, "_arg2":I
    sget-object v0, Landroid/location/GeocoderParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/location/GeocoderParams;

    .line 721
    .local v16, "_arg3":Landroid/location/GeocoderParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGeocodeListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGeocodeListener;

    move-result-object v17

    .line 722
    .local v17, "_arg4":Landroid/location/IGeocodeListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 723
    move-object/from16 v0, p0

    move-wide v1, v8

    move-wide v3, v10

    move v5, v12

    move-object/from16 v6, v16

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Landroid/location/ILocationManager$Stub;->getFromLocation(DDILandroid/location/GeocoderParams;Landroid/location/IGeocodeListener;)V

    .line 724
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 705
    .end local v8    # "_arg0":D
    .end local v10    # "_arg1":D
    .end local v12    # "_arg2":I
    .end local v16    # "_arg3":Landroid/location/GeocoderParams;
    .end local v17    # "_arg4":Landroid/location/IGeocodeListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_35
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/location/ILocationManager$Stub;->geocoderIsPresent()Z

    move-result v0

    .line 706
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 707
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 708
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 697
    .end local v0    # "_result":Z
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_36
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 698
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->removeGeofence(Landroid/app/PendingIntent;)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 682
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_37
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/location/Geofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Geofence;

    .line 684
    .local v0, "_arg0":Landroid/location/Geofence;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 686
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 688
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 689
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->requestGeofence(Landroid/location/Geofence;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 669
    .end local v0    # "_arg0":Landroid/location/Geofence;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_38
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 671
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 673
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 674
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 675
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestPendingIntentFlush(Ljava/lang/String;Landroid/app/PendingIntent;I)V

    .line 676
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 656
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_39
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 658
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v1

    .line 660
    .local v1, "_arg1":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 661
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v13, v0, v1, v2}, Landroid/location/ILocationManager$Stub;->requestListenerFlush(Ljava/lang/String;Landroid/location/ILocationListener;I)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 647
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/ILocationListener;
    .end local v2    # "_arg2":I
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3a
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 648
    .local v0, "_arg0":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 649
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->injectLocation(Landroid/location/Location;)V

    .line 650
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 638
    .end local v0    # "_arg0":Landroid/location/Location;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3b
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 639
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationPendingIntent(Landroid/app/PendingIntent;)V

    .line 641
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 642
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 621
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3c
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 623
    .local v6, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/LocationRequest;

    .line 625
    .local v7, "_arg1":Landroid/location/LocationRequest;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/app/PendingIntent;

    .line 627
    .local v8, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 629
    .restart local v9    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 630
    .local v10, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 631
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object v5, v10

    invoke-virtual/range {v0 .. v5}, Landroid/location/ILocationManager$Stub;->registerLocationPendingIntent(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 633
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 612
    .end local v6    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Landroid/location/LocationRequest;
    .end local v8    # "_arg2":Landroid/app/PendingIntent;
    .end local v9    # "_arg3":Ljava/lang/String;
    .end local v10    # "_arg4":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v0

    .line 613
    .local v0, "_arg0":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {v13, v0}, Landroid/location/ILocationManager$Stub;->unregisterLocationListener(Landroid/location/ILocationListener;)V

    .line 615
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":Landroid/location/ILocationListener;
    .end local v28    # "descriptor":Ljava/lang/String;
    .restart local v11    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    .line 597
    .local v8, "_arg1":Landroid/location/LocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationListener;

    move-result-object v9

    .line 599
    .local v9, "_arg2":Landroid/location/ILocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 601
    .local v10, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 603
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 604
    .local v12, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 605
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->registerLocationListener(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    const/4 v5, 0x1

    goto :goto_0

    .line 573
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/location/LocationRequest;
    .end local v9    # "_arg2":Landroid/location/ILocationListener;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_3f
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 575
    .restart local v7    # "_arg0":Ljava/lang/String;
    sget-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/location/LocationRequest;

    .line 577
    .restart local v8    # "_arg1":Landroid/location/LocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationCallback;

    move-result-object v9

    .line 579
    .local v9, "_arg2":Landroid/location/ILocationCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 581
    .restart local v10    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 583
    .local v11, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 584
    .restart local v12    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 585
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-virtual/range {v0 .. v6}, Landroid/location/ILocationManager$Stub;->getCurrentLocation(Ljava/lang/String;Landroid/location/LocationRequest;Landroid/location/ILocationCallback;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ICancellationSignal;

    move-result-object v0

    .line 586
    .local v0, "_result":Landroid/os/ICancellationSignal;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    invoke-virtual {v14, v0}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 588
    const/4 v5, 0x1

    goto :goto_0

    .line 557
    .end local v0    # "_result":Landroid/os/ICancellationSignal;
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v8    # "_arg1":Landroid/location/LocationRequest;
    .end local v9    # "_arg2":Landroid/location/ILocationCallback;
    .end local v10    # "_arg3":Ljava/lang/String;
    .end local v12    # "_arg5":Ljava/lang/String;
    .end local v28    # "descriptor":Ljava/lang/String;
    .local v11, "descriptor":Ljava/lang/String;
    :pswitch_40
    move-object/from16 v28, v11

    move-object v14, v12

    .end local v11    # "descriptor":Ljava/lang/String;
    .restart local v28    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/location/LastLocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LastLocationRequest;

    .line 561
    .local v1, "_arg1":Landroid/location/LastLocationRequest;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 563
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 564
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 565
    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/location/ILocationManager$Stub;->getLastLocation(Ljava/lang/String;Landroid/location/LastLocationRequest;Ljava/lang/String;Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 566
    .local v4, "_result":Landroid/location/Location;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    const/4 v5, 0x1

    invoke-virtual {v14, v4, v5}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 568
    nop

    .line 1267
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/location/LastLocationRequest;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Landroid/location/Location;
    :goto_0
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
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
    .end packed-switch
.end method
