.class public final Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/start/ControlsStartable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/start/ControlsStartable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onUserChanged(ILandroid/content/Context;)V
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1;->this$0:Lcom/android/systemui/controls/start/ControlsStartable;

    iget-object p2, p0, Lcom/android/systemui/controls/start/ControlsStartable;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$1;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;I)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/controls/start/ControlsStartable$userTrackerCallback$1$onUserChanged$2;-><init>(Lcom/android/systemui/controls/start/ControlsStartable;)V

    const-wide/16 v0, 0x32

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object p0, p0, Lcom/android/systemui/controls/start/ControlsStartable;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    return-void
.end method
