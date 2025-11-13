.class public final Lcom/android/settings/notification/modes/ZenMode;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final POLICY_INTERRUPTION_FILTER_ALARMS:Landroid/service/notification/ZenPolicy;

.field public static final POLICY_INTERRUPTION_FILTER_ALL:Landroid/service/notification/ZenPolicy;

.field public static final POLICY_INTERRUPTION_FILTER_NONE:Landroid/service/notification/ZenPolicy;


# instance fields
.field public final mId:Ljava/lang/String;

.field public final mIsActive:Z

.field public final mIsManualDnd:Z

.field public final mRule:Landroid/app/AutomaticZenRule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowChannels(I)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->allowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_ALL:Landroid/service/notification/ZenPolicy;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowAlarms(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowMedia(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_ALARMS:Landroid/service/notification/ZenPolicy;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    invoke-direct {v0}, Landroid/service/notification/ZenPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->disallowAllSounds()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->hideAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;->allowPriorityChannels(Z)Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_NONE:Landroid/service/notification/ZenPolicy;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/AutomaticZenRule;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iput-boolean p3, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    iput-boolean p4, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/settings/notification/modes/ZenMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/settings/notification/modes/ZenMode;

    iget-object v0, p1, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iget-object v1, p1, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    iget-boolean p1, p1, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getIcon(Landroid/content/Context;Lcom/android/settings/notification/modes/IconLoader;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsManualDnd:Z

    if-eqz v0, :cond_0

    const p0, 0x7f0803dc

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p0

    invoke-static {p1, p0}, Lcom/android/settings/notification/modes/IconLoader;->getFallbackIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getIconResId()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/settings/notification/modes/IconLoader;->mCache:Landroid/util/LruCache;

    monitor-enter v3

    :try_start_0
    iget-object v4, p2, Lcom/android/settings/notification/modes/IconLoader;->mCache:Landroid/util/LruCache;

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    sget-object p2, Lcom/android/settings/notification/modes/IconLoader;->MISSING:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ImmediateFuture;

    move-result-object p2

    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p2, Lcom/android/settings/notification/modes/IconLoader;->mBackgroundExecutor:Lcom/google/common/util/concurrent/ListeningExecutorService;

    new-instance v4, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1, v1, v0}, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    check-cast v3, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;

    invoke-virtual {v3, v4}, Lcom/google/common/util/concurrent/MoreExecutors$ListeningDecorator;->submit(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    sget v1, Lcom/google/common/util/concurrent/FluentFuture;->$r8$clinit:I

    instance-of v1, v0, Lcom/google/common/util/concurrent/FluentFuture;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/google/common/util/concurrent/FluentFuture;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/google/common/util/concurrent/ForwardingFluentFuture;

    invoke-direct {v1, v0}, Lcom/google/common/util/concurrent/ForwardingFluentFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object v0, v1

    :goto_1
    const-class v1, Ljava/lang/Exception;

    new-instance v3, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2}, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v0, v4, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->inputFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object v1, v4, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->exceptionType:Ljava/lang/Class;

    iput-object v3, v4, Lcom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->fallback:Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Lcom/google/common/util/concurrent/FluentFuture$TrustedFuture;)Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance v0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    invoke-virtual {v4, v0}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    move-result-object p2

    :goto_2
    sget v0, Lcom/google/common/util/concurrent/FluentFuture;->$r8$clinit:I

    instance-of v0, p2, Lcom/google/common/util/concurrent/FluentFuture;

    if-eqz v0, :cond_5

    check-cast p2, Lcom/google/common/util/concurrent/FluentFuture;

    goto :goto_3

    :cond_5
    new-instance v0, Lcom/google/common/util/concurrent/ForwardingFluentFuture;

    invoke-direct {v0, p2}, Lcom/google/common/util/concurrent/ForwardingFluentFuture;-><init>(Lcom/google/common/util/concurrent/ListenableFuture;)V

    move-object p2, v0

    :goto_3
    new-instance v0, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lcom/android/settings/notification/modes/IconLoader$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {}, Lcom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    invoke-virtual {p2, v0}, Lcom/google/common/util/concurrent/FluentFuture;->transform(Lcom/google/common/base/Function;)Lcom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;

    move-result-object p0

    :goto_4
    return-object p0

    :goto_5
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPolicy()Landroid/service/notification/ZenPolicy;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Rule "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with unexpected interruptionFilter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenMode"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/service/notification/ZenPolicy;

    return-object p0

    :cond_0
    sget-object p0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_ALARMS:Landroid/service/notification/ZenPolicy;

    return-object p0

    :cond_1
    sget-object p0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_NONE:Landroid/service/notification/ZenPolicy;

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, Landroid/service/notification/ZenPolicy;

    return-object p0

    :cond_3
    sget-object p0, Lcom/android/settings/notification/modes/ZenMode;->POLICY_INTERRUPTION_FILTER_ALL:Landroid/service/notification/ZenPolicy;

    return-object p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    iget-boolean v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/notification/modes/ZenMode;->mIsActive:Z

    if-eqz v1, :cond_0

    const-string v1, "active"

    goto :goto_0

    :cond_0
    const-string v1, "inactive"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/settings/notification/modes/ZenMode;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
