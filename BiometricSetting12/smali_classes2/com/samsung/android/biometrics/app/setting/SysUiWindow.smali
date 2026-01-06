.class public abstract Lcom/samsung/android/biometrics/app/setting/SysUiWindow;
.super Ljava/lang/Object;
.source "SysUiWindow.java"


# static fields
.field protected static final DEBUG:Z


# instance fields
.field protected final HASH_CODE:I

.field protected mBaseView:Landroid/view/View;

.field private mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

.field protected mContext:Landroid/content/Context;

.field protected mH:Landroid/os/Handler;

.field private mHasPendingRemove:Z

.field protected mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

.field private mIsAlreadyAdded:Z

.field protected mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRunnableHandleWindowFocus:Ljava/lang/Runnable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->HASH_CODE:I

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {p1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mRunnableHandleWindowFocus:Ljava/lang/Runnable;

    return-object v0
.end method

.method private registerBroadcastReceiverForSystemDialog()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$3;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerBroadcastReceiverForSystemDialog: "

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

.method private unregisterBroadcastReceiverForSystemDialog()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mCloseSystemDialogBR:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterBroadcastReceiverForSystemDialog: "

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
.method protected addView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addView: Already added!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$1;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWindow: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected checkWindowFocus()V
    .locals 2

    new-instance v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V

    iput-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mRunnableHandleWindowFocus:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow$2;-><init>(Lcom/samsung/android/biometrics/app/setting/SysUiWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    return-void
.end method

.method public abstract dismiss()Z
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public abstract getLayoutParams()Landroid/view/WindowManager$LayoutParams;
.end method

.method public abstract getLogTag()Ljava/lang/String;
.end method

.method protected getPxValue(Landroid/util/DisplayMetrics;D)I
    .locals 2

    iget v0, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getWindowId()Landroid/view/WindowId;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public handleAuthenticationError(IILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleAuthenticationHelp(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public handleAuthenticationSucceeded(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(IILandroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleEvent: called, but No impl.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleTspBlock(Z)V
    .locals 0

    return-void
.end method

.method protected hasFocus()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowId;->isFocused()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasFocus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method protected hasPendingRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$checkWindowFocus$0$SysUiWindow()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/biometrics/app/setting/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->handleOnUerCancel(I)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onRotationInfoChanged(I)V
    .locals 0

    return-void
.end method

.method protected removeView()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mH:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mRunnableHandleWindowFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->unregisterBroadcastReceiverForSystemDialog()V

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->DEBUG:Z

    const-string v1, "removeView: "

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mIsAlreadyAdded:Z

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    iput-boolean v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mHasPendingRemove:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->getLogTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method protected setCloseSystemDialogBroadcast(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->registerBroadcastReceiverForSystemDialog()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->unregisterBroadcastReceiverForSystemDialog()V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public abstract show()V
.end method

.method protected updateViewLayout()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mInjector:Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiClient$Injector;->getDisplayStateManager()Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/biometrics/app/setting/SysUiManager$DisplayStateManager;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mBaseView:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/biometrics/app/setting/SysUiWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method
