.class public Lcom/samsung/android/biometrics/app/setting/SysUiManager;
.super Ljava/lang/Object;
.source "SysUiManager.java"

# interfaces
.implements Lcom/samsung/android/biometrics/SemBiometricConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;,
        Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;,
        Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;,
        Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static final PROMPT_BTN_TYPE_CONFIRM:I = 0x1

.field public static final PROMPT_BTN_TYPE_NEGATIVE:I = 0x2

.field public static final PROMPT_BTN_TYPE_TRY_AGAIN:I = 0x64

.field public static final PROMPT_BTN_TYPE_TRY_AGAIN_USING_OTHERS:I = 0x65

.field public static final PROMPT_BTN_TYPE_USE_DEVICE_CREDENTIAL:I = 0x66

.field public static final SYSUI_BIO_TYPE_FACE:I = 0x8

.field public static final SYSUI_BIO_TYPE_FINGERPRINT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BSS_SysUiManager"

.field private static final THEME_CUSTOM_FINGERPRINT_EFFECT:I = 0x2710

.field public static final TIME_TO_SHOW_ERROR_MSG:I = 0x7d0

.field public static final TIME_TO_SHOW_FINGER_NAME:I = 0x3e8

.field public static final TIME_TO_SHOW_HELP_MSG:I = 0xbb8

.field public static final USER_CANCEL_REASON_BUTTON:I = 0x3

.field public static final USER_CANCEL_REASON_CLOSE_SYSTEM_DIALOG_BR:I = 0x4

.field public static final USER_CANCEL_REASON_FOCUS:I = 0x1

.field public static final USER_CANCEL_REASON_KEY:I = 0x2

.field public static final USER_CANCEL_REASON_SCREEN_OFF_BR:I = 0x6

.field public static final USER_CANCEL_REASON_STACK_LISTENER:I = 0x5


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

.field private mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

.field private mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

.field private mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

.field private mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

.field private mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->IS_DEBUG_LEVEL_MID_OR_HIGH:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$1;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    invoke-static {v0}, Landroid/os/Looper;->setObserver(Landroid/os/Looper$Observer;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1600(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->observe(Z)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$2;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    :cond_3
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .locals 0

    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleShow(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiClient;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleHide(IZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationSucceeded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/SysUiManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/SysUiManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationHelp(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleAuthenticationError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/SysUiManager;IIILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleEvent(IIILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/SysUiManager;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->handleOnTaskStackListener(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/SysUiManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAuthenticationError(IILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationError(IILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationFailed(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationHelp(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleAuthenticationSucceeded(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAuthenticationSucceeded(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleEvent(IIILandroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p3

    move-object/from16 v12, p4

    const/4 v1, 0x0

    const/4 v11, 0x1

    const/16 v2, 0x1f4

    if-ne v14, v2, :cond_5

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    if-ne v13, v11, :cond_2

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-nez v1, :cond_1

    new-instance v9, Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/16 v2, 0x10

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    const/4 v8, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    iget-object v10, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v1, v9

    move/from16 v5, p1

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-wide/from16 v9, v16

    move-object/from16 v11, v18

    move-object/from16 v12, v22

    move-object/from16 v13, v19

    move/from16 v14, v20

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(ILandroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Handler;Landroid/os/Bundle;JLjava/lang/String;Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/hardware/biometrics/PromptInfo;Z)V

    move-object/from16 v1, v21

    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    :cond_1
    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move-object/from16 v14, p4

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v15, v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAlphaMaskSaMode(ZILandroid/os/Bundle;)Z

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v14

    move v3, v15

    goto/16 :goto_0

    :cond_2
    move-object v14, v12

    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v15, v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleAlphaMaskSaMode(ZILandroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v14

    move v3, v15

    goto/16 :goto_0

    :cond_3
    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v14

    move v3, v15

    goto/16 :goto_0

    :cond_4
    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v14

    move v3, v15

    goto/16 :goto_0

    :cond_5
    move v2, v11

    move-object v14, v12

    const/16 v3, 0x1f5

    move/from16 v13, p2

    if-ne v13, v3, :cond_a

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-nez v3, :cond_6

    return-void

    :cond_6
    move/from16 v12, p3

    if-ne v12, v2, :cond_8

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->destroy()V

    :cond_7
    new-instance v11, Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/16 v2, 0x20

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    const-wide/16 v9, 0x0

    const/16 v16, 0x0

    iget-object v8, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v1, v11

    move/from16 v5, p1

    move-object/from16 v19, v8

    move-object/from16 v8, p4

    move-object/from16 v23, v11

    move-object/from16 v11, v16

    move-object/from16 v12, v19

    move-object/from16 v13, v17

    move-object v15, v14

    move/from16 v14, v18

    invoke-direct/range {v1 .. v14}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(ILandroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Handler;Landroid/os/Bundle;JLjava/lang/String;Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/hardware/biometrics/PromptInfo;Z)V

    move-object/from16 v1, v23

    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start()V

    move/from16 v3, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v15

    goto :goto_0

    :cond_8
    move-object v15, v14

    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->destroy()V

    iput-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move/from16 v3, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v15

    goto :goto_0

    :cond_9
    move/from16 v3, p1

    move/from16 v2, p2

    move/from16 v4, p3

    move-object v5, v15

    goto :goto_0

    :cond_a
    move-object v15, v14

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEvent: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: No client"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BSS_SysUiManager"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v15

    goto :goto_0

    :cond_b
    move/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    move-object v5, v15

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleEvent(IIILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method private handleHide(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->getSessionId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    :cond_0
    return-void
.end method

.method private handleOnTaskStackListener(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->handleOnTaskStackListener(II)V

    :cond_0
    return-void
.end method

.method private handleShow(IILandroid/os/Bundle;Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;ZILjava/lang/String;JLandroid/hardware/biometrics/PromptInfo;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v15, p1

    move-object/from16 v14, p4

    if-nez p2, :cond_1

    if-eqz v14, :cond_0

    const/4 v0, 0x3

    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v14, v15, v0, v2}, Lcom/samsung/android/biometrics/ISemBiometricSysUiCallback;->onError(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleShow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BSS_SysUiManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void

    :cond_1
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->getSessionId()I

    move-result v0

    if-ne v0, v15, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->isFpAlphaMaskSAMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->getSessionId()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->stop(Z)V

    :cond_3
    iget-object v2, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    move/from16 v3, p2

    move/from16 v4, p6

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    move-wide/from16 v8, p8

    move-object/from16 v10, p7

    move-object/from16 v11, p10

    move/from16 v12, p5

    invoke-virtual/range {v2 .. v12}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->appendType(IIILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Bundle;JLjava/lang/String;Landroid/hardware/biometrics/PromptInfo;Z)V

    return-void

    :cond_4
    iget-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->destroy()V

    :cond_5
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    iget-object v4, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    iget-object v13, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-object v2, v0

    move/from16 v3, p2

    move/from16 v5, p6

    move/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v9, p3

    move-wide/from16 v10, p8

    move-object/from16 v12, p7

    move-object/from16 v14, p10

    move/from16 v15, p5

    invoke-direct/range {v2 .. v15}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;-><init>(ILandroid/content/Context;IILcom/samsung/android/biometrics/ISemBiometricSysUiCallback;Landroid/os/Handler;Landroid/os/Bundle;JLjava/lang/String;Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;Landroid/hardware/biometrics/PromptInfo;Z)V

    iput-object v0, v1, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->start()V

    return-void
.end method

.method public static isFingerprintType(I)Z
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x20

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x10

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


# virtual methods
.method public destroy()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->access$1700(Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mDisplayStateManager:Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mTaskStackObserver:Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$TaskStackObserver;->observe(Z)V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mH:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public getSysUiServiceWrapper()Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mSysUiServiceWrapper:Lcom/samsung/android/biometrics/app/setting/SysUiManager$SysUiServiceWrapper;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiManager;->mCurrentSysUiClient:Lcom/samsung/android/biometrics/app/setting/SysUiClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method
