.class public abstract Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;
.super Landroid/os/Binder;
.source "ISemDisplaySolutionManager.java"

# interfaces
.implements Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_getAlphaMaskLevel:I = 0x9

.field static final blacklist TRANSACTION_getAutoCurrentLimitOffModeEnabled:I = 0x5

.field static final blacklist TRANSACTION_getBlfAdaptiveCurrentIndex:I = 0x26

.field static final blacklist TRANSACTION_getCameraModeEnable:I = 0x3

.field static final blacklist TRANSACTION_getDouAppModeEnable:I = 0x4

.field static final blacklist TRANSACTION_getFingerPrintBacklightValue:I = 0x8

.field static final blacklist TRANSACTION_getGalleryModeEnable:I = 0x2

.field static final blacklist TRANSACTION_getOnPixelRatioValueForPMS:I = 0x6

.field static final blacklist TRANSACTION_getVideoEnhancerSettingState:I = 0x7

.field static final blacklist TRANSACTION_getVideoModeEnable:I = 0x1

.field static final blacklist TRANSACTION_isBlueLightFilterScheduledTime:I = 0x24

.field static final blacklist TRANSACTION_isMdnieScenarioControlServiceEnabled:I = 0xa

.field static final blacklist TRANSACTION_onAutoCurrentLimitOffMode:I = 0x12

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChanged:I = 0xf

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedInt:I = 0x11

.field static final blacklist TRANSACTION_onAutoCurrentLimitStateChangedWithBrightness:I = 0x10

.field static final blacklist TRANSACTION_onBurnInPreventionDisabled:I = 0x13

.field static final blacklist TRANSACTION_onDetailVeiwStateChanged:I = 0xe

.field static final blacklist TRANSACTION_setAutoCurrentLimitOffModeEnabled:I = 0x18

.field static final blacklist TRANSACTION_setBlfEnableTimeBySchedule:I = 0x21

.field static final blacklist TRANSACTION_setCameraModeEnable:I = 0x16

.field static final blacklist TRANSACTION_setDouAppModeEnable:I = 0x17

.field static final blacklist TRANSACTION_setEadIndexOffset:I = 0x25

.field static final blacklist TRANSACTION_setEyeComfortWeightingFactor:I = 0x1e

.field static final blacklist TRANSACTION_setGalleryModeEnable:I = 0x15

.field static final blacklist TRANSACTION_setHighDynamicRangeMode:I = 0xb

.field static final blacklist TRANSACTION_setIRCompensationMode:I = 0xd

.field static final blacklist TRANSACTION_setMdnieScenarioControlServiceEnable:I = 0x19

.field static final blacklist TRANSACTION_setMultipleScreenBrightness:I = 0x1b

.field static final blacklist TRANSACTION_setMultipleScreenBrightnessValueForHDR:I = 0x1d

.field static final blacklist TRANSACTION_setOnPixelRatioValueForPMS:I = 0x1c

.field static final blacklist TRANSACTION_setScreenBrightnessForPreview:I = 0x1a

.field static final blacklist TRANSACTION_setSleepPatternBLF:I = 0x20

.field static final blacklist TRANSACTION_setVideoEnhancerSettingState:I = 0x1f

.field static final blacklist TRANSACTION_setVideoModeEnable:I = 0x14

.field static final blacklist TRANSACTION_updateAutoBrightnessLux:I = 0xc

.field static final blacklist TRANSACTION_updateGlutMode:I = 0x22

.field static final blacklist TRANSACTION_updateQdcmMode:I = 0x23


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager;

    return-object v1

    :cond_1
    new-instance v1, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static blacklist getDefaultTransactionName(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    const-string v0, "getBlfAdaptiveCurrentIndex"

    return-object v0

    :pswitch_1
    const-string v0, "setEadIndexOffset"

    return-object v0

    :pswitch_2
    const-string v0, "isBlueLightFilterScheduledTime"

    return-object v0

    :pswitch_3
    const-string v0, "updateQdcmMode"

    return-object v0

    :pswitch_4
    const-string v0, "updateGlutMode"

    return-object v0

    :pswitch_5
    const-string v0, "setBlfEnableTimeBySchedule"

    return-object v0

    :pswitch_6
    const-string v0, "setSleepPatternBLF"

    return-object v0

    :pswitch_7
    const-string v0, "setVideoEnhancerSettingState"

    return-object v0

    :pswitch_8
    const-string v0, "setEyeComfortWeightingFactor"

    return-object v0

    :pswitch_9
    const-string v0, "setMultipleScreenBrightnessValueForHDR"

    return-object v0

    :pswitch_a
    const-string v0, "setOnPixelRatioValueForPMS"

    return-object v0

    :pswitch_b
    const-string v0, "setMultipleScreenBrightness"

    return-object v0

    :pswitch_c
    const-string v0, "setScreenBrightnessForPreview"

    return-object v0

    :pswitch_d
    const-string v0, "setMdnieScenarioControlServiceEnable"

    return-object v0

    :pswitch_e
    const-string v0, "setAutoCurrentLimitOffModeEnabled"

    return-object v0

    :pswitch_f
    const-string v0, "setDouAppModeEnable"

    return-object v0

    :pswitch_10
    const-string v0, "setCameraModeEnable"

    return-object v0

    :pswitch_11
    const-string v0, "setGalleryModeEnable"

    return-object v0

    :pswitch_12
    const-string v0, "setVideoModeEnable"

    return-object v0

    :pswitch_13
    const-string v0, "onBurnInPreventionDisabled"

    return-object v0

    :pswitch_14
    const-string v0, "onAutoCurrentLimitOffMode"

    return-object v0

    :pswitch_15
    const-string v0, "onAutoCurrentLimitStateChangedInt"

    return-object v0

    :pswitch_16
    const-string v0, "onAutoCurrentLimitStateChangedWithBrightness"

    return-object v0

    :pswitch_17
    const-string v0, "onAutoCurrentLimitStateChanged"

    return-object v0

    :pswitch_18
    const-string v0, "onDetailVeiwStateChanged"

    return-object v0

    :pswitch_19
    const-string v0, "setIRCompensationMode"

    return-object v0

    :pswitch_1a
    const-string v0, "updateAutoBrightnessLux"

    return-object v0

    :pswitch_1b
    const-string v0, "setHighDynamicRangeMode"

    return-object v0

    :pswitch_1c
    const-string v0, "isMdnieScenarioControlServiceEnabled"

    return-object v0

    :pswitch_1d
    const-string v0, "getAlphaMaskLevel"

    return-object v0

    :pswitch_1e
    const-string v0, "getFingerPrintBacklightValue"

    return-object v0

    :pswitch_1f
    const-string v0, "getVideoEnhancerSettingState"

    return-object v0

    :pswitch_20
    const-string v0, "getOnPixelRatioValueForPMS"

    return-object v0

    :pswitch_21
    const-string v0, "getAutoCurrentLimitOffModeEnabled"

    return-object v0

    :pswitch_22
    const-string v0, "getDouAppModeEnable"

    return-object v0

    :pswitch_23
    const-string v0, "getCameraModeEnable"

    return-object v0

    :pswitch_24
    const-string v0, "getGalleryModeEnable"

    return-object v0

    :pswitch_25
    const-string v0, "getVideoModeEnable"

    return-object v0

    nop

    :pswitch_data_0
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

    const/16 v0, 0x25

    return v0
.end method

.method public blacklist getTransactionName(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDefaultTransactionName(I)Ljava/lang/String;

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

    move-object/from16 v9, p3

    const-string v10, "com.samsung.android.displaysolution.ISemDisplaySolutionManager"

    const/4 v11, 0x1

    if-lt v8, v11, :cond_0

    const v0, 0xffffff

    if-gt v8, v0, :cond_0

    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    :goto_0
    const v0, 0x5f4e5446

    if-ne v8, v0, :cond_1

    invoke-virtual {v9, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v11

    :cond_1
    packed-switch v8, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getBlfAdaptiveCurrentIndex()I

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEadIndexOffset(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isBlueLightFilterScheduledTime()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateQdcmMode(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateGlutMode(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setBlfEnableTimeBySchedule(ZI)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v16

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    move-object/from16 v0, p0

    move-object v1, v13

    move-wide v2, v14

    move-wide/from16 v4, v16

    move/from16 v6, v18

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setSleepPatternBLF(Ljava/lang/String;JJF)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoEnhancerSettingState(Ljava/lang/String;I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setEyeComfortWeightingFactor(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightnessValueForHDR(F)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setOnPixelRatioValueForPMS(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMultipleScreenBrightness(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setScreenBrightnessForPreview(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setMdnieScenarioControlServiceEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setAutoCurrentLimitOffModeEnabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setDouAppModeEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setCameraModeEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setGalleryModeEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setVideoModeEnable(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onBurnInPreventionDisabled(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitOffMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedInt(I)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChangedWithBrightness(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_17
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onAutoCurrentLimitStateChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->onDetailVeiwStateChanged(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setIRCompensationMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->updateAutoBrightnessLux(II)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->setHighDynamicRangeMode(Z)V

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_1

    :pswitch_1c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto/16 :goto_1

    :pswitch_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0, v1, v2}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAlphaMaskLevel(FFF)F

    move-result v3

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v3}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    :pswitch_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getFingerPrintBacklightValue(I)F

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeFloat(F)V

    goto :goto_1

    :pswitch_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    invoke-virtual {v7, v0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoEnhancerSettingState(Ljava/lang/String;)I

    move-result v1

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :pswitch_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getOnPixelRatioValueForPMS()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getAutoCurrentLimitOffModeEnabled()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getDouAppModeEnable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getCameraModeEnable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getGalleryModeEnable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_1

    :pswitch_25
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/displaysolution/ISemDisplaySolutionManager$Stub;->getVideoModeEnable()Z

    move-result v0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_1
    return v11

    :pswitch_data_0
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
        :pswitch_0
    .end packed-switch
.end method
