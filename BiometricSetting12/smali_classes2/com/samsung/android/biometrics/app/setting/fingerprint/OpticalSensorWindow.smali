.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
.source "OpticalSensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;
    }
.end annotation


# static fields
.field private static final INVISIBLE_LOCK_ONEHAND_MODE:I = 0x1

.field private static final INVISIBLE_LOCK_SCREEN_OFF_BY_PROXIMITY:I = 0x2

.field private static final INVISIBLE_LOCK_TOP_TASK_CAMERA:I = 0x8

.field private static final INVISIBLE_LOCK_TUI:I = 0x4

.field private static final TIME_DELAY_HW_LIGHT_SOURCE_DRAW:I = 0x22

.field private static final TIME_DELAY_MASKVIEW_INVISIBLE:I = 0x12c

.field private static final TIME_DELAY_PROXIMITY_VISIBLE:I = 0x1f4

.field private static final WINDOW_TITLE:Ljava/lang/String; = "FP Maskview"


# instance fields
.field private mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

.field private mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

.field private mHbmListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;

.field private mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

.field private mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

.field private mInvisibleLock:I

.field private mIsAuthenticated:Z

.field private mIsBlackMaskMode:Z

.field private mIsTouchDown:Z

.field private mLastVisibility:I

.field private mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

.field private mRunnableMaskviewInvisible:Ljava/lang/Runnable;

.field private mRunnableMaskviewRemove:Ljava/lang/Runnable;

.field private mRunnableOnHbmDisabled:Ljava/lang/Runnable;

.field private mRunnableOnHbmEnabled:Ljava/lang/Runnable;

.field private mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

.field private mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

.field private mRunnableScreenOnByProximity:Ljava/lang/Runnable;

.field private mRunnableShowSensorIcon:Ljava/lang/Runnable;

.field private mRunnableTouchDownDeliver:Ljava/lang/Runnable;

.field private mShouldWaitHBMOn:Z


# direct methods
.method public static synthetic $r8$lambda$lveMWnvkMBjWU8-0dIW-3CpNIkE(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->handleTouchDown()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableTouchDownDeliver:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableShowSensorIcon:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$5;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewInvisible:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$6;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$6;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewRemove:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$7;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableScreenOnByProximity:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmDisabled:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setForceDarkAllowed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "FP Maskview"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLastVisibility:I

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$8;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->getInstance()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->observe(ZLcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;)V

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpCalibrationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->handleCalibrationMode()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mShouldWaitHBMOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmEnabled:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmEnabled:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->disableDisplayAdjustFunc()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmDisabled:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableScreenOnByProximity:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableShowSensorIcon:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->dismissMaskview()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setInvisibleLockState(ZI)V

    return-void
.end method

.method private createAodDummyWindow()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->isEnabledOnAod()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isNeedWindowOnAOD()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->createLayers()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateSensorViewLocation()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->show()V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private disableDisplayAdjustFunc()V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->disableColorInversion()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->disableAllFunctions()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    :goto_0
    return-void
.end method

.method private dismissMaskview()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewRemove:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->removeView()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->observe(ZLcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeListener;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    :cond_2
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->restoreDisplayAdjustFunc(J)V

    return-void
.end method

.method private handleCalibrationMode()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "Calibration Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleTouchDown()V
    .locals 4

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableTouchDownDeliver:Ljava/lang/Runnable;

    const-wide/16 v2, 0x22

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->getCurrentAlpha()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->deliveryTouchEventToHAL(III)V

    :goto_0
    return-void
.end method

.method private removeAodDummyWindow()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->dismiss()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    :cond_0
    return-void
.end method

.method private restoreDisplayAdjustFunc(J)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->restoreColorInversion(J)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->restoreAllFunctions(J)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(IIJLjava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setBlackMaskMode(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "setBlackMask: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->showBlackMaskview()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->setBlackMask()V

    :cond_2
    return-void
.end method

.method private setInvisibleLockState(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInvisibleLockState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLastVisibility:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibilityInternal(I)V

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    or-int/2addr v2, p2

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->restoreDisplayAdjustFunc(J)V

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    if-eqz v2, :cond_2

    not-int v3, p2

    and-int/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLastVisibility:I

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLastVisibility:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->disableDisplayAdjustFunc()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->restoreDisplayAdjustFunc(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setVisibilityInternal(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibilityInternal: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateBrightness(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableTouchDownDeliver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableShowSensorIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->cleanUp()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->destroy()V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->dismiss()Z

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    :cond_1
    return-void
.end method

.method public createLayers()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpAuthenticationType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->createLayers()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    :cond_1
    return-void
.end method

.method public dismiss()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->cleanUp()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpAlphaMaskSAMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isPriorityTaskTop()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setInvisibleLockState(ZI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->dismissMaskview()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewRemove:Ljava/lang/Runnable;

    const-wide/16 v3, 0x46

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return v1
.end method

.method protected handleAcquiredVendorEvent(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAcquiredVendorEvent(I)V

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsAuthenticated:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsAuthenticated:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpIsOnlyKeyguardMask()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_NO_DELAY_IN_SCREEN_OFF:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->removeFpSAMode()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->removeView()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setBlackMaskMode(Z)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(I)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mDisplayAdjustmentManager:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayAdjustmentManager;->restoreBlueLightFilter()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAuthenticationSucceeded(Ljava/lang/String;)Z

    return v1
.end method

.method protected handleMoveSensorIconEvent(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleMoveSensorIconEvent(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleMoveSensorIconEvent(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public handleOnTaskStackListener(II)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils;->isPriorityTaskTop()Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpAlphaMaskSAMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpAuthenticationType()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setInvisibleLockState(ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setInvisibleLockState(ZI)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected handlePauseAndResumeEvent(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handlePauseAndResumeEvent(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public handleScreenEvent(ZZ)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setScreenStateWindowForAOD(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_4

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableShowSensorIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-eqz v0, :cond_3

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateBrightness(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsAuthenticated:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->disableDisplayAdjustFunc()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_6
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public handleTouchEvent(I)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleTouchEvent(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmEnabled:Ljava/lang/Runnable;

    const/4 v0, 0x4

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    if-nez v3, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->onTouchUp()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v1, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->deliveryTouchEventToHAL(III)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableTouchDownDeliver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewInvisible:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v2, "Mask_view doesn\'t Invisible yet."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isOnState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v2, "Waiting for display_state processing to complete."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    return v1

    :cond_4
    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_FAKE_AOD:Z

    if-eqz v3, :cond_6

    :cond_5
    const/4 v3, 0x2

    const-wide/16 v4, 0x2710

    invoke-virtual {p0, v3, v4, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->showSensorIconWhenScreenOff(IJ)V

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->onTouchDown()V

    :cond_8
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_HW_LIGHT_SOURCE:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_9

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->isEnabledHBM()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->handleTouchDown()V

    goto :goto_0

    :cond_a
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmEnabled:Ljava/lang/Runnable;

    :cond_b
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    nop

    :goto_1
    return v2

    :cond_c
    return v1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected hideSensorIconWhenScreenOff(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "hideSensorIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->acquireWakeLock(J)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->createAodDummyWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    throw v0
.end method

.method public initForKeyguard()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->initForKeyguard()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    return-void
.end method

.method public synthetic lambda$handleCalibrationMode$1$OpticalSensorWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$0$OpticalSensorWindow()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->isEnabledHBM()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsAuthenticated:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mShouldWaitHBMOn:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$showSensorIconWhenScreenOff$2$OpticalSensorWindow(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->showSensorIconWhenScreenOff(IJ)V

    return-void
.end method

.method public synthetic lambda$showSensorIconWhenScreenOff$3$OpticalSensorWindow(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->hideSensorIconWhenScreenOff(I)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->updateSensorSize()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->handleRotation(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onRotationInfoChanged(I)V

    :cond_1
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->updateSensorSize()V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onDisplayChanged(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewInvisible:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->disableDisplayAdjustFunc()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsTouchDown:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmDisabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onDisplayChanged(I)V

    :cond_6
    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLightSourceLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$LightSourceLayer;->handleRotation(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onRotationInfoChanged(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->onRotationInfoChanged(I)V

    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsBlackMaskMode:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mLastVisibility:I

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableMaskviewInvisible:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAlphaMaskLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateBrightness(I)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_2
    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility: Lock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInvisibleLock:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpIsOnlyKeyguardMask()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->disableDisplayAdjustFunc()V

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->show()V

    return-void
.end method

.method protected showSensorIconWhenScreenOff(IJ)V
    .locals 5

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    const-string v1, "showSensorIcon: "

    const-string v2, ", "

    if-nez v0, :cond_a

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    const-wide/16 v2, 0x2710

    add-long/2addr v2, p2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->acquireWakeLock(J)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->createAodDummyWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplayWindowOnAod:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mHbmObserver:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$HighBrightnessModeObserver;->isEnabledHBM()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnHbmDisabled:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    if-eq p1, v2, :cond_4

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mShouldWaitHBMOn:Z

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOff:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableRequestLimitedDisplayOn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isDozeState()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "showSensorIcon: pending, waiting for doze"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;IJ)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

    return-void

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v2, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->startSensorIconAnimationWhenScreenOff()V

    :cond_6
    move-wide v1, p2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isEnabledTapToShow()Z

    move-result v3

    if-eqz v3, :cond_7

    const-wide/16 v1, 0x0

    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    if-nez v3, :cond_8

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;I)V

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_9
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    return-void

    :cond_a
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->isVisible()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
