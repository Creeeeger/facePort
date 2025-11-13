.class public final Lcom/android/systemui/dreams/DreamMonitor;
.super Lcom/android/systemui/util/condition/ConditionalCoreStartable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final IS_ENABLED:Z


# instance fields
.field public final mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

.field public final mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

.field public final mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

.field public final mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isAlreadyBooted()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/dreams/DreamMonitor;->IS_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Lcom/android/systemui/dreams/conditions/DreamCondition;Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;Lcom/android/systemui/flags/RestartDozeListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;-><init>(Lcom/android/systemui/shared/condition/Monitor;)V

    iput-object p1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/dreams/DreamMonitor;->mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

    iput-object p3, p0, Lcom/android/systemui/dreams/DreamMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

    iput-object p4, p0, Lcom/android/systemui/dreams/DreamMonitor;->mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;

    return-void
.end method


# virtual methods
.method public final onStart()V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/dreams/DreamMonitor;->IS_ENABLED:Z

    const-string v1, "DreamMonitor"

    if-nez v0, :cond_0

    const-string/jumbo p0, "skipped on boot"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mCallback:Lcom/android/systemui/dreams/callbacks/DreamStatusBarStateCallback;

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    iget-object v1, v0, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/systemui/dreams/DreamMonitor;->mDreamCondition:Lcom/android/systemui/dreams/conditions/DreamCondition;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/dreams/DreamMonitor;->mConditionMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v2, v1, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamMonitor;->mRestartDozeListener:Lcom/android/systemui/flags/RestartDozeListener;

    iget-boolean v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->inited:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->inited:Z

    iget-object v0, p0, Lcom/android/systemui/flags/RestartDozeListener;->listener:Lcom/android/systemui/flags/RestartDozeListener$listener$1;

    iget-object v1, p0, Lcom/android/systemui/flags/RestartDozeListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    :goto_0
    new-instance v0, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/flags/RestartDozeListener$maybeRestartSleep$1;-><init>(Lcom/android/systemui/flags/RestartDozeListener;)V

    const-wide/16 v1, 0x3e8

    iget-object p0, p0, Lcom/android/systemui/flags/RestartDozeListener;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Ljava/lang/Runnable;

    return-void
.end method
