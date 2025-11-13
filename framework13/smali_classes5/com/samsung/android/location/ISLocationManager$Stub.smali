.class public abstract Lcom/samsung/android/location/ISLocationManager$Stub;
.super Landroid/os/Binder;
.source "ISLocationManager.java"

# interfaces
.implements Lcom/samsung/android/location/ISLocationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/location/ISLocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_addGeofence:I = 0x5

.field static final blacklist TRANSACTION_addGeofences:I = 0x14

.field static final blacklist TRANSACTION_flushBatchedLocations:I = 0x1e

.field static final blacklist TRANSACTION_getCellCountForEventGeofence:I = 0xb

.field static final blacklist TRANSACTION_getGeofenceIdList:I = 0x3

.field static final blacklist TRANSACTION_isAvailable:I = 0x2

.field static final blacklist TRANSACTION_notifyAppForeground:I = 0x24

.field static final blacklist TRANSACTION_onGnssStatusChanged:I = 0x20

.field static final blacklist TRANSACTION_onSvStatusChanged:I = 0x1f

.field static final blacklist TRANSACTION_removeBatchedLocations:I = 0x1d

.field static final blacklist TRANSACTION_removeGeofence:I = 0x8

.field static final blacklist TRANSACTION_removeGeofences:I = 0x21

.field static final blacklist TRANSACTION_removeGeofencesPendingIntent:I = 0x22

.field static final blacklist TRANSACTION_removeLocation:I = 0xd

.field static final blacklist TRANSACTION_removePassiveLocation:I = 0x1b

.field static final blacklist TRANSACTION_removeSingleLocation:I = 0xe

.field static final blacklist TRANSACTION_reportGMSPassiveLocation:I = 0x1c

.field static final blacklist TRANSACTION_reportGpsGeofenceAddStatus:I = 0x17

.field static final blacklist TRANSACTION_reportGpsGeofencePauseStatus:I = 0x19

.field static final blacklist TRANSACTION_reportGpsGeofenceRemoveStatus:I = 0x18

.field static final blacklist TRANSACTION_reportGpsGeofenceResumeStatus:I = 0x1a

.field static final blacklist TRANSACTION_reportGpsGeofenceStatus:I = 0x16

.field static final blacklist TRANSACTION_reportGpsGeofenceTransition:I = 0x15

.field static final blacklist TRANSACTION_requestBatchedLocations:I = 0x13

.field static final blacklist TRANSACTION_requestLocation:I = 0x11

.field static final blacklist TRANSACTION_requestLocationToPoi:I = 0xc

.field static final blacklist TRANSACTION_requestMostAccurateLocation:I = 0x10

.field static final blacklist TRANSACTION_requestPassiveLocation:I = 0x12

.field static final blacklist TRANSACTION_requestSingleLocation:I = 0xf

.field static final blacklist TRANSACTION_setGeopointWifiBssid:I = 0x25

.field static final blacklist TRANSACTION_setGpsGeofenceHardware:I = 0x1

.field static final blacklist TRANSACTION_setSLocationLMSHook:I = 0x23

.field static final blacklist TRANSACTION_startGeofence:I = 0x6

.field static final blacklist TRANSACTION_startLearning:I = 0x9

.field static final blacklist TRANSACTION_stopGeofence:I = 0x7

.field static final blacklist TRANSACTION_stopLearning:I = 0xa

.field static final blacklist TRANSACTION_syncGeofence:I = 0x4


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 158
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 159
    const-string v0, "com.samsung.android.location.ISLocationManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x0

    return-object v0

    .line 170
    :cond_0
    const-string v0, "com.samsung.android.location.ISLocationManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 171
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/location/ISLocationManager;

    if-eqz v1, :cond_1

    .line 172
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/location/ISLocationManager;

    return-object v1

    .line 174
    :cond_1
    new-instance v1, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/location/ISLocationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 183
    packed-switch p0, :pswitch_data_0

    .line 335
    const/4 v0, 0x0

    return-object v0

    .line 331
    :pswitch_0
    const-string/jumbo v0, "setGeopointWifiBssid"

    return-object v0

    .line 327
    :pswitch_1
    const-string v0, "notifyAppForeground"

    return-object v0

    .line 323
    :pswitch_2
    const-string/jumbo v0, "setSLocationLMSHook"

    return-object v0

    .line 319
    :pswitch_3
    const-string/jumbo v0, "removeGeofencesPendingIntent"

    return-object v0

    .line 315
    :pswitch_4
    const-string/jumbo v0, "removeGeofences"

    return-object v0

    .line 311
    :pswitch_5
    const-string v0, "onGnssStatusChanged"

    return-object v0

    .line 307
    :pswitch_6
    const-string v0, "onSvStatusChanged"

    return-object v0

    .line 303
    :pswitch_7
    const-string v0, "flushBatchedLocations"

    return-object v0

    .line 299
    :pswitch_8
    const-string/jumbo v0, "removeBatchedLocations"

    return-object v0

    .line 295
    :pswitch_9
    const-string/jumbo v0, "reportGMSPassiveLocation"

    return-object v0

    .line 291
    :pswitch_a
    const-string/jumbo v0, "removePassiveLocation"

    return-object v0

    .line 287
    :pswitch_b
    const-string/jumbo v0, "reportGpsGeofenceResumeStatus"

    return-object v0

    .line 283
    :pswitch_c
    const-string/jumbo v0, "reportGpsGeofencePauseStatus"

    return-object v0

    .line 279
    :pswitch_d
    const-string/jumbo v0, "reportGpsGeofenceRemoveStatus"

    return-object v0

    .line 275
    :pswitch_e
    const-string/jumbo v0, "reportGpsGeofenceAddStatus"

    return-object v0

    .line 271
    :pswitch_f
    const-string/jumbo v0, "reportGpsGeofenceStatus"

    return-object v0

    .line 267
    :pswitch_10
    const-string/jumbo v0, "reportGpsGeofenceTransition"

    return-object v0

    .line 263
    :pswitch_11
    const-string v0, "addGeofences"

    return-object v0

    .line 259
    :pswitch_12
    const-string/jumbo v0, "requestBatchedLocations"

    return-object v0

    .line 255
    :pswitch_13
    const-string/jumbo v0, "requestPassiveLocation"

    return-object v0

    .line 251
    :pswitch_14
    const-string/jumbo v0, "requestLocation"

    return-object v0

    .line 247
    :pswitch_15
    const-string/jumbo v0, "requestMostAccurateLocation"

    return-object v0

    .line 243
    :pswitch_16
    const-string/jumbo v0, "requestSingleLocation"

    return-object v0

    .line 239
    :pswitch_17
    const-string/jumbo v0, "removeSingleLocation"

    return-object v0

    .line 235
    :pswitch_18
    const-string/jumbo v0, "removeLocation"

    return-object v0

    .line 231
    :pswitch_19
    const-string/jumbo v0, "requestLocationToPoi"

    return-object v0

    .line 227
    :pswitch_1a
    const-string v0, "getCellCountForEventGeofence"

    return-object v0

    .line 223
    :pswitch_1b
    const-string/jumbo v0, "stopLearning"

    return-object v0

    .line 219
    :pswitch_1c
    const-string/jumbo v0, "startLearning"

    return-object v0

    .line 215
    :pswitch_1d
    const-string/jumbo v0, "removeGeofence"

    return-object v0

    .line 211
    :pswitch_1e
    const-string/jumbo v0, "stopGeofence"

    return-object v0

    .line 207
    :pswitch_1f
    const-string/jumbo v0, "startGeofence"

    return-object v0

    .line 203
    :pswitch_20
    const-string v0, "addGeofence"

    return-object v0

    .line 199
    :pswitch_21
    const-string/jumbo v0, "syncGeofence"

    return-object v0

    .line 195
    :pswitch_22
    const-string v0, "getGeofenceIdList"

    return-object v0

    .line 191
    :pswitch_23
    const-string v0, "isAvailable"

    return-object v0

    .line 187
    :pswitch_24
    const-string/jumbo v0, "setGpsGeofenceHardware"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 178
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 1554
    const/16 v0, 0x24

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 342
    invoke-static {p1}, Lcom/samsung/android/location/ISLocationManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 21
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    move-object/from16 v8, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "com.samsung.android.location.ISLocationManager"

    .line 347
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v13, 0x1

    if-lt v9, v13, :cond_0

    const v0, 0xffffff

    if-gt v9, v0, :cond_0

    .line 348
    invoke-virtual {v10, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    :cond_0
    packed-switch v9, :pswitch_data_0

    .line 358
    packed-switch v9, :pswitch_data_1

    .line 820
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 354
    :pswitch_0
    invoke-virtual {v11, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 355
    return v13

    .line 805
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 809
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 812
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGeopointWifiBssid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 814
    .local v4, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 815
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 816
    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 796
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 797
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->notifyAppForeground(IZ)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    goto/16 :goto_0

    .line 785
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationLMSHook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationLMSHook;

    move-result-object v0

    .line 786
    .local v0, "_arg0":Lcom/samsung/android/location/ISLocationLMSHook;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 787
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->setSLocationLMSHook(Lcom/samsung/android/location/ISLocationLMSHook;)V

    .line 788
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 789
    goto/16 :goto_0

    .line 775
    .end local v0    # "_arg0":Lcom/samsung/android/location/ISLocationLMSHook;
    :pswitch_4
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 776
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 777
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofencesPendingIntent(Landroid/app/PendingIntent;)I

    move-result v1

    .line 778
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 779
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 780
    goto/16 :goto_0

    .line 765
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_result":I
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 766
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 767
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofences(Ljava/util/List;)I

    move-result v1

    .line 768
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 769
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 770
    goto/16 :goto_0

    .line 756
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "_result":I
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 757
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 758
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->onGnssStatusChanged(Z)V

    .line 759
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 760
    goto/16 :goto_0

    .line 735
    .end local v0    # "_arg0":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 737
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v15

    .line 739
    .local v15, "_arg1":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v16

    .line 741
    .local v16, "_arg2":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v17

    .line 743
    .local v17, "_arg3":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v18

    .line 745
    .local v18, "_arg4":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v19

    .line 747
    .local v19, "_arg5":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v20

    .line 748
    .local v20, "_arg6":[F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->onSvStatusChanged(I[I[F[F[F[F[F)V

    .line 750
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 751
    goto/16 :goto_0

    .line 728
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":[I
    .end local v16    # "_arg2":[F
    .end local v17    # "_arg3":[F
    .end local v18    # "_arg4":[F
    .end local v19    # "_arg5":[F
    .end local v20    # "_arg6":[F
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/location/ISLocationManager$Stub;->flushBatchedLocations()V

    .line 729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 730
    goto/16 :goto_0

    .line 717
    :pswitch_9
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 719
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationBatchingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationBatchingListener;

    move-result-object v1

    .line 720
    .local v1, "_arg1":Lcom/samsung/android/location/ISLocationBatchingListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeBatchedLocations(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;)I

    move-result v2

    .line 722
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 724
    goto/16 :goto_0

    .line 708
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Lcom/samsung/android/location/ISLocationBatchingListener;
    .end local v2    # "_result":I
    :pswitch_a
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 709
    .local v0, "_arg0":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 710
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGMSPassiveLocation(Landroid/location/Location;)V

    .line 711
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 712
    goto/16 :goto_0

    .line 697
    .end local v0    # "_arg0":Landroid/location/Location;
    :pswitch_b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 699
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    .line 700
    .local v1, "_arg1":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 701
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removePassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)V

    .line 702
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 703
    goto/16 :goto_0

    .line 686
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 688
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 689
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 690
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceResumeStatus(II)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    goto/16 :goto_0

    .line 675
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 677
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 679
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofencePauseStatus(II)V

    .line 680
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 681
    goto/16 :goto_0

    .line 664
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 666
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 667
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceRemoveStatus(II)V

    .line 669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 670
    goto/16 :goto_0

    .line 653
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 655
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 656
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceAddStatus(II)V

    .line 658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    goto/16 :goto_0

    .line 642
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 644
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/Location;

    .line 645
    .local v1, "_arg1":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceStatus(ILandroid/location/Location;)V

    .line 647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 648
    goto/16 :goto_0

    .line 627
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/location/Location;
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 629
    .local v6, "_arg0":I
    sget-object v0, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/location/Location;

    .line 631
    .local v7, "_arg1":Landroid/location/Location;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 633
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v15

    .line 634
    .local v15, "_arg3":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 635
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v7

    move v3, v14

    move-wide v4, v15

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager$Stub;->reportGpsGeofenceTransition(ILandroid/location/Location;IJ)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    goto/16 :goto_0

    .line 611
    .end local v6    # "_arg0":I
    .end local v7    # "_arg1":Landroid/location/Location;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":J
    :pswitch_12
    sget-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 613
    .local v0, "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 615
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 617
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 618
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 619
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 620
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 621
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 622
    goto/16 :goto_0

    .line 593
    .end local v0    # "_arg0":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/location/SemGeofence;>;"
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_13
    sget-object v0, Lcom/samsung/android/location/SemLocationBatchingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/samsung/android/location/SemLocationBatchingRequest;

    .line 595
    .local v6, "_arg0":Lcom/samsung/android/location/SemLocationBatchingRequest;
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/PendingIntent;

    .line 597
    .local v7, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationBatchingListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationBatchingListener;

    move-result-object v14

    .line 599
    .local v14, "_arg2":Lcom/samsung/android/location/ISLocationBatchingListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 601
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 602
    .local v16, "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 603
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestBatchedLocations(Lcom/samsung/android/location/SemLocationBatchingRequest;Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationBatchingListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 604
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 605
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    goto/16 :goto_0

    .line 578
    .end local v0    # "_result":I
    .end local v6    # "_arg0":Lcom/samsung/android/location/SemLocationBatchingRequest;
    .end local v7    # "_arg1":Landroid/app/PendingIntent;
    .end local v14    # "_arg2":Lcom/samsung/android/location/ISLocationBatchingListener;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":Ljava/lang/String;
    :pswitch_14
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 580
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    .line 582
    .local v1, "_arg1":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 584
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 586
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestPassiveLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 588
    goto/16 :goto_0

    .line 562
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 564
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    .line 566
    .restart local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 568
    .restart local v2    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 569
    .restart local v3    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocation(ZLcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 571
    .restart local v4    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 572
    invoke-virtual {v11, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 573
    goto/16 :goto_0

    .line 540
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":I
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 542
    .local v14, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 544
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 546
    .local v16, "_arg2":I
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/PendingIntent;

    .line 548
    .local v17, "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v18

    .line 550
    .local v18, "_arg4":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 552
    .local v19, "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 553
    .local v20, "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 554
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestMostAccurateLocation(IIILandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 555
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    goto/16 :goto_0

    .line 518
    .end local v0    # "_result":I
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":I
    .end local v17    # "_arg3":Landroid/app/PendingIntent;
    .end local v18    # "_arg4":Lcom/samsung/android/location/ISLocationListener;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 520
    .restart local v14    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 522
    .restart local v15    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 524
    .local v16, "_arg2":Z
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/app/PendingIntent;

    .line 526
    .restart local v17    # "_arg3":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v18

    .line 528
    .restart local v18    # "_arg4":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 530
    .restart local v19    # "_arg5":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .line 531
    .restart local v20    # "_arg6":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestSingleLocation(IIZLandroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 533
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 534
    invoke-virtual {v11, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 535
    goto/16 :goto_0

    .line 506
    .end local v0    # "_result":I
    .end local v14    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Landroid/app/PendingIntent;
    .end local v18    # "_arg4":Lcom/samsung/android/location/ISLocationListener;
    .end local v19    # "_arg5":Ljava/lang/String;
    .end local v20    # "_arg6":Ljava/lang/String;
    :pswitch_18
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    .line 508
    .local v0, "_arg0":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v1

    .line 509
    .restart local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 510
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeSingleLocation(Landroid/app/PendingIntent;Lcom/samsung/android/location/ISLocationListener;)I

    move-result v2

    .line 511
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 512
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    goto/16 :goto_0

    .line 496
    .end local v0    # "_arg0":Landroid/app/PendingIntent;
    .end local v1    # "_arg1":Lcom/samsung/android/location/ISLocationListener;
    .end local v2    # "_result":I
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/location/ISLocationListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/location/ISLocationListener;

    move-result-object v0

    .line 497
    .local v0, "_arg0":Lcom/samsung/android/location/ISLocationListener;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeLocation(Lcom/samsung/android/location/ISLocationListener;)I

    move-result v1

    .line 499
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 501
    goto/16 :goto_0

    .line 482
    .end local v0    # "_arg0":Lcom/samsung/android/location/ISLocationListener;
    .end local v1    # "_result":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    .line 484
    .local v0, "_arg0":[D
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v1

    .line 486
    .local v1, "_arg1":[D
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    .line 487
    .local v2, "_arg2":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 488
    invoke-virtual {v8, v0, v1, v2}, Lcom/samsung/android/location/ISLocationManager$Stub;->requestLocationToPoi([D[DLandroid/app/PendingIntent;)I

    move-result v3

    .line 489
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {v11, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 491
    goto/16 :goto_0

    .line 472
    .end local v0    # "_arg0":[D
    .end local v1    # "_arg1":[D
    .end local v2    # "_arg2":Landroid/app/PendingIntent;
    .end local v3    # "_result":I
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 473
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->getCellCountForEventGeofence(I)I

    move-result v1

    .line 475
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 476
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 477
    goto/16 :goto_0

    .line 462
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 463
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 464
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopLearning(I)I

    move-result v1

    .line 465
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 466
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 467
    goto/16 :goto_0

    .line 452
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 453
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->startLearning(I)I

    move-result v1

    .line 455
    .restart local v1    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 456
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    goto/16 :goto_0

    .line 440
    .end local v0    # "_arg0":I
    .end local v1    # "_result":I
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 442
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 443
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->removeGeofence(ILjava/lang/String;)I

    move-result v2

    .line 445
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    goto/16 :goto_0

    .line 428
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 430
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 431
    .local v1, "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 432
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->stopGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    .line 433
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 434
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    goto/16 :goto_0

    .line 416
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_result":I
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 418
    .restart local v0    # "_arg0":I
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 419
    .restart local v1    # "_arg1":Landroid/app/PendingIntent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 420
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->startGeofence(ILandroid/app/PendingIntent;)I

    move-result v2

    .line 421
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 423
    goto :goto_0

    .line 404
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/app/PendingIntent;
    .end local v2    # "_result":I
    :pswitch_21
    sget-object v0, Lcom/samsung/android/location/SemGeofence;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v10, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemGeofence;

    .line 406
    .local v0, "_arg0":Lcom/samsung/android/location/SemGeofence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->addGeofence(Lcom/samsung/android/location/SemGeofence;Ljava/lang/String;)I

    move-result v2

    .line 409
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    goto :goto_0

    .line 392
    .end local v0    # "_arg0":Lcom/samsung/android/location/SemGeofence;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 394
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 395
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 396
    invoke-virtual {v8, v0, v1}, Lcom/samsung/android/location/ISLocationManager$Stub;->syncGeofence([ILjava/lang/String;)I

    move-result v2

    .line 397
    .restart local v2    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 398
    invoke-virtual {v11, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 399
    goto :goto_0

    .line 382
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 384
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->getGeofenceIdList(Ljava/lang/String;)[I

    move-result-object v1

    .line 385
    .local v1, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 386
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 387
    goto :goto_0

    .line 372
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":[I
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 373
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->isAvailable(I)Z

    move-result v1

    .line 375
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    invoke-virtual {v11, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 377
    goto :goto_0

    .line 363
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/IGpsGeofenceHardware$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/IGpsGeofenceHardware;

    move-result-object v0

    .line 364
    .local v0, "_arg0":Landroid/location/IGpsGeofenceHardware;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 365
    invoke-virtual {v8, v0}, Lcom/samsung/android/location/ISLocationManager$Stub;->setGpsGeofenceHardware(Landroid/location/IGpsGeofenceHardware;)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    nop

    .line 823
    .end local v0    # "_arg0":Landroid/location/IGpsGeofenceHardware;
    :goto_0
    return v13

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
