.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
.super Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;,
        Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;
    }
.end annotation


# static fields
.field protected static final REASON_SHOW_AOD_STATUS:I = 0x1

.field protected static final REASON_SHOW_TSP_EVENT:I = 0x2

.field protected static final REASON_SHOW_TSP_EVENT_WAIT_LIMIT_ON:I = 0x3

.field public static final TYPE_DUMMY_AOD:I = 0x2

.field public static final TYPE_NORMAL:I = 0x1


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

.field protected mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

.field protected mFingerprintLayout:Landroid/widget/FrameLayout;

.field protected mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

.field protected mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

.field protected mIsKeyguard:Z

.field protected mIsPaused:Z

.field protected mIsScreenOn:Z

.field protected mRunnableHideIcon:Ljava/lang/Runnable;

.field protected mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

.field protected mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

.field protected mType:I

.field protected mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;


# direct methods
.method public static synthetic $r8$lambda$Lr-epMXsVXiSWjvPImfymABsWI4(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleOnAodStatusChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_0

    const-string v0, "BSS_SysUiWindow.S.M"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "BSS_SysUiWindow.S.I"

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    iput p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getInDisplaySensorHelper()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mBaseView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getPxValue(Landroid/util/DisplayMetrics;D)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getPxValue(Landroid/util/DisplayMetrics;D)I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getPxValue(Landroid/util/DisplayMetrics;D)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/util/DisplayMetrics;D)I
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getPxValue(Landroid/util/DisplayMetrics;D)I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    return-object v0
.end method

.method private handleAcquiredEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->disableVisualEffectTouchMapUpdate()V

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAuthenticationHelp(ILjava/lang/String;)V

    return-void
.end method

.method private handleBouncerScreenStatusEvent()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->startAnimation()V

    :cond_0
    return-void
.end method

.method private handleOnAodStatusChanged()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "handleOnAodStatusChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->isEnabledOnAod()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->showSensorIconWhenScreenOff(IJ)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->hideSensorIconWhenScreenOff(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->isEnabledTapToShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->hideSensorIconWhenScreenOff(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private hasType(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isAirCommandShown()Z
    .locals 6

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->getVisibleWindowInfo()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    iget-object v4, v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.samsung.android.service.aircommand"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    const-string v5, "Air_Cmd(Launcher)"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v4, "Air command Launcher is opened"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private updateAodFeedBackUi(Ljava/lang/String;Z)V
    .locals 3

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->showSensorIconWhenScreenOff(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->showMessage(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsPaused:Z

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->observe(Z)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->observe(Z)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->destroy()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->destroy()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->destroy()V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    :cond_4
    return-void
.end method

.method public createLayers()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsKeyguard:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isFpAlwaysOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsKeyguard:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isPrompt()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/widget/FrameLayout;Z)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->hasType(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsKeyguard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-nez v0, :cond_2

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mFingerprintLayout:Landroid/widget/FrameLayout;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/widget/FrameLayout;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    :cond_3
    return-void
.end method

.method public dismiss()Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->cleanUp()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->removeView()V

    const/4 v0, 0x1

    return v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0xa3b

    const v4, 0x1000018

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isTpaMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const-string v1, "FP Iconview"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public getLogTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected handleAcquiredVendorEvent(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2712

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->startVisualEffect()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->moveIcon(II)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x2713

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    goto :goto_0

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAuthenticationHelp(ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->disableVisualEffectTouchMapUpdate()V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->disableVisualEffectTouchMapUpdate()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f100104

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateAodFeedBackUi(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateAodFeedBackUi(Ljava/lang/String;Z)V

    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->disableVisualEffectTouchMapUpdate()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAcquiredVendorEvent(I)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleAcquiredEvent(I)V

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleBouncerScreenStatusEvent()V

    goto :goto_1

    :sswitch_3
    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleMoveSensorIconEvent(Landroid/os/Bundle;)V

    goto :goto_1

    :sswitch_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handlePauseAndResumeEvent(Z)V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handlePauseAndResumeEvent(Z)V

    nop

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_6
        0x71 -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x75 -> :sswitch_2
        0xc9 -> :sswitch_1
        0xca -> :sswitch_0
    .end sparse-switch
.end method

.method protected handleMoveSensorIconEvent(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v1, "x"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "y"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->moveIcon(II)V

    :cond_0
    return-void
.end method

.method public handleOnTaskStackListener(II)V
    .locals 0

    return-void
.end method

.method protected handlePauseAndResumeEvent(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsPaused:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleScreenEvent(ZZ)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-eq v3, p1, :cond_6

    if-eq p1, v2, :cond_2

    goto :goto_3

    :cond_2
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateViewLayout()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v3, :cond_4

    invoke-virtual {v3, v1, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->moveIcon(II)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->startAnimation()V

    goto :goto_2

    :cond_3
    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setVisibility(I)V

    :cond_5
    return v0

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleScreenEvent : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method protected handleTouchEvent(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsPaused:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isOnState()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->isEnabledTapToShow()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->showSensorIconWhenScreenOff(IJ)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(I)I

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public handleTspBlock(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x6

    const/16 v3, 0x3ec

    invoke-static {v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateAodFeedBackUi(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-eqz v0, :cond_4

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected hideSensorIconWhenScreenOff(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "hideSensorIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->acquireWakeLock(J)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->isEnabledOnAod()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v0, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->releaseWakeLock()V

    throw v0
.end method

.method public initForKeyguard()V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->hasType(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)V

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->createAodStatusListener(Landroid/os/Handler;Ljava/lang/Runnable;)Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->observe(Z)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->createSensorIconOptionListener()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIconOptionListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;

    invoke-virtual {v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorIconOptionListener;->observe(Z)V

    :cond_3
    return-void
.end method

.method public synthetic lambda$showSensorIconWhenScreenOff$0$InDisplaySensorWindow(IJ)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->showSensorIconWhenScreenOff(IJ)V

    return-void
.end method

.method public synthetic lambda$showSensorIconWhenScreenOff$1$InDisplaySensorWindow(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->hideSensorIconWhenScreenOff(I)V

    return-void
.end method

.method protected onAttachedToWindow(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->onAttachedToWindow(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;)V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateSensorViewLocation()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateViewLayout()V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleScreenEvent(ZZ)Z

    nop

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onRotationInfoChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->handleRotation(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodFeedbackLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$AodFeedbackLayer;->handleRotation(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->updateViewLayout()V

    return-void
.end method

.method public setScreenStateWindowForAOD(Z)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisibility: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 2

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->isAirCommandShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->addView()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->handleOnAodStatusChanged()V

    :cond_1
    return-void
.end method

.method protected showSensorIconWhenScreenOff(IJ)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSensorIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    const-wide/16 v1, 0x2710

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->acquireWakeLock(J)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->startSensorIconAnimationWhenScreenOff()V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isDozeState()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "showSensorIcon: pending, waiting for doze"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;IJ)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableOnDisplayStateDoze:Ljava/lang/Runnable;

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->startSensorIconAnimationWhenScreenOff()V

    move-wide v0, p2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mAodStatusListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$AodStatusListener;->isEnabledTapToShow()Z

    move-result v3

    if-eqz v3, :cond_2

    const-wide/16 v0, 0x0

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    if-nez v3, :cond_3

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;I)V

    iput-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mRunnableHideIcon:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(II)I

    return-void
.end method

.method protected startSensorIconAnimationWhenScreenOff()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->startAnimation()V

    :cond_0
    return-void
.end method

.method public updateSensorViewLocation()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->updateSensorSize(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mSensorIconLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->handleRotation(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mVisualEffectLayer:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$VisualEffectLayer;->updateDisplayChanged()V

    :cond_1
    return-void
.end method
