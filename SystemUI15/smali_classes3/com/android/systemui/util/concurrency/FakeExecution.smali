.class public final Lcom/android/systemui/util/concurrency/FakeExecution;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/util/concurrency/Execution;


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private simulateMainThread:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/util/concurrency/FakeExecution;->simulateMainThread:Z

    return-void
.end method


# virtual methods
.method public assertIsMainThread()V
    .locals 1

    iget-boolean p0, p0, Lcom/android/systemui/util/concurrency/FakeExecution;->simulateMainThread:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo v0, "should be called from the main thread"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSimulateMainThread()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/concurrency/FakeExecution;->simulateMainThread:Z

    return p0
.end method

.method public isMainThread()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/concurrency/FakeExecution;->simulateMainThread:Z

    return p0
.end method

.method public final setSimulateMainThread(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/util/concurrency/FakeExecution;->simulateMainThread:Z

    return-void
.end method
