.class public Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;
.super Ljava/lang/Object;
.source "InDisplaySensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SensorIconLayer"
.end annotation


# static fields
.field private static final ACTION_FINGER_UPDATE:Ljava/lang/String; = "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

.field private static final ACTION_PANEL_ANIMATING:Ljava/lang/String; = "com.samsung.systemui.statusbar.ANIMATING"

.field private static final ACTION_PANEL_COLLAPSED:Ljava/lang/String; = "com.samsung.systemui.statusbar.COLLAPSED"

.field private static final ACTION_PANEL_EXPANDED:Ljava/lang/String; = "com.samsung.systemui.statusbar.EXPANDED"

.field private static final ACTION_SPEN_AIR_COMMAND_EXPANDED:Ljava/lang/String; = "com.sec.android.intent.action.AIR_BUTTON"

.field private static final ACTION_TSP_UPDATE:Ljava/lang/String; = "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

.field private static final FOD_GHOST_TOUCH_ICON_HIDE:Ljava/lang/String; = "fod_icon_visible,0"

.field private static final FOD_GHOST_TOUCH_ICON_SHOW:Ljava/lang/String; = "fod_icon_visible,1"

.field private static final FOD_GHOST_TOUCH_PATH:Ljava/lang/String; = "/sys/class/sec/tsp/cmd"

.field private static final ICON_CONTAINER_DEFAULT_COLOR:Ljava/lang/String; = "#FF808080"

.field private static final ICON_CONTAINER_PROMPT_COLOR:Ljava/lang/String; = "#CC787878"

.field private static final PERM_ACTION_FINGER_UPDATE:Ljava/lang/String; = "com.samsung.android.permission.BROADCAST_QUICKACCESS"

.field private static final PERM_ACTION_TSP_UPDATE:Ljava/lang/String; = "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"


# instance fields
.field private mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mCurrentAnimationType:Ljava/lang/String;

.field private mIsTouchDown:Z

.field private mOriginPosX:I

.field private mOriginPosY:I

.field private mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;Landroid/widget/FrameLayout;Z)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosX:I

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosY:I

    const v1, 0x7f0a014b

    invoke-virtual {p2, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsKeyguard:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/WallpaperManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->startAnimation()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setCustomIcon(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    invoke-static {}, Lcom/samsung/android/biometrics/app/setting/Utils$BioBgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_DESKTOP_MODE:Z

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f100085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/biometrics/app/setting/Utils;->handleWakeLockForDexIfNeeded(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->updateSensorSize(I)V

    iget v0, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->registerBroadcastReceiver()V

    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->showTouchBlockView()V

    return-void
.end method

.method private hideTouchBlockView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->dismiss()Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideTouchBlockView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_SPEN:Z

    if-eqz v1, :cond_0

    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v4}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v6

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.android.app.aodservice.intent.action.CHANGE_AOD_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.app.aodservice.permission.BROADCAST_RECEIVER"

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v7

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "com.samsung.android.fingerprint.action.FINGER_ON_DISPLAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "com.samsung.android.permission.BROADCAST_QUICKACCESS"

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/os/Handler;

    move-result-object v7

    move-object v5, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private showTouchBlockView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1300(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpRequireTouchBlock()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1400(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->dismiss()Z

    :cond_0
    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosX:I

    iget v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosY:I

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;II)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->show()V

    :cond_1
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mSensorIconBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterBroadcastReceiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->unregisterBroadcastReceiver()V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->hideTouchBlockView()V

    return-void
.end method

.method handleRotation(I)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1000(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    move v1, p1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/graphics/Point;

    iget v3, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getSensorInfo()Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getImageSize()I

    move-result v6

    invoke-virtual {v3, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper$SensorInfo;->getSensorImagePoint(ILandroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1100(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v7, 0x5

    const/high16 v8, 0x41680000    # 14.5f

    invoke-static {v7, v8, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v4, v0

    sub-int/2addr v5, v0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v6, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    int-to-float v7, v4

    invoke-virtual {v6, v7}, Landroid/view/View;->setX(F)V

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setY(F)V

    iput v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosX:I

    iput v5, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosY:I

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->showTouchBlockView()V

    return-void
.end method

.method isTransparentColor(I)Z
    .locals 1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$new$0$InDisplaySensorWindow$SensorIconLayer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$2800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getSemStatusBarManager()Landroid/app/SemStatusBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->isPanelExpanded()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/SemStatusBarManager;->collapsePanels()V

    :cond_0
    return-void
.end method

.method moveIcon(II)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveIcon: called with: x = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], y = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosX:I

    int-to-float v0, v0

    int-to-float v1, p1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mOriginPosY:I

    int-to-float v1, v1

    int-to-float v2, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method onTouchDown()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mIsTouchDown:Z

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    return-void
.end method

.method onTouchUp()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mIsTouchDown:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    return-void
.end method

.method setAnimationNewType()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-boolean v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->mIsScreenOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/app/WallpaperManager;->semGetWallpaperColors(I)Landroid/app/SemWallpaperColors;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$1200(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->fpSysUiRequestToSystemServer(I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const-wide/16 v3, 0x200

    invoke-virtual {v2, v3, v4}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/app/SemWallpaperColors;->get(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    const-string v2, "ic_fingerprint_dark_theme.json"

    goto :goto_1

    :cond_2
    const-string v2, "ic_fingerprint_light_theme.json"

    :goto_1
    goto :goto_2

    :cond_3
    const-string v2, "ic_fingerprint_aod.json"

    :goto_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mCurrentAnimationType:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mCurrentAnimationType:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    return v1

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method setCustomIcon(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$500(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "sem_privileged_attr"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$600(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "EXTRA_KEY_ICON_COLOR"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    move v2, v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isTransparentColor(I)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    return-void

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setIconColor(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v4, "ic_fingerprint_dark_theme.json"

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isTransparentColor(I)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/samsung/android/biometrics/app/setting/Utils;->setLottieViewColorFilter(Lcom/airbnb/lottie/LottieAnimationView;ILjava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$700(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isTransparentColor(I)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v2, v5}, Lcom/airbnb/lottie/LottieAnimationView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setIconContainerColor(Z)V

    return-void
.end method

.method setIconContainerColor(Z)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0800bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "#FF808080"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getBundle()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "EXTRA_KEY_ICON_CONTAINER_COLOR"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    const-string v3, "#CC787878"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    :try_start_0
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v4, v4, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setFpIconBgColor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->isTransparentColor(I)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method setVisibility(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SensorIconLayer.setVisibility: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_1

    const-string v0, "/sys/class/sec/tsp/cmd"

    if-nez p1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "fod_icon_visible,1"

    invoke-static {v1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "fod_icon_visible,0"

    invoke-static {v1, v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->writeFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mTouchBlockWindow:Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mIsTouchDown:Z

    if-nez v1, :cond_2

    invoke-virtual {v0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/UdfpsTouchBlockWidow;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method startAnimation()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->setAnimationNewType()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    return-void
.end method

.method updateSensorSize(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    if-ne v1, p1, :cond_0

    iget v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-eq v1, p1, :cond_1

    :cond_0
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorWindow$SensorIconLayer;->mAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->requestLayout()V

    :cond_1
    return-void
.end method
