.class public final Lcom/android/systemui/media/SecMediaControlPanel$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/SecMediaControlPanel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SecMediaControlPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFinishedGoingToSleep()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onFinishedWakingUp()V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel$3;->this$0:Lcom/android/systemui/media/SecMediaControlPanel;

    iget-object p0, p0, Lcom/android/systemui/media/SecMediaControlPanel;->mSeekBarViewModel:Lcom/android/systemui/media/SecSeekBarViewModel;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/SecSeekBarViewModel$listening$1;-><init>(Lcom/android/systemui/media/SecSeekBarViewModel;Z)V

    iget-object p0, p0, Lcom/android/systemui/media/SecSeekBarViewModel;->bgExecutor:Lcom/android/systemui/util/concurrency/RepeatableExecutor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
