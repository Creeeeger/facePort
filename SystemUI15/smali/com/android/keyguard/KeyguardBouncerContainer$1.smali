.class public final Lcom/android/keyguard/KeyguardBouncerContainer$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardBouncerContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardBouncerContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "com.salab.issuetracker"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android"

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/window/WindowOnBackInvokedDispatcher;->isOnBackInvokedCallbackEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "KeyguardBouncerContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkRegisterBackInvokedCallbackIntegrity isOnBackInvokedCallbackEnabled() : WindowOnBackInvokedDispatcher = false, ApplicationInfo = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isOnBackInvokedCallbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardBouncerContainer"

    const-string v2, "Cannot registerBackInvokedCallback !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p1, Lcom/android/keyguard/KeyguardBouncerContainer;->mKeyguardSysDumpTrigger:Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "KeyguardSysDumpTrigger"

    const-string v2, "setTriggerIssueReport !!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_3

    :cond_1
    monitor-enter p1

    :try_start_1
    monitor-enter p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelIssueReportExecToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelIssueReportExecToken:Ljava/lang/Runnable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    :try_start_3
    monitor-exit p1

    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startIssueReport$1;

    const-wide/16 v3, -0x1

    const/4 v5, 0x4

    invoke-direct {v2, p1, v5, v3, v4}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$startIssueReport$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v2, v3, v4}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelIssueReportExecToken:Ljava/lang/Runnable;

    const-string v0, "KeyguardSysDumpTrigger"

    const-string/jumbo v2, "startIssueReport 500"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p1

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_2

    :goto_1
    :try_start_4
    monitor-exit p1

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    monitor-exit p1

    throw p0

    :cond_3
    const-string p1, "KeyguardBouncerContainer"

    const-string v0, "checkRegisterBackInvokedCallbackIntegrity : Pass !!"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string p1, "KeyguardBouncerContainer"

    const-string v0, "checkRegisterBackInvokedCallbackIntegrity : Cannot check because RootView is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :catch_0
    :cond_5
    :goto_3
    iget-object p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardBouncerContainer;->registerBackInvokedCallback()V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardBouncerContainer;->checkBackInvokedCallback(Z)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardBouncerContainer$1;->this$0:Lcom/android/keyguard/KeyguardBouncerContainer;

    sget p1, Lcom/android/keyguard/KeyguardBouncerContainer;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "KeyguardBouncerContainer"

    const-string/jumbo v0, "unregisterBackInvokedCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mOnBackInvokedCallback:Lcom/android/keyguard/KeyguardBouncerContainer$2;

    invoke-virtual {p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardBouncerContainer;->mIsBackCallbackRegistered:Z

    :cond_0
    return-void
.end method
