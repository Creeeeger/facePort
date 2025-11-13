.class public final Lcom/android/keyguard/LegacyLockIconViewController$7;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/LegacyLockIconViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/LegacyLockIconViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/LegacyLockIconViewController$7;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/android/keyguard/LegacyLockIconViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$7;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Lcom/android/keyguard/LegacyLockIconViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$7;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final onUdfpsLocationChanged(Lcom/android/systemui/biometrics/shared/model/UdfpsOverlayParams;)V
    .locals 0

    sget p1, Lcom/android/keyguard/LegacyLockIconViewController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController$7;->this$0:Lcom/android/keyguard/LegacyLockIconViewController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/LegacyLockIconViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/LegacyLockIconViewController;)V

    iget-object p0, p0, Lcom/android/keyguard/LegacyLockIconViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
