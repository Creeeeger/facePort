.class public abstract Landroid/app/IActivityClientController$Stub;
.super Landroid/os/Binder;
.source "IActivityClientController.java"

# interfaces
.implements Landroid/app/IActivityClientController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/IActivityClientController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IActivityClientController$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_activityDestroyed:I = 0x6

.field static final blacklist TRANSACTION_activityIdle:I = 0x1

.field static final blacklist TRANSACTION_activityLocalRelaunch:I = 0x7

.field static final blacklist TRANSACTION_activityPaused:I = 0x4

.field static final blacklist TRANSACTION_activityRelaunched:I = 0x8

.field static final blacklist TRANSACTION_activityResumed:I = 0x2

.field static final blacklist TRANSACTION_activityStopped:I = 0x5

.field static final blacklist TRANSACTION_activityTopResumedStateLost:I = 0x3

.field static final blacklist TRANSACTION_convertFromTranslucent:I = 0x1d

.field static final blacklist TRANSACTION_convertFromTranslucentOp:I = 0x3c

.field static final blacklist TRANSACTION_convertToTranslucent:I = 0x1e

.field static final blacklist TRANSACTION_dismissKeyguard:I = 0x35

.field static final blacklist TRANSACTION_enterPictureInPictureMode:I = 0x21

.field static final blacklist TRANSACTION_finishActivity:I = 0xe

.field static final blacklist TRANSACTION_finishActivityAffinity:I = 0xf

.field static final blacklist TRANSACTION_finishSubActivity:I = 0x10

.field static final blacklist TRANSACTION_getActivityTokenBelow:I = 0x16

.field static final blacklist TRANSACTION_getCallingActivity:I = 0x17

.field static final blacklist TRANSACTION_getCallingPackage:I = 0x18

.field static final blacklist TRANSACTION_getDisplayId:I = 0x13

.field static final blacklist TRANSACTION_getLaunchedFromPackage:I = 0x1a

.field static final blacklist TRANSACTION_getLaunchedFromUid:I = 0x19

.field static final blacklist TRANSACTION_getRequestedOrientation:I = 0x1c

.field static final blacklist TRANSACTION_getTaskForActivity:I = 0x14

.field static final blacklist TRANSACTION_getTaskWindowingMode:I = 0x15

.field static final blacklist TRANSACTION_invalidateHomeTaskSnapshot:I = 0x34

.field static final blacklist TRANSACTION_isImmersive:I = 0x1f

.field static final blacklist TRANSACTION_isRootVoiceInteraction:I = 0x2a

.field static final blacklist TRANSACTION_isTopOfTask:I = 0x11

.field static final blacklist TRANSACTION_moveActivityTaskToBack:I = 0xa

.field static final blacklist TRANSACTION_navigateUpTo:I = 0xc

.field static final blacklist TRANSACTION_onBackPressedOnTaskRoot:I = 0x38

.field static final blacklist TRANSACTION_overridePendingTaskTransition:I = 0x3b

.field static final blacklist TRANSACTION_overridePendingTransition:I = 0x31

.field static final blacklist TRANSACTION_registerRemoteAnimations:I = 0x36

.field static final blacklist TRANSACTION_releaseActivityInstance:I = 0xd

.field static final blacklist TRANSACTION_reportActivityFullyDrawn:I = 0x30

.field static final blacklist TRANSACTION_reportSizeConfigurations:I = 0x9

.field static final blacklist TRANSACTION_requestCompatCameraControl:I = 0x3a

.field static final blacklist TRANSACTION_setImmersive:I = 0x20

.field static final blacklist TRANSACTION_setInheritShowWhenLocked:I = 0x2e

.field static final blacklist TRANSACTION_setPictureInPictureParams:I = 0x22

.field static final blacklist TRANSACTION_setRecentsScreenshotEnabled:I = 0x33

.field static final blacklist TRANSACTION_setRequestedOrientation:I = 0x1b

.field static final blacklist TRANSACTION_setShouldDockBigOverlays:I = 0x23

.field static final blacklist TRANSACTION_setShowWhenLocked:I = 0x2d

.field static final blacklist TRANSACTION_setTaskDescription:I = 0x28

.field static final blacklist TRANSACTION_setTurnScreenOn:I = 0x2f

.field static final blacklist TRANSACTION_setVrMode:I = 0x32

.field static final blacklist TRANSACTION_shouldUpRecreateTask:I = 0xb

.field static final blacklist TRANSACTION_showAssistFromActivity:I = 0x29

.field static final blacklist TRANSACTION_showLockTaskEscapeMessage:I = 0x27

.field static final blacklist TRANSACTION_splashScreenAttached:I = 0x39

.field static final blacklist TRANSACTION_startLocalVoiceInteraction:I = 0x2b

.field static final blacklist TRANSACTION_startLockTaskModeByToken:I = 0x25

.field static final blacklist TRANSACTION_stopLocalVoiceInteraction:I = 0x2c

.field static final blacklist TRANSACTION_stopLockTaskModeByToken:I = 0x26

.field static final blacklist TRANSACTION_toggleFreeformWindowingMode:I = 0x24

.field static final blacklist TRANSACTION_unregisterRemoteAnimations:I = 0x37

.field static final blacklist TRANSACTION_willActivityBeVisible:I = 0x12


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 271
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 272
    const-string v0, "android.app.IActivityClientController"

    invoke-virtual {p0, p0, v0}, Landroid/app/IActivityClientController$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/app/IActivityClientController;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v0, 0x0

    return-object v0

    .line 283
    :cond_0
    const-string v0, "android.app.IActivityClientController"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 284
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/IActivityClientController;

    if-eqz v1, :cond_1

    .line 285
    move-object v1, v0

    check-cast v1, Landroid/app/IActivityClientController;

    return-object v1

    .line 287
    :cond_1
    new-instance v1, Landroid/app/IActivityClientController$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/IActivityClientController$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 296
    packed-switch p0, :pswitch_data_0

    .line 540
    const/4 v0, 0x0

    return-object v0

    .line 536
    :pswitch_0
    const-string v0, "convertFromTranslucentOp"

    return-object v0

    .line 532
    :pswitch_1
    const-string/jumbo v0, "overridePendingTaskTransition"

    return-object v0

    .line 528
    :pswitch_2
    const-string/jumbo v0, "requestCompatCameraControl"

    return-object v0

    .line 524
    :pswitch_3
    const-string/jumbo v0, "splashScreenAttached"

    return-object v0

    .line 520
    :pswitch_4
    const-string/jumbo v0, "onBackPressedOnTaskRoot"

    return-object v0

    .line 516
    :pswitch_5
    const-string/jumbo v0, "unregisterRemoteAnimations"

    return-object v0

    .line 512
    :pswitch_6
    const-string/jumbo v0, "registerRemoteAnimations"

    return-object v0

    .line 508
    :pswitch_7
    const-string v0, "dismissKeyguard"

    return-object v0

    .line 504
    :pswitch_8
    const-string v0, "invalidateHomeTaskSnapshot"

    return-object v0

    .line 500
    :pswitch_9
    const-string/jumbo v0, "setRecentsScreenshotEnabled"

    return-object v0

    .line 496
    :pswitch_a
    const-string/jumbo v0, "setVrMode"

    return-object v0

    .line 492
    :pswitch_b
    const-string/jumbo v0, "overridePendingTransition"

    return-object v0

    .line 488
    :pswitch_c
    const-string/jumbo v0, "reportActivityFullyDrawn"

    return-object v0

    .line 484
    :pswitch_d
    const-string/jumbo v0, "setTurnScreenOn"

    return-object v0

    .line 480
    :pswitch_e
    const-string/jumbo v0, "setInheritShowWhenLocked"

    return-object v0

    .line 476
    :pswitch_f
    const-string/jumbo v0, "setShowWhenLocked"

    return-object v0

    .line 472
    :pswitch_10
    const-string/jumbo v0, "stopLocalVoiceInteraction"

    return-object v0

    .line 468
    :pswitch_11
    const-string/jumbo v0, "startLocalVoiceInteraction"

    return-object v0

    .line 464
    :pswitch_12
    const-string v0, "isRootVoiceInteraction"

    return-object v0

    .line 460
    :pswitch_13
    const-string/jumbo v0, "showAssistFromActivity"

    return-object v0

    .line 456
    :pswitch_14
    const-string/jumbo v0, "setTaskDescription"

    return-object v0

    .line 452
    :pswitch_15
    const-string/jumbo v0, "showLockTaskEscapeMessage"

    return-object v0

    .line 448
    :pswitch_16
    const-string/jumbo v0, "stopLockTaskModeByToken"

    return-object v0

    .line 444
    :pswitch_17
    const-string/jumbo v0, "startLockTaskModeByToken"

    return-object v0

    .line 440
    :pswitch_18
    const-string/jumbo v0, "toggleFreeformWindowingMode"

    return-object v0

    .line 436
    :pswitch_19
    const-string/jumbo v0, "setShouldDockBigOverlays"

    return-object v0

    .line 432
    :pswitch_1a
    const-string/jumbo v0, "setPictureInPictureParams"

    return-object v0

    .line 428
    :pswitch_1b
    const-string v0, "enterPictureInPictureMode"

    return-object v0

    .line 424
    :pswitch_1c
    const-string/jumbo v0, "setImmersive"

    return-object v0

    .line 420
    :pswitch_1d
    const-string v0, "isImmersive"

    return-object v0

    .line 416
    :pswitch_1e
    const-string v0, "convertToTranslucent"

    return-object v0

    .line 412
    :pswitch_1f
    const-string v0, "convertFromTranslucent"

    return-object v0

    .line 408
    :pswitch_20
    const-string v0, "getRequestedOrientation"

    return-object v0

    .line 404
    :pswitch_21
    const-string/jumbo v0, "setRequestedOrientation"

    return-object v0

    .line 400
    :pswitch_22
    const-string v0, "getLaunchedFromPackage"

    return-object v0

    .line 396
    :pswitch_23
    const-string v0, "getLaunchedFromUid"

    return-object v0

    .line 392
    :pswitch_24
    const-string v0, "getCallingPackage"

    return-object v0

    .line 388
    :pswitch_25
    const-string v0, "getCallingActivity"

    return-object v0

    .line 384
    :pswitch_26
    const-string v0, "getActivityTokenBelow"

    return-object v0

    .line 380
    :pswitch_27
    const-string v0, "getTaskWindowingMode"

    return-object v0

    .line 376
    :pswitch_28
    const-string v0, "getTaskForActivity"

    return-object v0

    .line 372
    :pswitch_29
    const-string v0, "getDisplayId"

    return-object v0

    .line 368
    :pswitch_2a
    const-string/jumbo v0, "willActivityBeVisible"

    return-object v0

    .line 364
    :pswitch_2b
    const-string v0, "isTopOfTask"

    return-object v0

    .line 360
    :pswitch_2c
    const-string v0, "finishSubActivity"

    return-object v0

    .line 356
    :pswitch_2d
    const-string v0, "finishActivityAffinity"

    return-object v0

    .line 352
    :pswitch_2e
    const-string v0, "finishActivity"

    return-object v0

    .line 348
    :pswitch_2f
    const-string/jumbo v0, "releaseActivityInstance"

    return-object v0

    .line 344
    :pswitch_30
    const-string/jumbo v0, "navigateUpTo"

    return-object v0

    .line 340
    :pswitch_31
    const-string/jumbo v0, "shouldUpRecreateTask"

    return-object v0

    .line 336
    :pswitch_32
    const-string/jumbo v0, "moveActivityTaskToBack"

    return-object v0

    .line 332
    :pswitch_33
    const-string/jumbo v0, "reportSizeConfigurations"

    return-object v0

    .line 328
    :pswitch_34
    const-string v0, "activityRelaunched"

    return-object v0

    .line 324
    :pswitch_35
    const-string v0, "activityLocalRelaunch"

    return-object v0

    .line 320
    :pswitch_36
    const-string v0, "activityDestroyed"

    return-object v0

    .line 316
    :pswitch_37
    const-string v0, "activityStopped"

    return-object v0

    .line 312
    :pswitch_38
    const-string v0, "activityPaused"

    return-object v0

    .line 308
    :pswitch_39
    const-string v0, "activityTopResumedStateLost"

    return-object v0

    .line 304
    :pswitch_3a
    const-string v0, "activityResumed"

    return-object v0

    .line 300
    :pswitch_3b
    const-string v0, "activityIdle"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
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

    .line 291
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2311
    const/16 v0, 0x3b

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 547
    invoke-static {p1}, Landroid/app/IActivityClientController$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 551
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.app.IActivityClientController"

    .line 552
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 553
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 563
    packed-switch v7, :pswitch_data_1

    .line 1208
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 559
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 560
    return v11

    .line 1197
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1199
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1200
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1201
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucentOp(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 1202
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1204
    goto/16 :goto_0

    .line 1182
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1184
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1186
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1188
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1189
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1190
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->overridePendingTaskTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1192
    goto/16 :goto_0

    .line 1168
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1170
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1172
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 1174
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/ICompatCameraControlCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ICompatCameraControlCallback;

    move-result-object v3

    .line 1175
    .local v3, "_arg3":Landroid/app/ICompatCameraControlCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1176
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->requestCompatCameraControl(Landroid/os/IBinder;ZZLandroid/app/ICompatCameraControlCallback;)V

    .line 1177
    goto/16 :goto_0

    .line 1160
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Z
    .end local v3    # "_arg3":Landroid/app/ICompatCameraControlCallback;
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1161
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1162
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->splashScreenAttached(Landroid/os/IBinder;)V

    .line 1163
    goto/16 :goto_0

    .line 1150
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1152
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IRequestFinishCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IRequestFinishCallback;

    move-result-object v1

    .line 1153
    .local v1, "_arg1":Landroid/app/IRequestFinishCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1154
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->onBackPressedOnTaskRoot(Landroid/os/IBinder;Landroid/app/IRequestFinishCallback;)V

    .line 1155
    goto/16 :goto_0

    .line 1141
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/IRequestFinishCallback;
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1142
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1143
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->unregisterRemoteAnimations(Landroid/os/IBinder;)V

    .line 1144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1145
    goto/16 :goto_0

    .line 1130
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1132
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/view/RemoteAnimationDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/RemoteAnimationDefinition;

    .line 1133
    .local v1, "_arg1":Landroid/view/RemoteAnimationDefinition;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1134
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->registerRemoteAnimations(Landroid/os/IBinder;Landroid/view/RemoteAnimationDefinition;)V

    .line 1135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1136
    goto/16 :goto_0

    .line 1117
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/view/RemoteAnimationDefinition;
    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1119
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v1

    .line 1121
    .local v1, "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 1122
    .local v2, "_arg2":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1123
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    .line 1124
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    goto/16 :goto_0

    .line 1108
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Lcom/android/internal/policy/IKeyguardDismissCallback;
    .end local v2    # "_arg2":Ljava/lang/CharSequence;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1109
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1110
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 1111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1112
    goto/16 :goto_0

    .line 1098
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1100
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1101
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRecentsScreenshotEnabled(Landroid/os/IBinder;Z)V

    .line 1103
    goto/16 :goto_0

    .line 1084
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1086
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1088
    .restart local v1    # "_arg1":Z
    sget-object v2, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 1089
    .local v2, "_arg2":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1090
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v3

    .line 1091
    .local v3, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1093
    goto/16 :goto_0

    .line 1067
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":Landroid/content/ComponentName;
    .end local v3    # "_result":I
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 1069
    .local v12, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 1071
    .local v13, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 1073
    .local v14, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 1075
    .local v15, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 1076
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1077
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move v3, v14

    move v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/app/IActivityClientController$Stub;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;III)V

    .line 1078
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1079
    goto/16 :goto_0

    .line 1057
    .end local v12    # "_arg0":Landroid/os/IBinder;
    .end local v13    # "_arg1":Ljava/lang/String;
    .end local v14    # "_arg2":I
    .end local v15    # "_arg3":I
    .end local v16    # "_arg4":I
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1059
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1060
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1061
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportActivityFullyDrawn(Landroid/os/IBinder;Z)V

    .line 1062
    goto/16 :goto_0

    .line 1047
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1049
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1050
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1051
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTurnScreenOn(Landroid/os/IBinder;Z)V

    .line 1052
    goto/16 :goto_0

    .line 1037
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1039
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1040
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1041
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setInheritShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1042
    goto/16 :goto_0

    .line 1027
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1029
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1030
    .restart local v1    # "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1031
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShowWhenLocked(Landroid/os/IBinder;Z)V

    .line 1032
    goto/16 :goto_0

    .line 1018
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1019
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1020
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 1021
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    goto/16 :goto_0

    .line 1007
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1009
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1010
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1011
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 1012
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1013
    goto/16 :goto_0

    .line 997
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 998
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 999
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v1

    .line 1000
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1001
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1002
    goto/16 :goto_0

    .line 985
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 987
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 988
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 989
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 990
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 991
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 992
    goto/16 :goto_0

    .line 974
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 976
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$TaskDescription;

    .line 977
    .local v1, "_arg1":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 978
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 979
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 980
    goto/16 :goto_0

    .line 966
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 967
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 968
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 969
    goto/16 :goto_0

    .line 958
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 959
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 960
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->stopLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 961
    goto/16 :goto_0

    .line 950
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 951
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 952
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->startLockTaskModeByToken(Landroid/os/IBinder;)V

    .line 953
    goto/16 :goto_0

    .line 941
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 942
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 943
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 944
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 945
    goto/16 :goto_0

    .line 931
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 933
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 934
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 935
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setShouldDockBigOverlays(Landroid/os/IBinder;Z)V

    .line 936
    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 922
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .line 923
    .local v1, "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setPictureInPictureParams(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_0

    .line 908
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    :pswitch_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 910
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/app/PictureInPictureParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PictureInPictureParams;

    .line 911
    .restart local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 912
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->enterPictureInPictureMode(Landroid/os/IBinder;Landroid/app/PictureInPictureParams;)Z

    move-result v2

    .line 913
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 897
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/app/PictureInPictureParams;
    .end local v2    # "_result":Z
    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 899
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 900
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 901
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setImmersive(Landroid/os/IBinder;Z)V

    .line 902
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 903
    goto/16 :goto_0

    .line 887
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 888
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 889
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isImmersive(Landroid/os/IBinder;)Z

    move-result v1

    .line 890
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 891
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 892
    goto/16 :goto_0

    .line 875
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 877
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 878
    .local v1, "_arg1":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 879
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->convertToTranslucent(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v2

    .line 880
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 881
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 882
    goto/16 :goto_0

    .line 865
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 866
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 867
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v1

    .line 868
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 870
    goto/16 :goto_0

    .line 855
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 856
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v1

    .line 858
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 859
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    goto/16 :goto_0

    .line 844
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 846
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 847
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 848
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 849
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 850
    goto/16 :goto_0

    .line 834
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 835
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 836
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 837
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 839
    goto/16 :goto_0

    .line 824
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 825
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 826
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    .line 827
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    goto/16 :goto_0

    .line 814
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 815
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 816
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v1

    .line 817
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 819
    goto/16 :goto_0

    .line 804
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 805
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 806
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v1

    .line 807
    .local v1, "_result":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 808
    invoke-virtual {v9, v1, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 809
    goto/16 :goto_0

    .line 794
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/content/ComponentName;
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 795
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 796
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getActivityTokenBelow(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    .line 797
    .local v1, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 798
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 799
    goto/16 :goto_0

    .line 784
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Landroid/os/IBinder;
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 785
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 786
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getTaskWindowingMode(Landroid/os/IBinder;)I

    move-result v1

    .line 787
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 789
    goto/16 :goto_0

    .line 772
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 774
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 775
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 776
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    .line 777
    .local v2, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 778
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 779
    goto/16 :goto_0

    .line 762
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":I
    :pswitch_2a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 763
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 764
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->getDisplayId(Landroid/os/IBinder;)I

    move-result v1

    .line 765
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 766
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 767
    goto/16 :goto_0

    .line 752
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_2b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 753
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 754
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v1

    .line 755
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 757
    goto/16 :goto_0

    .line 742
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 743
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 744
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v1

    .line 745
    .restart local v1    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 747
    goto/16 :goto_0

    .line 729
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 731
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 733
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 734
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 735
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    goto/16 :goto_0

    .line 719
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 720
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v1

    .line 722
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 723
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 724
    goto/16 :goto_0

    .line 703
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 705
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 707
    .local v1, "_arg1":I
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 709
    .local v2, "_arg2":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 710
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v4

    .line 712
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 714
    goto/16 :goto_0

    .line 693
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Landroid/content/Intent;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 694
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 695
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v1

    .line 696
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 697
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 698
    goto/16 :goto_0

    .line 677
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":Z
    :pswitch_31
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 679
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 681
    .local v1, "_arg1":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 683
    .local v2, "_arg2":I
    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 684
    .local v3, "_arg3":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 685
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v4

    .line 686
    .restart local v4    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 688
    goto/16 :goto_0

    .line 665
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/Intent;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Landroid/content/Intent;
    .end local v4    # "_result":Z
    :pswitch_32
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 667
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 668
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 669
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v2

    .line 670
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 672
    goto/16 :goto_0

    .line 653
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 655
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 656
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 657
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v2

    .line 658
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 660
    goto/16 :goto_0

    .line 643
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 645
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/window/SizeConfigurationBuckets;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/SizeConfigurationBuckets;

    .line 646
    .local v1, "_arg1":Landroid/window/SizeConfigurationBuckets;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 647
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->reportSizeConfigurations(Landroid/os/IBinder;Landroid/window/SizeConfigurationBuckets;)V

    .line 648
    goto/16 :goto_0

    .line 635
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/window/SizeConfigurationBuckets;
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 636
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 637
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityRelaunched(Landroid/os/IBinder;)V

    .line 638
    goto/16 :goto_0

    .line 627
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 628
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 629
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityLocalRelaunch(Landroid/os/IBinder;)V

    .line 630
    goto :goto_0

    .line 619
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 620
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 621
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityDestroyed(Landroid/os/IBinder;)V

    .line 622
    goto :goto_0

    .line 605
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 607
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 609
    .local v1, "_arg1":Landroid/os/Bundle;
    sget-object v2, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PersistableBundle;

    .line 611
    .local v2, "_arg2":Landroid/os/PersistableBundle;
    sget-object v3, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 612
    .local v3, "_arg3":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 613
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/app/IActivityClientController$Stub;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 614
    goto :goto_0

    .line 596
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v2    # "_arg2":Landroid/os/PersistableBundle;
    .end local v3    # "_arg3":Ljava/lang/CharSequence;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 597
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {v6, v0}, Landroid/app/IActivityClientController$Stub;->activityPaused(Landroid/os/IBinder;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    goto :goto_0

    .line 589
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_3a
    invoke-virtual/range {p0 .. p0}, Landroid/app/IActivityClientController$Stub;->activityTopResumedStateLost()V

    .line 590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 591
    goto :goto_0

    .line 580
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 582
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 583
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 584
    invoke-virtual {v6, v0, v1}, Landroid/app/IActivityClientController$Stub;->activityResumed(Landroid/os/IBinder;Z)V

    .line 585
    goto :goto_0

    .line 568
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Z
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 570
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    sget-object v1, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Configuration;

    .line 572
    .local v1, "_arg1":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 573
    .local v2, "_arg2":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 574
    invoke-virtual {v6, v0, v1, v2}, Landroid/app/IActivityClientController$Stub;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 575
    nop

    .line 1211
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/content/res/Configuration;
    .end local v2    # "_arg2":Z
    :goto_0
    return v11

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
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
