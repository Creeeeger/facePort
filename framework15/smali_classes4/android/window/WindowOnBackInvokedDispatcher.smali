.class public Landroid/window/WindowOnBackInvokedDispatcher;
.super Ljava/lang/Object;
.source "WindowOnBackInvokedDispatcher.java"

# interfaces
.implements Landroid/window/OnBackInvokedDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/WindowOnBackInvokedDispatcher$Checker;,
        Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;
    }
.end annotation


# static fields
.field private static final blacklist ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

.field private static final blacklist ENABLE_PREDICTIVE_BACK:Z

.field private static final blacklist PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

.field private static final blacklist TAG:Ljava/lang/String; = "WindowOnBackDispatcher"

.field private static blacklist sOwnerTag:Ljava/lang/String;


# instance fields
.field private final blacklist mAllCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/window/OnBackInvokedCallback;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mBackSwipeLinearThreshold:F

.field private blacklist mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

.field private blacklist mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNonLinearProgressFactor:F

.field public final blacklist mOnBackInvokedCallbacks:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Landroid/window/OnBackInvokedCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final blacklist mProgressAnimator:Landroid/window/BackProgressAnimator;

.field public final blacklist mTouchTracker:Landroid/window/BackTouchTracker;

.field private blacklist mWindow:Landroid/view/IWindow;

.field private blacklist mWindowSession:Landroid/view/IWindowSession;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetsOwnerTag()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/window/WindowOnBackInvokedDispatcher;->sOwnerTag:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back_always_enforce"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    sput-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    nop

    const-string/jumbo v0, "persist.wm.debug.predictive_back_fallback_window_attribute"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    const/4 v0, 0x0

    sput-object v0, Landroid/window/WindowOnBackInvokedDispatcher;->sOwnerTag:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/window/BackTouchTracker;

    invoke-direct {v0}, Landroid/window/BackTouchTracker;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    new-instance v0, Landroid/window/BackProgressAnimator;

    invoke-direct {v0}, Landroid/window/BackProgressAnimator;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z
    .locals 4

    move-object v0, p0

    :goto_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_0

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/content/ContextWrapper;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_0

    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    move-object v1, p0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z

    move-result v3

    return v3
.end method

.method public static blacklist isOnBackInvokedCallbackEnabled(Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Ljava/util/function/Supplier;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;)Z"
        }
    .end annotation

    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ENABLE_PREDICTIVE_BACK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Landroid/window/WindowOnBackInvokedDispatcher;->ALWAYS_ENFORCE_PREDICTIVE_BACK:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->hasOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/content/pm/ActivityInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    sget-boolean v3, Landroid/window/WindowOnBackInvokedDispatcher;->PREDICTIVE_BACK_FALLBACK_WINDOW_ATTRIBUTE:Z

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    const v5, 0x10103f3

    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v6

    if-lez v6, :cond_4

    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    move v4, v1

    :cond_4
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    move v0, v4

    :cond_6
    return v0
.end method

.method static synthetic blacklist lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/window/OnBackInvokedCallback;Ljava/lang/Integer;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  Callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$isOnBackInvokedCallbackEnabled$1(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    return-object p0
.end method

.method private blacklist sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v1, p1, Landroid/window/OnBackAnimationCallback;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/window/OnBackAnimationCallback;

    invoke-interface {v1}, Landroid/window/OnBackAnimationCallback;->onBackCancelled()V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCancelIfRunning: isInProgress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 6

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    iget-object v5, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p1, v3, v4, v5}, Landroid/window/WindowOnBackInvokedDispatcher$OnBackInvokedCallbackWrapper;-><init>(Landroid/window/OnBackInvokedCallback;Landroid/window/BackTouchTracker;Landroid/window/BackProgressAnimator;Landroid/os/Handler;)V

    new-instance v3, Landroid/window/OnBackInvokedCallbackInfo;

    instance-of v4, p1, Landroid/window/OnBackAnimationCallback;

    invoke-direct {v3, v2, v1, v4}, Landroid/window/OnBackInvokedCallbackInfo;-><init>(Landroid/window/IOnBackInvokedCallback;IZ)V

    move-object v0, v3

    :cond_1
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    invoke-interface {v1, v2, v0}, Landroid/view/IWindowSession;->setOnBackInvokedCallbackInfo(Landroid/view/IWindow;Landroid/window/OnBackInvokedCallbackInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set OnBackInvokedCallback to WM. Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist attachToWindow(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/ImeBackAnimationController;)V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iput-object p2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    iput-object p3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist clear()V
    .locals 5

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1}, Landroid/window/ImeOnBackInvokedDispatcher;->clear()V

    iput-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    :cond_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    goto :goto_0

    :cond_1
    const-string v3, "WindowOnBackDispatcher"

    const-string v4, "There is no topCallback, even if mAllCallbacks is not empty"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-direct {p0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_2
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda1;-><init>(Landroid/window/BackProgressAnimator;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist detachFromWindow()V
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindow:Landroid/view/IWindow;

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mWindowSession:Landroid/view/IWindowSession;

    iput-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WindowOnBackDispatcher:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<None>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Top Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Callbacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    new-instance v3, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2, v0}, Landroid/window/WindowOnBackInvokedDispatcher$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public blacklist getTopCallback()Landroid/window/OnBackInvokedCallback;
    .locals 6

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v4, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OnBackInvokedCallback;

    monitor-exit v0

    return-object v1

    :cond_1
    goto :goto_0

    :cond_2
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist hasImeOnBackInvokedDispatcher()Z
    .locals 1

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isBackGestureInProgress()Z
    .locals 2

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist isOnBackInvokedCallbackEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->-$$Nest$mgetContext(Landroid/window/WindowOnBackInvokedDispatcher$Checker;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public blacklist onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    iget v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    invoke-virtual {v2, v1, v0, v3}, Landroid/window/BackTouchTracker;->setProgressThresholds(FFF)V

    return-void
.end method

.method public blacklist onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isBackGestureInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/window/BackTouchTracker;->update(FFFF)V

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->shouldUpdateStartLocation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->updateStartLocation()V

    :cond_1
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v0}, Landroid/window/BackProgressAnimator;->isBackAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mTouchTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->createProgressEvent()Landroid/window/BackMotionEvent;

    move-result-object v0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mProgressAnimator:Landroid/window/BackProgressAnimator;

    invoke-virtual {v1, v0}, Landroid/window/BackProgressAnimator;->onBackProgressed(Landroid/window/BackMotionEvent;)V

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public whitelist registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;->checkApplicationCallbackRegistration(ILandroid/window/OnBackInvokedCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    :cond_0
    return-void
.end method

.method public blacklist registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V
    .locals 5

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1, p2, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    monitor-exit v0

    return-void

    :cond_0
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$ImeOnBackInvokedCallback;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    move-object p1, v1

    :cond_2
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v2

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v2, :cond_5

    if-eq v2, p1, :cond_6

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p2, :cond_6

    :cond_5
    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist registerSystemOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallbackUnchecked(Landroid/window/OnBackInvokedCallback;I)V

    return-void
.end method

.method public blacklist setImeOnBackInvokedDispatcher(Landroid/window/ImeOnBackInvokedDispatcher;)V
    .locals 2

    iput-object p1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/window/ImeOnBackInvokedDispatcher;->setHandler(Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist setOwnerTag(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Landroid/window/WindowOnBackInvokedDispatcher;->sOwnerTag:Ljava/lang/String;

    return-void
.end method

.method public whitelist unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V
    .locals 5

    iget-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeDispatcher:Landroid/window/ImeOnBackInvokedDispatcher;

    invoke-virtual {v1, p1}, Landroid/window/ImeOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    monitor-exit v0

    return-void

    :cond_0
    instance-of v1, p1, Landroid/window/ImeOnBackInvokedDispatcher$DefaultImeOnBackAnimationCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mImeBackAnimationController:Landroid/view/ImeBackAnimationController;

    move-object p1, v1

    :cond_1
    iget-object v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget-object v3, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v3, v2}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mOnBackInvokedCallbacks:Ljava/util/TreeMap;

    invoke-virtual {v4, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mAllCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v1, p1, :cond_4

    invoke-direct {p0, p1}, Landroid/window/WindowOnBackInvokedDispatcher;->sendCancelledIfInProgress(Landroid/window/OnBackInvokedCallback;)V

    invoke-virtual {p0}, Landroid/window/WindowOnBackInvokedDispatcher;->getTopCallback()Landroid/window/OnBackInvokedCallback;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/window/WindowOnBackInvokedDispatcher;->setTopOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateContext(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-direct {v0, p1}, Landroid/window/WindowOnBackInvokedDispatcher$Checker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mChecker:Landroid/window/WindowOnBackInvokedDispatcher$Checker;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    const v1, 0x10502d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mBackSwipeLinearThreshold:F

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x1050067

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Landroid/window/WindowOnBackInvokedDispatcher;->mNonLinearProgressFactor:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/window/WindowOnBackInvokedDispatcher;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method
