.class public abstract Landroid/view/accessibility/IAccessibilityManager$Stub;
.super Landroid/os/Binder;
.source "IAccessibilityManager.java"

# interfaces
.implements Landroid/view/accessibility/IAccessibilityManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/IAccessibilityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;
    }
.end annotation


# static fields
.field public static final greylist-max-o DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IAccessibilityManager"

.field static final blacklist TRANSACTION_OnStartGestureWakeup:I = 0x38

.field static final blacklist TRANSACTION_OnStopGestureWakeup:I = 0x39

.field static final greylist-max-o TRANSACTION_addAccessibilityInteractionConnection:I = 0x7

.field static final greylist-max-o TRANSACTION_addClient:I = 0x3

.field static final blacklist TRANSACTION_associateEmbeddedHierarchy:I = 0x18

.field static final blacklist TRANSACTION_convertPixelToDpi:I = 0x32

.field static final blacklist TRANSACTION_disassociateEmbeddedHierarchy:I = 0x19

.field static final blacklist TRANSACTION_getAccessibilityShortcutTargets:I = 0x11

.field static final blacklist TRANSACTION_getAccessibilityWindowId:I = 0x13

.field static final greylist-max-o TRANSACTION_getEnabledAccessibilityServiceList:I = 0x6

.field static final blacklist TRANSACTION_getFocusColor:I = 0x1b

.field static final blacklist TRANSACTION_getFocusStrokeWidth:I = 0x1a

.field static final greylist-max-o TRANSACTION_getInstalledAccessibilityServiceList:I = 0x5

.field static final blacklist TRANSACTION_getRecommendedTimeoutMillis:I = 0x14

.field static final blacklist TRANSACTION_getScreenReaderName:I = 0x30

.field static final greylist-max-o TRANSACTION_getWindowToken:I = 0xd

.field static final greylist-max-o TRANSACTION_interrupt:I = 0x1

.field static final blacklist TRANSACTION_isActivatedMagnification:I = 0x44

.field static final blacklist TRANSACTION_isAudioDescriptionByDefaultEnabled:I = 0x1c

.field static final blacklist TRANSACTION_isScreenReaderEnabled:I = 0x2f

.field static final blacklist TRANSACTION_isSystemAudioCaptioningUiEnabled:I = 0x1e

.field static final blacklist TRANSACTION_isTwoFingerGestureRecognitionEnabled:I = 0x2e

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonClicked:I = 0xe

.field static final greylist-max-o TRANSACTION_notifyAccessibilityButtonVisibilityChanged:I = 0xf

.field static final blacklist TRANSACTION_performAccessibilityDirectAccess:I = 0x3d

.field static final greylist-max-o TRANSACTION_performAccessibilityShortcut:I = 0x10

.field static final blacklist TRANSACTION_registerSystemAction:I = 0x15

.field static final greylist-max-o TRANSACTION_registerUiTestAutomationService:I = 0xa

.field static final greylist-max-o TRANSACTION_removeAccessibilityInteractionConnection:I = 0x8

.field static final blacklist TRANSACTION_removeClient:I = 0x4

.field static final blacklist TRANSACTION_semCheckMdnieColorBlind:I = 0x24

.field static final blacklist TRANSACTION_semDisableMdnieColorFilter:I = 0x27

.field static final blacklist TRANSACTION_semDisableWindowMagnification:I = 0x41

.field static final blacklist TRANSACTION_semDumpCallStack:I = 0x3c

.field static final blacklist TRANSACTION_semEnableMdnieColorFilter:I = 0x26

.field static final blacklist TRANSACTION_semEnableWindowMagnification:I = 0x40

.field static final blacklist TRANSACTION_semGetWindowMagnificationBounds:I = 0x3e

.field static final blacklist TRANSACTION_semGetWindowMagnificationScale:I = 0x3f

.field static final blacklist TRANSACTION_semIsAccessibilityButtonShown:I = 0x3a

.field static final blacklist TRANSACTION_semIsAccessibilityServiceEnabled:I = 0x20

.field static final blacklist TRANSACTION_semIsDarkScreenMode:I = 0x28

.field static final blacklist TRANSACTION_semIsWindowMagnificationEnabled:I = 0x43

.field static final blacklist TRANSACTION_semLockNow:I = 0x34

.field static final blacklist TRANSACTION_semMoveWindowMagnification:I = 0x42

.field static final blacklist TRANSACTION_semOnLightNotification:I = 0x35

.field static final blacklist TRANSACTION_semOpenDeviceOptions:I = 0x2c

.field static final blacklist TRANSACTION_semPerformAccessibilityButtonClick:I = 0x45

.field static final blacklist TRANSACTION_semRegisterAssistantMenu:I = 0x2b

.field static final blacklist TRANSACTION_semSetColorBlind:I = 0x23

.field static final blacklist TRANSACTION_semSetMdnieAccessibilityMode:I = 0x25

.field static final blacklist TRANSACTION_semSetTwoFingerGestureRecognitionEnabled:I = 0x2d

.field static final blacklist TRANSACTION_semStartFlashNotification:I = 0x36

.field static final blacklist TRANSACTION_semStopFlashNotification:I = 0x37

.field static final blacklist TRANSACTION_semToggleDarkScreenMode:I = 0x29

.field static final blacklist TRANSACTION_semTurnOffAccessibilityService:I = 0x21

.field static final blacklist TRANSACTION_semTurnOnAccessibilityService:I = 0x22

.field static final blacklist TRANSACTION_semUpdateAssitantMenu:I = 0x2a

.field static final greylist-max-o TRANSACTION_sendAccessibilityEvent:I = 0x2

.field static final greylist-max-o TRANSACTION_sendFingerprintGesture:I = 0x12

.field static final blacklist TRANSACTION_setMagnificationDisactivate:I = 0x3b

.field static final greylist-max-o TRANSACTION_setPictureInPictureActionReplacingConnection:I = 0x9

.field static final blacklist TRANSACTION_setScreenReaderEnabled:I = 0x31

.field static final blacklist TRANSACTION_setSystemAudioCaptioningEnabled:I = 0x1d

.field static final blacklist TRANSACTION_setSystemAudioCaptioningUiEnabled:I = 0x1f

.field static final blacklist TRANSACTION_setTalkbackMode:I = 0x33

.field static final blacklist TRANSACTION_setWindowMagnificationConnection:I = 0x17

.field static final greylist-max-o TRANSACTION_temporaryEnableAccessibilityStateUntilKeyguardRemoved:I = 0xc

.field static final blacklist TRANSACTION_unregisterSystemAction:I = 0x16

.field static final greylist-max-o TRANSACTION_unregisterUiTestAutomationService:I = 0xb


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    .line 307
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 308
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-virtual {p0, p0, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public static greylist asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 316
    if-nez p0, :cond_0

    .line 317
    const/4 v0, 0x0

    return-object v0

    .line 319
    :cond_0
    const-string v0, "android.view.accessibility.IAccessibilityManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 320
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/accessibility/IAccessibilityManager;

    if-eqz v1, :cond_1

    .line 321
    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/IAccessibilityManager;

    return-object v1

    .line 323
    :cond_1
    new-instance v1, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/view/accessibility/IAccessibilityManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p0, "transactionCode"    # I

    .line 332
    packed-switch p0, :pswitch_data_0

    .line 612
    const/4 v0, 0x0

    return-object v0

    .line 608
    :pswitch_0
    const-string/jumbo v0, "semPerformAccessibilityButtonClick"

    return-object v0

    .line 604
    :pswitch_1
    const-string v0, "isActivatedMagnification"

    return-object v0

    .line 600
    :pswitch_2
    const-string/jumbo v0, "semIsWindowMagnificationEnabled"

    return-object v0

    .line 596
    :pswitch_3
    const-string/jumbo v0, "semMoveWindowMagnification"

    return-object v0

    .line 592
    :pswitch_4
    const-string/jumbo v0, "semDisableWindowMagnification"

    return-object v0

    .line 588
    :pswitch_5
    const-string/jumbo v0, "semEnableWindowMagnification"

    return-object v0

    .line 584
    :pswitch_6
    const-string/jumbo v0, "semGetWindowMagnificationScale"

    return-object v0

    .line 580
    :pswitch_7
    const-string/jumbo v0, "semGetWindowMagnificationBounds"

    return-object v0

    .line 576
    :pswitch_8
    const-string/jumbo v0, "performAccessibilityDirectAccess"

    return-object v0

    .line 572
    :pswitch_9
    const-string/jumbo v0, "semDumpCallStack"

    return-object v0

    .line 568
    :pswitch_a
    const-string/jumbo v0, "setMagnificationDisactivate"

    return-object v0

    .line 564
    :pswitch_b
    const-string/jumbo v0, "semIsAccessibilityButtonShown"

    return-object v0

    .line 560
    :pswitch_c
    const-string v0, "OnStopGestureWakeup"

    return-object v0

    .line 556
    :pswitch_d
    const-string v0, "OnStartGestureWakeup"

    return-object v0

    .line 552
    :pswitch_e
    const-string/jumbo v0, "semStopFlashNotification"

    return-object v0

    .line 548
    :pswitch_f
    const-string/jumbo v0, "semStartFlashNotification"

    return-object v0

    .line 544
    :pswitch_10
    const-string/jumbo v0, "semOnLightNotification"

    return-object v0

    .line 540
    :pswitch_11
    const-string/jumbo v0, "semLockNow"

    return-object v0

    .line 536
    :pswitch_12
    const-string/jumbo v0, "setTalkbackMode"

    return-object v0

    .line 532
    :pswitch_13
    const-string v0, "convertPixelToDpi"

    return-object v0

    .line 528
    :pswitch_14
    const-string/jumbo v0, "setScreenReaderEnabled"

    return-object v0

    .line 524
    :pswitch_15
    const-string v0, "getScreenReaderName"

    return-object v0

    .line 520
    :pswitch_16
    const-string v0, "isScreenReaderEnabled"

    return-object v0

    .line 516
    :pswitch_17
    const-string v0, "isTwoFingerGestureRecognitionEnabled"

    return-object v0

    .line 512
    :pswitch_18
    const-string/jumbo v0, "semSetTwoFingerGestureRecognitionEnabled"

    return-object v0

    .line 508
    :pswitch_19
    const-string/jumbo v0, "semOpenDeviceOptions"

    return-object v0

    .line 504
    :pswitch_1a
    const-string/jumbo v0, "semRegisterAssistantMenu"

    return-object v0

    .line 500
    :pswitch_1b
    const-string/jumbo v0, "semUpdateAssitantMenu"

    return-object v0

    .line 496
    :pswitch_1c
    const-string/jumbo v0, "semToggleDarkScreenMode"

    return-object v0

    .line 492
    :pswitch_1d
    const-string/jumbo v0, "semIsDarkScreenMode"

    return-object v0

    .line 488
    :pswitch_1e
    const-string/jumbo v0, "semDisableMdnieColorFilter"

    return-object v0

    .line 484
    :pswitch_1f
    const-string/jumbo v0, "semEnableMdnieColorFilter"

    return-object v0

    .line 480
    :pswitch_20
    const-string/jumbo v0, "semSetMdnieAccessibilityMode"

    return-object v0

    .line 476
    :pswitch_21
    const-string/jumbo v0, "semCheckMdnieColorBlind"

    return-object v0

    .line 472
    :pswitch_22
    const-string/jumbo v0, "semSetColorBlind"

    return-object v0

    .line 468
    :pswitch_23
    const-string/jumbo v0, "semTurnOnAccessibilityService"

    return-object v0

    .line 464
    :pswitch_24
    const-string/jumbo v0, "semTurnOffAccessibilityService"

    return-object v0

    .line 460
    :pswitch_25
    const-string/jumbo v0, "semIsAccessibilityServiceEnabled"

    return-object v0

    .line 456
    :pswitch_26
    const-string/jumbo v0, "setSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 452
    :pswitch_27
    const-string v0, "isSystemAudioCaptioningUiEnabled"

    return-object v0

    .line 448
    :pswitch_28
    const-string/jumbo v0, "setSystemAudioCaptioningEnabled"

    return-object v0

    .line 444
    :pswitch_29
    const-string v0, "isAudioDescriptionByDefaultEnabled"

    return-object v0

    .line 440
    :pswitch_2a
    const-string v0, "getFocusColor"

    return-object v0

    .line 436
    :pswitch_2b
    const-string v0, "getFocusStrokeWidth"

    return-object v0

    .line 432
    :pswitch_2c
    const-string v0, "disassociateEmbeddedHierarchy"

    return-object v0

    .line 428
    :pswitch_2d
    const-string v0, "associateEmbeddedHierarchy"

    return-object v0

    .line 424
    :pswitch_2e
    const-string/jumbo v0, "setWindowMagnificationConnection"

    return-object v0

    .line 420
    :pswitch_2f
    const-string/jumbo v0, "unregisterSystemAction"

    return-object v0

    .line 416
    :pswitch_30
    const-string/jumbo v0, "registerSystemAction"

    return-object v0

    .line 412
    :pswitch_31
    const-string v0, "getRecommendedTimeoutMillis"

    return-object v0

    .line 408
    :pswitch_32
    const-string v0, "getAccessibilityWindowId"

    return-object v0

    .line 404
    :pswitch_33
    const-string/jumbo v0, "sendFingerprintGesture"

    return-object v0

    .line 400
    :pswitch_34
    const-string v0, "getAccessibilityShortcutTargets"

    return-object v0

    .line 396
    :pswitch_35
    const-string/jumbo v0, "performAccessibilityShortcut"

    return-object v0

    .line 392
    :pswitch_36
    const-string/jumbo v0, "notifyAccessibilityButtonVisibilityChanged"

    return-object v0

    .line 388
    :pswitch_37
    const-string/jumbo v0, "notifyAccessibilityButtonClicked"

    return-object v0

    .line 384
    :pswitch_38
    const-string v0, "getWindowToken"

    return-object v0

    .line 380
    :pswitch_39
    const-string/jumbo v0, "temporaryEnableAccessibilityStateUntilKeyguardRemoved"

    return-object v0

    .line 376
    :pswitch_3a
    const-string/jumbo v0, "unregisterUiTestAutomationService"

    return-object v0

    .line 372
    :pswitch_3b
    const-string/jumbo v0, "registerUiTestAutomationService"

    return-object v0

    .line 368
    :pswitch_3c
    const-string/jumbo v0, "setPictureInPictureActionReplacingConnection"

    return-object v0

    .line 364
    :pswitch_3d
    const-string/jumbo v0, "removeAccessibilityInteractionConnection"

    return-object v0

    .line 360
    :pswitch_3e
    const-string v0, "addAccessibilityInteractionConnection"

    return-object v0

    .line 356
    :pswitch_3f
    const-string v0, "getEnabledAccessibilityServiceList"

    return-object v0

    .line 352
    :pswitch_40
    const-string v0, "getInstalledAccessibilityServiceList"

    return-object v0

    .line 348
    :pswitch_41
    const-string/jumbo v0, "removeClient"

    return-object v0

    .line 344
    :pswitch_42
    const-string v0, "addClient"

    return-object v0

    .line 340
    :pswitch_43
    const-string/jumbo v0, "sendAccessibilityEvent"

    return-object v0

    .line 336
    :pswitch_44
    const-string v0, "interrupt"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    .line 327
    return-object p0
.end method

.method public blacklist getMaxTransactionId()I
    .locals 1

    .line 2543
    const/16 v0, 0x44

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1
    .param p1, "transactionCode"    # I

    .line 619
    invoke-static {p1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    .line 623
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v10, "android.view.accessibility.IAccessibilityManager"

    .line 624
    .local v10, "descriptor":Ljava/lang/String;
    const/4 v11, 0x1

    if-lt v7, v11, :cond_0

    const v0, 0xffffff

    if-gt v7, v0, :cond_0

    .line 625
    invoke-virtual {v8, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    :cond_0
    packed-switch v7, :pswitch_data_0

    .line 635
    packed-switch v7, :pswitch_data_1

    .line 1280
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 631
    :pswitch_0
    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    return v11

    .line 1268
    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1270
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1272
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 1273
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1274
    invoke-virtual {v6, v0, v1, v2}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semPerformAccessibilityButtonClick(IILjava/lang/String;)V

    .line 1275
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1276
    goto/16 :goto_0

    .line 1260
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isActivatedMagnification()Z

    move-result v0

    .line 1261
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1263
    goto/16 :goto_0

    .line 1253
    .end local v0    # "_result":Z
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsWindowMagnificationEnabled()Z

    move-result v0

    .line 1254
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1256
    goto/16 :goto_0

    .line 1243
    .end local v0    # "_result":Z
    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1245
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 1246
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1247
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semMoveWindowMagnification(FF)V

    .line 1248
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1249
    goto/16 :goto_0

    .line 1236
    .end local v0    # "_arg0":F
    .end local v1    # "_arg1":F
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableWindowMagnification()V

    .line 1237
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1238
    goto/16 :goto_0

    .line 1226
    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1228
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1229
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1230
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableWindowMagnification(II)V

    .line 1231
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1232
    goto/16 :goto_0

    .line 1218
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationScale()F

    move-result v0

    .line 1219
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1220
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1221
    goto/16 :goto_0

    .line 1211
    .end local v0    # "_result":F
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semGetWindowMagnificationBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1212
    .local v0, "_result":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1213
    invoke-virtual {v9, v0, v11}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 1214
    goto/16 :goto_0

    .line 1203
    .end local v0    # "_result":Landroid/graphics/Rect;
    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1204
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1205
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityDirectAccess(Ljava/lang/String;)V

    .line 1206
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1207
    goto/16 :goto_0

    .line 1194
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1196
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDumpCallStack(Ljava/lang/String;)V

    .line 1197
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1198
    goto/16 :goto_0

    .line 1187
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setMagnificationDisactivate()V

    .line 1188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1189
    goto/16 :goto_0

    .line 1180
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityButtonShown()Z

    move-result v0

    .line 1181
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1182
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1183
    goto/16 :goto_0

    .line 1173
    .end local v0    # "_result":Z
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStopGestureWakeup()Z

    move-result v0

    .line 1174
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1175
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1176
    goto/16 :goto_0

    .line 1166
    .end local v0    # "_result":Z
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->OnStartGestureWakeup()Z

    move-result v0

    .line 1167
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1168
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1169
    goto/16 :goto_0

    .line 1157
    .end local v0    # "_result":Z
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1159
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semStopFlashNotification(Ljava/lang/String;)Z

    move-result v1

    .line 1160
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1162
    goto/16 :goto_0

    .line 1141
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1145
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1147
    .local v2, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 1148
    .local v3, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1149
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semStartFlashNotification(Ljava/lang/String;Landroid/os/IBinder;ILjava/lang/String;)Z

    move-result v4

    .line 1150
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    invoke-virtual {v9, v4}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1152
    goto/16 :goto_0

    .line 1131
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":Ljava/lang/String;
    .end local v4    # "_result":Z
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1132
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1133
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOnLightNotification(Ljava/lang/String;)Z

    move-result v1

    .line 1134
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1135
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1136
    goto/16 :goto_0

    .line 1124
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semLockNow()V

    .line 1125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1126
    goto/16 :goto_0

    .line 1118
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setTalkbackMode()V

    .line 1119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    goto/16 :goto_0

    .line 1109
    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 1110
    .local v0, "_arg0":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1111
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->convertPixelToDpi(F)I

    move-result v1

    .line 1112
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1113
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1114
    goto/16 :goto_0

    .line 1100
    .end local v0    # "_arg0":F
    .end local v1    # "_result":I
    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1101
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1102
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setScreenReaderEnabled(Z)V

    .line 1103
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1104
    goto/16 :goto_0

    .line 1092
    .end local v0    # "_arg0":Z
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getScreenReaderName()Ljava/lang/String;

    move-result-object v0

    .line 1093
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1094
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1095
    goto/16 :goto_0

    .line 1085
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isScreenReaderEnabled()Z

    move-result v0

    .line 1086
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1087
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1088
    goto/16 :goto_0

    .line 1078
    .end local v0    # "_result":Z
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isTwoFingerGestureRecognitionEnabled()Z

    move-result v0

    .line 1079
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1080
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1081
    goto/16 :goto_0

    .line 1070
    .end local v0    # "_result":Z
    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 1071
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1072
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetTwoFingerGestureRecognitionEnabled(Z)V

    .line 1073
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    goto/16 :goto_0

    .line 1063
    .end local v0    # "_arg0":Z
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semOpenDeviceOptions()V

    .line 1064
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1065
    goto/16 :goto_0

    .line 1055
    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1056
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1057
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semRegisterAssistantMenu(Landroid/os/IBinder;)V

    .line 1058
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1059
    goto/16 :goto_0

    .line 1046
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_1c
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1047
    .local v0, "_arg0":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1048
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semUpdateAssitantMenu(Landroid/os/Bundle;)V

    .line 1049
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1050
    goto/16 :goto_0

    .line 1039
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :pswitch_1d
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semToggleDarkScreenMode()V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    goto/16 :goto_0

    .line 1032
    :pswitch_1e
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsDarkScreenMode()Z

    move-result v0

    .line 1033
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1034
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1035
    goto/16 :goto_0

    .line 1025
    .end local v0    # "_result":Z
    :pswitch_1f
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semDisableMdnieColorFilter()Z

    move-result v0

    .line 1026
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1027
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1028
    goto/16 :goto_0

    .line 1014
    .end local v0    # "_result":Z
    :pswitch_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1016
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1017
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1018
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semEnableMdnieColorFilter(II)Z

    move-result v2

    .line 1019
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1021
    goto/16 :goto_0

    .line 1002
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1004
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 1005
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 1006
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetMdnieAccessibilityMode(IZ)Z

    move-result v2

    .line 1007
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1008
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 1009
    goto/16 :goto_0

    .line 992
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    .end local v2    # "_result":Z
    :pswitch_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 993
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 994
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semCheckMdnieColorBlind([I)Z

    move-result v1

    .line 995
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 997
    goto/16 :goto_0

    .line 980
    .end local v0    # "_arg0":[I
    .end local v1    # "_result":Z
    :pswitch_23
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 982
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 983
    .local v1, "_arg1":F
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 984
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semSetColorBlind(ZF)Z

    move-result v2

    .line 985
    .restart local v2    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 986
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 987
    goto/16 :goto_0

    .line 971
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":F
    .end local v2    # "_result":Z
    :pswitch_24
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 972
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 973
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOnAccessibilityService(I)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    goto/16 :goto_0

    .line 962
    .end local v0    # "_arg0":I
    :pswitch_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 963
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 964
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semTurnOffAccessibilityService(I)V

    .line 965
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    goto/16 :goto_0

    .line 952
    .end local v0    # "_arg0":I
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 953
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 954
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->semIsAccessibilityServiceEnabled(I)Z

    move-result v1

    .line 955
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 956
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 957
    goto/16 :goto_0

    .line 941
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_27
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 943
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 944
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 945
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningUiEnabled(ZI)V

    .line 946
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 947
    goto/16 :goto_0

    .line 931
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_28
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 932
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 933
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isSystemAudioCaptioningUiEnabled(I)Z

    move-result v1

    .line 934
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 935
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 936
    goto/16 :goto_0

    .line 920
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_29
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 922
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 924
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setSystemAudioCaptioningEnabled(ZI)V

    .line 925
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 926
    goto/16 :goto_0

    .line 912
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":I
    :pswitch_2a
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->isAudioDescriptionByDefaultEnabled()Z

    move-result v0

    .line 913
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 914
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 915
    goto/16 :goto_0

    .line 905
    .end local v0    # "_result":Z
    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusColor()I

    move-result v0

    .line 906
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 907
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 908
    goto/16 :goto_0

    .line 898
    .end local v0    # "_result":I
    :pswitch_2c
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getFocusStrokeWidth()I

    move-result v0

    .line 899
    .restart local v0    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 900
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 901
    goto/16 :goto_0

    .line 890
    .end local v0    # "_result":I
    :pswitch_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 891
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 892
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->disassociateEmbeddedHierarchy(Landroid/os/IBinder;)V

    .line 893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 894
    goto/16 :goto_0

    .line 879
    .end local v0    # "_arg0":Landroid/os/IBinder;
    :pswitch_2e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 881
    .restart local v0    # "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 882
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 883
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->associateEmbeddedHierarchy(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    goto/16 :goto_0

    .line 871
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_2f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IWindowMagnificationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IWindowMagnificationConnection;

    move-result-object v0

    .line 872
    .local v0, "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 873
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setWindowMagnificationConnection(Landroid/view/accessibility/IWindowMagnificationConnection;)V

    .line 874
    goto/16 :goto_0

    .line 863
    .end local v0    # "_arg0":Landroid/view/accessibility/IWindowMagnificationConnection;
    :pswitch_30
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 864
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 865
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterSystemAction(I)V

    .line 866
    goto/16 :goto_0

    .line 853
    .end local v0    # "_arg0":I
    :pswitch_31
    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    .line 855
    .local v0, "_arg0":Landroid/app/RemoteAction;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 856
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 857
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 858
    goto/16 :goto_0

    .line 845
    .end local v0    # "_arg0":Landroid/app/RemoteAction;
    .end local v1    # "_arg1":I
    :pswitch_32
    invoke-virtual/range {p0 .. p0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getRecommendedTimeoutMillis()J

    move-result-wide v0

    .line 846
    .local v0, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 847
    invoke-virtual {v9, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 848
    goto/16 :goto_0

    .line 836
    .end local v0    # "_result":J
    :pswitch_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 837
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 838
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityWindowId(Landroid/os/IBinder;)I

    move-result v1

    .line 839
    .local v1, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 840
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 841
    goto/16 :goto_0

    .line 826
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_result":I
    :pswitch_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 827
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 828
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendFingerprintGesture(I)Z

    move-result v1

    .line 829
    .local v1, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 830
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 831
    goto/16 :goto_0

    .line 816
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Z
    :pswitch_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 817
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 818
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getAccessibilityShortcutTargets(I)Ljava/util/List;

    move-result-object v1

    .line 819
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 821
    goto/16 :goto_0

    .line 807
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_36
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 809
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->performAccessibilityShortcut(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 811
    goto/16 :goto_0

    .line 798
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_37
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 799
    .local v0, "_arg0":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 800
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 801
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 802
    goto/16 :goto_0

    .line 787
    .end local v0    # "_arg0":Z
    :pswitch_38
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 791
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->notifyAccessibilityButtonClicked(ILjava/lang/String;)V

    .line 792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 793
    goto/16 :goto_0

    .line 775
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_39
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 777
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 778
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 779
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getWindowToken(II)Landroid/os/IBinder;

    move-result-object v2

    .line 780
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 782
    goto/16 :goto_0

    .line 764
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Landroid/os/IBinder;
    :pswitch_3a
    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 766
    .local v0, "_arg0":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    .line 767
    .local v1, "_arg1":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 768
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->temporaryEnableAccessibilityStateUntilKeyguardRemoved(Landroid/content/ComponentName;Z)V

    .line 769
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    goto/16 :goto_0

    .line 755
    .end local v0    # "_arg0":Landroid/content/ComponentName;
    .end local v1    # "_arg1":Z
    :pswitch_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v0

    .line 756
    .local v0, "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->unregisterUiTestAutomationService(Landroid/accessibilityservice/IAccessibilityServiceClient;)V

    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 759
    goto/16 :goto_0

    .line 740
    .end local v0    # "_arg0":Landroid/accessibilityservice/IAccessibilityServiceClient;
    :pswitch_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 742
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-result-object v1

    .line 744
    .local v1, "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    sget-object v2, Landroid/accessibilityservice/AccessibilityServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 746
    .local v2, "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 747
    .local v3, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 748
    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/accessibility/IAccessibilityManager$Stub;->registerUiTestAutomationService(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/accessibilityservice/AccessibilityServiceInfo;I)V

    .line 749
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 750
    goto/16 :goto_0

    .line 731
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v1    # "_arg1":Landroid/accessibilityservice/IAccessibilityServiceClient;
    .end local v2    # "_arg2":Landroid/accessibilityservice/AccessibilityServiceInfo;
    .end local v3    # "_arg3":I
    :pswitch_3d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v0

    .line 732
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 733
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    .line 734
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 735
    goto/16 :goto_0

    .line 722
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    :pswitch_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v0

    .line 723
    .local v0, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V

    .line 725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    goto/16 :goto_0

    .line 704
    .end local v0    # "_arg0":Landroid/view/IWindow;
    :pswitch_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindow$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindow;

    move-result-object v12

    .line 706
    .local v12, "_arg0":Landroid/view/IWindow;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    .line 708
    .local v13, "_arg1":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityInteractionConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityInteractionConnection;

    move-result-object v14

    .line 710
    .local v14, "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 712
    .local v15, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 713
    .local v16, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 714
    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/os/IBinder;Landroid/view/accessibility/IAccessibilityInteractionConnection;Ljava/lang/String;I)I

    move-result v0

    .line 715
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 717
    goto/16 :goto_0

    .line 692
    .end local v0    # "_result":I
    .end local v12    # "_arg0":Landroid/view/IWindow;
    .end local v13    # "_arg1":Landroid/os/IBinder;
    .end local v14    # "_arg2":Landroid/view/accessibility/IAccessibilityInteractionConnection;
    .end local v15    # "_arg3":Ljava/lang/String;
    .end local v16    # "_arg4":I
    :pswitch_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 694
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 695
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 696
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getEnabledAccessibilityServiceList(II)Ljava/util/List;

    move-result-object v2

    .line 697
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 699
    goto :goto_0

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_41
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 683
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 684
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->getInstalledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 685
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 686
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 687
    goto :goto_0

    .line 670
    .end local v0    # "_arg0":I
    .end local v1    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :pswitch_42
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 672
    .local v0, "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 673
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 674
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->removeClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)Z

    move-result v2

    .line 675
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 676
    invoke-virtual {v9, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 677
    goto :goto_0

    .line 658
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Z
    :pswitch_43
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManagerClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManagerClient;

    move-result-object v0

    .line 660
    .restart local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 661
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 662
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)J

    move-result-wide v2

    .line 663
    .local v2, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    invoke-virtual {v9, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 665
    goto :goto_0

    .line 648
    .end local v0    # "_arg0":Landroid/view/accessibility/IAccessibilityManagerClient;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":J
    :pswitch_44
    sget-object v0, Landroid/view/accessibility/AccessibilityEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v8, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityEvent;

    .line 650
    .local v0, "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 651
    .restart local v1    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 652
    invoke-virtual {v6, v0, v1}, Landroid/view/accessibility/IAccessibilityManager$Stub;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 653
    goto :goto_0

    .line 640
    .end local v0    # "_arg0":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "_arg1":I
    :pswitch_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 641
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 642
    invoke-virtual {v6, v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->interrupt(I)V

    .line 643
    nop

    .line 1283
    .end local v0    # "_arg0":I
    :goto_0
    return v11

    nop

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
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
