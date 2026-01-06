.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;
.super Landroid/widget/FrameLayout;
.source "VisualEffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MAX_DURATION:J = 0x1b58L

.field private static final MAX_EFFECT_SIZE_DP:I = 0x190

.field private static final MAX_TOUCH_MAP_READING_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "BSS_VisualEffectContainer"

.field private static final TARGET_DURATION:J = 0x3e8L

.field private static final TOUCH_MAP_UPDATE_CYCLE:J = 0x1eL

.field private static final USER_CUSTOMIZED_ANIMATION_FILE_PATH:Ljava/lang/String; = "user_fingerprint_touch_effect.json"

.field private static final USER_CUSTOMIZED_IMAGE_FILE_PATH:Ljava/lang/String; = "user_fingerprint_touch_effect.png"


# instance fields
.field private mAnimationDuration:J

.field private final mCleanUpCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mEffectImageView:Landroid/widget/ImageView;

.field private mEffectImageView2nd:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;

.field private mIsNeedToCleanUp:Z

.field private mIsReadTouchMap:Z

.field private mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mReadTouchMapThread:Ljava/lang/Thread;

.field private mScreenRotation:I

.field private mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

.field private final mStartCallback:Ljava/lang/Runnable;

.field private final mStopCallback:Ljava/lang/Runnable;

.field private final mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

.field private mTouchMapStartTime:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$3N0L0JlwQNScu3H6sGSB1-Bvk-g(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->cleanUpVI()V

    return-void
.end method

.method public static synthetic $r8$lambda$5wwc0xSDIx-IpA3VBDGNbi-Kjbw(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->startVI()V

    return-void
.end method

.method public static synthetic $r8$lambda$NG9HisXtspODQhKEvjsA6FvJjxQ(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mScreenRotation:I

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCleanUpCallback:Ljava/lang/Runnable;

    const-string v1, "BSS_VisualEffectContainer"

    if-nez p2, :cond_0

    const-string v0, "sensor info is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setWillNotDraw(Z)V

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->loadCustomizedImage(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-nez v2, :cond_3

    new-instance v2, Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {v2, p1}, Lcom/airbnb/lottie/LottieAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->loadCustomizedAnimation(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getLightColor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x6

    if-lt v5, v6, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "indisplay_fingerprint_touch_effect_white_circle.json"

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "indisplay_fingerprint_touch_effect_green_circle.json"

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const v6, 0x3f333333    # 0.7f

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAlpha(F)V

    :goto_0
    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v5, "indisplay_fingerprint_touch_effect_ripple.json"

    invoke-virtual {v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setLayoutDirection(I)V

    iput-object p2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mDisplay:Landroid/view/Display;

    if-nez v2, :cond_4

    const-string v0, "mDisplay is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v5, 0x43c80000    # 400.0f

    const/4 v6, 0x1

    invoke-static {v6, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    aput-object v8, v7, v0

    iget-object v8, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    aput-object v8, v7, v6

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v6, v7, v4

    move-object v4, v7

    array-length v6, v4

    :goto_2
    if-ge v0, v6, :cond_6

    aget-object v7, v4, v0

    if-eqz v7, :cond_5

    invoke-virtual {p0, v7, v5, v5}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->addView(Landroid/view/View;II)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    invoke-virtual {v0, v6}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->addVIWindow()Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Failed to add to window manager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->stopVI()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->DEBUG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsNeedToCleanUp:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateWindowLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addVIWindow()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$3;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWindowLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_VisualEffectContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    const/4 v1, 0x0

    return v1
.end method

.method private cleanUpVI()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsNeedToCleanUp:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const-string v2, "BSS_VisualEffectContainer"

    if-eqz v0, :cond_2

    const-string v0, "cleanup()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mOnAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsNeedToCleanUp:Z

    goto :goto_0

    :cond_2
    const-string v0, "set to clean up"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsNeedToCleanUp:Z

    :goto_0
    return-void
.end method

.method private getWindowLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaHeight()I

    move-result v1

    iget-object v2, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v2

    iget-object v3, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    const/16 v10, 0xa3b

    const/16 v11, 0x18

    const/4 v12, -0x3

    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v4

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    int-to-float v7, v2

    add-float/2addr v5, v7

    int-to-float v7, v1

    div-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/16 v7, 0x51

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplayRotation()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v13, v4

    move v14, v5

    move v15, v7

    goto :goto_0

    :pswitch_0
    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v5

    div-float/2addr v8, v6

    int-to-float v9, v2

    add-float/2addr v8, v9

    int-to-float v9, v1

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v4, v8

    const v7, 0x800013

    move v13, v4

    move v14, v5

    move v15, v7

    goto :goto_0

    :pswitch_1
    const/16 v7, 0x31

    move v13, v4

    move v14, v5

    move v15, v7

    goto :goto_0

    :pswitch_2
    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v8, v5

    div-float/2addr v8, v6

    int-to-float v9, v2

    add-float/2addr v8, v9

    int-to-float v9, v1

    div-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-int v4, v8

    const v7, 0x800015

    move v13, v4

    move v14, v5

    move v15, v7

    :goto_0
    new-instance v16, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v4, v16

    move v5, v13

    move v6, v14

    move v7, v10

    move v8, v11

    move v9, v12

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput v15, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/high16 v5, 0x40000

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    const/high16 v5, 0x20000

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x2050

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v5, "FP VI"

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private loadCustomizedAnimation(Landroid/content/Context;)Z
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "user_fingerprint_touch_effect.json"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->readFile(Ljava/io/File;)[B

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    const-wide/16 v2, 0x1b58

    iput-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    new-instance v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;

    invoke-direct {v3, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    invoke-virtual {v2, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BSS_VisualEffectContainer"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private loadCustomizedImage(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "user_fingerprint_touch_effect.png"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private setAnimationViewLocation()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getAreaHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginBottom()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mSensorInfo:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getMarginLeft()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mScreenRotation:I

    const/high16 v8, 0x40000000    # 2.0f

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    int-to-float v7, v1

    int-to-float v9, v0

    div-float/2addr v9, v8

    add-float v3, v7, v9

    int-to-float v7, v6

    div-float/2addr v7, v8

    int-to-float v9, v2

    add-float v4, v7, v9

    goto :goto_0

    :pswitch_1
    int-to-float v7, v5

    div-float/2addr v7, v8

    int-to-float v9, v2

    add-float v3, v7, v9

    int-to-float v7, v1

    int-to-float v9, v0

    div-float/2addr v9, v8

    add-float v4, v7, v9

    goto :goto_0

    :pswitch_2
    int-to-float v7, v5

    int-to-float v9, v1

    int-to-float v10, v0

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    sub-float v3, v7, v9

    int-to-float v7, v6

    div-float/2addr v7, v8

    int-to-float v9, v2

    sub-float v4, v7, v9

    goto :goto_0

    :pswitch_3
    int-to-float v7, v5

    div-float/2addr v7, v8

    int-to-float v9, v2

    add-float v3, v7, v9

    int-to-float v7, v6

    int-to-float v9, v1

    int-to-float v10, v0

    div-float/2addr v10, v8

    add-float/2addr v9, v10

    sub-float v4, v7, v9

    nop

    :goto_0
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/view/View;

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    const/4 v10, 0x0

    aput-object v9, v7, v10

    iget-object v9, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    const/4 v11, 0x1

    aput-object v9, v7, v11

    const/4 v9, 0x2

    iget-object v11, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v11, v7, v9

    array-length v9, v7

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v7, v10

    if-eqz v11, :cond_0

    float-to-int v12, v3

    int-to-float v12, v12

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    sub-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationX(F)V

    float-to-int v12, v4

    int-to-float v12, v12

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v13, v8

    sub-float/2addr v12, v13

    invoke-virtual {v11, v12}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static setCustomTouchEffect(Landroid/content/Context;Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "biometric theme ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BSS_VisualEffectContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1

    const-string v0, "Context is invalid."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "user_fingerprint_touch_effect.json"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    const-string v5, "user_fingerprint_touch_effect.png"

    invoke-direct {v2, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    or-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove caches:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "animation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "png"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v2, "Custom effect cleared."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v5

    :goto_1
    move-object v2, v3

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-object v12, v6

    const-wide/16 v7, 0x0

    :try_start_4
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v9

    move-object v6, v5

    move-object v11, v12

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", completed."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v12, :cond_4

    :try_start_5
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_4
    goto :goto_3

    :catchall_0
    move-exception v6

    if-eqz v12, :cond_5

    :try_start_6
    invoke-virtual {v12}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    :try_start_7
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    throw v6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v6

    goto :goto_4

    :catch_0
    move-exception v6

    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in opening stream 4: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    if-eqz v5, :cond_6

    :try_start_9
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :cond_6
    goto :goto_6

    :goto_4
    if-eqz v5, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v7

    :try_start_b
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw v6
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception v5

    goto :goto_7

    :catch_1
    move-exception v5

    :try_start_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in opening stream 3: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_6
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    :goto_7
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v6

    :try_start_f
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v5
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v4

    goto :goto_a

    :catch_2
    move-exception v4

    :try_start_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in opening stream 2: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_9
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3

    goto :goto_c

    :goto_a
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception v5

    :try_start_13
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_b
    throw v4
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in opening stream 1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    return-void
.end method

.method private startReadTouchMap()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startVI()V
    .locals 5

    const-string v0, "BSS_VisualEffectContainer"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f010018

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f010019

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/airbnb/lottie/RenderMode;->HARDWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setFrame(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCleanUpCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStopCallback:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mAnimationDuration:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mScreenRotation:I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->startReadTouchMap()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setVisibility(I)V

    return-void
.end method

.method private stopVI()V
    .locals 2

    const-string v0, "BSS_VisualEffectContainer"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/airbnb/lottie/RenderMode;->SOFTWARE:Lcom/airbnb/lottie/RenderMode;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRenderMode(Lcom/airbnb/lottie/RenderMode;)V

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsNeedToCleanUp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->cleanUp()V

    :cond_1
    return-void
.end method

.method private updateWindowLayout()V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getWindowLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    const/high16 v1, 0x43c80000    # 400.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectImageView2nd:Landroid/widget/ImageView;

    aput-object v4, v3, v2

    const/4 v2, 0x2

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mEffectAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    aput-object v4, v3, v2

    move-object v2, v3

    array-length v3, v2

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v4, v2, v5

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateViewLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSS_VisualEffectContainer"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->disableTouchMapUpdate()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mCleanUpCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public disableTouchMapUpdate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->invalidate()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateDisplayChanged()V

    return-void
.end method

.method protected getDisplayRotation()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method

.method protected getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$startReadTouchMap$0$VisualEffectContainer()V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMapStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->updateTouchMapFromFile()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mReadTouchMapThread:Ljava/lang/Thread;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->setAnimationViewLocation()V

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mIsReadTouchMap:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mTouchMap:Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer$SemVisualEffectTouchMap;->setClipOutPath(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->addVIWindow()Z

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mStartCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateDisplayChanged()V
    .locals 2

    const-string v0, "BSS_VisualEffectContainer"

    const-string v1, "VI Window update"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->updateWindowLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->getDisplayRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/vi/VisualEffectContainer;->mScreenRotation:I

    return-void
.end method
