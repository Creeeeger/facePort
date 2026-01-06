.class Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;
.super Ljava/lang/Object;
.source "OpticalSensorWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlphaMaskLayer"
.end annotation


# static fields
.field private static final ACTION_FINGERPRINT_TUI:Ljava/lang/String; = "com.samsung.android.intent.action.FINGERPRINT_TUI"

.field private static final MAX_ALPHA:F = 0.93f

.field private static final PERM_ACTION_MANAGE_FINGERPRINT:Ljava/lang/String; = "android.permission.MANAGE_FINGERPRINT"


# instance fields
.field private mAlphaMaskView:Landroid/view/View;

.field private mContentObserverForOneHandMode:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentAlpha:I

.field private mDisplayBrightnessListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

.field private mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field final synthetic this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;


# direct methods
.method constructor <init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;Landroid/widget/FrameLayout;)V
    .locals 5

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0a014a

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mAlphaMaskView:Landroid/view/View;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1600(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1700(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;)V

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;-><init>(Landroid/content/Context;Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener$OnBrightnessListener;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->observe(Z)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateBrightness(I)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mAlphaMaskView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->registerBroadcastReceiver()V

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$1900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->isFpAlphaMaskSAMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentObserverForOneHandMode:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;

    invoke-static {p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$1;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;Landroid/os/Handler;Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentObserverForOneHandMode:Landroid/database/ContentObserver;

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "any_screen_running"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentObserverForOneHandMode:Landroid/database/ContentObserver;

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateOneHandModeState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object p1, p1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AML: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic access$2100(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateOneHandModeState()V

    return-void
.end method

.method private getBackgroundColor(I)I
    .locals 14

    const/4 v0, 0x0

    int-to-float v1, p1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    invoke-virtual {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->getBrightnessFromFile()I

    move-result v2

    int-to-float v1, v2

    :cond_0
    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v4, "AML.getBackgroundColor: invalid brightness value, set to default"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x42fe0000    # 127.0f

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v3, v3, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v3}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getNitsForOptical()F

    move-result v3

    const/high16 v4, 0x42700000    # 60.0f

    const/high16 v5, -0x40800000    # -1.0f

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-boolean v6, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mIsScreenOn:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/samsung/android/biometrics/app/setting/Utils$Config;->FEATURE_SUPPORT_AOD:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v6}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2300(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->isOnState()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v6, v6, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v6, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getCurrentNitForAOD(F)F

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    float-to-int v7, v4

    invoke-virtual {v6, v7}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getFingerPrintBacklightValue(I)F

    move-result v1

    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v7, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->mInDisplaySensorHelper:Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;

    invoke-virtual {v7}, Lcom/samsung/android/biometrics/app/setting/fingerprint/InDisplaySensorHelper;->getBrightnessNitForOptical()F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v6, v1, v7, v8}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->getAlphaMaskLevel(FFF)F

    move-result v6

    move v5, v6

    const v6, 0x3f6e147b    # 0.93f

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v6

    goto :goto_0

    :catch_0
    move-exception v6

    iget-object v7, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v7, v7, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AML.getBackgroundColor: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    cmpg-float v6, v5, v2

    const/high16 v7, 0x437f0000    # 255.0f

    if-gez v6, :cond_6

    const v6, 0x3fd26e98    # 1.644f

    mul-float/2addr v6, v1

    const/high16 v8, 0x43000000    # 128.0f

    cmpg-float v8, v1, v8

    if-gtz v8, :cond_3

    const v8, 0x3e6b851f    # 0.23f

    mul-float/2addr v8, v1

    const/high16 v9, 0x40000000    # 2.0f

    sub-float/2addr v8, v9

    goto :goto_1

    :cond_3
    cmpg-float v8, v1, v7

    if-gtz v8, :cond_4

    sub-float v8, v7, v1

    const v9, 0x3e5c28f6    # 0.215f

    mul-float/2addr v8, v9

    goto :goto_1

    :cond_4
    move v8, v2

    :goto_1
    sub-float v4, v6, v8

    cmpl-float v6, v4, v3

    if-lez v6, :cond_5

    goto :goto_2

    :cond_5
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-float v2, v4, v3

    float-to-double v10, v2

    const-wide v12, 0x3fe14c1bacf914c1L    # 0.5405405405405405

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    sub-double/2addr v8, v10

    double-to-float v2, v8

    :goto_2
    move v5, v2

    :cond_6
    mul-float/2addr v7, v5

    float-to-int v2, v7

    iput v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mCurrentAlpha:I

    shl-int/lit8 v0, v2, 0x18

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v2, v2, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AML: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer$2;-><init>(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.android.intent.action.FINGERPRINT_TUI"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v5, "android.permission.MANAGE_FINGERPRINT"

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

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

    :cond_0
    :goto_0
    return-void
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2400(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$3000(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mHideMaskBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

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

.method private updateOneHandModeState()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "any_screen_running"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    move v0, v2

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$900(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;ZI)V

    return-void
.end method


# virtual methods
.method destroy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mDisplayBrightnessListener:Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/DisplayBrightnessListener;->observe(Z)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->unregisterBroadcastReceiver()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentObserverForOneHandMode:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v1, v1, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AML.destroy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentObserverForOneHandMode:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method getCurrentAlpha()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mCurrentAlpha:I

    return v0
.end method

.method public synthetic lambda$new$0$OpticalSensorWindow$AlphaMaskLayer(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->updateBrightness(I)V

    return-void
.end method

.method setBlackMask()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    const-string v1, "setBlackMask: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mAlphaMaskView:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method updateBrightness(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    iget-object v0, v0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AML.updateBrightness: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v2}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$2200(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, "aod_show_state"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->this$0:Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;->access$800(Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->mAlphaMaskView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/samsung/android/biometrics/app/setting/fingerprint/OpticalSensorWindow$AlphaMaskLayer;->getBackgroundColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method
