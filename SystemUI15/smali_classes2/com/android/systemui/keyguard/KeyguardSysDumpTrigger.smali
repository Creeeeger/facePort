.class public final Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final KEY:[I

.field public static final SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public cancelExecToken:Ljava/lang/Runnable;

.field public cancelIssueReportExecToken:Ljava/lang/Runnable;

.field public final context:Landroid/content/Context;

.field public final executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final isDebug:Z

.field public isEnabled:Z

.field public keyIndex:I

.field public final powerManager:Landroid/os/PowerManager;

.field public prevEventTime:J

.field public final selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final userManager:Landroid/os/UserManager;

.field public final wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.servicemodeapp"

    const-string v2, "com.sec.android.app.servicemodeapp.SysDump"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->SYSDUMP_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void

    nop

    :array_0
    .array-data 4
        0x18
        0x18
        0x18
        0x19
        0x19
        0x19
        0x18
        0x19
        0x18
        0x19
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Landroid/os/PowerManager;Landroid/os/UserManager;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iput-object p3, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    iput-object p6, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iput-object p8, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->wakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p3, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;

    invoke-direct {p3, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$receiver$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->getDebugLevel()I

    move-result p1

    sget p4, Lcom/android/systemui/util/DeviceType;->DEBUG_LEVEL_MID:I

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p4, Landroid/content/IntentFilter;

    const-string p0, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {p4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p0, "package"

    invoke-virtual {p4, p0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 p0, 0x0

    const/4 p8, 0x0

    const/4 p5, 0x0

    const/4 p6, 0x0

    const/16 p9, 0x3c

    move-object p2, p7

    move p7, p0

    invoke-static/range {p2 .. p9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    return-void
.end method

.method public static final access$sendBroadcastToIssueTracker(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.ISSUE_TRACKER_ACTION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.salab.issuetracker"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ERRCODE"

    const/16 v3, -0x7d

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "ERRNAME"

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "ERRPKG"

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->getTriggerMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Lcom/android/systemui/util/LogUtil;->makeDateTimeStr(J)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ERRMSG"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "EXTLOG"

    const/4 p2, 0x0

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->context:Landroid/content/Context;

    const-string p1, "dump in progress"

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static final synthetic access$sendIssueReportIntent(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->sendIssueReportIntent(IJ)V

    return-void
.end method

.method public static synthetic isEnabled$annotations()V
    .locals 0

    return-void
.end method

.method private final sendIssueReportIntent(IJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendIntent reason="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " currentUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSysDumpTrigger"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;

    move-object v2, v0

    move-object v4, p0

    move v5, p1

    move-wide v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIssueReportIntent$1;-><init>(ILcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    const-string v0, "KeyguardSysDumpTrigger"

    const-string v1, "cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final getKeys()[I
    .locals 0

    sget-object p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->KEY:[I

    return-object p0
.end method

.method public final getTriggerMsg(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-le p1, p0, :cond_0

    const-string/jumbo v0, "systemui heap dump - "

    goto :goto_0

    :cond_0
    const-string v0, "lockscreen dump - "

    :goto_0
    if-eqz p1, :cond_5

    if-eq p1, p0, :cond_4

    const/4 p0, 0x2

    if-eq p1, p0, :cond_3

    const/4 p0, 0x3

    if-eq p1, p0, :cond_2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    const-string p0, "Wrong behavior"

    goto :goto_1

    :cond_2
    const-string/jumbo p0, "too many views. notiCount : 0. totalView : 0"

    goto :goto_1

    :cond_3
    const-string/jumbo p0, "saved heap dump"

    goto :goto_1

    :cond_4
    const-string p0, "input keys"

    goto :goto_1

    :cond_5
    const-string/jumbo p0, "timeout of app resume"

    :goto_1
    invoke-static {v0, p0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isDebug:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final sendIntent(IJ)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->selectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v4

    const-string/jumbo v0, "sendIntent reason="

    const-string v2, " currentUser="

    const-string v5, " userUnlocked="

    invoke-static {p1, v3, v0, v2, v5}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardSysDumpTrigger"

    invoke-static {v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;

    move-object v2, v0

    move-object v5, p0

    move v6, p1

    move-wide v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$sendIntent$1;-><init>(IZLcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->bgHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final declared-synchronized start(IJJ)V
    .locals 3

    const-string/jumbo v0, "start "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancel()V

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;

    invoke-direct {v2, p0, p1, p4, p5}, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger$start$1;-><init>(Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;IJ)V

    invoke-interface {v1, v2, p2, p3}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardSysDumpTrigger;->cancelExecToken:Ljava/lang/Runnable;

    const-string p1, "KeyguardSysDumpTrigger"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
