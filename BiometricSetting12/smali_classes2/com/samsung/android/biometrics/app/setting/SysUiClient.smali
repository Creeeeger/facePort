.class public Lcom/samsung/android/biometrics/app/setting/SysUiClient;
.super Ljava/lang/Object;
.source "SysUiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;,
        Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "BSS_SysUiClient"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mCurrentDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

.field private mEffectiveUserId:I

.field private mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

.field private mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

.field private mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field private mIsRequireTouchBlock:Z

.field private mIsTpaMode:Z

.field private mKnoxSysUiClientHelper:Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

.field private mLatestRotationInfo:I

.field private mMainHandler:Landroid/os/Handler;

.field private mOperationId:J

.field private mPackageName:Ljava/lang/String;

.field private mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

.field private mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

.field private mSessionId:I

.field private mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

.field private mUiType:I

.field private final mWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/biometrics/app/setting/SysUiWindow;",
            ">;"
        }
    .end annotation
.end field

.field private final mfpMaskClientList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Handler;Landroid/os/Bundle;JLjava/lang/String;Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/hardware/biometrics/PromptInfo;Z)V
    .locals 16

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    if-nez p7, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v3, p7

    :goto_0
    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mBundle:Landroid/os/Bundle;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    move-object/from16 v4, p6

    iput-object v4, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    move/from16 v5, p1

    iput v5, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    move-object/from16 v6, p10

    iput-object v6, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    move/from16 v7, p3

    iput v7, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mEffectiveUserId:I

    move-wide/from16 v8, p8

    iput-wide v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mOperationId:J

    new-instance v10, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v10, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V

    iput-object v10, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    new-instance v10, Landroid/util/DisplayMetrics;

    invoke-direct {v10}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v10, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCurrentDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v10, p11

    iput-object v10, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move/from16 v11, p13

    iput-boolean v11, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mIsRequireTouchBlock:Z

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v12

    if-nez v12, :cond_1

    move/from16 v12, p4

    iput v12, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    goto :goto_1

    :cond_1
    move/from16 v12, p4

    :goto_1
    move-object/from16 v13, p5

    iput-object v13, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getRotation()I

    move-result v14

    iput v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    sget-boolean v14, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v14, :cond_2

    new-instance v14, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v14, v15}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    :cond_2
    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v14

    if-eqz v14, :cond_4

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v14

    const-string v15, "MANAGED_PROFILE_KNOX"

    invoke-virtual {v14, v15, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;

    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v14, v15, v1}, Lcom/samsung/android/biometrics/app/setting/knox/WorkProfileSysUiClientHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mKnoxSysUiClientHelper:Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v14, "SECURE_FOLDER"

    const/4 v15, 0x0

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;

    iget-object v14, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v1, v14, v15}, Lcom/samsung/android/biometrics/app/setting/knox/SecureFolderSysUiClientHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mKnoxSysUiClientHelper:Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    :cond_4
    :goto_2
    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-nez v1, :cond_5

    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-eqz v1, :cond_7

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    const-string v14, "biometric_tpa_mode"

    const/4 v15, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v14, v15, v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v15

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    iput-boolean v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mIsTpaMode:Z

    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->createWindows(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpCalibrationMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mEffectiveUserId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mKnoxSysUiClientHelper:Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mOperationId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleButtonClick(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/SysUiClient;I[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleOnDismissed(I[B)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpKeyguard()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/SysUiClient;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendErrorEventToSystemService(II)V

    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/SysUiClient;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleTouchEvent(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mIsTpaMode:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->removeFpSAMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpNormalApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpPrompt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mIsRequireTouchBlock:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Landroid/hardware/biometrics/PromptInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isPrompt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFacePrompt()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/SysUiClient;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    return v0
.end method

.method private cleanUp()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->dismiss()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    or-int/lit8 v0, v2, 0x10

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    :cond_3
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_4
    :goto_1
    return-void
.end method

.method private createWindows(I)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->isFingerprintType(I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->createLayers()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->initForKeyguard()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpPrompt()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpNormalApp()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplayBackgroundGuideWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isPrompt()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isCredentialPrompt()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/BiometricPromptWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x3ec

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    goto :goto_2

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isGestureCalibrationType()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/GestureCalibrationWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SysUiClient.createWindows: Windows="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleButtonClick(II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleButtonClick: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-ne p1, v2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    return-void

    :cond_0
    const/16 v2, 0x65

    const/4 v3, 0x2

    if-ne p1, v2, :cond_3

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendEvent(II)V

    if-ne p2, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_2

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v0, 0x66

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnEvent(II)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->dismiss()Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxAuthCredentialWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    goto :goto_1

    :cond_5
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v1}, Lcom/samsung/android/biometrics/app/setting/credential/AuthCredentialWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->show()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->dismiss()Z

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptWindow:Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    :cond_6
    return-void

    :cond_7
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleOnDismissed(I[B)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private handleTouchEvent(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onTouchEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTouchEvent: CallbackList, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private handleTspBlockStatus(Z)V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_TSP_BLOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleTspBlock(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isFacePrompt()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFpCalibrationMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFpKeyguard()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFpNormalApp()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isFpPrompt()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isGestureCalibrationType()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPrompt()Z
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_1

    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_1

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_1

    and-int/lit16 v1, v0, 0x4000

    if-nez v1, :cond_1

    const v1, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private removeFpSAMode()V
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    return-void
.end method

.method private sendDismissedEvent(I[B)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onSysUiDismissed(II[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BSS_SysUiClient"

    const-string v2, "sendDismissedEvent: error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendErrorEventToSystemService(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onError(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendErrorEventToSystemService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private sendEvent(II)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onEvent(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method appendType(IIILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;JLjava/lang/String;Landroid/hardware/biometrics/PromptInfo;Z)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    if-nez p5, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mBundle:Landroid/os/Bundle;

    iput-object p9, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mEffectiveUserId:I

    iput-wide p6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mOperationId:J

    iput p3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    iput-object p8, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSysUiCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;

    iput-boolean p10, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mIsRequireTouchBlock:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->createWindows(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    return-void
.end method

.method public getBundle()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getInDisplaySensorWindow()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    return-object v0
.end method

.method getSessionId()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    return v0
.end method

.method public handleAlphaMaskSaMode(ZILandroid/os/Bundle;)Z
    .locals 4

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-ltz v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;

    invoke-direct {v3, p3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$FpOpMaskClient;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    or-int/lit8 v2, v2, 0x10

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-direct {v2, v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->createLayers()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mfpMaskClientList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->removeFpSAMode()V

    :cond_5
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    if-nez v2, :cond_6

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    return v0

    :cond_6
    :goto_0
    return v1
.end method

.method public handleAuthenticationError(IILjava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v2, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleAuthenticationError(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleAuthenticationFailed(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->handleAuthenticationFailed()Z

    :cond_1
    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleAuthenticationHelp(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v2, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleAuthenticationSucceeded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKnoxProfile()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getKnoxSysUiClientHelper()Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/biometrics/app/setting/knox/KnoxSysUiClientHelper;->handleAuthenticationSucceeded()Z

    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method

.method public handleDisplayChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    if-eq v0, v1, :cond_0

    xor-int/2addr v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->onRotationInfoChanged(I)V

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleDisplayChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_SysUiClient"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onDisplayChanged(I)V

    :cond_1
    return-void
.end method

.method public handleEvent(IIILandroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mSessionId:I

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleEvent: token mismatch, ignore this event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_SysUiClient"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0xca

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    packed-switch p3, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleTspBlockStatus(Z)V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleTspBlockStatus(Z)V

    return-void

    :cond_1
    const/16 v0, 0xcb

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationError(IILjava/lang/String;)V

    return-void

    :cond_2
    const/16 v0, 0xcc

    if-ne p2, v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationError(IILjava/lang/String;)V

    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, p2, p3, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->handleEvent(IILandroid/os/Bundle;)V

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ec
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleOnCoverOpen(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    :cond_0
    return-void
.end method

.method public handleOnTaskStackListener(II)V
    .locals 4

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isPrompt()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BSS_SysUiClient"

    if-eqz v0, :cond_0

    const-string v0, "Keep Prompt: DeX"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->getTopTaskPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mPackageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->isSplitScreenWindowMode(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Evicting client due to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleUserCancel(I)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleOnTaskStackListener(II)V

    :cond_2
    return-void
.end method

.method public handleUserCancel(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mMainHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method isFpAlphaMaskSAMode()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFpPrivilegedApp()Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mUiType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConfigurationChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_SysUiClient"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCurrentDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->updateSensorInfo(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mCurrentDisplayMetrics:Landroid/util/DisplayMetrics;

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v3, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    invoke-virtual {v1, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onRotationInfoChanged(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->mLatestRotationInfo:I

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onRotationInfoChanged(I)V

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->show()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop(Z)V
    .locals 2

    if-eqz p1, :cond_1

    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isPrompt()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->sendDismissedEvent(I[B)V

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->cleanUp()V

    return-void
.end method
