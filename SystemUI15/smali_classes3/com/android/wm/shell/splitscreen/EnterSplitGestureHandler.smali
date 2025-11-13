.class public final Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mAtm:Landroid/app/IActivityTaskManager;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDisplayDeviceType:I

.field public final mDisplayId:I

.field public final mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

.field public final mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

.field public final mHandler:Landroid/os/Handler;

.field public mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

.field public mInputMonitor:Landroid/view/InputMonitor;

.field public mIsA11yButtonEnabled:Z

.field public mIsCommonEnabled:Z

.field public mIsDeviceProvisioned:Z

.field public mIsEnabled:Z

.field public mIsLockTaskMode:Z

.field public mIsSettingEnabled:Z

.field public mIsStandAlone:Z

.field public mIsSupportSplitScreen:Z

.field public mIsSystemUiStateValid:Z

.field public mIsTalkbackEnabled:Z

.field public mIsUserSetupComplete:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mNavMode:I

.field public mObserver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$5;

.field public final mSplitScreenController:Ljava/util/Optional;

.field public final mTmpBounds:Landroid/graphics/Rect;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->IS_DEBUG_LEVEL_MID:Z

    sput-boolean v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    const-string v0, "EnterSplitGestureHandler"

    sput-object v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Landroid/os/Handler;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/view/IWindowManager;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/view/IWindowManager;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/splitscreen/SplitScreenController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mTmpBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayDeviceType:I

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p6, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    iput-object p7, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mAtm:Landroid/app/IActivityTaskManager;

    new-instance p3, Landroid/view/TwoFingerSwipeGestureDetector;

    new-instance p4, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;)V

    const-string p5, "EnterSplit"

    invoke-direct {p3, p1, p4, p5}, Landroid/view/TwoFingerSwipeGestureDetector;-><init>(Landroid/content/Context;Ljava/util/function/Function;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureDetector:Landroid/view/TwoFingerSwipeGestureDetector;

    new-instance p1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;I)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getTalkbackComponent()Landroid/content/ComponentName;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TalkBack"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance p0, Landroid/content/ComponentName;

    iget-object v0, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final updateEnableState(Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->DEBUG:Z

    sget-object v1, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->TAG:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateEnableState caller="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne p1, v2, :cond_1

    move p1, v4

    goto :goto_0

    :cond_1
    move p1, v3

    :goto_0
    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    if-nez p1, :cond_3

    if-eqz v2, :cond_3

    move v3, v4

    :cond_3
    if-eqz v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateEnableState state.\n  mIsSupportSplitScreen = "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSupportSplitScreen:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsSettingEnabled = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSettingEnabled:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsStandAlone(need false) = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsStandAlone:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mNavMode(need 0) = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mNavMode:I

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsDeviceProvisioned = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsDeviceProvisioned:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsUserSetupComplete = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsUserSetupComplete:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsLockTaskMode = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsLockTaskMode:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  mIsSystemUIStateOk = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsSystemUiStateValid:Z

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "\n  isEnabled = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsCommonEnabled:Z

    if-eq p1, v2, :cond_5

    iput-boolean v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsCommonEnabled:Z

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mSplitScreenController:Ljava/util/Optional;

    new-instance v5, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;

    invoke-direct {v5, v2}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$$ExternalSyntheticLambda2;-><init>(Z)V

    invoke-virtual {p1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_5
    iget-boolean p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsEnabled:Z

    if-ne v3, p1, :cond_7

    if-eqz v0, :cond_6

    const-string p0, "enabled same in past."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    :cond_7
    iget p1, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mDisplayId:I

    if-eqz p1, :cond_8

    const-string/jumbo p0, "updateEnableState. now default display is supported."

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iput-boolean v3, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mIsEnabled:Z

    if-eqz v3, :cond_9

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const-string v2, "enter-split"

    invoke-virtual {v0, v2, p1, v4}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;II)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :try_start_0
    new-instance v0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;-><init>(Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Failed to register window manager callbacks"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Failed to create input event receiver"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_9
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputEventReceiver:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$EnterSplitGestureEventListener;

    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_b
    :try_start_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mWindowManagerService:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler;->mGestureExclusionListener:Lcom/android/wm/shell/splitscreen/EnterSplitGestureHandler$1;

    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    const-string p1, "Failed to unregister window manager callbacks"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method
