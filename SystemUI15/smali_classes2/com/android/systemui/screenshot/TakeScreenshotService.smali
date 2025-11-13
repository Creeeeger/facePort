.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sConfigured:Z


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public mBundle:Landroid/os/Bundle;

.field public final mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

.field public mScreenCaptureHelper:Lcom/android/systemui/screenshot/sep/ScreenCaptureHelper;

.field public final mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

.field public final mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/screenshot/TakeScreenshotService;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->sConfigured:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/screenshot/TakeScreenshotExecutor;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance p2, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    invoke-direct {p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUserManager:Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const/4 p1, 0x0

    invoke-interface {p4, p1}, Lcom/android/systemui/screenshot/ScreenshotNotificationsController$Factory;->create(I)Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mNotificationsController:Lcom/android/systemui/screenshot/ScreenshotNotificationsController;

    iput-object p6, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mContext:Landroid/content/Context;

    iput-object p7, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mBgExecutor:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    iput-object p5, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshotErrorController:Lcom/android/systemui/screenshot/sep/ScreenshotErrorController;

    return-void
.end method


# virtual methods
.method public final logFailedRequest(Lcom/android/internal/util/ScreenshotRequest;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p1}, Lcom/android/internal/util/ScreenshotRequest;->getSource()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotEvent;->getScreenshotSource(I)Lcom/android/systemui/screenshot/ScreenshotEvent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/screenshot/ScreenshotEvent;->SCREENSHOT_CAPTURE_FAILED:Lcom/android/systemui/screenshot/ScreenshotEvent;

    invoke-interface {p0, p1, v2, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;)V

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Landroid/os/Messenger;

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final onCreate()V
    .locals 0

    return-void
.end method

.method public final onDestroy()V
    .locals 5

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    iget-object p0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    check-cast p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    iget-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mSaveInBgTask:Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/screenshot/ScreenshotController;I)V

    iget-object v2, v2, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mParams:Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;

    iput-object v3, v2, Lcom/android/systemui/screenshot/ScreenshotController$SaveImageInBackgroundData;->mActionsReadyListener:Lcom/android/systemui/screenshot/ScreenshotController$$ExternalSyntheticLambda2;

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mScreenshotSoundController:Lcom/android/systemui/screenshot/ScreenshotSoundController;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast v2, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;

    new-instance v3, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSoundAsync$1;

    invoke-direct {v3, v2, v1}, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl$releaseScreenshotSoundAsync$1;-><init>(Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    iget-object v2, v2, Lcom/android/systemui/screenshot/ScreenshotSoundControllerImpl;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v2, v1, v1, v3, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :goto_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mCopyBroadcastReceiver:Lcom/android/systemui/screenshot/ScreenshotController$1;

    iget-object v3, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v3, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v2, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mContext:Landroid/window/WindowContext;

    invoke-virtual {v2}, Landroid/window/WindowContext;->release()V

    iget-object v0, v0, Lcom/android/systemui/screenshot/ScreenshotController;->mBgExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_2
    iput-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    return-void
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mTakeScreenshotExecutor:Lcom/android/systemui/screenshot/TakeScreenshotExecutor;

    check-cast p1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;

    iget-object p1, p1, Lcom/android/systemui/screenshot/TakeScreenshotExecutorImpl;->screenshotController:Lcom/android/systemui/screenshot/ScreenshotController;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenshotController;->removeWindow()V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mCloseSystemDialogs:Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-virtual {p0, p1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    return p0
.end method
