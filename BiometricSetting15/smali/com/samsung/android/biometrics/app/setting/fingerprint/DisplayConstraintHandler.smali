.class public final Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field static final COLOR_INVERSION_RESTORE_DELAY:J = 0x32L

.field static final ECS_SCHEDULE_AUTO:I = 0x2

.field static final ECS_SCHEDULE_MANUAL:I = 0x1

.field static final FEATURE_MDNIE_MODE:I

.field static final FEATURE_SUPPORT_ADAPTIVE_BLF:Z

.field public static final FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

.field public static final FEATURE_SUPPORT_COLOR_LENS:Z

.field public static final FEATURE_SUPPORT_COLOR_NEGATIVE:Z


# instance fields
.field public isNeedToRestoreColorNegativeOrGrayScale:Z

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public mDbAdaptiveBlueLightFilterOpacity:I

.field public mDbBlueLightFilterOpacity:I

.field public mDbColorAdjustment:I

.field public mDbColorAdjustmentUseParameter:F

.field public mDbColorGrayScale:I

.field public mDbColorLens:I

.field public mDbColorLensFilterOpacity:I

.field public mDbColorLensFilterType:I

.field public mDbColorNegative:I

.field public mDbDirectAccessColorAdjustment:I

.field public mDbDirectAccessColorLens:I

.field public mDbDirectAccessColorNegative:I

.field public final mFpServiceProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

.field public final mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

.field public mIsBlueLightFilterDisabled:Z

.field public mIsColorInversionDisabled:Z

.field public mIsDisabled:Z

.field public mIsEnabledAdaptiveBlueLightFilter:Z

.field public mIsEnabledBlueLightFilter:Z

.field public mIsEnabledColourCorrection:Z

.field public mIsStarted:Z

.field public mNeedToRestoreColorAdjustment:Z

.field public mNeedToRestoreColorLens:Z

.field public mNeedToRestoreColourCorrection:Z

.field public mNeedToRestoreColourInversion:Z

.field public mNeedToRestoreDirectAccessColorAdjustment:Z

.field public mNeedToRestoreDirectAccessColorLens:Z

.field public mNeedToRestoreDirectAccessColorNegative:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    if-lez v0, :cond_0

    .line 14
    .line 15
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v1

    .line 18
    :goto_0
    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_ADAPTIVE_BLF:Z

    .line 19
    .line 20
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v3, "SEC_FLOATING_FEATURE_COMMON_CONFIG_MDNIE_MODE"

    .line 25
    .line 26
    invoke-virtual {v0, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_MDNIE_MODE:I

    .line 31
    .line 32
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_COLOR_LENS"

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    sput-boolean v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_LENS:Z

    .line 43
    .line 44
    and-int/lit16 v3, v0, 0x100

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    move v3, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v3, v1

    .line 51
    :goto_1
    sput-boolean v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    .line 52
    .line 53
    and-int/lit16 v0, v0, 0x800

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    move v1, v2

    .line 58
    :cond_2
    sput-boolean v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    .line 59
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mFpServiceProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/BackgroundThread;->get()Lcom/samsung/android/biometrics/app/setting/BackgroundThread;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-direct {p1, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final disableAllFunctions()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsStarted:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 11
    .line 12
    const/16 v1, 0x66

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 18
    .line 19
    const/16 v0, 0x65

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 26
    .line 27
    const/16 v1, 0x3ea

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 33
    .line 34
    const/16 v0, 0x3e9

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final handleDisableBlueLightFilter()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsBlueLightFilterDisabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsBlueLightFilterDisabled:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->updateBlueLightFilterValue()V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeBlock(Z)Z

    .line 21
    .line 22
    .line 23
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "BLF: disable = "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ", "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbBlueLightFilterOpacity:I

    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    const-string v0, "BSS_DisplayConstraintHandler"

    .line 50
    .line 51
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final handleDisableColorInversion()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsColorInversionDisabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsColorInversionDisabled:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    const-string v1, "accessibility_display_inversion_enabled"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-ne v2, v0, :cond_1

    .line 24
    .line 25
    move v2, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v2, v3

    .line 28
    :goto_0
    if-eqz v2, :cond_2

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 31
    .line 32
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    invoke-static {p0, v1, v0, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 40
    .line 41
    .line 42
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "disableColorInversion: "

    .line 45
    .line 46
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    const-string v0, "BSS_DisplayConstraintHandler"

    .line 57
    .line 58
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLogFormat(Landroid/os/Message;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "BSS_DisplayConstraintHandler"

    .line 8
    .line 9
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-object/from16 v1, p1

    .line 13
    .line 14
    iget v1, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v1, v3, :cond_23

    .line 18
    .line 19
    const/4 v4, 0x2

    .line 20
    if-eq v1, v4, :cond_22

    .line 21
    .line 22
    const/16 v4, 0x65

    .line 23
    .line 24
    if-eq v1, v4, :cond_21

    .line 25
    .line 26
    const/16 v4, 0x66

    .line 27
    .line 28
    if-eq v1, v4, :cond_20

    .line 29
    .line 30
    const/16 v4, 0x3e9

    .line 31
    .line 32
    const-string v5, "direct_color_lens"

    .line 33
    .line 34
    const-string v6, "direct_color_adjustment"

    .line 35
    .line 36
    const-string v7, "direct_negative"

    .line 37
    .line 38
    const-string v8, "accessibility_display_daltonizer_enabled"

    .line 39
    .line 40
    const-string v9, ", "

    .line 41
    .line 42
    const/4 v10, 0x0

    .line 43
    if-eq v1, v4, :cond_13

    .line 44
    .line 45
    const/16 v4, 0x3ea

    .line 46
    .line 47
    if-eq v1, v4, :cond_0

    .line 48
    .line 49
    goto/16 :goto_8

    .line 50
    .line 51
    :cond_0
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsDisabled:Z

    .line 52
    .line 53
    if-nez v1, :cond_1

    .line 54
    .line 55
    goto/16 :goto_8

    .line 56
    .line 57
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mFpServiceProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 58
    .line 59
    move-object v11, v1

    .line 60
    check-cast v11, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 61
    .line 62
    const/4 v12, 0x7

    .line 63
    const/4 v13, 0x1

    .line 64
    const-wide/16 v14, 0x0

    .line 65
    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleRestoreBlueLightFilter()V

    .line 72
    .line 73
    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleRestoreColorInversion()V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->updateA11ySettingDB()V

    .line 78
    .line 79
    .line 80
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorAdjustment:Z

    .line 81
    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorAdjustment:Z

    .line 85
    .line 86
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustment:I

    .line 87
    .line 88
    if-ne v1, v3, :cond_3

    .line 89
    .line 90
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 91
    .line 92
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustmentUseParameter:F

    .line 93
    .line 94
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 95
    .line 96
    if-nez v1, :cond_2

    .line 97
    .line 98
    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorLens:Z

    .line 103
    .line 104
    if-eqz v1, :cond_5

    .line 105
    .line 106
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorLens:Z

    .line 107
    .line 108
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLens:I

    .line 109
    .line 110
    if-ne v1, v3, :cond_5

    .line 111
    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string v4, "handleRestoreAll: COLOR LENS, "

    .line 115
    .line 116
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterType:I

    .line 120
    .line 121
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterOpacity:I

    .line 128
    .line 129
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 140
    .line 141
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterType:I

    .line 142
    .line 143
    iget v9, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterOpacity:I

    .line 144
    .line 145
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 146
    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    invoke-virtual {v1, v4, v9}, Landroid/view/accessibility/AccessibilityManager;->semEnableMdnieColorFilter(II)Z

    .line 151
    .line 152
    .line 153
    :cond_5
    :goto_1
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->isNeedToRestoreColorNegativeOrGrayScale:Z

    .line 154
    .line 155
    if-eqz v1, :cond_d

    .line 156
    .line 157
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->isNeedToRestoreColorNegativeOrGrayScale:Z

    .line 158
    .line 159
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorGrayScale:I

    .line 160
    .line 161
    if-ne v1, v3, :cond_6

    .line 162
    .line 163
    move v1, v3

    .line 164
    goto :goto_2

    .line 165
    :cond_6
    move v1, v10

    .line 166
    :goto_2
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorNegative:I

    .line 167
    .line 168
    if-ne v4, v3, :cond_7

    .line 169
    .line 170
    move v4, v3

    .line 171
    goto :goto_3

    .line 172
    :cond_7
    move v4, v10

    .line 173
    :goto_3
    if-eqz v1, :cond_9

    .line 174
    .line 175
    if-eqz v4, :cond_9

    .line 176
    .line 177
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 178
    .line 179
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 180
    .line 181
    if-nez v1, :cond_8

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    const/4 v4, 0x5

    .line 185
    invoke-virtual {v1, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_9
    if-eqz v1, :cond_b

    .line 190
    .line 191
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 192
    .line 193
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 194
    .line 195
    if-nez v1, :cond_a

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_a
    const/4 v4, 0x4

    .line 199
    invoke-virtual {v1, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 200
    .line 201
    .line 202
    goto :goto_4

    .line 203
    :cond_b
    if-eqz v4, :cond_d

    .line 204
    .line 205
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 206
    .line 207
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 208
    .line 209
    if-nez v1, :cond_c

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_c
    invoke-virtual {v1, v3, v3}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 213
    .line 214
    .line 215
    :cond_d
    :goto_4
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 216
    .line 217
    if-eqz v1, :cond_e

    .line 218
    .line 219
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 220
    .line 221
    const-string v1, "handleRestoreAll: COLOR Inversion"

    .line 222
    .line 223
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    .line 225
    .line 226
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 227
    .line 228
    const-string v4, "accessibility_display_inversion_enabled"

    .line 229
    .line 230
    invoke-virtual {v1, v3, v4, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 231
    .line 232
    .line 233
    :cond_e
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourCorrection:Z

    .line 234
    .line 235
    if-eqz v1, :cond_f

    .line 236
    .line 237
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourCorrection:Z

    .line 238
    .line 239
    const-string v1, "handleRestoreAll: COLOR Correction"

    .line 240
    .line 241
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 245
    .line 246
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 247
    .line 248
    invoke-static {v1, v8, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 249
    .line 250
    .line 251
    :cond_f
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorNegative:Z

    .line 252
    .line 253
    if-eqz v1, :cond_10

    .line 254
    .line 255
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 256
    .line 257
    invoke-virtual {v1, v3, v7, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 258
    .line 259
    .line 260
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorNegative:Z

    .line 261
    .line 262
    :cond_10
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorAdjustment:Z

    .line 263
    .line 264
    if-eqz v1, :cond_11

    .line 265
    .line 266
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 267
    .line 268
    invoke-virtual {v1, v3, v6, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 269
    .line 270
    .line 271
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorAdjustment:Z

    .line 272
    .line 273
    :cond_11
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorLens:Z

    .line 274
    .line 275
    if-eqz v1, :cond_12

    .line 276
    .line 277
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 278
    .line 279
    invoke-virtual {v1, v3, v5, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 280
    .line 281
    .line 282
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorLens:Z

    .line 283
    .line 284
    :cond_12
    iput-boolean v10, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsDisabled:Z

    .line 285
    .line 286
    goto/16 :goto_8

    .line 287
    .line 288
    :cond_13
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsDisabled:Z

    .line 289
    .line 290
    if-eqz v1, :cond_14

    .line 291
    .line 292
    goto/16 :goto_8

    .line 293
    .line 294
    :cond_14
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsDisabled:Z

    .line 295
    .line 296
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mFpServiceProvider:Lcom/samsung/android/biometrics/app/setting/fingerprint/FpServiceProvider;

    .line 297
    .line 298
    move-object v11, v1

    .line 299
    check-cast v11, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;

    .line 300
    .line 301
    const/4 v12, 0x7

    .line 302
    const/4 v13, 0x0

    .line 303
    const-wide/16 v14, 0x0

    .line 304
    .line 305
    const/16 v16, 0x0

    .line 306
    .line 307
    invoke-virtual/range {v11 .. v16}, Lcom/samsung/android/biometrics/app/setting/FpServiceProviderImpl;->requestToFpSvc(IIJLjava/lang/String;)I

    .line 308
    .line 309
    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleDisableBlueLightFilter()V

    .line 311
    .line 312
    .line 313
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleDisableColorInversion()V

    .line 314
    .line 315
    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->updateA11ySettingDB()V

    .line 317
    .line 318
    .line 319
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustment:I

    .line 320
    .line 321
    if-ne v1, v3, :cond_16

    .line 322
    .line 323
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorAdjustment:Z

    .line 324
    .line 325
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 326
    .line 327
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustmentUseParameter:F

    .line 328
    .line 329
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 330
    .line 331
    if-nez v1, :cond_15

    .line 332
    .line 333
    goto :goto_5

    .line 334
    :cond_15
    invoke-virtual {v1, v10, v4}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieColorBlind(ZF)Z

    .line 335
    .line 336
    .line 337
    :cond_16
    :goto_5
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLens:I

    .line 338
    .line 339
    if-ne v1, v3, :cond_18

    .line 340
    .line 341
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColorLens:Z

    .line 342
    .line 343
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 344
    .line 345
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 346
    .line 347
    if-nez v1, :cond_17

    .line 348
    .line 349
    goto :goto_6

    .line 350
    :cond_17
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->semDisableMdnieColorFilter()Z

    .line 351
    .line 352
    .line 353
    :cond_18
    :goto_6
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorNegative:I

    .line 354
    .line 355
    if-eq v1, v3, :cond_19

    .line 356
    .line 357
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorGrayScale:I

    .line 358
    .line 359
    if-ne v1, v3, :cond_1b

    .line 360
    .line 361
    :cond_19
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->isNeedToRestoreColorNegativeOrGrayScale:Z

    .line 362
    .line 363
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 364
    .line 365
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 366
    .line 367
    if-nez v1, :cond_1a

    .line 368
    .line 369
    goto :goto_7

    .line 370
    :cond_1a
    invoke-virtual {v1, v3, v10}, Landroid/view/accessibility/AccessibilityManager;->semSetMdnieAccessibilityMode(IZ)Z

    .line 371
    .line 372
    .line 373
    :cond_1b
    :goto_7
    iget-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledColourCorrection:Z

    .line 374
    .line 375
    if-eqz v1, :cond_1c

    .line 376
    .line 377
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourCorrection:Z

    .line 378
    .line 379
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 380
    .line 381
    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 382
    .line 383
    invoke-static {v1, v8, v3, v10}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 384
    .line 385
    .line 386
    :cond_1c
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorNegative:I

    .line 387
    .line 388
    if-ne v1, v3, :cond_1d

    .line 389
    .line 390
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 391
    .line 392
    invoke-virtual {v1, v10, v7, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 393
    .line 394
    .line 395
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorNegative:Z

    .line 396
    .line 397
    :cond_1d
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorAdjustment:I

    .line 398
    .line 399
    if-ne v1, v3, :cond_1e

    .line 400
    .line 401
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 402
    .line 403
    invoke-virtual {v1, v10, v6, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 404
    .line 405
    .line 406
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorAdjustment:Z

    .line 407
    .line 408
    :cond_1e
    iget v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorLens:I

    .line 409
    .line 410
    if-ne v1, v3, :cond_1f

    .line 411
    .line 412
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 413
    .line 414
    invoke-virtual {v1, v10, v5, v10}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->putIntDb(ILjava/lang/String;Z)V

    .line 415
    .line 416
    .line 417
    iput-boolean v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreDirectAccessColorLens:Z

    .line 418
    .line 419
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v4, "handleDisableAll: "

    .line 422
    .line 423
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustment:I

    .line 427
    .line 428
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLens:I

    .line 435
    .line 436
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorNegative:I

    .line 443
    .line 444
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorGrayScale:I

    .line 451
    .line 452
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    iget-boolean v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledColourCorrection:Z

    .line 459
    .line 460
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorNegative:I

    .line 467
    .line 468
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    iget v4, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorAdjustment:I

    .line 475
    .line 476
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    iget v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorLens:I

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    .line 493
    .line 494
    goto :goto_8

    .line 495
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleRestoreColorInversion()V

    .line 496
    .line 497
    .line 498
    goto :goto_8

    .line 499
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleDisableColorInversion()V

    .line 500
    .line 501
    .line 502
    goto :goto_8

    .line 503
    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleRestoreBlueLightFilter()V

    .line 504
    .line 505
    .line 506
    goto :goto_8

    .line 507
    :cond_23
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->handleDisableBlueLightFilter()V

    .line 508
    .line 509
    .line 510
    :goto_8
    return v3
.end method

.method public final handleRestoreBlueLightFilter()V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsBlueLightFilterDisabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->updateBlueLightFilterValue()V

    .line 7
    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 10
    .line 11
    const-string v1, "BSS_DisplayConstraintHandler"

    .line 12
    .line 13
    const-string v2, ", "

    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v4, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 22
    .line 23
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const-string v0, "blue_light_filter_scheduled"

    .line 29
    .line 30
    invoke-static {v5, v0, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_7

    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 37
    .line 38
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    const-string v0, "blue_light_filter_type"

    .line 44
    .line 45
    invoke-static {v5, v0, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eq v0, v3, :cond_2

    .line 50
    .line 51
    const/4 v5, 0x2

    .line 52
    if-eq v0, v5, :cond_2

    .line 53
    .line 54
    goto/16 :goto_2

    .line 55
    .line 56
    :cond_2
    const-wide/16 v5, 0x1a4

    .line 57
    .line 58
    const-wide/16 v7, 0x474

    .line 59
    .line 60
    if-ne v0, v3, :cond_3

    .line 61
    .line 62
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 63
    .line 64
    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    const-string v0, "blue_light_filter_on_time"

    .line 70
    .line 71
    invoke-static {v9, v0, v7, v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v7

    .line 75
    const-string v0, "blue_light_filter_off_time"

    .line 76
    .line 77
    invoke-static {v9, v0, v5, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;J)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    new-instance v0, Landroid/util/Pair;

    .line 82
    .line 83
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-direct {v0, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 96
    .line 97
    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    const-string v0, "blue_light_filter_automatic_on_time"

    .line 103
    .line 104
    invoke-static {v9, v0, v7, v8}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;J)J

    .line 105
    .line 106
    .line 107
    move-result-wide v7

    .line 108
    const-string v0, "blue_light_filter_automatic_off_time"

    .line 109
    .line 110
    invoke-static {v9, v0, v5, v6}, Lcom/samsung/android/biometrics/app/setting/Utils;->getLongDb(Landroid/content/Context;Ljava/lang/String;J)J

    .line 111
    .line 112
    .line 113
    move-result-wide v5

    .line 114
    new-instance v0, Landroid/util/Pair;

    .line 115
    .line 116
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-direct {v0, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 128
    .line 129
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 133
    .line 134
    .line 135
    move-result-object v5

    .line 136
    new-instance v6, Ljava/util/GregorianCalendar;

    .line 137
    .line 138
    invoke-direct {v6, v5}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 139
    .line 140
    .line 141
    new-instance v5, Ljava/util/Date;

    .line 142
    .line 143
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 147
    .line 148
    .line 149
    const/16 v5, 0xb

    .line 150
    .line 151
    invoke-virtual {v6, v5}, Ljava/util/Calendar;->get(I)I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    mul-int/lit8 v5, v5, 0x3c

    .line 156
    .line 157
    const/16 v7, 0xc

    .line 158
    .line 159
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    add-int/2addr v6, v5

    .line 164
    int-to-long v5, v6

    .line 165
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 166
    .line 167
    check-cast v7, Ljava/lang/Long;

    .line 168
    .line 169
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 170
    .line 171
    .line 172
    move-result-wide v7

    .line 173
    iget-object v9, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 174
    .line 175
    check-cast v9, Ljava/lang/Long;

    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 178
    .line 179
    .line 180
    move-result-wide v9

    .line 181
    cmp-long v7, v7, v9

    .line 182
    .line 183
    if-gez v7, :cond_5

    .line 184
    .line 185
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 186
    .line 187
    check-cast v7, Ljava/lang/Long;

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 190
    .line 191
    .line 192
    move-result-wide v7

    .line 193
    cmp-long v7, v5, v7

    .line 194
    .line 195
    if-ltz v7, :cond_4

    .line 196
    .line 197
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v7, Ljava/lang/Long;

    .line 200
    .line 201
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 202
    .line 203
    .line 204
    move-result-wide v7

    .line 205
    cmp-long v7, v5, v7

    .line 206
    .line 207
    if-ltz v7, :cond_6

    .line 208
    .line 209
    :cond_4
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_5
    iget-object v7, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 213
    .line 214
    check-cast v7, Ljava/lang/Long;

    .line 215
    .line 216
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 217
    .line 218
    .line 219
    move-result-wide v7

    .line 220
    cmp-long v7, v5, v7

    .line 221
    .line 222
    if-ltz v7, :cond_6

    .line 223
    .line 224
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 225
    .line 226
    check-cast v7, Ljava/lang/Long;

    .line 227
    .line 228
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 229
    .line 230
    .line 231
    move-result-wide v7

    .line 232
    cmp-long v7, v5, v7

    .line 233
    .line 234
    if-gez v7, :cond_6

    .line 235
    .line 236
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 237
    .line 238
    :cond_6
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    const-string v8, "Scheduled BLF: "

    .line 241
    .line 242
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 246
    .line 247
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 268
    .line 269
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    :cond_7
    :goto_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_ADAPTIVE_BLF:Z

    .line 280
    .line 281
    if-eqz v0, :cond_a

    .line 282
    .line 283
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 284
    .line 285
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 286
    .line 287
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 288
    .line 289
    .line 290
    const-string v0, "blue_light_filter_adaptive_mode"

    .line 291
    .line 292
    invoke-static {v5, v0, v4, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-ne v0, v3, :cond_8

    .line 297
    .line 298
    move v0, v3

    .line 299
    goto :goto_3

    .line 300
    :cond_8
    move v0, v4

    .line 301
    :goto_3
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledAdaptiveBlueLightFilter:Z

    .line 302
    .line 303
    if-eqz v0, :cond_a

    .line 304
    .line 305
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 306
    .line 307
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 308
    .line 309
    if-nez v0, :cond_9

    .line 310
    .line 311
    move v0, v4

    .line 312
    goto :goto_4

    .line 313
    :cond_9
    invoke-virtual {v0}, Lcom/samsung/android/hardware/display/SemMdnieManager;->getNightModeStep()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    :goto_4
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbAdaptiveBlueLightFilterOpacity:I

    .line 318
    .line 319
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 320
    .line 321
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 322
    .line 323
    if-nez v0, :cond_b

    .line 324
    .line 325
    goto :goto_5

    .line 326
    :cond_b
    invoke-virtual {v0, v3}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeBlock(Z)Z

    .line 327
    .line 328
    .line 329
    :goto_5
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 330
    .line 331
    if-eqz v0, :cond_e

    .line 332
    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    const-string v3, "restoreBlueLightFilter: "

    .line 336
    .line 337
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbBlueLightFilterOpacity:I

    .line 341
    .line 342
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledAdaptiveBlueLightFilter:Z

    .line 349
    .line 350
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbAdaptiveBlueLightFilterOpacity:I

    .line 357
    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 369
    .line 370
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledAdaptiveBlueLightFilter:Z

    .line 371
    .line 372
    if-eqz v1, :cond_c

    .line 373
    .line 374
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbAdaptiveBlueLightFilterOpacity:I

    .line 375
    .line 376
    goto :goto_6

    .line 377
    :cond_c
    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbBlueLightFilterOpacity:I

    .line 378
    .line 379
    :goto_6
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 380
    .line 381
    if-nez v0, :cond_d

    .line 382
    .line 383
    goto :goto_7

    .line 384
    :cond_d
    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->enableNightMode(I)Z

    .line 385
    .line 386
    .line 387
    :cond_e
    :goto_7
    iput-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsBlueLightFilterDisabled:Z

    .line 388
    .line 389
    return-void
.end method

.method public final handleRestoreColorInversion()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsColorInversionDisabled:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 12
    .line 13
    const-string v0, "BSS_DisplayConstraintHandler"

    .line 14
    .line 15
    const-string v2, "restoreColorInversion"

    .line 16
    .line 17
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 21
    .line 22
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    const-string v0, "accessibility_display_inversion_enabled"

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-static {v2, v0, v3, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->putIntDb(Landroid/content/Context;Ljava/lang/String;ZI)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsColorInversionDisabled:Z

    .line 34
    .line 35
    return-void
.end method

.method public final stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsStarted:Z

    .line 9
    .line 10
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mNeedToRestoreColourInversion:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-wide/16 v0, 0x32

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    :goto_0
    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    .line 20
    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 24
    .line 25
    const/16 v3, 0x65

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 31
    .line 32
    const/16 v2, 0x66

    .line 33
    .line 34
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 39
    .line 40
    const/16 v3, 0x3e9

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mBgHandler:Landroid/os/Handler;

    .line 46
    .line 47
    const/16 v2, 0x3ea

    .line 48
    .line 49
    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 50
    .line 51
    .line 52
    :goto_1
    return-void
.end method

.method public final updateA11ySettingDB()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_ADJUSTMENT:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const-string v4, "color_blind"

    .line 13
    .line 14
    invoke-static {v0, v4, v2, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustment:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    const-string v4, "color_adjustment_type"

    .line 28
    .line 29
    invoke-static {v0, v4, v1, v3}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 34
    .line 35
    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    const-string v4, "color_blind_user_parameter"

    .line 38
    .line 39
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    const/4 v5, -0x2

    .line 44
    const/4 v6, 0x0

    .line 45
    :try_start_0
    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 46
    .line 47
    .line 48
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v3

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    const-string v5, "getFloatDb: "

    .line 54
    .line 55
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v5, "BSS_Utils"

    .line 59
    .line 60
    invoke-static {v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/FocusableWindow$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iput v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustmentUseParameter:F

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_0
    move v0, v2

    .line 67
    :goto_1
    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorAdjustment:I

    .line 68
    .line 69
    if-ne v3, v1, :cond_1

    .line 70
    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    move v0, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    move v0, v2

    .line 76
    :goto_2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorGrayScale:I

    .line 77
    .line 78
    :cond_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_LENS:Z

    .line 79
    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 85
    .line 86
    const-string v3, "color_lens_switch"

    .line 87
    .line 88
    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLens:I

    .line 93
    .line 94
    if-ne v0, v1, :cond_3

    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 99
    .line 100
    const-string v3, "color_lens_type"

    .line 101
    .line 102
    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterType:I

    .line 107
    .line 108
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 109
    .line 110
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 111
    .line 112
    const-string v3, "color_lens_opacity"

    .line 113
    .line 114
    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorLensFilterOpacity:I

    .line 119
    .line 120
    :cond_3
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->FEATURE_SUPPORT_COLOR_NEGATIVE:Z

    .line 121
    .line 122
    if-eqz v0, :cond_4

    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 127
    .line 128
    const-string v3, "high_contrast"

    .line 129
    .line 130
    invoke-static {v0, v3, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbColorNegative:I

    .line 135
    .line 136
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 139
    .line 140
    const-string v3, "accessibility_display_daltonizer_enabled"

    .line 141
    .line 142
    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-ne v0, v1, :cond_5

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_5
    move v1, v2

    .line 150
    :goto_3
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledColourCorrection:Z

    .line 151
    .line 152
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 153
    .line 154
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 155
    .line 156
    const-string v1, "direct_negative"

    .line 157
    .line 158
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorNegative:I

    .line 163
    .line 164
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 167
    .line 168
    const-string v1, "direct_color_adjustment"

    .line 169
    .line 170
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorAdjustment:I

    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;->mContext:Landroid/content/Context;

    .line 179
    .line 180
    const-string v1, "direct_color_lens"

    .line 181
    .line 182
    invoke-static {v0, v1, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 183
    .line 184
    .line 185
    move-result v0

    .line 186
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbDirectAccessColorLens:I

    .line 187
    .line 188
    return-void
.end method

.method public final updateBlueLightFilterValue()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string v0, "blue_light_filter"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v0, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v1, v2

    .line 20
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mIsEnabledBlueLightFilter:Z

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mInjector:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler$Injector;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mContext:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    const-string v0, "blue_light_filter_opacity"

    .line 32
    .line 33
    invoke-static {v1, v0, v2, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayConstraintHandler;->mDbBlueLightFilterOpacity:I

    .line 38
    .line 39
    :cond_1
    return-void
.end method
