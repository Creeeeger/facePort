.class public abstract Landroid/app/IApplicationThread$Stub;
.super Landroid/os/Binder;
.source "IApplicationThread.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IApplicationThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IApplicationThread$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.app.IApplicationThread"

.field static final greylist-max-o TRANSACTION_attachAgent:I = 0x33

.field static final blacklist TRANSACTION_attachStartupAgents:I = 0x34

.field static final greylist-max-o TRANSACTION_bindApplication:I = 0x4

.field static final greylist-max-o TRANSACTION_clearDnsCache:I = 0x1a

.field static final blacklist TRANSACTION_clearIdsTrainingData:I = 0x3f

.field static final greylist-max-o TRANSACTION_dispatchPackageBroadcast:I = 0x15

.field static final greylist-max-o TRANSACTION_dumpActivity:I = 0x18

.field static final blacklist TRANSACTION_dumpCacheInfo:I = 0x23

.field static final greylist-max-o TRANSACTION_dumpDbInfo:I = 0x25

.field static final greylist-max-o TRANSACTION_dumpGfxInfo:I = 0x22

.field static final greylist-max-o TRANSACTION_dumpHeap:I = 0x17

.field static final greylist-max-o TRANSACTION_dumpMemInfo:I = 0x20

.field static final greylist-max-o TRANSACTION_dumpMemInfoProto:I = 0x21

.field static final greylist-max-o TRANSACTION_dumpProvider:I = 0x24

.field static final blacklist TRANSACTION_dumpResources:I = 0x19

.field static final greylist-max-o TRANSACTION_dumpService:I = 0xc

.field static final blacklist TRANSACTION_forceGc:I = 0x3d

.field static final blacklist TRANSACTION_getProfileLength:I = 0x3e

.field static final greylist-max-o TRANSACTION_handleTrustStorageUpdate:I = 0x32

.field static final blacklist TRANSACTION_instrumentWithoutRestart:I = 0x3b

.field static final greylist-max-o TRANSACTION_notifyCleartextNetwork:I = 0x2d

.field static final blacklist TRANSACTION_notifyContentProviderPublishStatus:I = 0x3a

.field static final blacklist TRANSACTION_performDirectAction:I = 0x39

.field static final greylist-max-o TRANSACTION_processInBackground:I = 0x9

.field static final greylist-max-o TRANSACTION_profilerControl:I = 0xf

.field static final greylist-max-o TRANSACTION_requestAssistContextExtras:I = 0x27

.field static final blacklist TRANSACTION_requestDirectActions:I = 0x38

.field static final greylist-max-o TRANSACTION_runIsolatedEntryPoint:I = 0x5

.field static final greylist-max-o TRANSACTION_scheduleApplicationInfoChanged:I = 0x35

.field static final greylist-max-o TRANSACTION_scheduleBindService:I = 0xa

.field static final greylist-max-o TRANSACTION_scheduleCrash:I = 0x16

.field static final greylist-max-o TRANSACTION_scheduleCreateBackupAgent:I = 0x11

.field static final greylist-max-o TRANSACTION_scheduleCreateService:I = 0x2

.field static final greylist-max-o TRANSACTION_scheduleDestroyBackupAgent:I = 0x12

.field static final greylist-max-o TRANSACTION_scheduleEnterAnimationComplete:I = 0x2c

.field static final greylist-max-o TRANSACTION_scheduleExit:I = 0x6

.field static final greylist-max-o TRANSACTION_scheduleInstallProvider:I = 0x2a

.field static final greylist-max-o TRANSACTION_scheduleLocalVoiceInteractionStarted:I = 0x31

.field static final greylist-max-o TRANSACTION_scheduleLowMemory:I = 0xe

.field static final greylist-max-o TRANSACTION_scheduleOnNewActivityOptions:I = 0x13

.field static final greylist-max-o TRANSACTION_scheduleReceiver:I = 0x1

.field static final greylist-max-o TRANSACTION_scheduleRegisteredReceiver:I = 0xd

.field static final greylist-max-o TRANSACTION_scheduleServiceArgs:I = 0x7

.field static final greylist-max-o TRANSACTION_scheduleStopService:I = 0x3

.field static final greylist-max-o TRANSACTION_scheduleSuicide:I = 0x14

.field static final greylist-max-o TRANSACTION_scheduleTransaction:I = 0x37

.field static final greylist-max-o TRANSACTION_scheduleTranslucentConversionComplete:I = 0x28

.field static final greylist-max-o TRANSACTION_scheduleTrimMemory:I = 0x1f

.field static final greylist-max-o TRANSACTION_scheduleUnbindService:I = 0xb

.field static final greylist-max-o TRANSACTION_setCoreSettings:I = 0x1d

.field static final blacklist TRANSACTION_setHttpProxyInfo:I = 0x1c

.field static final greylist-max-o TRANSACTION_setNetworkBlockSeq:I = 0x36

.field static final greylist-max-o TRANSACTION_setProcessState:I = 0x29

.field static final greylist-max-o TRANSACTION_setSchedulingGroup:I = 0x10

.field static final greylist-max-o TRANSACTION_startBinderTracking:I = 0x2e

.field static final greylist-max-o TRANSACTION_stopBinderTrackingAndDump:I = 0x2f

.field static final blacklist TRANSACTION_stopBinderTrackingAndDumpSystemServer:I = 0x30

.field static final greylist-max-o TRANSACTION_unstableProviderDied:I = 0x26

.field static final blacklist TRANSACTION_updateHttpProxy:I = 0x1b

.field static final greylist-max-o TRANSACTION_updatePackageCompatibilityInfo:I = 0x1e

.field static final greylist-max-o TRANSACTION_updateTimePrefs:I = 0x2b

.field static final greylist-max-o TRANSACTION_updateTimeZone:I = 0x8

.field static final blacklist TRANSACTION_updateUiTranslationState:I = 0x3c


# direct methods
.method public constructor greylist-max-o <init>()V
    .locals 1

    .line 226
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 227
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/IApplicationThread$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static greylist-max-o asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 235
    if-nez p0, :cond_0

    .line 236
    const/4 v0, 0x0

    return-object v0

    .line 238
    :cond_0
    const-string v0, "android.app.IApplicationThread"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 239
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    .line 240
    move-object v1, v0

    check-cast v1, Landroid/app/IApplicationThread;

    return-object v1

    .line 242
    :cond_1
    new-instance v1, Landroid/app/IApplicationThread$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IApplicationThread$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 251
    packed-switch p0, :pswitch_data_0

    .line 507
    const/4 v0, 0x0

    return-object v0

    .line 503
    :pswitch_0
    const-string v0, "clearIdsTrainingData"

    return-object v0

    .line 499
    :pswitch_1
    const-string v0, "getProfileLength"

    return-object v0

    .line 495
    :pswitch_2
    const-string v0, "forceGc"

    return-object v0

    .line 491
    :pswitch_3
    const-string/jumbo v0, "updateUiTranslationState"

    return-object v0

    .line 487
    :pswitch_4
    const-string v0, "instrumentWithoutRestart"

    return-object v0

    .line 483
    :pswitch_5
    const-string/jumbo v0, "notifyContentProviderPublishStatus"

    return-object v0

    .line 479
    :pswitch_6
    const-string/jumbo v0, "performDirectAction"

    return-object v0

    .line 475
    :pswitch_7
    const-string/jumbo v0, "requestDirectActions"

    return-object v0

    .line 471
    :pswitch_8
    const-string/jumbo v0, "scheduleTransaction"

    return-object v0

    .line 467
    :pswitch_9
    const-string/jumbo v0, "setNetworkBlockSeq"

    return-object v0

    .line 463
    :pswitch_a
    const-string/jumbo v0, "scheduleApplicationInfoChanged"

    return-object v0

    .line 459
    :pswitch_b
    const-string v0, "attachStartupAgents"

    return-object v0

    .line 455
    :pswitch_c
    const-string v0, "attachAgent"

    return-object v0

    .line 451
    :pswitch_d
    const-string v0, "handleTrustStorageUpdate"

    return-object v0

    .line 447
    :pswitch_e
    const-string/jumbo v0, "scheduleLocalVoiceInteractionStarted"

    return-object v0

    .line 443
    :pswitch_f
    const-string/jumbo v0, "stopBinderTrackingAndDumpSystemServer"

    return-object v0

    .line 439
    :pswitch_10
    const-string/jumbo v0, "stopBinderTrackingAndDump"

    return-object v0

    .line 435
    :pswitch_11
    const-string/jumbo v0, "startBinderTracking"

    return-object v0

    .line 431
    :pswitch_12
    const-string/jumbo v0, "notifyCleartextNetwork"

    return-object v0

    .line 427
    :pswitch_13
    const-string/jumbo v0, "scheduleEnterAnimationComplete"

    return-object v0

    .line 423
    :pswitch_14
    const-string/jumbo v0, "updateTimePrefs"

    return-object v0

    .line 419
    :pswitch_15
    const-string/jumbo v0, "scheduleInstallProvider"

    return-object v0

    .line 415
    :pswitch_16
    const-string/jumbo v0, "setProcessState"

    return-object v0

    .line 411
    :pswitch_17
    const-string/jumbo v0, "scheduleTranslucentConversionComplete"

    return-object v0

    .line 407
    :pswitch_18
    const-string/jumbo v0, "requestAssistContextExtras"

    return-object v0

    .line 403
    :pswitch_19
    const-string/jumbo v0, "unstableProviderDied"

    return-object v0

    .line 399
    :pswitch_1a
    const-string v0, "dumpDbInfo"

    return-object v0

    .line 395
    :pswitch_1b
    const-string v0, "dumpProvider"

    return-object v0

    .line 391
    :pswitch_1c
    const-string v0, "dumpCacheInfo"

    return-object v0

    .line 387
    :pswitch_1d
    const-string v0, "dumpGfxInfo"

    return-object v0

    .line 383
    :pswitch_1e
    const-string v0, "dumpMemInfoProto"

    return-object v0

    .line 379
    :pswitch_1f
    const-string v0, "dumpMemInfo"

    return-object v0

    .line 375
    :pswitch_20
    const-string/jumbo v0, "scheduleTrimMemory"

    return-object v0

    .line 371
    :pswitch_21
    const-string/jumbo v0, "updatePackageCompatibilityInfo"

    return-object v0

    .line 367
    :pswitch_22
    const-string/jumbo v0, "setCoreSettings"

    return-object v0

    .line 363
    :pswitch_23
    const-string/jumbo v0, "setHttpProxyInfo"

    return-object v0

    .line 359
    :pswitch_24
    const-string/jumbo v0, "updateHttpProxy"

    return-object v0

    .line 355
    :pswitch_25
    const-string v0, "clearDnsCache"

    return-object v0

    .line 351
    :pswitch_26
    const-string v0, "dumpResources"

    return-object v0

    .line 347
    :pswitch_27
    const-string v0, "dumpActivity"

    return-object v0

    .line 343
    :pswitch_28
    const-string v0, "dumpHeap"

    return-object v0

    .line 339
    :pswitch_29
    const-string/jumbo v0, "scheduleCrash"

    return-object v0

    .line 335
    :pswitch_2a
    const-string v0, "dispatchPackageBroadcast"

    return-object v0

    .line 331
    :pswitch_2b
    const-string/jumbo v0, "scheduleSuicide"

    return-object v0

    .line 327
    :pswitch_2c
    const-string/jumbo v0, "scheduleOnNewActivityOptions"

    return-object v0

    .line 323
    :pswitch_2d
    const-string/jumbo v0, "scheduleDestroyBackupAgent"

    return-object v0

    .line 319
    :pswitch_2e
    const-string/jumbo v0, "scheduleCreateBackupAgent"

    return-object v0

    .line 315
    :pswitch_2f
    const-string/jumbo v0, "setSchedulingGroup"

    return-object v0

    .line 311
    :pswitch_30
    const-string/jumbo v0, "profilerControl"

    return-object v0

    .line 307
    :pswitch_31
    const-string/jumbo v0, "scheduleLowMemory"

    return-object v0

    .line 303
    :pswitch_32
    const-string/jumbo v0, "scheduleRegisteredReceiver"

    return-object v0

    .line 299
    :pswitch_33
    const-string v0, "dumpService"

    return-object v0

    .line 295
    :pswitch_34
    const-string/jumbo v0, "scheduleUnbindService"

    return-object v0

    .line 291
    :pswitch_35
    const-string/jumbo v0, "scheduleBindService"

    return-object v0

    .line 287
    :pswitch_36
    const-string/jumbo v0, "processInBackground"

    return-object v0

    .line 283
    :pswitch_37
    const-string/jumbo v0, "updateTimeZone"

    return-object v0

    .line 279
    :pswitch_38
    const-string/jumbo v0, "scheduleServiceArgs"

    return-object v0

    .line 275
    :pswitch_39
    const-string/jumbo v0, "scheduleExit"

    return-object v0

    .line 271
    :pswitch_3a
    const-string/jumbo v0, "runIsolatedEntryPoint"

    return-object v0

    .line 267
    :pswitch_3b
    const-string v0, "bindApplication"

    return-object v0

    .line 263
    :pswitch_3c
    const-string/jumbo v0, "scheduleStopService"

    return-object v0

    .line 259
    :pswitch_3d
    const-string/jumbo v0, "scheduleCreateService"

    return-object v0

    .line 255
    :pswitch_3e
    const-string/jumbo v0, "scheduleReceiver"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 246
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2224
    const/16 v0, 0x3e

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 514
    invoke-static {p1}, Landroid/app/IApplicationThread$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 67
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-object/from16 v13, p2

    const-string v12, "android.app.IApplicationThread"

    .line 519
    .local v12, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v14, v11, :cond_0

    const v0, 0xffffff

    if-gt v14, v0, :cond_0

    .line 520
    invoke-virtual {v13, v12}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 522
    :cond_0
    packed-switch v14, :pswitch_data_0

    .line 530
    move-object/from16 v10, p3

    packed-switch v14, :pswitch_data_1

    .line 1257
    move-object v11, v13

    move-object v10, v15

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 526
    :pswitch_0
    move-object/from16 v10, p3

    invoke-virtual {v10, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 527
    return v11

    .line 1250
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1251
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1252
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->clearIdsTrainingData(Z)V

    .line 1253
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1242
    .end local v0    # "_arg0":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1244
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->getProfileLength(Ljava/lang/String;)V

    .line 1245
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1236
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->forceGc()V

    .line 1237
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1219
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1221
    .local v7, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1223
    .local v8, "_arg1":I
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/view/translation/TranslationSpec;

    .line 1225
    .local v9, "_arg2":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/translation/TranslationSpec;

    .line 1227
    .local v16, "_arg3":Landroid/view/translation/TranslationSpec;
    sget-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1229
    .local v17, "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    sget-object v0, Landroid/view/translation/UiTranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/view/translation/UiTranslationSpec;

    .line 1230
    .local v18, "_arg5":Landroid/view/translation/UiTranslationSpec;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1231
    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->updateUiTranslationState(Landroid/os/IBinder;ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;Ljava/util/List;Landroid/view/translation/UiTranslationSpec;)V

    .line 1232
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1203
    .end local v7    # "_arg0":Landroid/os/IBinder;
    .end local v8    # "_arg1":I
    .end local v9    # "_arg2":Landroid/view/translation/TranslationSpec;
    .end local v16    # "_arg3":Landroid/view/translation/TranslationSpec;
    .end local v17    # "_arg4":Ljava/util/List;, "Ljava/util/List<Landroid/view/autofill/AutofillId;>;"
    .end local v18    # "_arg5":Landroid/view/translation/UiTranslationSpec;
    :pswitch_5
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/ComponentName;

    .line 1205
    .local v6, "_arg0":Landroid/content/ComponentName;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/os/Bundle;

    .line 1207
    .local v7, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v8

    .line 1209
    .local v8, "_arg2":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v9

    .line 1211
    .local v9, "_arg3":Landroid/app/IUiAutomationConnection;
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/content/pm/ApplicationInfo;

    .line 1212
    .local v16, "_arg4":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1213
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->instrumentWithoutRestart(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;Landroid/content/pm/ApplicationInfo;)V

    .line 1214
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1189
    .end local v6    # "_arg0":Landroid/content/ComponentName;
    .end local v7    # "_arg1":Landroid/os/Bundle;
    .end local v8    # "_arg2":Landroid/app/IInstrumentationWatcher;
    .end local v9    # "_arg3":Landroid/app/IUiAutomationConnection;
    .end local v16    # "_arg4":Landroid/content/pm/ApplicationInfo;
    :pswitch_6
    sget-object v0, Landroid/app/ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ContentProviderHolder;

    .line 1191
    .local v0, "_arg0":Landroid/app/ContentProviderHolder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1195
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v3

    .line 1196
    .local v3, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1197
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->notifyContentProviderPublishStatus(Landroid/app/ContentProviderHolder;Ljava/lang/String;IZ)V

    .line 1198
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1173
    .end local v0    # "_arg0":Landroid/app/ContentProviderHolder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Z
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1175
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1177
    .local v7, "_arg1":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Bundle;

    .line 1179
    .local v8, "_arg2":Landroid/os/Bundle;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/RemoteCallback;

    .line 1181
    .local v9, "_arg3":Landroid/os/RemoteCallback;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/RemoteCallback;

    .line 1182
    .local v16, "_arg4":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1183
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->performDirectAction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1184
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1159
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Landroid/os/Bundle;
    .end local v9    # "_arg3":Landroid/os/RemoteCallback;
    .end local v16    # "_arg4":Landroid/os/RemoteCallback;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1161
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1163
    .local v1, "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    sget-object v2, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallback;

    .line 1165
    .local v2, "_arg2":Landroid/os/RemoteCallback;
    sget-object v3, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallback;

    .line 1166
    .local v3, "_arg3":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1167
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->requestDirectActions(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;Landroid/os/RemoteCallback;Landroid/os/RemoteCallback;)V

    .line 1168
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1151
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    .end local v2    # "_arg2":Landroid/os/RemoteCallback;
    .end local v3    # "_arg3":Landroid/os/RemoteCallback;
    :pswitch_9
    sget-object v0, Landroid/app/servertransaction/ClientTransaction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/servertransaction/ClientTransaction;

    .line 1152
    .local v0, "_arg0":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1153
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1154
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1143
    .end local v0    # "_arg0":Landroid/app/servertransaction/ClientTransaction;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 1144
    .local v0, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1145
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->setNetworkBlockSeq(J)V

    .line 1146
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1135
    .end local v0    # "_arg0":J
    :pswitch_b
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1136
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1137
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 1138
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1127
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1129
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachStartupAgents(Ljava/lang/String;)V

    .line 1130
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1119
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1120
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1121
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->attachAgent(Ljava/lang/String;)V

    .line 1122
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1113
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->handleTrustStorageUpdate()V

    .line 1114
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1104
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1106
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v1

    .line 1107
    .restart local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1108
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 1109
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1088
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_10
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    .line 1090
    .local v6, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 1092
    .restart local v7    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1094
    .local v8, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1096
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1097
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1098
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDumpSystemServer(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1099
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1080
    .end local v6    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v7    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":Ljava/lang/String;
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_11
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 1081
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1082
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V

    .line 1083
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1074
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->startBinderTracking()V

    .line 1075
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1067
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 1068
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1069
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->notifyCleartextNetwork([B)V

    .line 1070
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1059
    .end local v0    # "_arg0":[B
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1060
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 1062
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1051
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1052
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1053
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->updateTimePrefs(I)V

    .line 1054
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1043
    .end local v0    # "_arg0":I
    :pswitch_16
    sget-object v0, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ProviderInfo;

    .line 1044
    .local v0, "_arg0":Landroid/content/pm/ProviderInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1045
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 1046
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1035
    .end local v0    # "_arg0":Landroid/content/pm/ProviderInfo;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1036
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1037
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setProcessState(I)V

    .line 1038
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1025
    .end local v0    # "_arg0":I
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1027
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1028
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1029
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 1030
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1009
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1011
    .local v6, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1013
    .local v7, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1015
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1017
    .restart local v9    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1018
    .restart local v16    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1019
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 1020
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 1001
    .end local v6    # "_arg0":Landroid/os/IBinder;
    .end local v7    # "_arg1":Landroid/os/IBinder;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1002
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1003
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1004
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 991
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1b
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 993
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 994
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 995
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 996
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 979
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1c
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 981
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 983
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 984
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 985
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 986
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 969
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_1d
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 971
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 972
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpCacheInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 974
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 959
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1e
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 961
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 962
    .restart local v1    # "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 963
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 964
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 939
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1f
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/ParcelFileDescriptor;

    .line 941
    .local v8, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/Debug$MemoryInfo;

    .line 943
    .local v9, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v16

    .line 945
    .local v16, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 947
    .local v17, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 949
    .local v18, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 951
    .local v19, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v20

    .line 952
    .local v20, "_arg6":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 953
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    move-object/from16 v7, v20

    invoke-virtual/range {v0 .. v7}, Landroid/app/IApplicationThread$Stub;->dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V

    .line 954
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 917
    .end local v8    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v9    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v16    # "_arg2":Z
    .end local v17    # "_arg3":Z
    .end local v18    # "_arg4":Z
    .end local v19    # "_arg5":Z
    .end local v20    # "_arg6":[Ljava/lang/String;
    :pswitch_20
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/os/ParcelFileDescriptor;

    .line 919
    .local v9, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/os/Debug$MemoryInfo;

    .line 921
    .local v16, "_arg1":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v17

    .line 923
    .local v17, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 925
    .local v18, "_arg3":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v19

    .line 927
    .local v19, "_arg4":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v20

    .line 929
    .local v20, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 931
    .local v21, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v22

    .line 932
    .local v22, "_arg7":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move/from16 v7, v21

    move-object/from16 v8, v22

    invoke-virtual/range {v0 .. v8}, Landroid/app/IApplicationThread$Stub;->dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V

    .line 934
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 909
    .end local v9    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v16    # "_arg1":Landroid/os/Debug$MemoryInfo;
    .end local v17    # "_arg2":Z
    .end local v18    # "_arg3":Z
    .end local v19    # "_arg4":Z
    .end local v20    # "_arg5":Z
    .end local v21    # "_arg6":Z
    .end local v22    # "_arg7":[Ljava/lang/String;
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 910
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 911
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->scheduleTrimMemory(I)V

    .line 912
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 899
    .end local v0    # "_arg0":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 901
    .local v0, "_arg0":Ljava/lang/String;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 902
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 903
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 904
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 891
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    :pswitch_23
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 892
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 893
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setCoreSettings(Landroid/os/Bundle;)V

    .line 894
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 883
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_24
    sget-object v0, Landroid/net/ProxyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ProxyInfo;

    .line 884
    .local v0, "_arg0":Landroid/net/ProxyInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 885
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setHttpProxyInfo(Landroid/net/ProxyInfo;)V

    .line 886
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 877
    .end local v0    # "_arg0":Landroid/net/ProxyInfo;
    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateHttpProxy()V

    .line 878
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 872
    :pswitch_26
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->clearDnsCache()V

    .line 873
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 863
    :pswitch_27
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 865
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    sget-object v1, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 866
    .local v1, "_arg1":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dumpResources(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 868
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 849
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/RemoteCallback;
    :pswitch_28
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 851
    .restart local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 853
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 855
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v3

    .line 856
    .local v3, "_arg3":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 858
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 831
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":[Ljava/lang/String;
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v7

    .line 833
    .local v7, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v8

    .line 835
    .local v8, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v9

    .line 837
    .local v9, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 839
    .local v16, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/ParcelFileDescriptor;

    .line 841
    .local v17, "_arg4":Landroid/os/ParcelFileDescriptor;
    sget-object v0, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/os/RemoteCallback;

    .line 842
    .local v18, "_arg5":Landroid/os/RemoteCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 843
    move-object/from16 v0, p0

    move v1, v7

    move v2, v8

    move v3, v9

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Landroid/app/IApplicationThread$Stub;->dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V

    .line 844
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 819
    .end local v7    # "_arg0":Z
    .end local v8    # "_arg1":Z
    .end local v9    # "_arg2":Z
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Landroid/os/ParcelFileDescriptor;
    .end local v18    # "_arg5":Landroid/os/RemoteCallback;
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 823
    .local v1, "_arg1":I
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 824
    .local v2, "_arg2":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 825
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 826
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 809
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/os/Bundle;
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 811
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 812
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 813
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 814
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 803
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleSuicide()V

    .line 804
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 794
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 796
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 797
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 798
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 799
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 782
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_2e
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 784
    .local v0, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/CompatibilityInfo;

    .line 786
    .local v1, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 787
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 788
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 789
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 766
    .end local v0    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "_arg2":I
    :pswitch_2f
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 768
    .local v6, "_arg0":Landroid/content/pm/ApplicationInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/res/CompatibilityInfo;

    .line 770
    .local v7, "_arg1":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 772
    .local v8, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 774
    .local v9, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 775
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IApplicationThread$Stub;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;III)V

    .line 777
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 758
    .end local v6    # "_arg0":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "_arg1":Landroid/content/res/CompatibilityInfo;
    .end local v8    # "_arg2":I
    .end local v9    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 759
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 760
    invoke-virtual {v15, v0}, Landroid/app/IApplicationThread$Stub;->setSchedulingGroup(I)V

    .line 761
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 746
    .end local v0    # "_arg0":I
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 748
    .local v0, "_arg0":Z
    sget-object v1, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ProfilerInfo;

    .line 750
    .local v1, "_arg1":Landroid/app/ProfilerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 751
    .restart local v2    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 752
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 753
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/app/ProfilerInfo;
    .end local v2    # "_arg2":I
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleLowMemory()V

    .line 741
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 717
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v16

    .line 719
    .local v16, "_arg0":Landroid/content/IIntentReceiver;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/content/Intent;

    .line 721
    .local v17, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 723
    .local v18, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 725
    .local v19, "_arg3":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Bundle;

    .line 727
    .local v20, "_arg4":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v21

    .line 729
    .local v21, "_arg5":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v22

    .line 731
    .local v22, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .line 733
    .local v23, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 734
    .local v24, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move/from16 v6, v21

    move/from16 v7, v22

    move/from16 v8, v23

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 736
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 705
    .end local v16    # "_arg0":Landroid/content/IIntentReceiver;
    .end local v17    # "_arg1":Landroid/content/Intent;
    .end local v18    # "_arg2":I
    .end local v19    # "_arg3":Ljava/lang/String;
    .end local v20    # "_arg4":Landroid/os/Bundle;
    .end local v21    # "_arg5":Z
    .end local v22    # "_arg6":Z
    .end local v23    # "_arg7":I
    .end local v24    # "_arg8":I
    :pswitch_34
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ParcelFileDescriptor;

    .line 707
    .local v0, "_arg0":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 709
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    .line 710
    .local v2, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v15, v0, v1, v2}, Landroid/app/IApplicationThread$Stub;->dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 712
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 695
    .end local v0    # "_arg0":Landroid/os/ParcelFileDescriptor;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":[Ljava/lang/String;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 697
    .local v0, "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 698
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 699
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 700
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 681
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 683
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 685
    .restart local v1    # "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 687
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 688
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 689
    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 690
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 675
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":I
    :pswitch_37
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->processInBackground()V

    .line 676
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 670
    :pswitch_38
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->updateTimeZone()V

    .line 671
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 661
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 663
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-virtual {v13, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 664
    .local v1, "_arg1":Landroid/content/pm/ParceledListSlice;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 665
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V

    .line 666
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 655
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ParceledListSlice;
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IApplicationThread$Stub;->scheduleExit()V

    .line 656
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 646
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 648
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 650
    invoke-virtual {v15, v0, v1}, Landroid/app/IApplicationThread$Stub;->runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V

    .line 651
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    goto/16 :goto_0

    .line 581
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .local v32, "_arg0":Ljava/lang/String;
    move-object/from16 v1, v32

    .line 583
    sget-object v0, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v33, v0

    check-cast v33, Landroid/content/pm/ApplicationInfo;

    .local v33, "_arg1":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v2, v33

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v34

    .local v34, "_arg2":Ljava/lang/String;
    move-object/from16 v3, v34

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .local v35, "_arg3":Ljava/lang/String;
    move-object/from16 v4, v35

    .line 589
    sget-object v0, Landroid/content/pm/ProviderInfoList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v36, v0

    check-cast v36, Landroid/content/pm/ProviderInfoList;

    .local v36, "_arg4":Landroid/content/pm/ProviderInfoList;
    move-object/from16 v5, v36

    .line 591
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v37, v0

    check-cast v37, Landroid/content/ComponentName;

    .local v37, "_arg5":Landroid/content/ComponentName;
    move-object/from16 v6, v37

    .line 593
    sget-object v0, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v38, v0

    check-cast v38, Landroid/app/ProfilerInfo;

    .local v38, "_arg6":Landroid/app/ProfilerInfo;
    move-object/from16 v7, v38

    .line 595
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v13, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v39, v0

    check-cast v39, Landroid/os/Bundle;

    .local v39, "_arg7":Landroid/os/Bundle;
    move-object/from16 v8, v39

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v40

    .local v40, "_arg8":Landroid/app/IInstrumentationWatcher;
    move-object/from16 v9, v40

    .line 599
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v41

    .local v41, "_arg9":Landroid/app/IUiAutomationConnection;
    move-object/from16 v10, v41

    .line 601
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    move/from16 v43, v11

    .local v42, "_arg10":I
    move/from16 v11, v42

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v44

    move-object/from16 v45, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .local v44, "_arg11":Z
    .local v45, "descriptor":Ljava/lang/String;
    move/from16 v12, v44

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v46

    move-object v0, v13

    .local v46, "_arg12":Z
    move/from16 v13, v46

    .line 607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v47

    .local v47, "_arg13":Z
    move/from16 v14, v47

    .line 609
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v48

    .local v48, "_arg14":Z
    move/from16 v15, v48

    .line 611
    move-object/from16 v49, v1

    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v50, v1

    check-cast v50, Landroid/content/res/Configuration;

    .local v50, "_arg15":Landroid/content/res/Configuration;
    move-object/from16 v16, v50

    .line 613
    sget-object v1, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v51, v1

    check-cast v51, Landroid/content/res/CompatibilityInfo;

    .local v51, "_arg16":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v17, v51

    .line 615
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 616
    .local v1, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v52

    .local v52, "_arg17":Ljava/util/Map;
    move-object/from16 v18, v52

    .line 618
    move-object/from16 v53, v1

    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .local v53, "cl":Ljava/lang/ClassLoader;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v54, v1

    check-cast v54, Landroid/os/Bundle;

    .local v54, "_arg18":Landroid/os/Bundle;
    move-object/from16 v19, v54

    .line 620
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v55

    .local v55, "_arg19":F
    move/from16 v20, v55

    .line 622
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v56

    .local v56, "_arg20":Ljava/lang/String;
    move-object/from16 v21, v56

    .line 624
    sget-object v1, Landroid/content/AutofillOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v57, v1

    check-cast v57, Landroid/content/AutofillOptions;

    .local v57, "_arg21":Landroid/content/AutofillOptions;
    move-object/from16 v22, v57

    .line 626
    sget-object v1, Landroid/content/ContentCaptureOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v58, v1

    check-cast v58, Landroid/content/ContentCaptureOptions;

    .local v58, "_arg22":Landroid/content/ContentCaptureOptions;
    move-object/from16 v23, v58

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v59

    .local v59, "_arg23":[J
    move-object/from16 v24, v59

    .line 630
    sget-object v1, Landroid/os/SharedMemory;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v60, v1

    check-cast v60, Landroid/os/SharedMemory;

    .local v60, "_arg24":Landroid/os/SharedMemory;
    move-object/from16 v25, v60

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v61

    .local v61, "_arg25":J
    move-wide/from16 v26, v61

    .line 634
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v63

    .local v63, "_arg26":J
    move-wide/from16 v28, v63

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v65

    .local v65, "_arg27":I
    move/from16 v30, v65

    .line 638
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v66

    .local v66, "_arg28":Z
    move/from16 v31, v66

    .line 639
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 640
    move-object v1, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v49, v53

    .end local v53    # "cl":Ljava/lang/ClassLoader;
    .local v49, "cl":Ljava/lang/ClassLoader;
    invoke-virtual/range {v0 .. v31}, Landroid/app/IApplicationThread$Stub;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/ProviderInfoList;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;FLjava/lang/String;Landroid/content/AutofillOptions;Landroid/content/ContentCaptureOptions;[JLandroid/os/SharedMemory;JJIZ)V

    .line 641
    move-object/from16 v10, p0

    move-object/from16 v11, p2

    goto/16 :goto_0

    .line 573
    .end local v32    # "_arg0":Ljava/lang/String;
    .end local v33    # "_arg1":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "_arg2":Ljava/lang/String;
    .end local v35    # "_arg3":Ljava/lang/String;
    .end local v36    # "_arg4":Landroid/content/pm/ProviderInfoList;
    .end local v37    # "_arg5":Landroid/content/ComponentName;
    .end local v38    # "_arg6":Landroid/app/ProfilerInfo;
    .end local v39    # "_arg7":Landroid/os/Bundle;
    .end local v40    # "_arg8":Landroid/app/IInstrumentationWatcher;
    .end local v41    # "_arg9":Landroid/app/IUiAutomationConnection;
    .end local v42    # "_arg10":I
    .end local v44    # "_arg11":Z
    .end local v45    # "descriptor":Ljava/lang/String;
    .end local v46    # "_arg12":Z
    .end local v47    # "_arg13":Z
    .end local v48    # "_arg14":Z
    .end local v49    # "cl":Ljava/lang/ClassLoader;
    .end local v50    # "_arg15":Landroid/content/res/Configuration;
    .end local v51    # "_arg16":Landroid/content/res/CompatibilityInfo;
    .end local v52    # "_arg17":Ljava/util/Map;
    .end local v54    # "_arg18":Landroid/os/Bundle;
    .end local v55    # "_arg19":F
    .end local v56    # "_arg20":Ljava/lang/String;
    .end local v57    # "_arg21":Landroid/content/AutofillOptions;
    .end local v58    # "_arg22":Landroid/content/ContentCaptureOptions;
    .end local v59    # "_arg23":[J
    .end local v60    # "_arg24":Landroid/os/SharedMemory;
    .end local v61    # "_arg25":J
    .end local v63    # "_arg26":J
    .end local v65    # "_arg27":I
    .end local v66    # "_arg28":Z
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3d
    move/from16 v43, v11

    move-object/from16 v45, v12

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v45    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 574
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 575
    move-object/from16 v10, p0

    invoke-virtual {v10, v0}, Landroid/app/IApplicationThread$Stub;->scheduleStopService(Landroid/os/IBinder;)V

    .line 576
    move-object/from16 v11, p2

    goto/16 :goto_0

    .line 559
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v45    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3e
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v45    # "descriptor":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 561
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v11, p2

    invoke-virtual {v11, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    .line 563
    .local v1, "_arg1":Landroid/content/pm/ServiceInfo;
    sget-object v2, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/CompatibilityInfo;

    .line 565
    .local v2, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 566
    .restart local v3    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/app/IApplicationThread$Stub;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 568
    goto :goto_0

    .line 535
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/pm/ServiceInfo;
    .end local v2    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v3    # "_arg3":I
    .end local v45    # "descriptor":Ljava/lang/String;
    .restart local v12    # "descriptor":Ljava/lang/String;
    :pswitch_3f
    move/from16 v43, v11

    move-object/from16 v45, v12

    move-object v11, v13

    move-object v10, v15

    .end local v12    # "descriptor":Ljava/lang/String;
    .restart local v45    # "descriptor":Ljava/lang/String;
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/Intent;

    .line 537
    .local v12, "_arg0":Landroid/content/Intent;
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/content/pm/ActivityInfo;

    .line 539
    .local v13, "_arg1":Landroid/content/pm/ActivityInfo;
    sget-object v0, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/res/CompatibilityInfo;

    .line 541
    .local v14, "_arg2":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 543
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 545
    .local v16, "_arg4":Ljava/lang/String;
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v11, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/Bundle;

    .line 547
    .local v17, "_arg5":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v18

    .line 549
    .local v18, "_arg6":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 551
    .local v19, "_arg7":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 552
    .local v20, "_arg8":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 553
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    move/from16 v7, v18

    move/from16 v8, v19

    move/from16 v9, v20

    invoke-virtual/range {v0 .. v9}, Landroid/app/IApplicationThread$Stub;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V

    .line 554
    nop

    .line 1260
    .end local v12    # "_arg0":Landroid/content/Intent;
    .end local v13    # "_arg1":Landroid/content/pm/ActivityInfo;
    .end local v14    # "_arg2":Landroid/content/res/CompatibilityInfo;
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":Ljava/lang/String;
    .end local v17    # "_arg5":Landroid/os/Bundle;
    .end local v18    # "_arg6":Z
    .end local v19    # "_arg7":I
    .end local v20    # "_arg8":I
    :goto_0
    return v43

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
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
    .end packed-switch
.end method
