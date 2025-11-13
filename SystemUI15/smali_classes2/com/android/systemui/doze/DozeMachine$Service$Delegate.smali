.class public Lcom/android/systemui/doze/DozeMachine$Service$Delegate;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/doze/DozeMachine$Service;


# instance fields
.field public final mBgExecutor:Ljava/util/concurrent/Executor;

.field public final mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeMachine$Service;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    iput-object p2, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mBgExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final finish()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0}, Lcom/android/systemui/doze/DozeMachine$Service;->finish()V

    return-void
.end method

.method public final requestWakeUp(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service;->requestWakeUp(I)V

    return-void
.end method

.method public final semSetDozeScreenBrightness(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->semSetDozeScreenBrightness(II)V

    return-void
.end method

.method public setDozeScreenBrightness(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/doze/DozeMachine$Service$Delegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/doze/DozeMachine$Service$Delegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/doze/DozeMachine$Service$Delegate;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setDozeScreenState(IZ)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/doze/DozeMachine$Service$Delegate;->mDelegate:Lcom/android/systemui/doze/DozeMachine$Service;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/doze/DozeMachine$Service;->setDozeScreenState(IZ)V

    return-void
.end method
