.class public abstract Lcom/android/systemui/util/condition/ConditionalCoreStartable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field private mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

.field private final mConditionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Lcom/android/systemui/shared/condition/Monitor;

.field private mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;


# direct methods
.method public static synthetic $r8$lambda$NNQGqWN1cG6wxs6BMk0gwIc6goc(Lcom/android/systemui/util/condition/ConditionalCoreStartable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->lambda$start$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$tnz6ORQnrqe5Qv2OdRnwNAucl9s(Lcom/android/systemui/util/condition/ConditionalCoreStartable;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->lambda$onBootCompleted$1(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;-><init>(Lcom/android/systemui/shared/condition/Monitor;Ljava/util/Set;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/condition/Monitor;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/condition/Monitor;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/shared/condition/Condition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iput-object p2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    return-void
.end method

.method private lambda$onBootCompleted$1(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    invoke-virtual {p0}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->bootCompleted()V

    :cond_0
    return-void
.end method

.method private lambda$start$0(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    iget-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    iget-object v1, p1, Lcom/android/systemui/shared/condition/Monitor;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/shared/condition/Monitor$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    invoke-virtual {p0}, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->onStart()V

    :cond_0
    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 0

    return-void
.end method

.method public bridge synthetic dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic isDumpCritical()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onBootCompleted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    new-instance v2, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/condition/ConditionalCoreStartable;I)V

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    iget-object v2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mBootCompletedToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    return-void
.end method

.method public abstract onStart()V
.end method

.method public bridge synthetic onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public final start()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mMonitor:Lcom/android/systemui/shared/condition/Monitor;

    new-instance v1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;

    new-instance v2, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/util/condition/ConditionalCoreStartable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/condition/ConditionalCoreStartable;I)V

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;-><init>(Lcom/android/systemui/shared/condition/Monitor$Callback;)V

    iget-object v2, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mConditionSet:Ljava/util/Set;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->mConditions:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/android/systemui/shared/condition/Monitor$Subscription$Builder;->build()Lcom/android/systemui/shared/condition/Monitor$Subscription;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/shared/condition/Monitor;->mPreconditions:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/shared/condition/Monitor;->addSubscription(Lcom/android/systemui/shared/condition/Monitor$Subscription;Ljava/util/Set;)Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/util/condition/ConditionalCoreStartable;->mStartToken:Lcom/android/systemui/shared/condition/Monitor$Subscription$Token;

    return-void
.end method
